# DistributedChannels

Super simple proof of concept of distributed channels.

After cloning:

   * `mix deps.get`
   

Then, start two nodes.

In one terminal:

    PORT=4000 iex --cookie secret --name first@127.0.0.1 --erl "-config sys.config" -S mix phoenix.server

In second terminal

    PORT=4001 iex --cookie secret --name second@127.0.0.1 --erl "-config sys.config" -S mix phoenix.server 

Open one browser to `http://localhost:4000` and open the console. You should see a "Joined Successfully" message.

Open a second browser and load `http://localhost:4001/event?abc=def&hello=goodbye` or any query params you want

In the first browser console you should see a message print with the given query parameters.

Things to take a look at:

  * `web/controllers/event_controller.ex` for how to broadcast a message
  * sys.config for how to configure which nodes should connect to each other
