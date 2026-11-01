package zv;

import android.app.Application;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.os.Build;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public final class f {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final Lazy f79477f = LazyKt.a(LazyThreadSafetyMode.SYNCHRONIZED, com.transsion.upgradesdk.net.f.f56598a);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f79478a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public long f79480c;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final com.transsion.upgradesdk.net.g f79479b = new com.transsion.upgradesdk.net.g(this);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final String f79481d = "UpgradeSdkManager";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final e f79482e = new e(this);

    public static final void b(f fVar) {
        fVar.getClass();
        Intrinsics.z("connectivityManager");
        throw null;
    }

    public final void a() {
        if (this.f79478a) {
            return;
        }
        this.f79478a = true;
        Application application = xv.a.f78447a;
        Application application2 = null;
        if (application == null) {
            Intrinsics.z(MimeTypes.BASE_TYPE_APPLICATION);
            application = null;
        }
        Object systemService = application.getSystemService("connectivity");
        Intrinsics.f(systemService, "null cannot be cast to non-null type android.net.ConnectivityManager");
        ConnectivityManager connectivityManager = (ConnectivityManager) systemService;
        if (Build.VERSION.SDK_INT >= 24) {
            connectivityManager.registerDefaultNetworkCallback(this.f79482e);
            return;
        }
        IntentFilter intentFilter = new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE");
        Application application3 = xv.a.f78447a;
        if (application3 != null) {
            application2 = application3;
        } else {
            Intrinsics.z(MimeTypes.BASE_TYPE_APPLICATION);
        }
        application2.registerReceiver(this.f79479b, intentFilter);
    }
}
