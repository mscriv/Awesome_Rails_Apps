module ApplicationHelper

  # Shows the date like this: Jan1, 2001
  def formatted_date(date)
    date.strftime('%b, %d, %Y')
  end

end
