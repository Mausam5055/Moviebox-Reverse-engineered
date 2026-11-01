package com.google.firebase.installations;

import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: loaded from: classes4.dex */
class d implements g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final h f31901a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final TaskCompletionSource f31902b;

    public d(h hVar, TaskCompletionSource taskCompletionSource) {
        this.f31901a = hVar;
        this.f31902b = taskCompletionSource;
    }

    @Override // com.google.firebase.installations.g
    public boolean a(Exception exc) {
        this.f31902b.trySetException(exc);
        return true;
    }

    @Override // com.google.firebase.installations.g
    public boolean b(com.google.firebase.installations.local.b bVar) {
        if (!bVar.k() || this.f31901a.f(bVar)) {
            return false;
        }
        this.f31902b.setResult(f.a().b(bVar.b()).d(bVar.c()).c(bVar.h()).a());
        return true;
    }
}
