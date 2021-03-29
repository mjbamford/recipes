
require "./controllers/RecipesController"

module Routes
    def self.dispatch(request, param)
        case request
        when /^l(ist)*/
            RecipesController::index
        when /^n(ew)*/
            RecipesController::create
        when /^d(elete)*/
            RecipesController::destroy param
        end
    end
end