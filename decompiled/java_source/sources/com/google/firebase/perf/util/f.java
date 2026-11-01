package com.google.firebase.perf.util;

import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.view.ViewTreeObserver;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes4.dex */
public class f implements ViewTreeObserver.OnPreDrawListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Handler f32370a = new Handler(Looper.getMainLooper());

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final AtomicReference f32371b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Runnable f32372c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Runnable f32373d;

    private f(View view, Runnable runnable, Runnable runnable2) {
        this.f32371b = new AtomicReference(view);
        this.f32372c = runnable;
        this.f32373d = runnable2;
    }

    public static void a(View view, Runnable runnable, Runnable runnable2) {
        view.getViewTreeObserver().addOnPreDrawListener(new f(view, runnable, runnable2));
    }

    @Override // android.view.ViewTreeObserver.OnPreDrawListener
    public boolean onPreDraw() {
        View view = (View) this.f32371b.getAndSet(null);
        if (view == null) {
            return true;
        }
        view.getViewTreeObserver().removeOnPreDrawListener(this);
        this.f32370a.post(this.f32372c);
        this.f32370a.postAtFrontOfQueue(this.f32373d);
        return true;
    }
}
