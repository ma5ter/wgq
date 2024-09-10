ccflags-y := -D'pr_fmt(fmt)=KBUILD_MODNAME ": " fmt'
ccflags-$(DEBUG) += -DDEBUG
wireguard_quic-y := main.o
wireguard_quic-y += noise.o
wireguard_quic-y += device.o
wireguard_quic-y += peer.o
wireguard_quic-y += timers.o
wireguard_quic-y += queueing.o
wireguard_quic-y += send.o
wireguard_quic-y += receive.o
wireguard_quic-y += socket.o
wireguard_quic-y += peerlookup.o
wireguard_quic-y += allowedips.o
wireguard_quic-y += ratelimiter.o
wireguard_quic-y += cookie.o
wireguard_quic-y += netlink.o
obj-m := wireguard_quic.o
