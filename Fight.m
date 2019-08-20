classdef Fight
    
    properties
        Characters(1,2)
        winner
        whos_turn
    end
    
    methods
        function obj = Fight(Characters)
            obj.Characters = Characters;
            obj.winner = false;
        end
        
        function first_turn = whofirst(obj)
            while true
                r_char1 = randi([1, obj.Characters(1).Initiative]);
                r_char2 = randi([1, obj.Characters(2).Initiative]);
                if r_char1 > r_char2
                    first_turn = obj.Characters(1);
                    break
                elseif r_char1 < r_char2
                    first_turn = obj.Characters(2);
                    break
                end
            end
            disp(['First action:', first_turn.Class]);
        end
        
        function dmg_num = dmg(obj, who)
            value = (who.ProbHit - who.ProbHit * (who.ProbDodge + who.ProbBlock) / 100);
            
            if randi([0,100]) < value
                if randi([0,100]) < probCrit
                   dmg_num = randi([who.MinDMG, who.MaxDMG]) * 2;
                else   
                   dmg_num = randi([who.MinDMG, who.MaxDMG]);
                end
            else
               dmg_num = 0;
             end
        end
        
        function new_hp = decHP(obj, HP, dmg)
            new_hp = HP - dmg;
        end
        
        function isdead = checkHealth(obj, HP)
               isdead = false;
               if HP <= 0 
                  isdead = true;
               end
        end
        
    end
end
