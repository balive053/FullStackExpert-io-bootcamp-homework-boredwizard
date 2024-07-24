# Homework for week 2 Intermediate frontend development
After this week you should be able to work in a basic react application context. For this weeks assignment you are going to create a pomodor timer. This is a simple timer that allows brief scheduled periods of focus time, and alerts you when it is time for a break. Use typescript and strong typing to ensure values are shaped properly.

Requirements:
1. Create a page that has an input box for specifying how long to set the timer for, and another for how long to set the break for.
2. Create a button for starting the timer.
3. When the timer stops, alert the user with a message showing that the timer has completed.
4. The user should now see a button to start their break, which will utilize the break timer length.
5. While timers are ticking down, have a live countdown to show how much time is remaining.
6. When the time is finished, reset the timer back to the correct value. When the task timer is done, the break timer should show. When the break timer is done, the task timer should show.
6. While the time is ticking down,the button to start the timer is disabled, and instead a pause and reset button are available.
7. The pause button pauses the timer while the reset button stops the timer and resets the time back to the beginning.
8. Use context hooks to share state
9. Create unit tests for this application
10. Create an e2e test for this application