package com.transsion.transfer.wifi.util;

import android.net.wifi.p2p.WifiP2pManager;
import android.os.Build;
import com.cloud.tmc.kernel.constants.TmcConstants;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final i f55971a = new i();

    public static final class a implements WifiP2pManager.ActionListener {
        a() {
        }

        @Override // android.net.wifi.p2p.WifiP2pManager.ActionListener
        public void onFailure(int i11) {
            g gVar = g.f55970a;
            i iVar = i.f55971a;
            g.b(gVar, iVar.c() + " --> release() --> clearLocalServices() --> onFailure() --> reason = " + iVar.b(i11), false, 2, null);
        }

        @Override // android.net.wifi.p2p.WifiP2pManager.ActionListener
        public void onSuccess() {
            g.b(g.f55970a, i.f55971a.c() + " --> release() --> clearLocalServices() --> onSuccess()", false, 2, null);
        }
    }

    public static final class b implements WifiP2pManager.ActionListener {
        b() {
        }

        @Override // android.net.wifi.p2p.WifiP2pManager.ActionListener
        public void onFailure(int i11) {
            g gVar = g.f55970a;
            i iVar = i.f55971a;
            g.b(gVar, iVar.c() + " --> release() --> removeGroup() --> onFailure() --> reason = " + iVar.b(i11), false, 2, null);
        }

        @Override // android.net.wifi.p2p.WifiP2pManager.ActionListener
        public void onSuccess() {
            g.b(g.f55970a, i.f55971a.c() + " --> release() --> removeGroup() --> onSuccess()", false, 2, null);
        }
    }

    public static final class c implements WifiP2pManager.ActionListener {
        c() {
        }

        @Override // android.net.wifi.p2p.WifiP2pManager.ActionListener
        public void onFailure(int i11) {
            g gVar = g.f55970a;
            i iVar = i.f55971a;
            g.b(gVar, iVar.c() + " --> release() --> cancelConnect() --> onFailure() --> reason = " + iVar.b(i11), false, 2, null);
        }

        @Override // android.net.wifi.p2p.WifiP2pManager.ActionListener
        public void onSuccess() {
            g.b(g.f55970a, i.f55971a.c() + " --> release() --> cancelConnect() --> onSuccess()", false, 2, null);
        }
    }

    public static final class d implements WifiP2pManager.ActionListener {
        d() {
        }

        @Override // android.net.wifi.p2p.WifiP2pManager.ActionListener
        public void onFailure(int i11) {
            g gVar = g.f55970a;
            i iVar = i.f55971a;
            g.b(gVar, iVar.c() + " --> release() --> stopPeerDiscovery() --> onFailure() --> reason = " + iVar.b(i11), false, 2, null);
        }

        @Override // android.net.wifi.p2p.WifiP2pManager.ActionListener
        public void onSuccess() {
            g.b(g.f55970a, i.f55971a.c() + " --> release() --> stopPeerDiscovery() --> onSuccess()", false, 2, null);
        }
    }

    private i() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String c() {
        String simpleName = i.class.getSimpleName();
        Intrinsics.g(simpleName, "getSimpleName(...)");
        return simpleName;
    }

    public final String b(int i11) {
        if (i11 == 0) {
            return "0 -- 表示操作由于内部错误而失败。";
        }
        if (i11 == 1) {
            return "1 -- 表示操作失败，因为设备不支持 p2p。";
        }
        if (i11 != 2) {
            return i11 != 3 ? TmcConstants.ROUTE_UNKNOWN : "3 -- 表示 {@link discoveryServices} 失败，因为没有添加服务请求。使用 {@link addServiceRequest} 添加服务请求。";
        }
        return "2 -- 表示操作失败，因为框架正忙，无法处理请求";
    }

    public final void d(WifiP2pManager wifiP2pManager, WifiP2pManager.Channel channel, boolean z10, boolean z11, boolean z12, boolean z13) {
        if (channel != null) {
            if (Build.VERSION.SDK_INT > 26) {
                channel.close();
                g.b(g.f55970a, f55971a.c() + " --> release() --> WifiP2pManager.close() --> API27才有这个方法 --> 成功", false, 2, null);
            }
            if (z13 && wifiP2pManager != null) {
                wifiP2pManager.clearLocalServices(channel, new a());
            }
            if (z10 && wifiP2pManager != null) {
                wifiP2pManager.removeGroup(channel, new b());
            }
            if (z11 && wifiP2pManager != null) {
                wifiP2pManager.cancelConnect(channel, new c());
            }
            if (!z12 || wifiP2pManager == null) {
                return;
            }
            wifiP2pManager.stopPeerDiscovery(channel, new d());
        }
    }
}
