package com.google.firebase.messaging;

import android.content.Context;
import android.content.SharedPreferences;
import java.lang.ref.WeakReference;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes4.dex */
final class a1 {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static WeakReference f32038d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final SharedPreferences f32039a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private x0 f32040b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Executor f32041c;

    private a1(SharedPreferences sharedPreferences, Executor executor) {
        this.f32041c = executor;
        this.f32039a = sharedPreferences;
    }

    public static synchronized a1 b(Context context, Executor executor) {
        a1 a1Var;
        try {
            WeakReference weakReference = f32038d;
            a1Var = weakReference != null ? (a1) weakReference.get() : null;
            if (a1Var == null) {
                a1Var = new a1(context.getSharedPreferences("com.google.android.gms.appid", 0), executor);
                a1Var.d();
                f32038d = new WeakReference(a1Var);
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return a1Var;
    }

    private synchronized void d() {
        this.f32040b = x0.d(this.f32039a, "topic_operation_queue", ",", this.f32041c);
    }

    synchronized boolean a(z0 z0Var) {
        return this.f32040b.b(z0Var.e());
    }

    synchronized z0 c() {
        return z0.a(this.f32040b.f());
    }

    synchronized boolean e(z0 z0Var) {
        return this.f32040b.g(z0Var.e());
    }
}
