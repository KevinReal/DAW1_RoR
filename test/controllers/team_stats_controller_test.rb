require 'test_helper'

class TeamStatsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @team_stat = team_stats(:one)
  end

  test "should get index" do
    get team_stats_url
    assert_response :success
  end

  test "should get new" do
    get new_team_stat_url
    assert_response :success
  end

  test "should create team_stat" do
    assert_difference('TeamStat.count') do
      post team_stats_url, params: { team_stat: { name: @team_stat.name, value: @team_stat.value } }
    end

    assert_redirected_to team_stat_url(TeamStat.last)
  end

  test "should show team_stat" do
    get team_stat_url(@team_stat)
    assert_response :success
  end

  test "should get edit" do
    get edit_team_stat_url(@team_stat)
    assert_response :success
  end

  test "should update team_stat" do
    patch team_stat_url(@team_stat), params: { team_stat: { name: @team_stat.name, value: @team_stat.value } }
    assert_redirected_to team_stat_url(@team_stat)
  end

  test "should destroy team_stat" do
    assert_difference('TeamStat.count', -1) do
      delete team_stat_url(@team_stat)
    end

    assert_redirected_to team_stats_url
  end
end
