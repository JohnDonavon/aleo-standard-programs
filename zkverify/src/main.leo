import zkid.aleo;

program zkverify.aleo {
  // const ADMIN: address = aleo15xd9tee983ts3urff8j22q64wvcyc8geakghyc3ew5u0v8jfuqgs958t6d;

  transition verify_id(
    public owner: address,
    private ssn: scalar,
    private id: zkid.aleo/ID,
  ) -> bool {
    // assert_eq(self.caller, ADMIN);
    // assert_eq(id.owner, owner);
    assert_eq(id.metadata.ssn, ssn);
    return true;
  }
}