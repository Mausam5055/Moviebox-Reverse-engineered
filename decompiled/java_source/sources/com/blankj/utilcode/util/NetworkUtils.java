package com.blankj.utilcode.util;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.wifi.ScanResult;
import android.net.wifi.WifiManager;
import android.text.TextUtils;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.net.SocketException;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Set;
import java.util.Timer;
import java.util.TimerTask;
import java.util.concurrent.CopyOnWriteArraySet;
import org.mvel2.ast.ASTNode;

/* JADX INFO: loaded from: classes2.dex */
public abstract class NetworkUtils {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Set f20017a = new CopyOnWriteArraySet();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static Timer f20018b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static b f20019c;

    /* JADX INFO: renamed from: com.blankj.utilcode.util.NetworkUtils$1, reason: invalid class name */
    class AnonymousClass1 extends Utils.Task<Boolean> {
        AnonymousClass1(Utils.b bVar) {
            super(bVar);
        }

        @Override // com.blankj.utilcode.util.ThreadUtils.Task
        public Boolean doInBackground() {
            return Boolean.valueOf(NetworkUtils.n());
        }
    }

    /* JADX INFO: renamed from: com.blankj.utilcode.util.NetworkUtils$2, reason: invalid class name */
    class AnonymousClass2 extends Utils.Task<Boolean> {
        final /* synthetic */ String val$ip;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(Utils.b bVar, String str) {
            super(bVar);
            this.val$ip = str;
        }

        @Override // com.blankj.utilcode.util.ThreadUtils.Task
        public Boolean doInBackground() {
            return Boolean.valueOf(NetworkUtils.q(this.val$ip));
        }
    }

    /* JADX INFO: renamed from: com.blankj.utilcode.util.NetworkUtils$3, reason: invalid class name */
    class AnonymousClass3 extends Utils.Task<Boolean> {
        final /* synthetic */ String val$domain;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass3(Utils.b bVar, String str) {
            super(bVar);
            this.val$domain = str;
        }

        @Override // com.blankj.utilcode.util.ThreadUtils.Task
        public Boolean doInBackground() {
            return Boolean.valueOf(NetworkUtils.p(this.val$domain));
        }
    }

    /* JADX INFO: renamed from: com.blankj.utilcode.util.NetworkUtils$4, reason: invalid class name */
    class AnonymousClass4 extends Utils.Task<Boolean> {
        AnonymousClass4(Utils.b bVar) {
            super(bVar);
        }

        @Override // com.blankj.utilcode.util.ThreadUtils.Task
        public Boolean doInBackground() {
            return Boolean.valueOf(NetworkUtils.u());
        }
    }

    /* JADX INFO: renamed from: com.blankj.utilcode.util.NetworkUtils$5, reason: invalid class name */
    class AnonymousClass5 extends Utils.Task<String> {
        final /* synthetic */ boolean val$useIPv4;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass5(Utils.b bVar, boolean z10) {
            super(bVar);
            this.val$useIPv4 = z10;
        }

        @Override // com.blankj.utilcode.util.ThreadUtils.Task
        public String doInBackground() {
            return NetworkUtils.j(this.val$useIPv4);
        }
    }

    /* JADX INFO: renamed from: com.blankj.utilcode.util.NetworkUtils$6, reason: invalid class name */
    class AnonymousClass6 extends Utils.Task<String> {
        final /* synthetic */ String val$domain;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass6(Utils.b bVar, String str) {
            super(bVar);
            this.val$domain = str;
        }

        @Override // com.blankj.utilcode.util.ThreadUtils.Task
        public String doInBackground() {
            return NetworkUtils.i(this.val$domain);
        }
    }

    /* JADX INFO: renamed from: com.blankj.utilcode.util.NetworkUtils$7, reason: invalid class name */
    class AnonymousClass7 implements Runnable {
        final /* synthetic */ Utils.b val$consumer;

