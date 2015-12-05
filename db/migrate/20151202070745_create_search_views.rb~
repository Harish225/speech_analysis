class CreateSearchViews < ActiveRecord::Migration
  def up
    execute "CREATE VIEW search_views AS
    SELECT a.base AS BASE,
                     a.actual AS ACTUAL,
                                 a.diacritic AS DIACRITIC,
                                                b.name AS SPEAKER_NAME,
                                                                c.name AS NATIVE_LANGUAGE
    FROM phonemes a LEFT OUTER JOIN speakers b ON a.speaker_id=b.id
    LEFT OUTER JOIN native_languages c ON b.native_language_id=c.id;"

  end

  def down
    execute "DROP VIEW search_views;"

  end
end
