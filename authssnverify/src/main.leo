import authssniscool.aleo;

program authssnverify.aleo {
  transition verify_id(
    public owner: address,
    private ssn: scalar,
    private id: authssniscool.aleo/ID,
  ) -> bool {
    assert_eq(id.metadata.ssn, ssn);
    return true;
  }
}