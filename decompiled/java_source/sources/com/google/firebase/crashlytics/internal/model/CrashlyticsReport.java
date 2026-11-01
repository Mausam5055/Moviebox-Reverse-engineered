package com.google.firebase.crashlytics.internal.model;

import java.nio.charset.Charset;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public abstract class CrashlyticsReport {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Charset f31310a = Charset.forName("UTF-8");

    /* JADX INFO: loaded from: classes4.dex */
    public enum Type {
        INCOMPLETE,
        JAVA,
        NATIVE
    }

    /* JADX INFO: loaded from: classes4.dex */
    public static abstract class a {

        /* JADX INFO: renamed from: com.google.firebase.crashlytics.internal.model.CrashlyticsReport$a$a, reason: collision with other inner class name */
        public static abstract class AbstractC0420a {

            /* JADX INFO: renamed from: com.google.firebase.crashlytics.internal.model.CrashlyticsReport$a$a$a, reason: collision with other inner class name */
            public static abstract class AbstractC0421a {
                public abstract AbstractC0420a a();

                public abstract AbstractC0421a b(String str);

                public abstract AbstractC0421a c(String str);

                public abstract AbstractC0421a d(String str);
            }

            public static AbstractC0421a a() {
                return new com.google.firebase.crashlytics.internal.model.d.b();
            }

            public abstract String b();

            public abstract String c();

            public abstract String d();
        }

        public static abstract class b {
            public abstract a a();

            public abstract b b(List list);

            public abstract b c(int i11);

            public abstract b d(int i11);

            public abstract b e(String str);

            public abstract b f(long j11);

            public abstract b g(int i11);

            public abstract b h(long j11);

            public abstract b i(long j11);

            public abstract b j(String str);
        }

        public static b a() {
            return new com.google.firebase.crashlytics.internal.model.c.b();
        }

        public abstract List b();

        public abstract int c();

        public abstract int d();

        public abstract String e();

        public abstract long f();

        public abstract int g();

        public abstract long h();

        public abstract long i();

        public abstract String j();
    }

    /* JADX INFO: loaded from: classes4.dex */
    public static abstract class b {
        public abstract CrashlyticsReport a();

        public abstract b b(a aVar);

        public abstract b c(String str);

        public abstract b d(String str);

        public abstract b e(String str);

        public abstract b f(String str);

        public abstract b g(String str);

        public abstract b h(String str);

        public abstract b i(String str);

        public abstract b j(d dVar);

        public abstract b k(int i11);

        public abstract b l(String str);

        public abstract b m(e eVar);
    }

    /* JADX INFO: loaded from: classes4.dex */
    public static abstract class c {

        public static abstract class a {
            public abstract c a();

            public abstract a b(String str);

            public abstract a c(String str);
        }

        public static a a() {
            return new com.google.firebase.crashlytics.internal.model.e.b();
        }

        public abstract String b();

        public abstract String c();
    }

    /* JADX INFO: loaded from: classes4.dex */
    public static abstract class d {

        public static abstract class a {
            public abstract d a();

            public abstract a b(List list);

            public abstract a c(String str);
        }

        public static abstract class b {

            public static abstract class a {
                public abstract b a();

                public abstract a b(byte[] bArr);

                public abstract a c(String str);
            }

            public static a a() {
                return new g.b();
            }

            public abstract byte[] b();

            public abstract String c();
        }

        public static a a() {
            return new f.b();
        }

        public abstract List b();

        public abstract String c();
    }

    /* JADX INFO: loaded from: classes4.dex */
    public static abstract class e {

        public static abstract class a {

            /* JADX INFO: renamed from: com.google.firebase.crashlytics.internal.model.CrashlyticsReport$e$a$a, reason: collision with other inner class name */
            public static abstract class AbstractC0422a {
                public abstract a a();

                public abstract AbstractC0422a b(String str);

                public abstract AbstractC0422a c(String str);

                public abstract AbstractC0422a d(String str);

                public abstract AbstractC0422a e(String str);

                public abstract AbstractC0422a f(String str);

                public abstract AbstractC0422a g(String str);
            }

            public static abstract class b {
                public abstract String a();
            }

            public static AbstractC0422a a() {
                return new i.b();
            }

            public abstract String b();

            public abstract String c();

            public abstract String d();

            public abstract String e();

            public abstract String f();

            public abstract b g();

            public abstract String h();
        }

        public static abstract class b {
            public abstract e a();

            public abstract b b(a aVar);

            public abstract b c(String str);

            public abstract b d(boolean z10);

            public abstract b e(c cVar);

            public abstract b f(Long l11);

            public abstract b g(List list);

            public abstract b h(String str);

            public abstract b i(int i11);

            public abstract b j(String str);

            public b k(byte[] bArr) {
                return j(new String(bArr, CrashlyticsReport.f31310a));
            }

            public abstract b l(AbstractC0437e abstractC0437e);

            public abstract b m(long j11);

            public abstract b n(f fVar);
        }

        public static abstract class c {

            public static abstract class a {
                public abstract c a();

                public abstract a b(int i11);

                public abstract a c(int i11);

                public abstract a d(long j11);

                public abstract a e(String str);

                public abstract a f(String str);

                public abstract a g(String str);

                public abstract a h(long j11);

                public abstract a i(boolean z10);

                public abstract a j(int i11);
            }

            public static a a() {
                return new k.b();
            }

            public abstract int b();

            public abstract int c();

            public abstract long d();

            public abstract String e();

            public abstract String f();

            public abstract String g();

            public abstract long h();

            public abstract int i();

            public abstract boolean j();
        }

        public static abstract class d {

            public static abstract class a {

                /* JADX INFO: renamed from: com.google.firebase.crashlytics.internal.model.CrashlyticsReport$e$d$a$a, reason: collision with other inner class name */
                public static abstract class AbstractC0423a {
                    public abstract a a();

                    public abstract AbstractC0423a b(List list);

                    public abstract AbstractC0423a c(Boolean bool);

                    public abstract AbstractC0423a d(c cVar);

                    public abstract AbstractC0423a e(List list);

                    public abstract AbstractC0423a f(b bVar);

                    public abstract AbstractC0423a g(List list);

                    public abstract AbstractC0423a h(int i11);
                }

                public static abstract class b {

                    /* JADX INFO: renamed from: com.google.firebase.crashlytics.internal.model.CrashlyticsReport$e$d$a$b$a, reason: collision with other inner class name */
                    public static abstract class AbstractC0424a {

                        /* JADX INFO: renamed from: com.google.firebase.crashlytics.internal.model.CrashlyticsReport$e$d$a$b$a$a, reason: collision with other inner class name */
                        public static abstract class AbstractC0425a {
                            public abstract AbstractC0424a a();

                            public abstract AbstractC0425a b(long j11);

                            public abstract AbstractC0425a c(String str);

                            public abstract AbstractC0425a d(long j11);

                            public abstract AbstractC0425a e(String str);

                            public AbstractC0425a f(byte[] bArr) {
                                return e(new String(bArr, CrashlyticsReport.f31310a));
                            }
                        }

                        public static AbstractC0425a a() {
                            return new o.b();
                        }

                        public abstract long b();

                        public abstract String c();

                        public abstract long d();

                        public abstract String e();

                        public byte[] f() {
                            String strE = e();
                            if (strE != null) {
                                return strE.getBytes(CrashlyticsReport.f31310a);
                            }
                            return null;
                        }
                    }

                    /* JADX INFO: renamed from: com.google.firebase.crashlytics.internal.model.CrashlyticsReport$e$d$a$b$b, reason: collision with other inner class name */
                    public static abstract class AbstractC0426b {
                        public abstract b a();

                        public abstract AbstractC0426b b(a aVar);

                        public abstract AbstractC0426b c(List list);

                        public abstract AbstractC0426b d(c cVar);

                        public abstract AbstractC0426b e(AbstractC0428d abstractC0428d);

                        public abstract AbstractC0426b f(List list);
                    }

                    public static abstract class c {

                        /* JADX INFO: renamed from: com.google.firebase.crashlytics.internal.model.CrashlyticsReport$e$d$a$b$c$a, reason: collision with other inner class name */
                        public static abstract class AbstractC0427a {
                            public abstract c a();

                            public abstract AbstractC0427a b(c cVar);

                            public abstract AbstractC0427a c(List list);

                            public abstract AbstractC0427a d(int i11);

                            public abstract AbstractC0427a e(String str);

                            public abstract AbstractC0427a f(String str);
                        }

                        public static AbstractC0427a a() {
                            return new p.b();
                        }

                        public abstract c b();

                        public abstract List c();

                        public abstract int d();

                        public abstract String e();

                        public abstract String f();
                    }

                    /* JADX INFO: renamed from: com.google.firebase.crashlytics.internal.model.CrashlyticsReport$e$d$a$b$d, reason: collision with other inner class name */
                    public static abstract class AbstractC0428d {

                        /* JADX INFO: renamed from: com.google.firebase.crashlytics.internal.model.CrashlyticsReport$e$d$a$b$d$a, reason: collision with other inner class name */
                        public static abstract class AbstractC0429a {
                            public abstract AbstractC0428d a();

                            public abstract AbstractC0429a b(long j11);

                            public abstract AbstractC0429a c(String str);

                            public abstract AbstractC0429a d(String str);
                        }

                        public static AbstractC0429a a() {
                            return new q.b();
                        }

                        public abstract long b();

                        public abstract String c();

                        public abstract String d();
                    }

                    /* JADX INFO: renamed from: com.google.firebase.crashlytics.internal.model.CrashlyticsReport$e$d$a$b$e, reason: collision with other inner class name */
                    public static abstract class AbstractC0430e {

                        /* JADX INFO: renamed from: com.google.firebase.crashlytics.internal.model.CrashlyticsReport$e$d$a$b$e$a, reason: collision with other inner class name */
                        public static abstract class AbstractC0431a {
                            public abstract AbstractC0430e a();

                            public abstract AbstractC0431a b(List list);

                            public abstract AbstractC0431a c(int i11);

                            public abstract AbstractC0431a d(String str);
                        }

                        /* JADX INFO: renamed from: com.google.firebase.crashlytics.internal.model.CrashlyticsReport$e$d$a$b$e$b, reason: collision with other inner class name */
                        public static abstract class AbstractC0432b {

                            /* JADX INFO: renamed from: com.google.firebase.crashlytics.internal.model.CrashlyticsReport$e$d$a$b$e$b$a, reason: collision with other inner class name */
                            public static abstract class AbstractC0433a {
                                public abstract AbstractC0432b a();

                                public abstract AbstractC0433a b(String str);

                                public abstract AbstractC0433a c(int i11);

                                public abstract AbstractC0433a d(long j11);

                                public abstract AbstractC0433a e(long j11);

                                public abstract AbstractC0433a f(String str);
                            }

                            public static AbstractC0433a a() {
                                return new s.b();
                            }

                            public abstract String b();

                            public abstract int c();

                            public abstract long d();

                            public abstract long e();

                            public abstract String f();
                        }

                        public static AbstractC0431a a() {
                            return new r.b();
                        }

                        public abstract List b();

                        public abstract int c();

                        public abstract String d();
                    }

                    public static AbstractC0426b a() {
                        return new n.b();
                    }

                    public abstract a b();

                    public abstract List c();

                    public abstract c d();

                    public abstract AbstractC0428d e();

                    public abstract List f();
                }

                public static abstract class c {

                    /* JADX INFO: renamed from: com.google.firebase.crashlytics.internal.model.CrashlyticsReport$e$d$a$c$a, reason: collision with other inner class name */
                    public static abstract class AbstractC0434a {
                        public abstract c a();

                        public abstract AbstractC0434a b(boolean z10);

                        public abstract AbstractC0434a c(int i11);

                        public abstract AbstractC0434a d(int i11);

                        public abstract AbstractC0434a e(String str);
                    }

                    public static AbstractC0434a a() {
                        return new t.b();
                    }

                    public abstract int b();

                    public abstract int c();

                    public abstract String d();

                    public abstract boolean e();
                }

                public static AbstractC0423a a() {
                    return new m.b();
                }

                public abstract List b();

                public abstract Boolean c();

                public abstract c d();

                public abstract List e();

                public abstract b f();

                public abstract List g();

                public abstract int h();

                public abstract AbstractC0423a i();
            }

            public static abstract class b {
                public abstract d a();

                public abstract b b(a aVar);

                public abstract b c(c cVar);

                public abstract b d(AbstractC0435d abstractC0435d);

                public abstract b e(f fVar);

                public abstract b f(long j11);

                public abstract b g(String str);
            }

            public static abstract class c {

                public static abstract class a {
                    public abstract c a();

                    public abstract a b(Double d11);

                    public abstract a c(int i11);

                    public abstract a d(long j11);

                    public abstract a e(int i11);

                    public abstract a f(boolean z10);

                    public abstract a g(long j11);
                }

                public static a a() {
                    return new u.b();
                }

                public abstract Double b();

                public abstract int c();

                public abstract long d();

                public abstract int e();

                public abstract long f();

                public abstract boolean g();
            }

            /* JADX INFO: renamed from: com.google.firebase.crashlytics.internal.model.CrashlyticsReport$e$d$d, reason: collision with other inner class name */
            public static abstract class AbstractC0435d {

                /* JADX INFO: renamed from: com.google.firebase.crashlytics.internal.model.CrashlyticsReport$e$d$d$a */
                public static abstract class a {
                    public abstract AbstractC0435d a();

                    public abstract a b(String str);
                }

                public static a a() {
                    return new v.b();
                }

                public abstract String b();
            }

            /* JADX INFO: renamed from: com.google.firebase.crashlytics.internal.model.CrashlyticsReport$e$d$e, reason: collision with other inner class name */
            public static abstract class AbstractC0436e {

                /* JADX INFO: renamed from: com.google.firebase.crashlytics.internal.model.CrashlyticsReport$e$d$e$a */
                public static abstract class a {
                    public abstract AbstractC0436e a();

                    public abstract a b(String str);

                    public abstract a c(String str);

                    public abstract a d(b bVar);

                    public abstract a e(long j11);
                }

                /* JADX INFO: renamed from: com.google.firebase.crashlytics.internal.model.CrashlyticsReport$e$d$e$b */
                public static abstract class b {

                    /* JADX INFO: renamed from: com.google.firebase.crashlytics.internal.model.CrashlyticsReport$e$d$e$b$a */
                    public static abstract class a {
                        public abstract b a();

                        public abstract a b(String str);

                        public abstract a c(String str);
                    }

                    public static a a() {
                        return new x.b();
                    }

                    public abstract String b();

                    public abstract String c();
                }

                public static a a() {
                    return new w.b();
                }

                public abstract String b();

                public abstract String c();

                public abstract b d();

                public abstract long e();
            }

            public static abstract class f {

                public static abstract class a {
                    public abstract f a();

                    public abstract a b(List list);
                }

                public static a a() {
                    return new y.b();
                }

                public abstract List b();
            }

            public static b a() {
                return new l.b();
            }

            public abstract a b();

            public abstract c c();

            public abstract AbstractC0435d d();

            public abstract f e();

            public abstract long f();

            public abstract String g();

            public abstract b h();
        }

        /* JADX INFO: renamed from: com.google.firebase.crashlytics.internal.model.CrashlyticsReport$e$e, reason: collision with other inner class name */
        public static abstract class AbstractC0437e {

            /* JADX INFO: renamed from: com.google.firebase.crashlytics.internal.model.CrashlyticsReport$e$e$a */
            public static abstract class a {
                public abstract AbstractC0437e a();

                public abstract a b(String str);

                public abstract a c(boolean z10);

                public abstract a d(int i11);

                public abstract a e(String str);
            }

            public static a a() {
                return new z.b();
            }

            public abstract String b();

            public abstract int c();

            public abstract String d();

            public abstract boolean e();
        }

        public static abstract class f {

            public static abstract class a {
                public abstract f a();

                public abstract a b(String str);
            }

            public static a a() {
                return new a0.b();
            }

            public abstract String b();
        }

        public static b a() {
            return new h.b().d(false);
        }

        public abstract a b();

        public abstract String c();

        public abstract c d();

        public abstract Long e();

        public abstract List f();

        public abstract String g();

        public abstract int h();

        public abstract String i();

        public byte[] j() {
            return i().getBytes(CrashlyticsReport.f31310a);
        }

        public abstract AbstractC0437e k();

        public abstract long l();

        public abstract f m();

        public abstract boolean n();

        public abstract b o();

        e p(String str) {
            return o().c(str).a();
        }

        e q(List list) {
            return o().g(list).a();
        }

        e r(long j11, boolean z10, String str) {
            b bVarO = o();
            bVarO.f(Long.valueOf(j11));
            bVarO.d(z10);
            if (str != null) {
                bVarO.n(f.a().b(str).a());
            }
            return bVarO.a();
        }
    }

    public static b b() {
        return new com.google.firebase.crashlytics.internal.model.b.C0439b();
    }

    public abstract a c();

    public abstract String d();

    public abstract String e();

    public abstract String f();

    public abstract String g();

    public abstract String h();

    public abstract String i();

    public abstract String j();

    public abstract d k();

    public abstract int l();

    public abstract String m();

    public abstract e n();

    protected abstract b o();

    public CrashlyticsReport p(String str) {
        b bVarC = o().c(str);
        if (n() != null) {
            bVarC.m(n().p(str));
        }
        return bVarC.a();
    }

    public CrashlyticsReport q(a aVar) {
        return aVar == null ? this : o().b(aVar).a();
    }

    public CrashlyticsReport r(List list) {
        if (n() != null) {
            return o().m(n().q(list)).a();
        }
        throw new IllegalStateException("Reports without sessions cannot have events added to them.");
    }

    public CrashlyticsReport s(String str) {
        return o().f(str).a();
    }

    public CrashlyticsReport t(String str) {
        return o().g(str).a();
    }

    public CrashlyticsReport u(d dVar) {
        return o().m(null).j(dVar).a();
    }

    public CrashlyticsReport v(long j11, boolean z10, String str) {
        b bVarO = o();
        if (n() != null) {
            bVarO.m(n().r(j11, z10, str));
        }
        return bVarO.a();
    }
}
