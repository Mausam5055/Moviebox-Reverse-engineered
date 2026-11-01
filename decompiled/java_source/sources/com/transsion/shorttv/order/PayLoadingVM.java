package com.transsion.shorttv.order;

import android.os.SystemClock;
import androidx.p009lifecycle.b0;
import androidx.p009lifecycle.t0;
import androidx.p009lifecycle.u0;
import com.transsion.shorttv.order.bean.CreatePaynicornOrderReqBean;
import com.transsion.shorttv.order.bean.HttpErrorBodyBean;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class PayLoadingVM extends t0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f53036a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private long f53037b = 3000;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private long f53038c = 3000;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final b0 f53039d = new b0();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final b0 f53040e = new b0();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final b0 f53041f = new b0();

    private final String k() {
        String simpleName = PayLoadingVM.class.getSimpleName();
        Intrinsics.g(simpleName, "getSimpleName(...)");
        return simpleName;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void o(String str, String str2, String str3, String str4, boolean z10) {
        int i11 = this.f53036a;
        if (i11 >= 3) {
            this.f53041f.n(new HttpErrorBodyBean(str2, str, null, 4, null));
            return;
        }
        this.f53036a = i11 + 1;
        c.f53045a.a(k() + " --> retry() --> code = " + str + " -- msg = " + str2 + " --> retryCount = " + this.f53036a);
        kotlinx.coroutines.k.d(u0.a(this), null, null, new PayLoadingVM$retry$1(this, SystemClock.elapsedRealtime(), str3, str4, z10, null), 3, null);
    }

    public final void i(String str, String str2, boolean z10) {
        kotlinx.coroutines.k.d(u0.a(this), null, null, new PayLoadingVM$checkPayOrderId$1(str, str2, z10, this, null), 3, null);
    }

    public final void j(CreatePaynicornOrderReqBean createPaynicornOrderReqBean) {
        kotlinx.coroutines.k.d(u0.a(this), null, null, new PayLoadingVM$createPayOrderId$1(createPaynicornOrderReqBean, this, null), 3, null);
    }

    public final b0 l() {
        return this.f53039d;
    }

    public final b0 m() {
        return this.f53040e;
    }

    public final b0 n() {
        return this.f53041f;
    }
}
