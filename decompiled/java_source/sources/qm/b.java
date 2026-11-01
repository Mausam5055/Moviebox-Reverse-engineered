package qm;

import android.os.Looper;
import androidx.p009lifecycle.b0;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.t1;

/* JADX INFO: loaded from: classes6.dex */
public abstract class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f73639a = getClass().getSimpleName();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private volatile Object f73640b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private volatile b0 f73641c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private volatile io.reactivex.rxjava3.disposables.c f73642d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private volatile t1 f73643e;

    private final boolean e(b0 b0Var) {
        if (this.f73640b == null) {
            this.f73641c = b0Var;
            return true;
        }
        if (b0Var == null) {
            return false;
        }
        lg.a.C0828a c0828a = lg.a.f68839a;
        String TAG = this.f73639a;
        Intrinsics.g(TAG, "TAG");
        lg.a.C0828a.f(c0828a, TAG, "load data from preload", false, 4, null);
        b0Var.q(this.f73640b);
        this.f73640b = null;
        return false;
    }

    public static /* synthetic */ void g(b bVar, b0 b0Var, int i11, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: loadData");
        }
        if ((i11 & 1) != 0) {
            b0Var = null;
        }
        bVar.f(b0Var);
    }

    public final synchronized Object a() {
        Object obj;
        obj = this.f73640b;
        this.f73640b = null;
        return obj;
    }

    public final String b() {
        return this.f73639a;
    }

    public final void c(Object obj) {
        if (this.f73641c == null) {
            lg.a.C0828a c0828a = lg.a.f68839a;
            String TAG = this.f73639a;
            Intrinsics.g(TAG, "TAG");
            lg.a.C0828a.f(c0828a, TAG, "load data handleFailureResult :", false, 4, null);
        } else {
            lg.a.C0828a c0828a2 = lg.a.f68839a;
            String TAG2 = this.f73639a;
            Intrinsics.g(TAG2, "TAG");
            lg.a.C0828a.f(c0828a2, TAG2, "load data handleFailureResult : return to ui", false, 4, null);
            if (Intrinsics.c(Thread.currentThread(), Looper.getMainLooper().getThread())) {
                b0 b0Var = this.f73641c;
                if (b0Var != null) {
                    b0Var.q(obj);
                }
            } else {
                b0 b0Var2 = this.f73641c;
                if (b0Var2 != null) {
                    b0Var2.n(obj);
                }
            }
        }
        io.reactivex.rxjava3.disposables.c cVar = this.f73642d;
        if (cVar != null) {
            d.a(cVar);
        }
    }

    public final void d(Object obj) {
        if (this.f73641c == null) {
            this.f73640b = obj;
            lg.a.C0828a c0828a = lg.a.f68839a;
            String TAG = this.f73639a;
            Intrinsics.g(TAG, "TAG");
            lg.a.C0828a.f(c0828a, TAG, "load data handleSuccessResult : cache data", false, 4, null);
        } else {
            lg.a.C0828a c0828a2 = lg.a.f68839a;
            String TAG2 = this.f73639a;
            Intrinsics.g(TAG2, "TAG");
            lg.a.C0828a.f(c0828a2, TAG2, "load data handleSuccessResult : return to ui", false, 4, null);
            if (Intrinsics.c(Thread.currentThread(), Looper.getMainLooper().getThread())) {
                b0 b0Var = this.f73641c;
                if (b0Var != null) {
                    b0Var.q(obj);
                }
            } else {
                b0 b0Var2 = this.f73641c;
                if (b0Var2 != null) {
                    b0Var2.n(obj);
                }
            }
        }
        io.reactivex.rxjava3.disposables.c cVar = this.f73642d;
        if (cVar != null) {
            d.a(cVar);
        }
    }

    public final void f(b0 b0Var) {
        t1 t1Var;
        if (e(b0Var)) {
            lg.a.C0828a c0828a = lg.a.f68839a;
            String TAG = this.f73639a;
            Intrinsics.g(TAG, "TAG");
            lg.a.C0828a.f(c0828a, TAG, "loadData  disposable:" + this.f73642d + "  this:" + this, false, 4, null);
            io.reactivex.rxjava3.disposables.c cVar = this.f73642d;
            if ((cVar != null && !cVar.isDisposed()) || ((t1Var = this.f73643e) != null && t1Var.isActive())) {
                String TAG2 = this.f73639a;
                Intrinsics.g(TAG2, "TAG");
                lg.a.C0828a.f(c0828a, TAG2, "load data ing .. wait", false, 4, null);
            } else {
                String TAG3 = this.f73639a;
                Intrinsics.g(TAG3, "TAG");
                lg.a.C0828a.f(c0828a, TAG3, "loadDataFromService", false, 4, null);
                h(b0Var);
            }
        }
    }

    public abstract void h(b0 b0Var);

    public final void i(io.reactivex.rxjava3.disposables.c cVar) {
        this.f73642d = cVar;
    }

    public final void j(t1 t1Var) {
        this.f73643e = t1Var;
    }
}
