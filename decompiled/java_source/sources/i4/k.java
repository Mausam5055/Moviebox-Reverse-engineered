package i4;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import androidx.work.impl.utils.o;
import androidx.work.t;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public final class k extends g {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final ConnectivityManager f64957f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Object f64958g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private volatile boolean f64959h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final a f64960i;

    public static final class a extends ConnectivityManager.NetworkCallback {
        a() {
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onBlockedStatusChanged(Network network, boolean z10) {
            Intrinsics.h(network, "network");
            if (Intrinsics.c(network, k.this.f64957f.getActiveNetwork())) {
                t.e().a(i.f64955a, "Network blocked status changed: " + z10);
                androidx.work.impl.constraints.g gVar = (androidx.work.impl.constraints.g) k.this.e();
                Object obj = k.this.f64958g;
                k kVar = k.this;
                synchronized (obj) {
                    if (kVar.f64959h == z10) {
                        return;
                    }
                    kVar.f64959h = z10;
                    Unit unit = Unit.f67061a;
                    k.this.h(androidx.work.impl.constraints.g.b(gVar, false, false, false, false, z10, 15, null));
                }
            }
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onCapabilitiesChanged(Network network, NetworkCapabilities capabilities) {
            Intrinsics.h(network, "network");
            Intrinsics.h(capabilities, "capabilities");
            t.e().a(i.f64955a, "Network capabilities changed: " + capabilities);
            k kVar = k.this;
            kVar.h(i.c(kVar.f64957f, k.this.f64959h));
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onLost(Network network) {
            Intrinsics.h(network, "network");
            t.e().a(i.f64955a, "Network connection lost");
            k.this.h(new androidx.work.impl.constraints.g(false, false, false, false, false));
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public k(Context context, j4.c taskExecutor) {
        super(context, taskExecutor);
        Intrinsics.h(context, "context");
        Intrinsics.h(taskExecutor, "taskExecutor");
        Object systemService = d().getSystemService("connectivity");
        Intrinsics.f(systemService, "null cannot be cast to non-null type android.net.ConnectivityManager");
        this.f64957f = (ConnectivityManager) systemService;
        this.f64958g = new Object();
        this.f64960i = new a();
    }

    @Override // i4.g
    public void i() {
        try {
            t.e().a(i.f64955a, "Registering network callback");
            o.a(this.f64957f, this.f64960i);
        } catch (IllegalArgumentException e11) {
            t.e().d(i.f64955a, "Received exception while registering network callback", e11);
        } catch (SecurityException e12) {
            t.e().d(i.f64955a, "Received exception while registering network callback", e12);
        }
    }

    @Override // i4.g
    public void j() {
        try {
            t.e().a(i.f64955a, "Unregistering network callback");
            this.f64957f.unregisterNetworkCallback(this.f64960i);
        } catch (IllegalArgumentException e11) {
            t.e().d(i.f64955a, "Received exception while unregistering network callback", e11);
        } catch (SecurityException e12) {
            t.e().d(i.f64955a, "Received exception while unregistering network callback", e12);
        }
    }

    @Override // i4.g
    /* JADX INFO: renamed from: o, reason: merged with bridge method [inline-methods] */
    public androidx.work.impl.constraints.g f() {
        return i.c(this.f64957f, this.f64959h);
    }
}
