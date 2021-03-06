# frozen_string_literal: true

require_relative 'base'
require_relative 'device_functions'

class LXP
  class Packet
    # This isn't really used for anything; we don't send heartbeats to
    # the inverter, but we do receive them. So this is just instantiated
    # if we receive one, so that Parser.parse has something to return.
    #
    # They are a very minimal packet of 19 bytes total:
    #   6 of which is frame (161, 26, p1, p2, l1, l2)
    #   13 bytes of header (1, 193, serial * 10, 0)
    #
    # They have no data and no checksum, so there's really not a lot here.
    #
    class Heartbeat < Base
      def initialize
        @header = [0] * 19

        super

        self.packet_length = 13
        self.protocol = 2
        self.tcp_function = TcpFunctions::HEARTBEAT
      end

      def bytes
        header
      end
    end
  end
end
