package com.google.android.datatransport.cct.internal;

import com.cloud.tmc.integration.bridge.NetworkBridge;
import com.cloud.tmc.miniapp.BuildConfig;
import com.google.android.libraries.places.api.model.PlaceTypes;

/* JADX INFO: loaded from: classes3.dex */
public final class b implements cc.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final cc.a f24201a = new b();

    private static final class a implements bc.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final a f24202a = new a();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static final bc.b f24203b = bc.b.d("sdkVersion");

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static final bc.b f24204c = bc.b.d("model");

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static final bc.b f24205d = bc.b.d("hardware");

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private static final bc.b f24206e = bc.b.d("device");

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private static final bc.b f24207f = bc.b.d(BuildConfig.FLAVOR_sdkMode);

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private static final bc.b f24208g = bc.b.d("osBuild");

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private static final bc.b f24209h = bc.b.d("manufacturer");

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private static final bc.b f24210i = bc.b.d("fingerprint");

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private static final bc.b f24211j = bc.b.d("locale");

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private static final bc.b f24212k = bc.b.d(PlaceTypes.COUNTRY);

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private static final bc.b f24213l = bc.b.d("mccMnc");

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        private static final bc.b f24214m = bc.b.d("applicationBuild");

        private a() {
        }

        @Override // bc.c
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(com.google.android.datatransport.cct.internal.a aVar, bc.d dVar) {
            dVar.e(f24203b, aVar.m());
            dVar.e(f24204c, aVar.j());
            dVar.e(f24205d, aVar.f());
            dVar.e(f24206e, aVar.d());
            dVar.e(f24207f, aVar.l());
            dVar.e(f24208g, aVar.k());
            dVar.e(f24209h, aVar.h());
            dVar.e(f24210i, aVar.e());
            dVar.e(f24211j, aVar.g());
            dVar.e(f24212k, aVar.c());
            dVar.e(f24213l, aVar.i());
            dVar.e(f24214m, aVar.b());
        }
    }

    /* JADX INFO: renamed from: com.google.android.datatransport.cct.internal.b$b, reason: collision with other inner class name */
    private static final class C0359b implements bc.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final C0359b f24215a = new C0359b();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static final bc.b f24216b = bc.b.d("logRequest");

        private C0359b() {
        }

        @Override // bc.c
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(m mVar, bc.d dVar) {
            dVar.e(f24216b, mVar.c());
        }
    }

    private static final class c implements bc.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final c f24217a = new c();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static final bc.b f24218b = bc.b.d("clientType");

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static final bc.b f24219c = bc.b.d("androidClientInfo");

        private c() {
        }

        @Override // bc.c
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(ClientInfo clientInfo, bc.d dVar) {
            dVar.e(f24218b, clientInfo.c());
            dVar.e(f24219c, clientInfo.b());
        }
    }

    private static final class d implements bc.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final d f24220a = new d();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static final bc.b f24221b = bc.b.d("privacyContext");

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static final bc.b f24222c = bc.b.d("productIdOrigin");

        private d() {
        }

        @Override // bc.c
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(ComplianceData complianceData, bc.d dVar) {
            dVar.e(f24221b, complianceData.b());
            dVar.e(f24222c, complianceData.c());
        }
    }

    private static final class e implements bc.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final e f24223a = new e();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static final bc.b f24224b = bc.b.d("clearBlob");

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static final bc.b f24225c = bc.b.d("encryptedBlob");

        private e() {
        }

        @Override // bc.c
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(n nVar, bc.d dVar) {
            dVar.e(f24224b, nVar.b());
            dVar.e(f24225c, nVar.c());
        }
    }

    private static final class f implements bc.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final f f24226a = new f();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static final bc.b f24227b = bc.b.d("originAssociatedProductId");

        private f() {
        }

        @Override // bc.c
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(o oVar, bc.d dVar) {
            dVar.e(f24227b, oVar.b());
        }
    }

    private static final class g implements bc.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final g f24228a = new g();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static final bc.b f24229b = bc.b.d("prequest");

        private g() {
        }

        @Override // bc.c
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(p pVar, bc.d dVar) {
            dVar.e(f24229b, pVar.b());
        }
    }

    private static final class h implements bc.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final h f24230a = new h();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static final bc.b f24231b = bc.b.d("eventTimeMs");

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static final bc.b f24232c = bc.b.d("eventCode");

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static final bc.b f24233d = bc.b.d("complianceData");

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private static final bc.b f24234e = bc.b.d("eventUptimeMs");

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private static final bc.b f24235f = bc.b.d("sourceExtension");

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private static final bc.b f24236g = bc.b.d("sourceExtensionJsonProto3");

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private static final bc.b f24237h = bc.b.d("timezoneOffsetSeconds");

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private static final bc.b f24238i = bc.b.d("networkConnectionInfo");

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private static final bc.b f24239j = bc.b.d("experimentIds");

        private h() {
        }

        @Override // bc.c
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(q qVar, bc.d dVar) {
            dVar.a(f24231b, qVar.d());
            dVar.e(f24232c, qVar.c());
            dVar.e(f24233d, qVar.b());
            dVar.a(f24234e, qVar.e());
            dVar.e(f24235f, qVar.h());
            dVar.e(f24236g, qVar.i());
            dVar.a(f24237h, qVar.j());
            dVar.e(f24238i, qVar.g());
            dVar.e(f24239j, qVar.f());
        }
    }

    private static final class i implements bc.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final i f24240a = new i();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static final bc.b f24241b = bc.b.d("requestTimeMs");

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static final bc.b f24242c = bc.b.d("requestUptimeMs");

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static final bc.b f24243d = bc.b.d("clientInfo");

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private static final bc.b f24244e = bc.b.d("logSource");

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private static final bc.b f24245f = bc.b.d("logSourceName");

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private static final bc.b f24246g = bc.b.d("logEvent");

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private static final bc.b f24247h = bc.b.d("qosTier");

        private i() {
        }

        @Override // bc.c
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(r rVar, bc.d dVar) {
            dVar.a(f24241b, rVar.g());
            dVar.a(f24242c, rVar.h());
            dVar.e(f24243d, rVar.b());
            dVar.e(f24244e, rVar.d());
            dVar.e(f24245f, rVar.e());
            dVar.e(f24246g, rVar.c());
            dVar.e(f24247h, rVar.f());
        }
    }

    private static final class j implements bc.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final j f24248a = new j();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static final bc.b f24249b = bc.b.d(NetworkBridge.KEY_NETWORK_TYPE);

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static final bc.b f24250c = bc.b.d("mobileSubtype");

        private j() {
        }

        @Override // bc.c
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(NetworkConnectionInfo networkConnectionInfo, bc.d dVar) {
            dVar.e(f24249b, networkConnectionInfo.c());
            dVar.e(f24250c, networkConnectionInfo.b());
        }
    }

    private b() {
    }

    @Override // cc.a
    public void a(cc.b bVar) {
        C0359b c0359b = C0359b.f24215a;
        bVar.a(m.class, c0359b);
        bVar.a(com.google.android.datatransport.cct.internal.d.class, c0359b);
        i iVar = i.f24240a;
        bVar.a(r.class, iVar);
        bVar.a(k.class, iVar);
        c cVar = c.f24217a;
        bVar.a(ClientInfo.class, cVar);
        bVar.a(com.google.android.datatransport.cct.internal.e.class, cVar);
        a aVar = a.f24202a;
        bVar.a(com.google.android.datatransport.cct.internal.a.class, aVar);
        bVar.a(com.google.android.datatransport.cct.internal.c.class, aVar);
        h hVar = h.f24230a;
        bVar.a(q.class, hVar);
        bVar.a(com.google.android.datatransport.cct.internal.j.class, hVar);
        d dVar = d.f24220a;
        bVar.a(ComplianceData.class, dVar);
        bVar.a(com.google.android.datatransport.cct.internal.f.class, dVar);
        g gVar = g.f24228a;
        bVar.a(p.class, gVar);
        bVar.a(com.google.android.datatransport.cct.internal.i.class, gVar);
        f fVar = f.f24226a;
        bVar.a(o.class, fVar);
        bVar.a(com.google.android.datatransport.cct.internal.h.class, fVar);
        j jVar = j.f24248a;
        bVar.a(NetworkConnectionInfo.class, jVar);
        bVar.a(l.class, jVar);
        e eVar = e.f24223a;
        bVar.a(n.class, eVar);
        bVar.a(com.google.android.datatransport.cct.internal.g.class, eVar);
    }
}
