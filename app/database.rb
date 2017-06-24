class Database
  attr_reader :connection

  def initialize
    @connection = Mysql2::Client.new(
      host: 'localhost',
      username: 'root',
      database: 'test'
    )
  end

  def query(q)
    @connection.query(q)
  end

  def close
    @connection.close
  end
end
