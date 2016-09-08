class RecentWikiPagesController < ApplicationController
	def self.pages_with_updated_on
		WikiPage.with_updated_on
			.joins(:content)
			.order("#{WikiContent.table_name}.updated_on DESC")
	end

  def date_index
    @paginator, @pages = paginate self.class.pages_with_updated_on
    @pages_by_date = @pages.group_by {|p| p.updated_on.to_date}

    @pages.first.wiki
  end
end