        AnonymousClass7(Utils.b bVar) {
            this.val$consumer = bVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (NetworkUtils.f20017a.isEmpty()) {
                NetworkUtils.f20017a.add(this.val$consumer);
                NetworkUtils.x();
            } else {
                this.val$consumer.accept(NetworkUtils.f20019c);
                NetworkUtils.f20017a.add(this.val$consumer);
            }
        }
    }

    /* JADX INFO: renamed from: com.blankj.utilcode.util.NetworkUtils$9, reason: invalid class name */
    class AnonymousClass9 implements Runnable {
        final /* synthetic */ Utils.b val$consumer;

        AnonymousClass9(Utils.b bVar) {
            this.val$consumer = bVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            NetworkUtils.f20017a.remove(this.val$consumer);
            if (NetworkUtils.f20017a.isEmpty()) {
                NetworkUtils.z();
            }
        }
    }

    public static final class NetworkChangedReceiver extends BroadcastReceiver {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private NetworkType f20020a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private Set f20021b = new HashSet();

        private static class a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private static final NetworkChangedReceiver f20022a = new NetworkChangedReceiver();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static NetworkChangedReceiver e() {
            return a.f20022a;
        }

        void f(final a aVar) {
            if (aVar == null) {
                return;
            }
            e0.J(new Runnable() { // from class: com.blankj.utilcode.util.NetworkUtils.NetworkChangedReceiver.1
                @Override // java.lang.Runnable
                public void run() {
                    int size = NetworkChangedReceiver.this.f20021b.size();
                    NetworkChangedReceiver.this.f20021b.add(aVar);
                    if (size == 0 && NetworkChangedReceiver.this.f20021b.size() == 1) {
                        NetworkChangedReceiver.this.f20020a = NetworkUtils.k();
                        Utils.a().registerReceiver(NetworkChangedReceiver.e(), new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
                    }
                }
            });
        }

        void g(final a aVar) {
            if (aVar == null) {
                return;
            }
            e0.J(new Runnable() { // from class: com.blankj.utilcode.util.NetworkUtils.NetworkChangedReceiver.2
                @Override // java.lang.Runnable
                public void run() {
                    int size = NetworkChangedReceiver.this.f20021b.size();
                    NetworkChangedReceiver.this.f20021b.remove(aVar);
                    if (size == 1 && NetworkChangedReceiver.this.f20021b.size() == 0) {
                        Utils.a().unregisterReceiver(NetworkChangedReceiver.e());
                    }
                }
            });
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if ("android.net.conn.CONNECTIVITY_CHANGE".equals(intent.getAction())) {
                e0.K(new Runnable() { // from class: com.blankj.utilcode.util.NetworkUtils.NetworkChangedReceiver.3
                    @Override // java.lang.Runnable
                    public void run() {
                        NetworkType networkTypeK = NetworkUtils.k();
                        if (NetworkChangedReceiver.this.f20020a == networkTypeK) {
                            return;
                        }
                        NetworkChangedReceiver.this.f20020a = networkTypeK;
                        if (networkTypeK == NetworkType.NETWORK_NO) {
                            Iterator it = NetworkChangedReceiver.this.f20021b.iterator();
                            while (it.hasNext()) {
                                ((a) it.next()).onDisconnected();
                            }
                        } else {
                            Iterator it2 = NetworkChangedReceiver.this.f20021b.iterator();
                            while (it2.hasNext()) {
                                ((a) it2.next()).i(networkTypeK);
                            }
                        }
                    }
                }, 1000L);
            }
        }
    }

    public enum NetworkType {
        NETWORK_ETHERNET,
        NETWORK_WIFI,
        NETWORK_5G,
        NETWORK_4G,
        NETWORK_3G,
        NETWORK_2G,
        NETWORK_UNKNOWN,
        NETWORK_NO
    }

    public interface a {
        void i(NetworkType networkType);

        void onDisconnected();
    }

    public static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private List f20023a = new ArrayList();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private List f20024b = new ArrayList();

