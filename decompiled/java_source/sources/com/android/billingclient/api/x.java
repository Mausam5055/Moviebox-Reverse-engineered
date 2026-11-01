package com.android.billingclient.api;

/* JADX INFO: loaded from: classes2.dex */
public final class x {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f19203a;

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private String f19204a;

        /* synthetic */ a(l1 l1Var) {
        }

        public x a() {
            if (this.f19204a != null) {
                return new x(this, null);
            }
            throw new IllegalArgumentException("Product type must be set");
        }

        public a b(String str) {
            this.f19204a = str;
            return this;
        }
    }

    /* synthetic */ x(a aVar, m1 m1Var) {
        this.f19203a = aVar.f19204a;
    }

    public static a a() {
        return new a(null);
    }

    public final String b() {
        return this.f19203a;
    }
}
