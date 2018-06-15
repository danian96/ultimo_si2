require 'test_helper'

class BackupControllerTest < ActionDispatch::IntegrationTest
  test "should get select_file" do
    get backup_select_file_url
    assert_response :success
  end

end
