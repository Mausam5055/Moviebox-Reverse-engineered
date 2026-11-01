package com.amazonaws.internal;

import com.amazonaws.async.Callback;

/* JADX INFO: loaded from: classes2.dex */
public abstract class ReturningRunnable<R> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f18412a = null;

    /* JADX INFO: renamed from: com.amazonaws.internal.ReturningRunnable$1, reason: invalid class name */
    class AnonymousClass1 implements Runnable {
        final /* synthetic */ Callback val$callback;

        AnonymousClass1(Callback callback) {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                ReturningRunnable.this.b();
                throw null;
            } catch (Exception e11) {
                ReturningRunnable.this.f18412a.getClass();
                new Exception(ReturningRunnable.this.f18412a, e11);
                throw null;
            }
        }
    }

    public abstract Object b();
}
