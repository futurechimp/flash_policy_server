require 'socket'

class FlashPolicyServer

  # Loads up a policy file from pwd and starts the server. 
  #
  def run!
    load_policy_file
    start_server
  end

  private

  def load_policy_file
    @@policy = File.open("crossdomain.xml", "rb").read
  end

  def start_server
    server = TCPServer.open(843)
    loop do
      Thread.start(server.accept) do |client|
        begin
          client.puts %Q(@@policy)
          client.close
        rescue Exception => e
          puts e.message
          client.close
        end
      end
    end
  end

end
