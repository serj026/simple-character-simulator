classdef Character

    properties
        Class 
        HP
        MinDMG
        MaxDMG
        Initiative
        ProbHit
        ProbCrit
        ProbDodge
        ProbBlock
    end
    
    methods
        function obj = Character(type)
            switch type
                case 'Varior_1'
                    obj.Class = 'Varior_1';
                    obj.HP = 100;
                    obj.MinDMG = 3;
                    obj.MaxDMG = 20;
                    obj.Initiative = 5;
                    obj.ProbHit = 75;
                    obj.ProbCrit = 20;
                    obj.ProbDodge = 5;
                    obj.ProbBlock = 10;
                case 'Varior_2'
                    obj.Class = 'Varior_2';
                    obj.HP = 55;
                    obj.MinDMG = 8;
                    obj.MaxDMG = 12;
                    obj.Initiative = 5;
                    obj.ProbHit = 81;
                    obj.ProbCrit = 25;
                    obj.ProbDodge = 15;
                    obj.ProbBlock = 10;
                case 'Varior_3'
                    obj.Class = 'Varior_3';
                    obj.HP = 55;
                    obj.MinDMG = 8;
                    obj.MaxDMG = 12;
                    obj.Initiative = 5;
                    obj.ProbHit = 81;
                    obj.ProbCrit = 25;
                    obj.ProbDodge = 15;
                    obj.ProbBlock = 10;
            end
        end
    end
end

