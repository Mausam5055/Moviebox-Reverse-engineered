package com.google.firebase.crashlytics.internal.model;

import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.google.android.libraries.places.api.model.PlaceTypes;
import com.hisavana.common.tracking.TrackingKey;
import com.mbridge.msdk.foundation.entity.CampaignEx;

/* JADX INFO: loaded from: classes4.dex */
public final class a implements cc.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final cc.a f31311a = new a();

    /* JADX INFO: renamed from: com.google.firebase.crashlytics.internal.model.a$a, reason: collision with other inner class name */
    private static final class C0438a implements bc.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final C0438a f31312a = new C0438a();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static final bc.b f31313b = bc.b.d("arch");

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static final bc.b f31314c = bc.b.d("libraryName");

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static final bc.b f31315d = bc.b.d("buildId");

        private C0438a() {
        }

        @Override // bc.c
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(CrashlyticsReport.a.AbstractC0420a abstractC0420a, bc.d dVar) {
            dVar.e(f31313b, abstractC0420a.b());
            dVar.e(f31314c, abstractC0420a.d());
            dVar.e(f31315d, abstractC0420a.c());
        }
    }

    private static final class b implements bc.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final b f31316a = new b();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static final bc.b f31317b = bc.b.d("pid");

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static final bc.b f31318c = bc.b.d("processName");

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static final bc.b f31319d = bc.b.d("reasonCode");

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private static final bc.b f31320e = bc.b.d("importance");

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private static final bc.b f31321f = bc.b.d("pss");

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private static final bc.b f31322g = bc.b.d("rss");

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private static final bc.b f31323h = bc.b.d(CampaignEx.JSON_KEY_TIMESTAMP);

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private static final bc.b f31324i = bc.b.d("traceFile");

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private static final bc.b f31325j = bc.b.d("buildIdMappingForArch");

        private b() {
        }

        @Override // bc.c
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(CrashlyticsReport.a aVar, bc.d dVar) {
            dVar.b(f31317b, aVar.d());
            dVar.e(f31318c, aVar.e());
            dVar.b(f31319d, aVar.g());
            dVar.b(f31320e, aVar.c());
            dVar.a(f31321f, aVar.f());
            dVar.a(f31322g, aVar.h());
            dVar.a(f31323h, aVar.i());
            dVar.e(f31324i, aVar.j());
            dVar.e(f31325j, aVar.b());
        }
    }

    private static final class c implements bc.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final c f31326a = new c();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static final bc.b f31327b = bc.b.d("key");

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static final bc.b f31328c = bc.b.d(AppMeasurementSdk.ConditionalUserProperty.VALUE);

        private c() {
        }

        @Override // bc.c
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(CrashlyticsReport.c cVar, bc.d dVar) {
            dVar.e(f31327b, cVar.b());
            dVar.e(f31328c, cVar.c());
        }
    }

    private static final class d implements bc.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final d f31329a = new d();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static final bc.b f31330b = bc.b.d("sdkVersion");

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static final bc.b f31331c = bc.b.d("gmpAppId");

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static final bc.b f31332d = bc.b.d(TrackingKey.PLATFORM);

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private static final bc.b f31333e = bc.b.d("installationUuid");

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private static final bc.b f31334f = bc.b.d("firebaseInstallationId");

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private static final bc.b f31335g = bc.b.d("firebaseAuthenticationToken");

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private static final bc.b f31336h = bc.b.d("appQualitySessionId");

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private static final bc.b f31337i = bc.b.d("buildVersion");

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private static final bc.b f31338j = bc.b.d("displayVersion");

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private static final bc.b f31339k = bc.b.d("session");

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private static final bc.b f31340l = bc.b.d("ndkPayload");

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        private static final bc.b f31341m = bc.b.d("appExitInfo");

        private d() {
        }

        @Override // bc.c
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(CrashlyticsReport crashlyticsReport, bc.d dVar) {
            dVar.e(f31330b, crashlyticsReport.m());
            dVar.e(f31331c, crashlyticsReport.i());
            dVar.b(f31332d, crashlyticsReport.l());
            dVar.e(f31333e, crashlyticsReport.j());
            dVar.e(f31334f, crashlyticsReport.h());
            dVar.e(f31335g, crashlyticsReport.g());
            dVar.e(f31336h, crashlyticsReport.d());
            dVar.e(f31337i, crashlyticsReport.e());
            dVar.e(f31338j, crashlyticsReport.f());
            dVar.e(f31339k, crashlyticsReport.n());
            dVar.e(f31340l, crashlyticsReport.k());
            dVar.e(f31341m, crashlyticsReport.c());
        }
    }

    private static final class e implements bc.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final e f31342a = new e();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static final bc.b f31343b = bc.b.d("files");

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static final bc.b f31344c = bc.b.d("orgId");

        private e() {
        }

        @Override // bc.c
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(CrashlyticsReport.d dVar, bc.d dVar2) {
            dVar2.e(f31343b, dVar.b());
            dVar2.e(f31344c, dVar.c());
        }
    }

    private static final class f implements bc.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final f f31345a = new f();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static final bc.b f31346b = bc.b.d("filename");

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static final bc.b f31347c = bc.b.d("contents");

        private f() {
        }

        @Override // bc.c
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(CrashlyticsReport.d.b bVar, bc.d dVar) {
            dVar.e(f31346b, bVar.c());
            dVar.e(f31347c, bVar.b());
        }
    }

    private static final class g implements bc.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final g f31348a = new g();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static final bc.b f31349b = bc.b.d("identifier");

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static final bc.b f31350c = bc.b.d("version");

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static final bc.b f31351d = bc.b.d("displayVersion");

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private static final bc.b f31352e = bc.b.d("organization");

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private static final bc.b f31353f = bc.b.d("installationUuid");

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private static final bc.b f31354g = bc.b.d("developmentPlatform");

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private static final bc.b f31355h = bc.b.d("developmentPlatformVersion");

        private g() {
        }

        @Override // bc.c
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(CrashlyticsReport.e.a aVar, bc.d dVar) {
            dVar.e(f31349b, aVar.e());
            dVar.e(f31350c, aVar.h());
            dVar.e(f31351d, aVar.d());
            dVar.e(f31352e, aVar.g());
            dVar.e(f31353f, aVar.f());
            dVar.e(f31354g, aVar.b());
            dVar.e(f31355h, aVar.c());
        }
    }

    private static final class h implements bc.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final h f31356a = new h();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static final bc.b f31357b = bc.b.d("clsId");

        private h() {
        }

        @Override // bc.c
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(CrashlyticsReport.e.a.b bVar, bc.d dVar) {
            dVar.e(f31357b, bVar.a());
        }
    }

    private static final class i implements bc.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final i f31358a = new i();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static final bc.b f31359b = bc.b.d("arch");

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static final bc.b f31360c = bc.b.d("model");

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static final bc.b f31361d = bc.b.d("cores");

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private static final bc.b f31362e = bc.b.d("ram");

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private static final bc.b f31363f = bc.b.d("diskSpace");

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private static final bc.b f31364g = bc.b.d("simulator");

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private static final bc.b f31365h = bc.b.d("state");

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private static final bc.b f31366i = bc.b.d("manufacturer");

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private static final bc.b f31367j = bc.b.d("modelClass");

        private i() {
        }

        @Override // bc.c
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(CrashlyticsReport.e.c cVar, bc.d dVar) {
            dVar.b(f31359b, cVar.b());
            dVar.e(f31360c, cVar.f());
            dVar.b(f31361d, cVar.c());
            dVar.a(f31362e, cVar.h());
            dVar.a(f31363f, cVar.d());
            dVar.d(f31364g, cVar.j());
            dVar.b(f31365h, cVar.i());
            dVar.e(f31366i, cVar.e());
            dVar.e(f31367j, cVar.g());
        }
    }

    private static final class j implements bc.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final j f31368a = new j();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static final bc.b f31369b = bc.b.d("generator");

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static final bc.b f31370c = bc.b.d("identifier");

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static final bc.b f31371d = bc.b.d("appQualitySessionId");

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private static final bc.b f31372e = bc.b.d("startedAt");

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private static final bc.b f31373f = bc.b.d("endedAt");

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private static final bc.b f31374g = bc.b.d("crashed");

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private static final bc.b f31375h = bc.b.d("app");

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private static final bc.b f31376i = bc.b.d("user");

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private static final bc.b f31377j = bc.b.d("os");

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private static final bc.b f31378k = bc.b.d("device");

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private static final bc.b f31379l = bc.b.d("events");

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        private static final bc.b f31380m = bc.b.d("generatorType");

        private j() {
        }

        @Override // bc.c
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(CrashlyticsReport.e eVar, bc.d dVar) {
            dVar.e(f31369b, eVar.g());
            dVar.e(f31370c, eVar.j());
            dVar.e(f31371d, eVar.c());
            dVar.a(f31372e, eVar.l());
            dVar.e(f31373f, eVar.e());
            dVar.d(f31374g, eVar.n());
            dVar.e(f31375h, eVar.b());
            dVar.e(f31376i, eVar.m());
            dVar.e(f31377j, eVar.k());
            dVar.e(f31378k, eVar.d());
            dVar.e(f31379l, eVar.f());
            dVar.b(f31380m, eVar.h());
        }
    }

    private static final class k implements bc.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final k f31381a = new k();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static final bc.b f31382b = bc.b.d("execution");

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static final bc.b f31383c = bc.b.d("customAttributes");

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static final bc.b f31384d = bc.b.d("internalKeys");

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private static final bc.b f31385e = bc.b.d("background");

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private static final bc.b f31386f = bc.b.d("currentProcessDetails");

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private static final bc.b f31387g = bc.b.d("appProcessDetails");

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private static final bc.b f31388h = bc.b.d("uiOrientation");

        private k() {
        }

        @Override // bc.c
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(CrashlyticsReport.e.d.a aVar, bc.d dVar) {
            dVar.e(f31382b, aVar.f());
            dVar.e(f31383c, aVar.e());
            dVar.e(f31384d, aVar.g());
            dVar.e(f31385e, aVar.c());
            dVar.e(f31386f, aVar.d());
            dVar.e(f31387g, aVar.b());
            dVar.b(f31388h, aVar.h());
        }
    }

    private static final class l implements bc.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final l f31389a = new l();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static final bc.b f31390b = bc.b.d("baseAddress");

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static final bc.b f31391c = bc.b.d("size");

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static final bc.b f31392d = bc.b.d("name");

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private static final bc.b f31393e = bc.b.d("uuid");

        private l() {
        }

        @Override // bc.c
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(CrashlyticsReport.e.d.a.b.AbstractC0424a abstractC0424a, bc.d dVar) {
            dVar.a(f31390b, abstractC0424a.b());
            dVar.a(f31391c, abstractC0424a.d());
            dVar.e(f31392d, abstractC0424a.c());
            dVar.e(f31393e, abstractC0424a.f());
        }
    }

    private static final class m implements bc.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final m f31394a = new m();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static final bc.b f31395b = bc.b.d("threads");

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static final bc.b f31396c = bc.b.d("exception");

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static final bc.b f31397d = bc.b.d("appExitInfo");

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private static final bc.b f31398e = bc.b.d("signal");

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private static final bc.b f31399f = bc.b.d("binaries");

        private m() {
        }

        @Override // bc.c
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(CrashlyticsReport.e.d.a.b bVar, bc.d dVar) {
            dVar.e(f31395b, bVar.f());
            dVar.e(f31396c, bVar.d());
            dVar.e(f31397d, bVar.b());
            dVar.e(f31398e, bVar.e());
            dVar.e(f31399f, bVar.c());
        }
    }

    private static final class n implements bc.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final n f31400a = new n();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static final bc.b f31401b = bc.b.d(NativeComponentConstants.KEY_COMPONENT_TYPE);

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static final bc.b f31402c = bc.b.d("reason");

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static final bc.b f31403d = bc.b.d(com.mbridge.msdk.foundation.entity.b.JSON_KEY_FRAME_ADS);

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private static final bc.b f31404e = bc.b.d("causedBy");

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private static final bc.b f31405f = bc.b.d("overflowCount");

        private n() {
        }

        @Override // bc.c
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(CrashlyticsReport.e.d.a.b.c cVar, bc.d dVar) {
            dVar.e(f31401b, cVar.f());
            dVar.e(f31402c, cVar.e());
            dVar.e(f31403d, cVar.c());
            dVar.e(f31404e, cVar.b());
            dVar.b(f31405f, cVar.d());
        }
    }

    private static final class o implements bc.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final o f31406a = new o();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static final bc.b f31407b = bc.b.d("name");

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static final bc.b f31408c = bc.b.d("code");

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static final bc.b f31409d = bc.b.d(PlaceTypes.ADDRESS);

        private o() {
        }

        @Override // bc.c
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(CrashlyticsReport.e.d.a.b.AbstractC0428d abstractC0428d, bc.d dVar) {
            dVar.e(f31407b, abstractC0428d.d());
            dVar.e(f31408c, abstractC0428d.c());
            dVar.a(f31409d, abstractC0428d.b());
        }
    }

    private static final class p implements bc.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final p f31410a = new p();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static final bc.b f31411b = bc.b.d("name");

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static final bc.b f31412c = bc.b.d("importance");

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static final bc.b f31413d = bc.b.d(com.mbridge.msdk.foundation.entity.b.JSON_KEY_FRAME_ADS);

        private p() {
        }

        @Override // bc.c
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(CrashlyticsReport.e.d.a.b.AbstractC0430e abstractC0430e, bc.d dVar) {
            dVar.e(f31411b, abstractC0430e.d());
            dVar.b(f31412c, abstractC0430e.c());
            dVar.e(f31413d, abstractC0430e.b());
        }
    }

    private static final class q implements bc.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final q f31414a = new q();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static final bc.b f31415b = bc.b.d("pc");

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static final bc.b f31416c = bc.b.d("symbol");

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static final bc.b f31417d = bc.b.d(OfflineConstantsKt.OFFLINE_DOWNLOAD_SEARCH_MODE_FILE);

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private static final bc.b f31418e = bc.b.d("offset");

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private static final bc.b f31419f = bc.b.d("importance");

        private q() {
        }

        @Override // bc.c
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(CrashlyticsReport.e.d.a.b.AbstractC0430e.AbstractC0432b abstractC0432b, bc.d dVar) {
            dVar.a(f31415b, abstractC0432b.e());
            dVar.e(f31416c, abstractC0432b.f());
            dVar.e(f31417d, abstractC0432b.b());
            dVar.a(f31418e, abstractC0432b.d());
            dVar.b(f31419f, abstractC0432b.c());
        }
    }

    private static final class r implements bc.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final r f31420a = new r();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static final bc.b f31421b = bc.b.d("processName");

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static final bc.b f31422c = bc.b.d("pid");

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static final bc.b f31423d = bc.b.d("importance");

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private static final bc.b f31424e = bc.b.d("defaultProcess");

        private r() {
        }

        @Override // bc.c
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(CrashlyticsReport.e.d.a.c cVar, bc.d dVar) {
            dVar.e(f31421b, cVar.d());
            dVar.b(f31422c, cVar.c());
            dVar.b(f31423d, cVar.b());
            dVar.d(f31424e, cVar.e());
        }
    }

    private static final class s implements bc.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final s f31425a = new s();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static final bc.b f31426b = bc.b.d("batteryLevel");

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static final bc.b f31427c = bc.b.d("batteryVelocity");

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static final bc.b f31428d = bc.b.d("proximityOn");

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private static final bc.b f31429e = bc.b.d("orientation");

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private static final bc.b f31430f = bc.b.d("ramUsed");

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private static final bc.b f31431g = bc.b.d("diskUsed");

        private s() {
        }

        @Override // bc.c
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(CrashlyticsReport.e.d.c cVar, bc.d dVar) {
            dVar.e(f31426b, cVar.b());
            dVar.b(f31427c, cVar.c());
            dVar.d(f31428d, cVar.g());
            dVar.b(f31429e, cVar.e());
            dVar.a(f31430f, cVar.f());
            dVar.a(f31431g, cVar.d());
        }
    }

    private static final class t implements bc.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final t f31432a = new t();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static final bc.b f31433b = bc.b.d(CampaignEx.JSON_KEY_TIMESTAMP);

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static final bc.b f31434c = bc.b.d(NativeComponentConstants.KEY_COMPONENT_TYPE);

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static final bc.b f31435d = bc.b.d("app");

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private static final bc.b f31436e = bc.b.d("device");

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private static final bc.b f31437f = bc.b.d("log");

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private static final bc.b f31438g = bc.b.d("rollouts");

        private t() {
        }

        @Override // bc.c
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(CrashlyticsReport.e.d dVar, bc.d dVar2) {
            dVar2.a(f31433b, dVar.f());
            dVar2.e(f31434c, dVar.g());
            dVar2.e(f31435d, dVar.b());
            dVar2.e(f31436e, dVar.c());
            dVar2.e(f31437f, dVar.d());
            dVar2.e(f31438g, dVar.e());
        }
    }

    private static final class u implements bc.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final u f31439a = new u();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static final bc.b f31440b = bc.b.d("content");

        private u() {
        }

        @Override // bc.c
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(CrashlyticsReport.e.d.AbstractC0435d abstractC0435d, bc.d dVar) {
            dVar.e(f31440b, abstractC0435d.b());
        }
    }

    private static final class v implements bc.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final v f31441a = new v();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static final bc.b f31442b = bc.b.d("rolloutVariant");

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static final bc.b f31443c = bc.b.d("parameterKey");

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static final bc.b f31444d = bc.b.d("parameterValue");

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private static final bc.b f31445e = bc.b.d("templateVersion");

        private v() {
        }

        @Override // bc.c
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(CrashlyticsReport.e.d.AbstractC0436e abstractC0436e, bc.d dVar) {
            dVar.e(f31442b, abstractC0436e.d());
            dVar.e(f31443c, abstractC0436e.b());
            dVar.e(f31444d, abstractC0436e.c());
            dVar.a(f31445e, abstractC0436e.e());
        }
    }

    private static final class w implements bc.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final w f31446a = new w();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static final bc.b f31447b = bc.b.d("rolloutId");

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static final bc.b f31448c = bc.b.d("variantId");

        private w() {
        }

        @Override // bc.c
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(CrashlyticsReport.e.d.AbstractC0436e.b bVar, bc.d dVar) {
            dVar.e(f31447b, bVar.b());
            dVar.e(f31448c, bVar.c());
        }
    }

    private static final class x implements bc.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final x f31449a = new x();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static final bc.b f31450b = bc.b.d("assignments");

        private x() {
        }

        @Override // bc.c
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(CrashlyticsReport.e.d.f fVar, bc.d dVar) {
            dVar.e(f31450b, fVar.b());
        }
    }

    private static final class y implements bc.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final y f31451a = new y();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static final bc.b f31452b = bc.b.d(TrackingKey.PLATFORM);

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static final bc.b f31453c = bc.b.d("version");

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static final bc.b f31454d = bc.b.d("buildVersion");

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private static final bc.b f31455e = bc.b.d("jailbroken");

        private y() {
        }

        @Override // bc.c
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(CrashlyticsReport.e.AbstractC0437e abstractC0437e, bc.d dVar) {
            dVar.b(f31452b, abstractC0437e.c());
            dVar.e(f31453c, abstractC0437e.d());
            dVar.e(f31454d, abstractC0437e.b());
            dVar.d(f31455e, abstractC0437e.e());
        }
    }

    private static final class z implements bc.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final z f31456a = new z();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static final bc.b f31457b = bc.b.d("identifier");

        private z() {
        }

        @Override // bc.c
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(CrashlyticsReport.e.f fVar, bc.d dVar) {
            dVar.e(f31457b, fVar.b());
        }
    }

    private a() {
    }

    @Override // cc.a
    public void a(cc.b bVar) {
        d dVar = d.f31329a;
        bVar.a(CrashlyticsReport.class, dVar);
        bVar.a(com.google.firebase.crashlytics.internal.model.b.class, dVar);
        j jVar = j.f31368a;
        bVar.a(CrashlyticsReport.e.class, jVar);
        bVar.a(com.google.firebase.crashlytics.internal.model.h.class, jVar);
        g gVar = g.f31348a;
        bVar.a(CrashlyticsReport.e.a.class, gVar);
        bVar.a(com.google.firebase.crashlytics.internal.model.i.class, gVar);
        h hVar = h.f31356a;
        bVar.a(CrashlyticsReport.e.a.b.class, hVar);
        bVar.a(com.google.firebase.crashlytics.internal.model.j.class, hVar);
        z zVar = z.f31456a;
        bVar.a(CrashlyticsReport.e.f.class, zVar);
        bVar.a(a0.class, zVar);
        y yVar = y.f31451a;
        bVar.a(CrashlyticsReport.e.AbstractC0437e.class, yVar);
        bVar.a(com.google.firebase.crashlytics.internal.model.z.class, yVar);
        i iVar = i.f31358a;
        bVar.a(CrashlyticsReport.e.c.class, iVar);
        bVar.a(com.google.firebase.crashlytics.internal.model.k.class, iVar);
        t tVar = t.f31432a;
        bVar.a(CrashlyticsReport.e.d.class, tVar);
        bVar.a(com.google.firebase.crashlytics.internal.model.l.class, tVar);
        k kVar = k.f31381a;
        bVar.a(CrashlyticsReport.e.d.a.class, kVar);
        bVar.a(com.google.firebase.crashlytics.internal.model.m.class, kVar);
        m mVar = m.f31394a;
        bVar.a(CrashlyticsReport.e.d.a.b.class, mVar);
        bVar.a(com.google.firebase.crashlytics.internal.model.n.class, mVar);
        p pVar = p.f31410a;
        bVar.a(CrashlyticsReport.e.d.a.b.AbstractC0430e.class, pVar);
        bVar.a(com.google.firebase.crashlytics.internal.model.r.class, pVar);
        q qVar = q.f31414a;
        bVar.a(CrashlyticsReport.e.d.a.b.AbstractC0430e.AbstractC0432b.class, qVar);
        bVar.a(com.google.firebase.crashlytics.internal.model.s.class, qVar);
        n nVar = n.f31400a;
        bVar.a(CrashlyticsReport.e.d.a.b.c.class, nVar);
        bVar.a(com.google.firebase.crashlytics.internal.model.p.class, nVar);
        b bVar2 = b.f31316a;
        bVar.a(CrashlyticsReport.a.class, bVar2);
        bVar.a(com.google.firebase.crashlytics.internal.model.c.class, bVar2);
        C0438a c0438a = C0438a.f31312a;
        bVar.a(CrashlyticsReport.a.AbstractC0420a.class, c0438a);
        bVar.a(com.google.firebase.crashlytics.internal.model.d.class, c0438a);
        o oVar = o.f31406a;
        bVar.a(CrashlyticsReport.e.d.a.b.AbstractC0428d.class, oVar);
        bVar.a(com.google.firebase.crashlytics.internal.model.q.class, oVar);
        l lVar = l.f31389a;
        bVar.a(CrashlyticsReport.e.d.a.b.AbstractC0424a.class, lVar);
        bVar.a(com.google.firebase.crashlytics.internal.model.o.class, lVar);
        c cVar = c.f31326a;
        bVar.a(CrashlyticsReport.c.class, cVar);
        bVar.a(com.google.firebase.crashlytics.internal.model.e.class, cVar);
        r rVar = r.f31420a;
        bVar.a(CrashlyticsReport.e.d.a.c.class, rVar);
        bVar.a(com.google.firebase.crashlytics.internal.model.t.class, rVar);
        s sVar = s.f31425a;
        bVar.a(CrashlyticsReport.e.d.c.class, sVar);
        bVar.a(com.google.firebase.crashlytics.internal.model.u.class, sVar);
        u uVar = u.f31439a;
        bVar.a(CrashlyticsReport.e.d.AbstractC0435d.class, uVar);
        bVar.a(com.google.firebase.crashlytics.internal.model.v.class, uVar);
        x xVar = x.f31449a;
        bVar.a(CrashlyticsReport.e.d.f.class, xVar);
        bVar.a(com.google.firebase.crashlytics.internal.model.y.class, xVar);
        v vVar = v.f31441a;
        bVar.a(CrashlyticsReport.e.d.AbstractC0436e.class, vVar);
        bVar.a(com.google.firebase.crashlytics.internal.model.w.class, vVar);
        w wVar = w.f31446a;
        bVar.a(CrashlyticsReport.e.d.AbstractC0436e.b.class, wVar);
        bVar.a(com.google.firebase.crashlytics.internal.model.x.class, wVar);
        e eVar = e.f31342a;
        bVar.a(CrashlyticsReport.d.class, eVar);
        bVar.a(com.google.firebase.crashlytics.internal.model.f.class, eVar);
        f fVar = f.f31345a;
        bVar.a(CrashlyticsReport.d.b.class, fVar);
        bVar.a(com.google.firebase.crashlytics.internal.model.g.class, fVar);
    }
}
