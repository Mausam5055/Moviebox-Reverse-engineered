package com.android.billingclient.api;

import com.google.android.gms.internal.play_billing.zzaf;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class w {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzaf f19197a;

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private zzaf f19198a;

        /* synthetic */ a(h1 h1Var) {
        }

        public w a() {
            return new w(this, null);
        }

        public a b(List list) {
            if (list == null || list.isEmpty()) {
                throw new IllegalArgumentException("Product list cannot be empty.");
            }
            HashSet hashSet = new HashSet();
            Iterator it = list.iterator();
            while (it.hasNext()) {
                b bVar = (b) it.next();
                if (!"play_pass_subs".equals(bVar.c())) {
                    hashSet.add(bVar.c());
                }
            }
            if (hashSet.size() > 1) {
                throw new IllegalArgumentException("All products should be of the same product type.");
            }
            this.f19198a = zzaf.zzj(list);
            return this;
        }
    }

    public static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String f19199a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final String f19200b;

        public static class a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private String f19201a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private String f19202b;

            /* synthetic */ a(i1 i1Var) {
            }

            public b a() {
                if ("first_party".equals(this.f19202b)) {
                    throw new IllegalArgumentException("Serialized doc id must be provided for first party products.");
                }
                if (this.f19201a == null) {
                    throw new IllegalArgumentException("Product id must be provided.");
                }
                if (this.f19202b != null) {
                    return new b(this, null);
                }
                throw new IllegalArgumentException("Product type must be provided.");
            }

            public a b(String str) {
                this.f19201a = str;
                return this;
            }

            public a c(String str) {
                this.f19202b = str;
                return this;
            }
        }

        /* synthetic */ b(a aVar, j1 j1Var) {
            this.f19199a = aVar.f19201a;
            this.f19200b = aVar.f19202b;
        }

        public static a a() {
            return new a(null);
        }

        public final String b() {
            return this.f19199a;
        }

        public final String c() {
            return this.f19200b;
        }
    }

    /* synthetic */ w(a aVar, k1 k1Var) {
        this.f19197a = aVar.f19198a;
    }

    public static a a() {
        return new a(null);
    }

    public final zzaf b() {
        return this.f19197a;
    }

    public final String c() {
        return ((b) this.f19197a.get(0)).c();
    }
}
