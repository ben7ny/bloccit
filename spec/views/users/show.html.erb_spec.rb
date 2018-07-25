require 'rails_helper'

RSpec.describe "users/show.html.erb", type: :view do

  it "displays the current user's favorite posts" do
    user = create(:user, role: :member)
    set_session(user)
    post = create(:post, title: "This is my favorite post")
    user.favorites.create(post: post)
    assign(:user, user)

    render

    expect(rendered).to match /This is my favorite post/
  end

  it "displays a favorite post's author's name" do
    user = create(:user, role: :member)
    set_session(user)
    author = create(:user, name: "John Doe")
    post = create(:post, user: author)
    user.favorites.create(post: post)
    assign(:user, user)

    render

    expect(rendered).to match /John Doe/
  end


  xit "displays a favorite post's author's gravatar" do
    user = create(:user, role: :member)
    set_session(user)
    author = create(:user)
    post = create(:post, user: author)
    user.favorites.create(post: post)
    assign(:user, user)

    render

    expect(rendered).to have_selector('img', :src => author.avatar_url(48))
  end

  it "displays a favorite post's author's name" do
    user = create(:user, role: :member)
    set_session(user)
    author = create(:user)
    post = create(:post, user: author)
    user.favorites.create(post: post)
    create(:comment, post: post)
    create(:comment, post: post)

    assign(:user, user)

    render

    expect(rendered).to match /2 Comments/
  end

  xit "displays number of votes for each favorite post" do

  end



end
