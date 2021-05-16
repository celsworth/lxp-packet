# frozen_string_literal: true

class LXP
  class Packet
    module DeviceFunctions
      READ_HOLD    = 3
      READ_INPUT   = 4
      WRITE_SINGLE = 6
      WRITE_MULTI  = 16

      # firmware updates, no idea how to use
      UPDATE_PREPARE   = 33
      UPDATE_SEND_DATA = 34
      UPDATE_RESET     = 35

      # not handled yet
      READ_HOLD_ERROR    = 131
      READ_INPUT_ERROR   = 132
      WRITE_SINGLE_ERROR = 134
      WRITE_MULTI_ERROR  = 144
    end
  end
end
