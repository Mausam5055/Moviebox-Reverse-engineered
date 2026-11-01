package com.transsion.ad.strategy;

import android.graphics.Rect;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import java.util.concurrent.CopyOnWriteArrayList;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class r {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final r f42240a = new r();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final CopyOnWriteArrayList f42241b = new CopyOnWriteArrayList();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Handler f42242c = new Handler(Looper.getMainLooper());

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final Runnable f42243d = new Runnable() { // from class: com.transsion.ad.strategy.l
        @Override // java.lang.Runnable
        public final void run() {
            r.m();
        }
    };

    public interface a {

        /* JADX INFO: renamed from: com.transsion.ad.strategy.r$a$a, reason: collision with other inner class name */
        public static final class C0599a {
            public static double a(a aVar) {
                return 10.0d;
            }
        }

        double getVisibilityThreshold();

        View getVisibilityView();

        void onVisibilityChanged(boolean z10);
    }

    private r() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void h(a aVar) {
        CopyOnWriteArrayList copyOnWriteArrayList = f42241b;
        if (!copyOnWriteArrayList.contains(aVar)) {
            copyOnWriteArrayList.add(aVar);
        }
        if (copyOnWriteArrayList.size() == 1) {
            f42240a.p();
        }
    }

    private final void i(View view, Function1 function1) {
        if (view != null) {
            if (view.getWindowVisibility() != 0) {
                if (function1 != null) {
                    function1.invoke(Double.valueOf(0.0d));
                    return;
                }
                return;
            }
            Rect rect = new Rect();
            if (!view.getGlobalVisibleRect(rect) || !view.isShown()) {
                if (function1 != null) {
                    function1.invoke(Double.valueOf(0.0d));
                    return;
                }
                return;
            }
            double dHeight = ((double) rect.height()) * ((double) rect.width());
            double height = ((double) view.getHeight()) * ((double) view.getWidth());
            if (height <= 0.0d) {
                if (function1 != null) {
                    function1.invoke(Double.valueOf(0.0d));
                }
            } else {
                double d11 = (dHeight * ((double) 100)) / height;
                if (function1 != null) {
                    function1.invoke(Double.valueOf(d11));
                }
            }
        }
    }

    private final void k() {
        f42242c.removeCallbacks(f42243d);
        for (final a aVar : f42241b) {
            f42240a.i(aVar.getVisibilityView(), new Function1() { // from class: com.transsion.ad.strategy.m
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return r.l(aVar, ((Double) obj).doubleValue());
                }
            });
        }
        if (f42241b.isEmpty()) {
            return;
        }
        f42242c.postDelayed(f42243d, 500L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit l(a aVar, double d11) {
        if (d11 >= aVar.getVisibilityThreshold()) {
            aVar.onVisibilityChanged(true);
        } else {
            aVar.onVisibilityChanged(false);
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void m() {
        f42240a.k();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void o(a aVar) {
        f42241b.remove(aVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void q() {
        f42240a.k();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void s() {
        f42242c.removeCallbacks(f42243d);
    }

    public final void g(final a listener) {
        Intrinsics.h(listener, "listener");
        f42242c.post(new Runnable() { // from class: com.transsion.ad.strategy.n
            @Override // java.lang.Runnable
            public final void run() {
                r.h(listener);
            }
        });
    }

    public final boolean j(View view) {
        if (view == null || view.getWindowVisibility() != 0) {
            return false;
        }
        Rect rect = new Rect();
        if (!view.getGlobalVisibleRect(rect) || !view.isShown()) {
            return false;
        }
        double dHeight = ((double) rect.height()) * ((double) rect.width());
        double height = ((double) view.getHeight()) * ((double) view.getWidth());
        return height > 0.0d && (dHeight * ((double) 100)) / height > 0.0d;
    }

    public final void n(final a listener) {
        Intrinsics.h(listener, "listener");
        f42242c.post(new Runnable() { // from class: com.transsion.ad.strategy.o
            @Override // java.lang.Runnable
            public final void run() {
                r.o(listener);
            }
        });
    }

    public final void p() {
        f42242c.post(new Runnable() { // from class: com.transsion.ad.strategy.p
            @Override // java.lang.Runnable
            public final void run() {
                r.q();
            }
        });
    }

    public final void r() {
        f42242c.post(new Runnable() { // from class: com.transsion.ad.strategy.q
            @Override // java.lang.Runnable
            public final void run() {
                r.s();
            }
        });
    }
}
