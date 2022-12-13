#A=Algorithm
module Agreedy
    class PaperCut
        attr_accessor :output

        def initialize 
            @output = 0
        end

        def paper_cut width, height 
            max_side_square = 0
            quantity = 0

            max_side_paper = height > width ? 
                height : width

            max_side_square = height < width ? 
                height : width
            
            quantity = max_side_paper / max_side_square if max_side_square != 0
            
            @output += quantity

            if max_side_square != 0
                if width == max_side_square 
                    paper_cut(width, height - quantity*max_side_square)
                end
                
                if height == max_side_square 
                    paper_cut(width - quantity*max_side_square, height)
                end
            end

            @output 
        end
    end
end