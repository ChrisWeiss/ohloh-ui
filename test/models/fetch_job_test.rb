require 'test_helper'

class FetchJobTest < ActiveSupport::TestCase
  describe 'progress_message' do
    it 'should return required message' do
      job = FetchJob.create(repository: create(:repository))
      job.progress_message.must_equal 'Step 1 of 3: Downloading source code history'
    end
  end
end
