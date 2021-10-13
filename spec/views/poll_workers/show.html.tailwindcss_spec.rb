require 'rails_helper'

RSpec.describe "poll_workers/show", type: :view do
  before(:each) do
    @poll_worker = assign(:poll_worker, PollWorker.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
