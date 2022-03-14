[
    {
        "name": "ipfs",
        "image": "${image}",
        "cpu": ${cpu},
        "memory": ${memory},
        "portMappings": [
            {
                "containerPort": ${api_port}
            },
            {
                "containerPort": ${gateway_port}
            },
            {
                "containerPort": ${healthcheck_port}
            },
            {
                "containerPort": ${swarm_ws_port}
            },
            {
                "containerPort": ${swarm_wss_port}
            }
        ],
        "environment": [
            {
                "name": "ANNOUNCE_ADDRESS_LIST",
                "value": "${announce_address_list}"
            },
            {
                "name": "AWS_BUCKET_NAME",
                "value": "${s3_bucket_name}"
            },
            {
                "name": "AWS_ACCESS_KEY_ID",
                "value": "${s3_access_key_id}"
            },
            {
                "name": "AWS_SECRET_ACCESS_KEY",
                "value": "${s3_secret_access_key}"
            },
            {
                "name": "CERAMIC_NETWORK",
                "value": "${ceramic_network}"
            },
            {
                "name": "DEBUG",
                "value": "${debug}"
            },
            {
                "name": "HEALTHCHECK_ENABLED",
                "value": "true"
            },
            {
                "name": "HEALTHCHECK_PORT",
                "value": "${healthcheck_port}"
            },
            {
                "name": "IPFS_API_PORT",
                "value": "${api_port}"
            },
            {
                "name": "IPFS_API_TIMEOUT",
                "value": "120000"
            },
            {
                "name": "IPFS_BACKEND_ROOT",
                "value": "${root_backend}"
            },
            {
                "name": "IPFS_BACKEND_BLOCKS",
                "value": "${blocks_backend}"
            },
            {
                "name": "IPFS_BACKEND_KEYS",
                "value": "${keys_backend}"
            },
            {
                "name": "IPFS_BACKEND_PINS",
                "value": "${pins_backend}"
            },
            {
                "name": "IPFS_BACKEND_DATASTORE",
                "value": "${datastore_backend}"
            },
            {
                "name": "IPFS_ENABLE_API",
                "value": "${enable_api}"
            },
            {
                "name": "IPFS_ENABLE_PUBSUB",
                "value": "${enable_pubsub}"
            },
            {
                "name": "IPFS_ENABLE_GATEWAY",
                "value": "${enable_gateway}"
            },
            {
                "name": "IPFS_GATEWAY_PORT",
                "value": "${gateway_port}"
            },
            {
                "name": "IPFS_DHT_SERVER_MODE",
                "value": "${dht_server_mode}"
            },
            {
                "name": "IPFS_PATH",
                "value": "${ipfs_path}"
            },
            {
                "name": "IPFS_SWARM_TCP_PORT",
                "value": "${swarm_tcp_port}"
            },
            {
                "name": "IPFS_SWARM_WS_PORT",
                "value": "${swarm_ws_port}"
            },
            {
                "name": "NODE_TLS_REJECT_UNAUTHORIZED",
                "value": "0"
            }
        ],
        "logConfiguration": {
            "logDriver": "awslogs",
            "options": {
                "awslogs-group": "${log_group}",
                "awslogs-region": "${region}",
                "awslogs-stream-prefix": "${log_stream_prefix}"
            }
        }
    }
]
