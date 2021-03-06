require 'test_helper'

class CommentsControllerTest < ActionController::TestCase

test "comment creation" do
    user = FactoryGirl.create(:user)
    sign_in user

    place = FactoryGirl.create(:place)

    assert_difference 'Comment.count' do
        post :create, :place_id => place.id, :comment => {
            :message => "Love this place!",
            :rating => "5_stars",
        }
    end

    assert_equal 1, user.comments.count

    assert_redirected_to place_path(place)
end

end
