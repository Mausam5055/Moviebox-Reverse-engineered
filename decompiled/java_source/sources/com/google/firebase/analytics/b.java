package com.google.firebase.analytics;

import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes4.dex */
final class b implements Callable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ FirebaseAnalytics f31051a;

    b(FirebaseAnalytics firebaseAnalytics) {
        this.f31051a = firebaseAnalytics;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ Object call() {
        return this.f31051a.f31049a.zzc();
    }
}
