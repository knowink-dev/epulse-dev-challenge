require 'rails_helper'

RSpec.describe "poll_workers/new", type: :view do
  before(:each) do
    assign(:poll_worker, PollWorker.new())
  end

  it "renders new poll_worker form" do
    render

    assert_select "form[action=?][method=?]", poll_workers_path, "post" do
    end
  end
end
