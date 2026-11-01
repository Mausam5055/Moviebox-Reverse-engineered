package com.google.firebase.analytics;

import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes4.dex */
final class c implements Callable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ FirebaseAnalytics f31052a;

    c(FirebaseAnalytics firebaseAnalytics) {
        this.f31052a = firebaseAnalytics;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ Object call() {
        return this.f31052a.f31049a.zze();
    }
}
