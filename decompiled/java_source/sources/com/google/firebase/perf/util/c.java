package com.google.firebase.perf.util;

import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.view.ViewTreeObserver;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes4.dex */
public class c implements ViewTreeObserver.OnDrawListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Handler f32363a = new Handler(Looper.getMainLooper());

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final AtomicReference f32364b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Runnable f32365c;

    class a implements View.OnAttachStateChangeListener {
        a() {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
            view.getViewTreeObserver().addOnDrawListener(c.this);
            view.removeOnAttachStateChangeListener(this);
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
            view.removeOnAttachStateChangeListener(this);
        }
    }

    private c(View view, Runnable runnable) {
        this.f32364b = new AtomicReference(view);
        this.f32365c = runnable;
    }

    private static boolean b(View view) {
        return view.getViewTreeObserver().isAlive() && c(view);
    }

    private static boolean c(View view) {
        return view.isAttachedToWindow();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void d(View view) {
        view.getViewTreeObserver().removeOnDrawListener(this);
    }

    public static void e(View view, Runnable runnable) {
        c cVar = new c(view, runnable);
        if (Build.VERSION.SDK_INT >= 26 || b(view)) {
            view.getViewTreeObserver().addOnDrawListener(cVar);
        } else {
            view.addOnAttachStateChangeListener(cVar.new a());
        }
    }

    @Override // android.view.ViewTreeObserver.OnDrawListener
    public void onDraw() {
        final View view = (View) this.f32364b.getAndSet(null);
        if (view == null) {
            return;
        }
        view.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.google.firebase.perf.util.b
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public final void onGlobalLayout() {
                this.f32361a.d(view);
            }
        });
        this.f32363a.postAtFrontOfQueue(this.f32365c);
    }
}
