class PagesController < ApplicationController
  def home
    @poem = Poem.first

  end
end
