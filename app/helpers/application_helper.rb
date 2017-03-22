module ApplicationHelper
    def human_date(date)
        date.strftime("%B %d, %Y, %A")
    end
end
