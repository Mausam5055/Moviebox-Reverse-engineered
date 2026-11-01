package com.google.firebase.sessions;

/* JADX INFO: loaded from: classes4.dex */
public final class c implements cc.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final cc.a f32643a = new c();

    private static final class a implements bc.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final a f32644a = new a();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static final bc.b f32645b = bc.b.d("packageName");

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static final bc.b f32646c = bc.b.d("versionName");

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static final bc.b f32647d = bc.b.d("appBuildVersion");

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private static final bc.b f32648e = bc.b.d("deviceManufacturer");

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private static final bc.b f32649f = bc.b.d("currentProcessDetails");

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private static final bc.b f32650g = bc.b.d("appProcessDetails");

        private a() {
        }

        @Override // bc.c
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(com.google.firebase.sessions.a aVar, bc.d dVar) {
            dVar.e(f32645b, aVar.e());
            dVar.e(f32646c, aVar.f());
            dVar.e(f32647d, aVar.a());
            dVar.e(f32648e, aVar.d());
            dVar.e(f32649f, aVar.c());
            dVar.e(f32650g, aVar.b());
        }
    }

    private static final class b implements bc.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final b f32651a = new b();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static final bc.b f32652b = bc.b.d("appId");

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static final bc.b f32653c = bc.b.d("deviceModel");

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static final bc.b f32654d = bc.b.d("sessionSdkVersion");

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private static final bc.b f32655e = bc.b.d("osVersion");

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private static final bc.b f32656f = bc.b.d("logEnvironment");

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private static final bc.b f32657g = bc.b.d("androidAppInfo");

        private b() {
        }

        @Override // bc.c
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(com.google.firebase.sessions.b bVar, bc.d dVar) {
            dVar.e(f32652b, bVar.b());
            dVar.e(f32653c, bVar.c());
            dVar.e(f32654d, bVar.f());
            dVar.e(f32655e, bVar.e());
            dVar.e(f32656f, bVar.d());
            dVar.e(f32657g, bVar.a());
        }
    }

    /* JADX INFO: renamed from: com.google.firebase.sessions.c$c, reason: collision with other inner class name */
    private static final class C0450c implements bc.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final C0450c f32658a = new C0450c();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static final bc.b f32659b = bc.b.d("performance");

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static final bc.b f32660c = bc.b.d("crashlytics");

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static final bc.b f32661d = bc.b.d("sessionSamplingRate");

        private C0450c() {
        }

        @Override // bc.c
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(com.google.firebase.sessions.d dVar, bc.d dVar2) {
            dVar2.e(f32659b, dVar.b());
            dVar2.e(f32660c, dVar.a());
            dVar2.c(f32661d, dVar.c());
        }
    }

    private static final class d implements bc.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final d f32662a = new d();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static final bc.b f32663b = bc.b.d("processName");

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static final bc.b f32664c = bc.b.d("pid");

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static final bc.b f32665d = bc.b.d("importance");

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private static final bc.b f32666e = bc.b.d("defaultProcess");

        private d() {
        }

        @Override // bc.c
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(p pVar, bc.d dVar) {
            dVar.e(f32663b, pVar.c());
            dVar.b(f32664c, pVar.b());
            dVar.b(f32665d, pVar.a());
            dVar.d(f32666e, pVar.d());
        }
    }

    private static final class e implements bc.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final e f32667a = new e();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static final bc.b f32668b = bc.b.d("eventType");

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static final bc.b f32669c = bc.b.d("sessionData");

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static final bc.b f32670d = bc.b.d("applicationInfo");

        private e() {
        }

        @Override // bc.c
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(u uVar, bc.d dVar) {
            dVar.e(f32668b, uVar.b());
            dVar.e(f32669c, uVar.c());
            dVar.e(f32670d, uVar.a());
        }
    }

    private static final class f implements bc.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final f f32671a = new f();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static final bc.b f32672b = bc.b.d("sessionId");

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static final bc.b f32673c = bc.b.d("firstSessionId");

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static final bc.b f32674d = bc.b.d("sessionIndex");

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private static final bc.b f32675e = bc.b.d("eventTimestampUs");

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private static final bc.b f32676f = bc.b.d("dataCollectionStatus");

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private static final bc.b f32677g = bc.b.d("firebaseInstallationId");

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private static final bc.b f32678h = bc.b.d("firebaseAuthenticationToken");

        private f() {
        }

        @Override // bc.c
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(x xVar, bc.d dVar) {
            dVar.e(f32672b, xVar.f());
            dVar.e(f32673c, xVar.e());
            dVar.b(f32674d, xVar.g());
            dVar.a(f32675e, xVar.b());
            dVar.e(f32676f, xVar.a());
            dVar.e(f32677g, xVar.d());
            dVar.e(f32678h, xVar.c());
        }
    }

    private c() {
    }

    @Override // cc.a
    public void a(cc.b bVar) {
        bVar.a(u.class, e.f32667a);
        bVar.a(x.class, f.f32671a);
        bVar.a(com.google.firebase.sessions.d.class, C0450c.f32658a);
        bVar.a(com.google.firebase.sessions.b.class, b.f32651a);
        bVar.a(com.google.firebase.sessions.a.class, a.f32644a);
        bVar.a(p.class, d.f32662a);
    }
}
