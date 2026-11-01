package com.android.billingclient.api;

/* JADX INFO: loaded from: classes2.dex */
public final class v0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f19196a;

    /* synthetic */ v0(u0 u0Var) {
    }

    public final v0 a() {
        this.f19196a = true;
        return this;
    }

    public final x0 b() {
        if (this.f19196a) {
            return new x0(true, false, null);
        }
        throw new IllegalArgumentException("Pending purchases for one-time products must be supported.");
    }
}
