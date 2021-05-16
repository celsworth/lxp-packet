# frozen_string_literal: true

class LXP
  class Packet
    module TcpFunctions
      HEARTBEAT       = 193
      TRANSLATED_DATA = 194

      # these may be datalog parameters, separate from inverter itself?
      READ_PARAM      = 195
      WRITE_PARAM     = 196
    end
  end
end
