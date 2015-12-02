class AddSearchView < ActiveRecord::Migration
  def up
    execute "CREATE VIEW search_views AS
    SELECT a.base AS base,
                     a.actual AS actual,
                                 a.diacritic AS diacritic,
                                                a.speaker_id AS SPEAKER_ID,
                                                                c.name AS native_language
    FROM phonemes a LEFT OUTER JOIN speakers b ON a.speaker_id=b.id
    LEFT OUTER JOIN native_languages c ON b.native_language_id=c.id;"

  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
