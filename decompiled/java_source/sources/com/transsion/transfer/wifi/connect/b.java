package com.transsion.transfer.wifi.connect;

import android.net.Network;
import java.net.InetAddress;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public interface b {

    public static final class a {
        public static void a(b bVar, int i11) {
        }

        public static void b(b bVar, Network network) {
            Intrinsics.h(network, "network");
        }

        public static void c(b bVar, String ip2) {
            Intrinsics.h(ip2, "ip");
        }

        public static void d(b bVar) {
        }

        public static void e(b bVar, InetAddress inetAddress) {
        }
    }

    void a(Network network);

    void b(int i11);

    void c(InetAddress inetAddress);

    void d(int i11);

    void e(String str);

    void onStart();
}
