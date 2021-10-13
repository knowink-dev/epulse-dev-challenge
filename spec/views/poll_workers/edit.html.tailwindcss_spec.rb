require 'rails_helper'

RSpec.describe "poll_workers/edit", type: :view do
  before(:each) do
    @poll_worker = assign(:poll_worker, PollWorker.create!())
  end

  it "renders the edit poll_worker form" do
    render

    assert_select "form[action=?][method=?]", poll_worker_path(@poll_worker), "post" do
    end
  end
end
