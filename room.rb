class Room

  attr_reader(:name, :till_balance, :entry_fee, :tracklist, :capacity, :guests_in_room)

  def initialize(name, till_balance, entry_fee, tracklist, capacity)
    @name = name
    @till_balance = till_balance
    @entry_fee = entry_fee
    @tracklist = tracklist
    @capacity = capacity
    @guests_in_room = []
  end
  # ADD GUEST TO ROOM
  def add_guest_to_room(guest)
    @guests_in_room.push(guest)
  end
  # REMOVE GUEST FROM ROOM
  def remove_guest_from_room(guest)
    @guests_in_room.delete(guest)
  end
  # COUNT NUMBER OF GUESTS IN ROOM ARRAY
  def number_of_guests()
    return @guests_in_room.count()
  end
  # ADD SONG TO TRACKLIST
  def add_song(song)
    @tracklist.push(song)
  end
  # REMOVE SONG FROM TRACKLIST
  def remove_song(song)
    @tracklist.delete(song)
  end
  # ROOM AT CAPACITY YES/NO
  def room_at_capacity()
    if @guests_in_room.length() >= 5
      return "Sorry, this room is full"
    else
      return "Come on in"
    end
  end
  # RECEIVE ENTRY FEE
  def receive_entry_fee(amount)
    @till_balance += amount
  end
  # GUEST ENTERING ROOM
  # def enter_room(amount)
  #   return if sufficient_funds_for_entry?(@room)
  #
  #   guest.pay_for_entry(amount)
  #   @room.receive_entry_fee(amount)
  #   guest.add_guest_to_room
  # end

  def does_playlist_play_favourite_song(song)
    @tracklist.include?(song)
  end






end
