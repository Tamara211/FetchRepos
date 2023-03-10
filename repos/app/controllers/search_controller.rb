class SearchController < ApplicationController
    def index
        query = params[:query]
        if query.present?
          @repos = Octokit.search_repositories(query, {:sort => "name", :order => "asc", :per_page => 100})
        end
      end
end
