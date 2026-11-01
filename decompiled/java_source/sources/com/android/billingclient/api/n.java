package com.android.billingclient.api;

import com.google.android.gms.internal.play_billing.zzb;

/* JADX INFO: loaded from: classes2.dex */
public final class n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f19113a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f19114b;

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private int f19115a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private String f19116b = "";

        /* synthetic */ a(o0 o0Var) {
        }

        public n a() {
            n nVar = new n();
            nVar.f19113a = this.f19115a;
            nVar.f19114b = this.f19116b;
            return nVar;
        }

        public a b(String str) {
            this.f19116b = str;
            return this;
        }

        public a c(int i11) {
            this.f19115a = i11;
            return this;
        }
    }

    public static a c() {
        return new a(null);
    }

    public String a() {
        return this.f19114b;
    }

    public int b() {
        return this.f19113a;
    }

    public String toString() {
        return "Response Code: " + zzb.zzh(this.f19113a) + ", Debug Message: " + this.f19114b;
    }
}
