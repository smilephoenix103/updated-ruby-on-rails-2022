module ApplicationHelper
  # Returns the full title on a per-page basis.        # documentation comment
  def full_title(page_title = '')                      # method def, optional argument
    base_title = "Ruby on Rails Tutorial Sample App"   # variable assignment
    if page_title.empty?                               # boolean test
      base_title                                       # implicit return
    else
      page_title + " | " + base_title                  # string concatenation
    end
  end
end
