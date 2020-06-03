class RemoveSkillLevelFromInstruments < ActiveRecord::Migration[6.0]
  def change
    remove_column :instruments, :skill_level
  end
end
