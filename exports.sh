# Candidate addresses checked against the official App Store catalog.
export APP_BITCOIN_PURITY_NODE_IP="10.21.22.14"
export APP_BITCOIN_PURITY_TOR_PROXY_IP="10.21.22.15"
export APP_BITCOIN_PURITY_I2P_DAEMON_IP="10.21.22.16"

# Internal ports are the application image's explicit node overrides.
export APP_BITCOIN_PURITY_RPC_PORT="9332"
export APP_BITCOIN_PURITY_P2P_PORT="9333"
export APP_BITCOIN_PURITY_RPC_HOST_PORT="10332"
export APP_BITCOIN_PURITY_P2P_HOST_PORT="10333"
# Trusted internal clients only; not published on the host.
export APP_BITCOIN_PURITY_P2P_WHITEBIND_PORT="9335"
export APP_BITCOIN_PURITY_TOR_PORT="8334"
export APP_BITCOIN_PURITY_ZMQ_RAWBLOCK_PORT="48332"
export APP_BITCOIN_PURITY_ZMQ_RAWTX_PORT="48333"
export APP_BITCOIN_PURITY_ZMQ_HASHBLOCK_PORT="48334"
export APP_BITCOIN_PURITY_ZMQ_SEQUENCE_PORT="48335"
export APP_BITCOIN_PURITY_ZMQ_HASHTX_PORT="48336"

export APP_BITCOIN_PURITY_RPC_USER="umbrel"
export APP_BITCOIN_PURITY_RPC_PASS="$(derive_entropy "app-${EXPORTS_APP_ID}-seed-rpc-password")"

rpc_hidden_service_file="${EXPORTS_TOR_DATA_DIR}/app-${EXPORTS_APP_ID}-rpc/hostname"
p2p_hidden_service_file="${EXPORTS_TOR_DATA_DIR}/app-${EXPORTS_APP_ID}-p2p/hostname"
export APP_BITCOIN_PURITY_RPC_HIDDEN_SERVICE="$(cat "${rpc_hidden_service_file}" 2>/dev/null || echo "notyetset.onion")"
export APP_BITCOIN_PURITY_P2P_HIDDEN_SERVICE="$(cat "${p2p_hidden_service_file}" 2>/dev/null || echo "notyetset.onion")"
