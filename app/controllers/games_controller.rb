class GamesController < ApplicationController
    def index 
        @player = Fighter.find(params[:id])
        @enemy = Fighter.find(2)
    end

    def create
        player = Fighter.find(params[:id])
        enemy = Fighter.find(params[:enemy_id])
        game = Game.create!(player_id: player.id, enemy_id: enemy.id)
        redirect_to "/fighters/#{player.id}/games/#{game.id}", method: :get
    end
    def show
        @game = Game.find(params[:id])
        @player = Fighter.find(@game.player_id)
        @enemy = Fighter.find(@game.enemy_id)
        if @game.turn_count.odd? == false
            spell_id = @enemy.spells.sample.id
            redirect_to "/fighters/#{@player.id}", method: :patch
            # ?spell_id=#{spell_id}&game_id=#{@game.id}"
        end 
    end
    def edit 
        game = Game.find(params[:id])
        player = Fighter.find(game.player_id)
        enemy = Fighter.find(game.enemy_id)
        spell = Spell.find(params[:id])
        if spell.spell_type == "enemy"
            enemy.update(hitpoints: enemy.hitpoints - spell.effect)
            enemy.save
            redirect_to "/fighters/#{player.id}/games/#{game.id}", method: :get
        end

    end
end