module MigrationComments::ActiveRecord::ConnectionAdapters
  module Table
    def change_comment(column_name, comment_text)
      @base.set_column_comment(_table_name, column_name, comment_text)
    end

    def change_table_comment(comment_text)
      @base.set_table_comment(_table_name, comment_text)
    end
    alias comment :change_table_comment

    private

    def _table_name
      if ::ActiveRecord::VERSION::MAJOR >= 4 && ::ActiveRecord::VERSION::MINOR >= 2
        name
      else
        @table_name
      end
    end
  end
end