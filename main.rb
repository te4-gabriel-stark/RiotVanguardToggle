def start()
    puts "Do you want to enable(e) or disable(d) riot vanguard?"
    enable_disable_answer = gets.chomp().downcase
    enable = enable_or_disable(enable_disable_answer)
    
    puts "Do you want to restart(r) or shutdown(s) after enabling/disabling vanguard?"
    shutdown_restart_answer = gets.chomp().downcase
    shutdown = shutdown_or_restart(shutdown_restart_answer)

    enable ? (system "sc config vgk start= system") : (system "sc config vgk start= disabled")
    shutdown ? (system "shutdown /s") : (system "shutdown /r")
end

def enable_or_disable(enable_disable_answer)
    if enable_disable_answer == "e"
        enable = true
    elsif enable_disable_answer == "d"
        enable = false
    else
        puts "You need to type 'e' to enable or 'd' to disable riot vanguard."
        puts "Try again."
        enable_disable_answer_2 = gets.chomp().downcase
        enable_or_disable(enable_disable_answer_2)
    end
    enable
end

def shutdown_or_restart(shutdown_restart_answer)
    if shutdown_restart_answer == "s"
        shutdown = true
    elsif shutdown_restart_answer == "r"
        shutdown = false
    else
        puts "You need to type 's' to shutdown or 'r' to restart."
        puts "Try again."
        shutdown_restart_answer_2 = gets.chomp().downcase
        shutdown_or_restart(shutdown_restart_answer_2)
    end
    shutdown
end

start()