        private static List b(List list) {
            ScanResult scanResult;
            if (list == null || list.isEmpty()) {
                return new ArrayList();
            }
            LinkedHashMap linkedHashMap = new LinkedHashMap(list.size());
            Iterator it = list.iterator();
            while (it.hasNext()) {
                ScanResult scanResult2 = (ScanResult) it.next();
                if (!TextUtils.isEmpty(scanResult2.SSID) && ((scanResult = (ScanResult) linkedHashMap.get(scanResult2.SSID)) == null || scanResult.level < scanResult2.level)) {
                    linkedHashMap.put(scanResult2.SSID, scanResult2);
                }
            }
            return new ArrayList(linkedHashMap.values());
        }

        public void c(List list) {
            this.f20023a = list;
            this.f20024b = b(list);
        }
    }

    public static void A(a aVar) {
        NetworkChangedReceiver.e().g(aVar);
    }

    private static NetworkInfo h() {
        ConnectivityManager connectivityManager = (ConnectivityManager) Utils.a().getSystemService("connectivity");
        if (connectivityManager == null) {
            return null;
        }
        return connectivityManager.getActiveNetworkInfo();
    }

    public static String i(String str) {
        try {
            return InetAddress.getByName(str).getHostAddress();
        } catch (UnknownHostException e11) {
            e11.printStackTrace();
            return "";
        }
    }

    public static String j(boolean z10) {
        try {
            Enumeration<NetworkInterface> networkInterfaces = NetworkInterface.getNetworkInterfaces();
            LinkedList<InetAddress> linkedList = new LinkedList();
            while (networkInterfaces.hasMoreElements()) {
                NetworkInterface networkInterfaceNextElement = networkInterfaces.nextElement();
                if (networkInterfaceNextElement.isUp() && !networkInterfaceNextElement.isLoopback()) {
                    Enumeration<InetAddress> inetAddresses = networkInterfaceNextElement.getInetAddresses();
                    while (inetAddresses.hasMoreElements()) {
                        linkedList.addFirst(inetAddresses.nextElement());
                    }
                }
            }
            for (InetAddress inetAddress : linkedList) {
                if (!inetAddress.isLoopbackAddress()) {
                    String hostAddress = inetAddress.getHostAddress();
                    boolean z11 = hostAddress.indexOf(58) < 0;
                    if (z10) {
                        if (z11) {
                            return hostAddress;
                        }
                    } else if (!z11) {
                        int iIndexOf = hostAddress.indexOf(37);
                        return iIndexOf < 0 ? hostAddress.toUpperCase() : hostAddress.substring(0, iIndexOf).toUpperCase();
                    }
                }
            }
            return "";
        } catch (SocketException e11) {
            e11.printStackTrace();
            return "";
        }
    }

    public static NetworkType k() {
        if (r()) {
            return NetworkType.NETWORK_ETHERNET;
        }
        NetworkInfo networkInfoH = h();
        if (networkInfoH == null || !networkInfoH.isAvailable()) {
            return NetworkType.NETWORK_NO;
        }
        if (networkInfoH.getType() == 1) {
            return NetworkType.NETWORK_WIFI;
        }
        if (networkInfoH.getType() != 0) {
            return NetworkType.NETWORK_UNKNOWN;
        }
        switch (networkInfoH.getSubtype()) {
            case 1:
            case 2:
            case 4:
            case 7:
            case 11:
            case 16:
                return NetworkType.NETWORK_2G;
            case 3:
            case 5:
            case 6:
            case 8:
            case 9:
            case 10:
            case 12:
            case 14:
            case 15:
            case 17:
                return NetworkType.NETWORK_3G;
            case 13:
            case 18:
                return NetworkType.NETWORK_4G;
            case 19:
            default:
                String subtypeName = networkInfoH.getSubtypeName();
                return (subtypeName.equalsIgnoreCase("TD-SCDMA") || subtypeName.equalsIgnoreCase("WCDMA") || subtypeName.equalsIgnoreCase("CDMA2000")) ? NetworkType.NETWORK_3G : NetworkType.NETWORK_UNKNOWN;
            case 20:
                return NetworkType.NETWORK_5G;
        }
    }

