import zkid.aleo;
program zkverify.aleo;





function verify_id:
    input r0 as address.public;
    input r1 as scalar.private;
    input r2 as zkid.aleo/ID.record;
    assert.eq r2.metadata.ssn r1;
    output true as boolean.private;
