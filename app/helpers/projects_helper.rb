module ProjectsHelper

  def categories_helper(project)

    @output = ''

    project.categories.each do |category|
       @output << category.name.concat(' ')
    end

    return @output
  end
end
