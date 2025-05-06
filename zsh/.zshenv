# Rust package manager
. "$HOME/.cargo/env"

# Netscope Cert Stuff for Github Copilot? https://cvent.slack.com/archives/C06G73L582D/p1713561127222489?thread_ts=1713212064.517729&cid=C06G73L582D
export REQUESTS_CA_BUNDLE=/Library/Application\ Support/Netskope/STAgent/download/nscacert_combined.pem
export NODE_EXTRA_CA_CERTS=$REQUESTS_CA_BUNDLE
