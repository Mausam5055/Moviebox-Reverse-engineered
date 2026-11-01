package com.google.firebase.installations;

import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: loaded from: classes4.dex */
class e implements g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final TaskCompletionSource f31903a;

    public e(TaskCompletionSource taskCompletionSource) {
        this.f31903a = taskCompletionSource;
    }

    @Override // com.google.firebase.installations.g
    public boolean a(Exception exc) {
        return false;
    }

    @Override // com.google.firebase.installations.g
    public boolean b(com.google.firebase.installations.local.b bVar) {
        if (!bVar.l() && !bVar.k() && !bVar.i()) {
            return false;
        }
        this.f31903a.trySetResult(bVar.d());
        return true;
    }
}
