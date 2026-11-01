package com.google.android.datatransport.runtime;

import a9.n0;
import a9.w0;
import android.content.Context;

/* JADX INFO: loaded from: classes3.dex */
abstract class e {

    private static final class b implements u.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Context f24389a;

        private b() {
        }

        @Override // com.google.android.datatransport.runtime.u.a
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public b a(Context context) {
            this.f24389a = (Context) u8.d.b(context);
            return this;
        }

        @Override // com.google.android.datatransport.runtime.u.a
        public u build() {
            u8.d.a(this.f24389a, Context.class);
            return new c(this.f24389a);
        }
    }

    private static final class c extends u {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final c f24390a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private uz.a f24391b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private uz.a f24392c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private uz.a f24393d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private uz.a f24394e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private uz.a f24395f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private uz.a f24396g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private uz.a f24397h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private uz.a f24398i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private uz.a f24399j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private uz.a f24400k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private uz.a f24401l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        private uz.a f24402m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        private uz.a f24403n;

        private c(Context context) {
            this.f24390a = this;
            i(context);
        }

        private void i(Context context) {
            this.f24391b = u8.a.a(k.a());
            u8.b bVarA = u8.c.a(context);
            this.f24392c = bVarA;
            t8.h hVarA = t8.h.a(bVarA, c9.c.a(), c9.d.a());
            this.f24393d = hVarA;
            this.f24394e = u8.a.a(t8.j.a(this.f24392c, hVarA));
            this.f24395f = w0.a(this.f24392c, a9.g.a(), a9.i.a());
            this.f24396g = u8.a.a(a9.h.a(this.f24392c));
            this.f24397h = u8.a.a(n0.a(c9.c.a(), c9.d.a(), a9.j.a(), this.f24395f, this.f24396g));
            y8.g gVarB = y8.g.b(c9.c.a());
            this.f24398i = gVarB;
            y8.i iVarA = y8.i.a(this.f24392c, this.f24397h, gVarB, c9.d.a());
            this.f24399j = iVarA;
            uz.a aVar = this.f24391b;
            uz.a aVar2 = this.f24394e;
            uz.a aVar3 = this.f24397h;
            this.f24400k = y8.d.a(aVar, aVar2, iVarA, aVar3, aVar3);
            uz.a aVar4 = this.f24392c;
            uz.a aVar5 = this.f24394e;
            uz.a aVar6 = this.f24397h;
            this.f24401l = z8.p.a(aVar4, aVar5, aVar6, this.f24399j, this.f24391b, aVar6, c9.c.a(), c9.d.a(), this.f24397h);
            uz.a aVar7 = this.f24391b;
            uz.a aVar8 = this.f24397h;
            this.f24402m = z8.t.a(aVar7, aVar8, this.f24399j, aVar8);
            this.f24403n = u8.a.a(v.a(c9.c.a(), c9.d.a(), this.f24400k, this.f24401l, this.f24402m));
        }

        @Override // com.google.android.datatransport.runtime.u
        a9.d d() {
            return (a9.d) this.f24397h.get();
        }

        @Override // com.google.android.datatransport.runtime.u
        t h() {
            return (t) this.f24403n.get();
        }
    }

    public static u.a a() {
        return new b();
    }
}
