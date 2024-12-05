// The 'zkid' program.
program authssniscool.aleo {
    // Entity who can issue new ids
    const ADMIN: address = aleo15xd9tee983ts3urff8j22q64wvcyc8geakghyc3ew5u0v8jfuqgs958t6d;


    struct approval {
        approver: address,
        spender: address,
    }

    struct data {
        ssn: scalar
    }

    record ID {
        private owner: address,
        private metadata: data
    }

    transition mint_id(
        private destination: address,
        private metadata: data
    ) {
        assert_eq(self.caller, ADMIN);
        let id: ID = ID {
            owner: destination,
            metadata: metadata
        };
    }
}
