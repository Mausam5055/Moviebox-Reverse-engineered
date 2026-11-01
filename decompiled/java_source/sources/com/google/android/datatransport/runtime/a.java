package com.google.android.datatransport.runtime;

import com.google.android.datatransport.runtime.firebase.transport.LogEventDropped;

/* JADX INFO: loaded from: classes3.dex */
public final class a implements cc.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final cc.a f24329a = new a();

    /* JADX INFO: renamed from: com.google.android.datatransport.runtime.a$a, reason: collision with other inner class name */
    private static final class C0360a implements bc.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final C0360a f24330a = new C0360a();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static final bc.b f24331b = bc.b.a("window").b(com.google.firebase.encoders.proto.a.b().c(1).a()).a();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static final bc.b f24332c = bc.b.a("logSourceMetrics").b(com.google.firebase.encoders.proto.a.b().c(2).a()).a();

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static final bc.b f24333d = bc.b.a("globalMetrics").b(com.google.firebase.encoders.proto.a.b().c(3).a()).a();

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private static final bc.b f24334e = bc.b.a("appNamespace").b(com.google.firebase.encoders.proto.a.b().c(4).a()).a();

        private C0360a() {
        }

        @Override // bc.c
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(v8.a aVar, bc.d dVar) {
            dVar.e(f24331b, aVar.d());
            dVar.e(f24332c, aVar.c());
            dVar.e(f24333d, aVar.b());
            dVar.e(f24334e, aVar.a());
        }
    }

    private static final class b implements bc.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final b f24335a = new b();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static final bc.b f24336b = bc.b.a("storageMetrics").b(com.google.firebase.encoders.proto.a.b().c(1).a()).a();

        private b() {
        }

        @Override // bc.c
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(v8.b bVar, bc.d dVar) {
            dVar.e(f24336b, bVar.a());
        }
    }

    private static final class c implements bc.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final c f24337a = new c();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static final bc.b f24338b = bc.b.a("eventsDroppedCount").b(com.google.firebase.encoders.proto.a.b().c(1).a()).a();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static final bc.b f24339c = bc.b.a("reason").b(com.google.firebase.encoders.proto.a.b().c(3).a()).a();

        private c() {
        }

        @Override // bc.c
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(LogEventDropped logEventDropped, bc.d dVar) {
            dVar.a(f24338b, logEventDropped.a());
            dVar.e(f24339c, logEventDropped.b());
        }
    }

    private static final class d implements bc.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final d f24340a = new d();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static final bc.b f24341b = bc.b.a("logSource").b(com.google.firebase.encoders.proto.a.b().c(1).a()).a();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static final bc.b f24342c = bc.b.a("logEventDropped").b(com.google.firebase.encoders.proto.a.b().c(2).a()).a();

        private d() {
        }

        @Override // bc.c
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(v8.c cVar, bc.d dVar) {
            dVar.e(f24341b, cVar.b());
            dVar.e(f24342c, cVar.a());
        }
    }

    private static final class e implements bc.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final e f24343a = new e();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static final bc.b f24344b = bc.b.d("clientMetrics");

        private e() {
        }

        @Override // bc.c
        public /* bridge */ /* synthetic */ void a(Object obj, Object obj2) {
            android.support.v4.media.session.c.a(obj);
            b(null, (bc.d) obj2);
        }

        public void b(m mVar, bc.d dVar) {
            throw null;
        }
    }

    private static final class f implements bc.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final f f24345a = new f();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static final bc.b f24346b = bc.b.a("currentCacheSizeBytes").b(com.google.firebase.encoders.proto.a.b().c(1).a()).a();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static final bc.b f24347c = bc.b.a("maxCacheSizeBytes").b(com.google.firebase.encoders.proto.a.b().c(2).a()).a();

        private f() {
        }

        @Override // bc.c
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(v8.d dVar, bc.d dVar2) {
            dVar2.a(f24346b, dVar.a());
            dVar2.a(f24347c, dVar.b());
        }
    }

    private static final class g implements bc.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final g f24348a = new g();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static final bc.b f24349b = bc.b.a("startMs").b(com.google.firebase.encoders.proto.a.b().c(1).a()).a();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static final bc.b f24350c = bc.b.a("endMs").b(com.google.firebase.encoders.proto.a.b().c(2).a()).a();

        private g() {
        }

        @Override // bc.c
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(v8.e eVar, bc.d dVar) {
            dVar.a(f24349b, eVar.b());
            dVar.a(f24350c, eVar.a());
        }
    }

    private a() {
    }

    @Override // cc.a
    public void a(cc.b bVar) {
        bVar.a(m.class, e.f24343a);
        bVar.a(v8.a.class, C0360a.f24330a);
        bVar.a(v8.e.class, g.f24348a);
        bVar.a(v8.c.class, d.f24340a);
        bVar.a(LogEventDropped.class, c.f24337a);
        bVar.a(v8.b.class, b.f24335a);
        bVar.a(v8.d.class, f.f24345a);
    }
}
