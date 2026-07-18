---
title: I became a vibecoder for a week
quote: (theres a reason it was only a week)
---
I have hated ai for a long time, but thanks to the 2 shitholes that are reddit and twitter (i refuse to call it x), i have seen so many "programmers" singing the praises of vibe coding (using ai for programming) that i thought i had to see what the hype was all about.
A few months ago now i decided i would forget about the ethics and try out vibe coding for at least a week.

First, i installed claude code, as it was the one people talked about the most, and my first shock came right after typing `claude-code` into the terminal. A paywall, $20/month to even use the thing, no option to use a free model, I remember thinking "People actually pay for this shit?". 
I was ready to call this experiment a failure before it even started, but for some reason i continued, and found that opencode has a free plan, perfect.

Using opencode to work on a tui library in rust that i had started by hand, but hadn't put much time into at that point, what i noticed is that these agents are designed to be doing all the work themselves, it got confused when i modified a file, making incorrect assumptions about the code based on what it had written, even when i told it i had modified the file myself.

The next thing i noticed is that although it was faster at writing code than me (not as impressive when you remember i was still new to rust), and despite not using the language for very long, i noticed it making simple mistakes: a `.unwrap()` for an easily recoverable error, pattern matching when an `if let` would suffice, and of course, comments explaining simple code.

Before any potential tech bro reads this and says "just use a better model lol", the third major problem, that no better model could ever solve, was that vibe-coding is boring. You type `opencode` into the terminal, tell it what you want, then wait for a few minutes, reading its thought process for entertainment while you wait, as someone who actually **enjoys** programming, this ripped all the fun out of it, because, well, i wasn't programming.

## The part that might make you hate me, OSS contribution

Ok ok, put the pitchforks down for a second, i felt bad doing this as well, and did what i could to make it less harmful - i contributed to a repo where the owner also frequently used ai, and i disclosed that the pr was almost entirely ai generated, leaving them with the choice to deny it if they wanted.
The repo in question was a browser home page i was using, and the feature that "I" added was configurable hotkeys to open favourited sites (eg. press y for youtube, g for github, etc).
Going into this pr I thought that this is where AI would really shine, as web development is easily where the most training data is available, but what i didn't account for is that in rust, the ai can easily check if its code works, but for web development it has no way of knowing if an element is in the correct position, which resulted in 5 or so "still broken" prompts before it produced something that worked, and looked right.

## Conclusion
while this week of vibe coding did bring me closer to understanding why people do it - because they want to make something without having the skills (in this case, not knowing js), the lack of satisfaction, and frankly how boring it was, reinforced that I am not a vibe coder, `yay -Rns opencode`
