module TasksHelper
  def class_status_due_date(task)
    Time.now > task.due_date ? 'overdue_date' : 'actual_date'
  end
    
  def due_date(task)
    l(task.due_date, format: '%d.%m.%Y')
  end
end