def enable_or_disable(answer)
    if answer == "e"
        system "sc config vgk start= system"
        system "shutdown /r"
    elsif answer == "d"
        system "sc config vgk start= disabled"
        system "shutdown /r"
    else
        puts "You need to type 'e' to enable or 'd' to disable riot vanguard."
        puts "Try again."
        answer_2 = gets.chomp().downcase
        enable_or_disable(answer_2)
    end
end

puts "Do you want to enable(e) or disable(d) riot vanguard?"
answer = gets.chomp().downcase
enable_or_disable(answer)
