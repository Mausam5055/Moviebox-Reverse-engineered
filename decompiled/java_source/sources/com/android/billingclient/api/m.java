package com.android.billingclient.api;

import android.text.TextUtils;
import com.google.android.gms.internal.play_billing.zzaf;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f19087a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f19088b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f19089c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private c f19090d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private zzaf f19091e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private ArrayList f19092f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f19093g;

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private String f19094a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private String f19095b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private List f19096c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private ArrayList f19097d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private boolean f19098e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private c.a f19099f;

        /* synthetic */ a(g0 g0Var) {
            c.a aVarA = c.a();
            c.a.b(aVarA);
            this.f19099f = aVarA;
        }

        public m a() {
            ArrayList arrayList = this.f19097d;
            boolean z10 = (arrayList == null || arrayList.isEmpty()) ? false : true;
            List list = this.f19096c;
            boolean z11 = (list == null || list.isEmpty()) ? false : true;
            if (!z10 && !z11) {
                throw new IllegalArgumentException("Details of the products must be provided.");
            }
            if (z10 && z11) {
                throw new IllegalArgumentException("Set SkuDetails or ProductDetailsParams, not both.");
            }
            l0 l0Var = null;
            if (!z10) {
                b bVar = (b) this.f19096c.get(0);
                for (int i11 = 0; i11 < this.f19096c.size(); i11++) {
                    b bVar2 = (b) this.f19096c.get(i11);
                    if (bVar2 == null) {
                        throw new IllegalArgumentException("ProductDetailsParams cannot be null.");
                    }
                    if (i11 != 0 && !bVar2.b().c().equals(bVar.b().c()) && !bVar2.b().c().equals("play_pass_subs")) {
                        throw new IllegalArgumentException("All products should have same ProductType.");
                    }
                }
                String strE = bVar.b().e();
                for (b bVar3 : this.f19096c) {
                    if (!bVar.b().c().equals("play_pass_subs") && !bVar3.b().c().equals("play_pass_subs") && !strE.equals(bVar3.b().e())) {
                        throw new IllegalArgumentException("All products must have the same package name.");
                    }
                }
            } else {
                if (this.f19097d.contains(null)) {
                    throw new IllegalArgumentException("SKU cannot be null.");
                }
                if (this.f19097d.size() > 1) {
                    android.support.v4.media.session.c.a(this.f19097d.get(0));
                    throw null;
                }
            }
            m mVar = new m(l0Var);
            if (z10) {
                android.support.v4.media.session.c.a(this.f19097d.get(0));
                throw null;
            }
            mVar.f19087a = z11 && !((b) this.f19096c.get(0)).b().e().isEmpty();
            mVar.f19088b = this.f19094a;
            mVar.f19089c = this.f19095b;
            mVar.f19090d = this.f19099f.a();
            ArrayList arrayList2 = this.f19097d;
            mVar.f19092f = arrayList2 != null ? new ArrayList(arrayList2) : new ArrayList();
            mVar.f19093g = this.f19098e;
            List list2 = this.f19096c;
            mVar.f19091e = list2 != null ? zzaf.zzj(list2) : zzaf.zzk();
            return mVar;
        }

        public a b(String str) {
            this.f19094a = str;
            return this;
        }

        public a c(List list) {
            this.f19096c = new ArrayList(list);
            return this;
        }
    }

    public static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final r f19100a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final String f19101b;

        public static class a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private r f19102a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private String f19103b;

            /* synthetic */ a(h0 h0Var) {
            }

            public b a() {
                com.google.android.gms.internal.play_billing.zzx.zzc(this.f19102a, "ProductDetails is required for constructing ProductDetailsParams.");
                com.google.android.gms.internal.play_billing.zzx.zzc(this.f19103b, "offerToken is required for constructing ProductDetailsParams.");
                return new b(this, null);
            }

            public a b(String str) {
                this.f19103b = str;
                return this;
            }

            public a c(r rVar) {
                this.f19102a = rVar;
                if (rVar.a() != null) {
                    rVar.a().getClass();
                    this.f19103b = rVar.a().a();
                }
                return this;
            }
        }

        /* synthetic */ b(a aVar, i0 i0Var) {
            this.f19100a = aVar.f19102a;
            this.f19101b = aVar.f19103b;
        }

        public static a a() {
            return new a(null);
        }

        public final r b() {
            return this.f19100a;
        }

        public final String c() {
            return this.f19101b;
        }
    }

    public static class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private String f19104a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private String f19105b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private int f19106c = 0;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f19107d = 0;

        public static class a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private String f19108a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private String f19109b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            private boolean f19110c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            private int f19111d = 0;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            private int f19112e = 0;

            /* synthetic */ a(j0 j0Var) {
            }

            static /* synthetic */ a b(a aVar) {
                aVar.f19110c = true;
                return aVar;
            }

            public c a() {
                boolean z10 = true;
                k0 k0Var = null;
                if (TextUtils.isEmpty(this.f19108a) && TextUtils.isEmpty(null)) {
                    z10 = false;
                }
                boolean zIsEmpty = TextUtils.isEmpty(this.f19109b);
                if (z10 && !zIsEmpty) {
                    throw new IllegalArgumentException("Please provide Old SKU purchase information(token/id) or original external transaction id, not both.");
                }
                if (!this.f19110c && !z10 && zIsEmpty) {
                    throw new IllegalArgumentException("Old SKU purchase information(token/id) or original external transaction id must be provided.");
                }
                c cVar = new c(k0Var);
                cVar.f19104a = this.f19108a;
                cVar.f19106c = this.f19111d;
                cVar.f19107d = this.f19112e;
                cVar.f19105b = this.f19109b;
                return cVar;
            }
        }

        /* synthetic */ c(k0 k0Var) {
        }

        public static a a() {
            return new a(null);
        }

        final int b() {
            return this.f19106c;
        }

        final int c() {
            return this.f19107d;
        }

        final String d() {
            return this.f19104a;
        }

        final String e() {
            return this.f19105b;
        }
    }

    /* synthetic */ m(l0 l0Var) {
    }

    public static a a() {
        return new a(null);
    }

    public final int b() {
        return this.f19090d.b();
    }

    public final int c() {
        return this.f19090d.c();
    }

    public final String d() {
        return this.f19088b;
    }

    public final String e() {
        return this.f19089c;
    }

    public final String f() {
        return this.f19090d.d();
    }

    public final String g() {
        return this.f19090d.e();
    }

    public final ArrayList h() {
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(this.f19092f);
        return arrayList;
    }

    public final List i() {
        return this.f19091e;
    }

    public final boolean q() {
        return this.f19093g;
    }

    final boolean r() {
        return (this.f19088b == null && this.f19089c == null && this.f19090d.e() == null && this.f19090d.b() == 0 && this.f19090d.c() == 0 && !this.f19087a && !this.f19093g) ? false : true;
    }
}
