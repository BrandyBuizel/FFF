package ruffle.steamworks {
    import ruffle.steamworks.Client;

    public class Leaderboard {
        private var _client: Client;
        public function Leaderboard(client: Client) {
            _client = client;
        }

        public function activate(name: String): Boolean {
            return _client.call("leaderboard.activate", name);
        }
        public function isActivated(name: String): Boolean {
            return _client.call("leaderboard.isActivated", name);
        }
        public function clear(name: String): Boolean {
            return _client.call("leaderboard.clear", name);
        }
        public function names(): Array {
            return _client.call("leaderboard.names");
        }
    }
}
