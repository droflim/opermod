######################################################################
# The Following Script Allows users with the "S" flag to Use the 
# Irc Operator Chghost command via the party line.
# Comments to :
# tlp@bcable.l33t.ca
################################/######################################

bind DCC S|S chatops dcc:chatops
bind DCC S|S chghost dcc:chghost
bind DCC S|S global  dcc:global
bind DCC S|S kill    dcc:kill
bind DCC S|S kline   dcc:kline
bind DCC S|S local   dcc:locops
bind DCC S|S oper    dcc:oper
bind DCC S|S rakill  dcc:rakill
bind DCC S|S rakline dcc:rakline
bind DCC S|S sajoin  dcc:sajoin
bind DCC S|S sapart  dcc:sapart
bind DCC S|S wallop  dcc:wallop
bind DCC S|S whowas  dcc:whowas

proc dcc:chatops {hand idx text} {
global botnick
set note [lrange $text 0 end]
  if {[lindex $text 0] == ""} {
    putidx $idx "USAGE .chatops <message>"
    return 1
  }
	putserv "chatops Chatops Message fron $hand: $text"
	putlog "Chatops message sent by $hand"
}

proc dcc:chghost {hand idx text} {
global botnick
set note [lrange $text 0 end]
  if {[lindex $text 0] == ""} {
    putidx $idx "USAGE .chghost <nick> <newhost>"
    return 1
  }
	putserv "chghost $text"
	putlog "$hand issued the chghost for: $text"
}

proc dcc:global {hand idx text} {
global botnick
set note [lrange $text 0 end]
  if {[lindex $text 0] == ""} {
    putidx $idx "USAGE .global <message>"
    return 1
  }
	putserv "GLOBOPS Global Message from $hand: $text"
	putlog "Global Message sent by $hand"
}

proc dcc:kill {hand idx text} {
global botnick
set note [lrange $text 0 end]
  if {[lindex $text 0] == ""} {
    putidx $idx "USAGE .kill <nick> <reason>"
    return 1
  }
	putserv "kill $text (Kill Performed by $hand)"
	putlog "$hand issued Kill Command: $text"
}

proc dcc:kline {hand idx text} {
global botnick
set note [lrange $text 0 end]
  if {[lindex $text 0] == ""} {
    putidx $idx "USAGE .kline <hostmask> <reason>"
    return 1
  }
	putserv "kline $text (Kill Performed by $hand)"
	putlog "$hand issued Kline Command: $text"
}

proc dcc:locops {hand idx text} {
global botnick
set note [lrange $text 0 end]
  if {[lindex $text 0] == ""} {
    putidx $idx "USAGE .locops <message>"
    return 1
  }
	putserv "locops Message from $hand: $text"
	putlog "$hand issued locops command"
}

proc dcc:oper {hand idx text } {
global botnick
set note [lrange $text 0 end]
  if {[lindex $text 0] == ""} {
   putlog "This Command has been disabled due to security purposes."
   return 0
  }
        putidx $idx "USAGE .oper"
}

proc dcc:rakill {hand idx text} {
global botnick
set note [lrange $text 0 end]
  if {[lindex $text 0] == ""} {
    putidx $idx "USAGE .rakill  <user@host>"
    return 1
  }
	putserv "rakill  $text"
	putlog "$hand issued rakill  for  : $text"
}

proc dcc:rakline {hand idx text} {
global botnick
set note [lrange $text 0 end]
  if {[lindex $text 0] == ""} {
    putidx $idx "USAGE .rakline  <host>"
    return 1
  }
	putserv "rakline  $text"
	putlog "$hand issued rakline for  : $text"
}

proc dcc:sajoin {hand idx text} {
global botnick
set note [lrange $text 0 end]
  if {[lindex $text 0] == ""} {
    putidx $idx "USAGE .sajoin <user> <chan>"
    return 1
  }
	putserv "sajoin $text"
	putlog "$hand issued sajoin : $text"
}

proc dcc:sapart {hand idx text} {
global botnick
set note [lrange $text 0 end]
  if {[lindex $text 0] == ""} {
    putidx $idx "USAGE .sapart <user> <chan>"
    return 1
  }
	putserv "sapart $text"
	putlog "$hand issued sapart : $text"
}

proc dcc:wallop {hand idx text} {
global botnick
set note [lrange $text 0 end]
  if {[lindex $text 0] == ""} {
    putidx $idx "USAGE .wallop <message>"
    return 1
  }
	putserv "wallops Message from $hand: $text"
	putlog "$hand sent wallop message $text"
}

proc dcc:whowas {hand idx text} {
global botnick
set note [lrange $text 0 end]
  if {[lindex $text 0] == ""} {
    putidx $idx "USAGE .whowas <nick>"
    return 1
  }
	putserv "whowas: $text"
	putlog "$hand Issued whowas $text"
}

putlog "Irc Oper Mod By TLP..Loaded"
putlog "Chatops..............Loaded"
putlog "Chghost..............Loaded"
putlog "Global...............Loaded"
putlog "Kill.................Loaded"
putlog "kline................Loaded"
putlog "Local................Loaded"
putlog "Oper.................Loaded"
putlog "Sajoin...............Loaded"
putlog "Sapart...............Loaded"
putlog "Wallop...............Loaded"
putlog "Whowas ..............Loaded"