    public static boolean l() {
        WifiManager wifiManager = (WifiManager) Utils.a().getSystemService("wifi");
        if (wifiManager == null) {
            return false;
        }
        return wifiManager.isWifiEnabled();
    }

    public static b m() {
        List<ScanResult> scanResults;
        b bVar = new b();
        if (l() && (scanResults = ((WifiManager) Utils.a().getSystemService("wifi")).getScanResults()) != null) {
            bVar.c(scanResults);
        }
        return bVar;
    }

    public static boolean n() {
        return o() || q(null);
    }

    public static boolean o() {
        return p("");
    }

    public static boolean p(String str) {
        if (TextUtils.isEmpty(str)) {
            str = "www.baidu.com";
        }
        try {
            return InetAddress.getByName(str) != null;
        } catch (UnknownHostException e11) {
            e11.printStackTrace();
            return false;
        }
    }

    public static boolean q(String str) {
        if (TextUtils.isEmpty(str)) {
            str = "223.5.5.5";
        }
        return z.a(String.format("ping -c 1 %s", str), false).f20123a == 0;
    }

    private static boolean r() {
        NetworkInfo networkInfo;
        NetworkInfo.State state;
        ConnectivityManager connectivityManager = (ConnectivityManager) Utils.a().getSystemService("connectivity");
        if (connectivityManager == null || (networkInfo = connectivityManager.getNetworkInfo(9)) == null || (state = networkInfo.getState()) == null) {
            return false;
        }
        return state == NetworkInfo.State.CONNECTED || state == NetworkInfo.State.CONNECTING;
    }

    private static boolean s(ScanResult scanResult, ScanResult scanResult2) {
        return scanResult != null && scanResult2 != null && e0.e(scanResult.BSSID, scanResult2.BSSID) && e0.e(scanResult.SSID, scanResult2.SSID) && e0.e(scanResult.capabilities, scanResult2.capabilities) && scanResult.level == scanResult2.level;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean t(List list, List list2) {
        if (list == null && list2 == null) {
            return true;
        }
        if (list == null || list2 == null || list.size() != list2.size()) {
            return false;
        }
        for (int i11 = 0; i11 < list.size(); i11++) {
            if (!s((ScanResult) list.get(i11), (ScanResult) list2.get(i11))) {
                return false;
            }
        }
        return true;
    }

    public static boolean u() {
        return l() && n();
    }

    public static void v() {
        Utils.a().startActivity(new Intent("android.settings.WIRELESS_SETTINGS").setFlags(ASTNode.DEOP));
    }

    public static void w(a aVar) {
        NetworkChangedReceiver.e().f(aVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void x() {
        f20019c = new b();
        Timer timer = new Timer();
        f20018b = timer;
        timer.schedule(new TimerTask() { // from class: com.blankj.utilcode.util.NetworkUtils.8
            @Override // java.util.TimerTask, java.lang.Runnable
            public void run() {
                NetworkUtils.y();
                b bVarM = NetworkUtils.m();
                if (NetworkUtils.t(NetworkUtils.f20019c.f20023a, bVarM.f20023a)) {
                    return;
                }
                b unused = NetworkUtils.f20019c = bVarM;
                e0.J(new Runnable() { // from class: com.blankj.utilcode.util.NetworkUtils.8.1
                    @Override // java.lang.Runnable
                    public void run() {
                        Iterator it = NetworkUtils.f20017a.iterator();
                        while (it.hasNext()) {
                            ((Utils.b) it.next()).accept(NetworkUtils.f20019c);
                        }
                    }
                });
            }
        }, 0L, 3000L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void y() {
        if (l()) {
            ((WifiManager) Utils.a().getSystemService("wifi")).startScan();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void z() {
        Timer timer = f20018b;
        if (timer != null) {
            timer.cancel();
            f20018b = null;
        }
    }
}
