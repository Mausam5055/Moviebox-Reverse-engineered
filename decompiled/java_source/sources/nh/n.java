package nh;

import android.net.Network;
import android.net.NetworkCapabilities;

/* JADX INFO: loaded from: classes4.dex */
public interface n {

    public static final class a {
        public static void a(n nVar) {
        }
    }

    void onConnected();

    void onConnected(Network network, NetworkCapabilities networkCapabilities);

    void onDisconnected();
}
