require 'rails_helper'

RSpec.describe Task, type: :model do
  it { is_expected.to validate_presence_of :title }
  it { is_expected.to validate_presence_of :description }
  it { is_expected.to validate_presence_of :due_date }

  it do
    is_expected.to define_enum_for(:priority).
      with_values(low: 0, medium: 1, high: 2).
      backed_by_column_of_type(:integer)
  end

  it do
    is_expected.to define_enum_for(:completion_status).
      with_values(active: 0, completed: 1).
      backed_by_column_of_type(:integer)
  end
end