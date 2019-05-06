class TeamsController < ApplicationController
    def index
        @teams = Team.all
    end
    def new
        @team = Team.new
    end

    def create
        @team = Team.new(team_params)
        if @team.save!
            redirect_to root_path
            flash[:success] = "Team created!"
        else
            redirect_to new_team_path
            flash[:danger] = "Error, please try again."
        end
    end

    private
    def team_params
        params.require(:team).permit(:name, :player1_id, :player2_id)
    end
end
