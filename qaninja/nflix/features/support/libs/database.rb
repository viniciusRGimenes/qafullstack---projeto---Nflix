require "pg"

class Database
    def delete_movie(title)
        connection = PG.connect(host: 'localhost', dbname: 'nflix', user: 'postgres', password: 'qaninja')
        connection.exec("Delete from public.movies where title = '#{title}';")
    end
end