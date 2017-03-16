class PagesController < ApplicationController
  def home
    @poem = Poem.all.sample

  end
end
