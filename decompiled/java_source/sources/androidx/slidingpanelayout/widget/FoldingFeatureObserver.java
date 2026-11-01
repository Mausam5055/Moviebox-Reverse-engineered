package androidx.slidingpanelayout.widget;

import android.app.Activity;
import androidx.window.layout.a0;
import androidx.window.layout.l;
import androidx.window.layout.r;
import androidx.window.layout.x;
import java.util.Iterator;
import java.util.concurrent.Executor;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.k;
import kotlinx.coroutines.m1;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.t1;

/* JADX INFO: loaded from: classes2.dex */
public final class FoldingFeatureObserver {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final x f14838a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Executor f14839b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private t1 f14840c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private a f14841d;

    public interface a {
        void a(r rVar);
    }

    public FoldingFeatureObserver(x windowInfoTracker, Executor executor) {
        Intrinsics.h(windowInfoTracker, "windowInfoTracker");
        Intrinsics.h(executor, "executor");
        this.f14838a = windowInfoTracker;
        this.f14839b = executor;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final r d(a0 a0Var) {
        Object next;
        Iterator it = a0Var.a().iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (!(((l) next) instanceof r));
        if (next instanceof r) {
            return (r) next;
        }
        return null;
    }

    public final void e(Activity activity) {
        Intrinsics.h(activity, "activity");
        t1 t1Var = this.f14840c;
        if (t1Var != null) {
            t1.a.b(t1Var, null, 1, null);
        }
        this.f14840c = k.d(o0.a(m1.b(this.f14839b)), null, null, new FoldingFeatureObserver$registerLayoutStateChangeCallback$1(this, activity, null), 3, null);
    }

    public final void f(a onFoldingFeatureChangeListener) {
        Intrinsics.h(onFoldingFeatureChangeListener, "onFoldingFeatureChangeListener");
        this.f14841d = onFoldingFeatureChangeListener;
    }

    public final void g() {
        t1 t1Var = this.f14840c;
        if (t1Var == null) {
            return;
        }
        t1.a.b(t1Var, null, 1, null);
    }
}
