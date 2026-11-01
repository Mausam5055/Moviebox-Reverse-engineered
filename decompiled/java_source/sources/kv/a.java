package kv;

import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkInfo;
import com.blankj.utilcode.util.Utils;
import com.transsion.transfer.wifi.util.g;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f68393a = new a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static Network f68394b;

    private a() {
    }

    private final String a() {
        String simpleName = a.class.getSimpleName();
        Intrinsics.g(simpleName, "getSimpleName(...)");
        return simpleName;
    }

    public final void b() {
        Object objM454constructorimpl;
        try {
            Result.Companion companion = Result.INSTANCE;
            if (f68394b != null) {
                f68394b = null;
            }
            Object systemService = Utils.a().getApplicationContext().getSystemService("connectivity");
            ConnectivityManager connectivityManager = systemService instanceof ConnectivityManager ? (ConnectivityManager) systemService : null;
            if (connectivityManager != null) {
                connectivityManager.bindProcessToNetwork(null);
            }
            g.b(g.f55970a, f68393a.a() + " --> releaseDefaultNetwork() --> Success", false, 2, null);
            objM454constructorimpl = Result.m454constructorimpl(Unit.f67061a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
        }
        Throwable thM457exceptionOrNullimpl = Result.m457exceptionOrNullimpl(objM454constructorimpl);
        if (thM457exceptionOrNullimpl == null) {
            return;
        }
        g.d(g.f55970a, f68393a.a() + " --> releaseDefaultNetwork() --> it = " + thM457exceptionOrNullimpl, false, 2, null);
    }

    public final boolean c() {
        NetworkInfo networkInfo;
        Object systemService = Utils.a().getApplicationContext().getSystemService("connectivity");
        Intrinsics.f(systemService, "null cannot be cast to non-null type android.net.ConnectivityManager");
        ConnectivityManager connectivityManager = (ConnectivityManager) systemService;
        int i11 = 0;
        boolean z10 = false;
        do {
            i11++;
            Network[] allNetworks = connectivityManager.getAllNetworks();
            Intrinsics.g(allNetworks, "getAllNetworks(...)");
            g.b(g.f55970a, a() + " --> setProcessDefaultNetwork() --> setProcessDefaultNetwork size = " + allNetworks.length, false, 2, null);
            int length = allNetworks.length;
            for (int i12 = 0; i12 < length; i12++) {
                Network network = allNetworks[i12];
                try {
                    networkInfo = connectivityManager.getNetworkInfo(network);
                } catch (Exception e11) {
                    e11.printStackTrace();
                    networkInfo = null;
                }
                g gVar = g.f55970a;
                g.b(gVar, a() + " --> setProcessDefaultNetwork() --> setProcessDefaultNetwork = " + networkInfo + ", network = " + network, false, 2, null);
                if (networkInfo != null && networkInfo.getType() == 1) {
                    g.b(gVar, a() + " --> setProcessDefaultNetwork() --> setProcessDefaultNetwork2 = " + network, false, 2, null);
                    f68394b = network;
                    connectivityManager.bindProcessToNetwork(network);
                    z10 = true;
                }
            }
            if (z10) {
                g.b(g.f55970a, a() + " --> setProcessDefaultNetwork() --> setProcessDefaultNetwork OK!", false, 2, null);
                break;
            }
            g.b(g.f55970a, a() + " --> setProcessDefaultNetwork() --> setProcessDefaultNetwork failed, start to sleep", false, 2, null);
        } while (i11 < 20);
        return z10;
    }
}
