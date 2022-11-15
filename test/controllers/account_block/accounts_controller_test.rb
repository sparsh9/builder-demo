require "test_helper"

class AccountBlock::AccountsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get account_block_accounts_create_url
    assert_response :success
  end

  test "should get index" do
    get account_block_accounts_index_url
    assert_response :success
  end
end
