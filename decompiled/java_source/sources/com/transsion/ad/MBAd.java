package com.transsion.ad;

import androidx.compose.animation.core.j0;
import androidx.compose.foundation.e;
import com.transsion.ad.strategy.AppManager;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.coroutines.i;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes5.dex */
public final class MBAd {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final MBAd f41751a = new MBAd();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final AtomicReference f41752b = new AtomicReference(null);

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String f41753a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final boolean f41754b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final boolean f41755c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final AppManager.AppEnum f41756d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final String f41757e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final String f41758f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private final String f41759g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private final boolean f41760h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private final hi.a f41761i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private final boolean f41762j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private final boolean f41763k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private final boolean f41764l;

        public a(String hisavanaAppId, boolean z10, boolean z11, AppManager.AppEnum appEnum, String hotSceneId, String adConfigUrl, String adConfigHost, boolean z12, hi.a aVar, boolean z13, boolean z14, boolean z15) {
            Intrinsics.h(hisavanaAppId, "hisavanaAppId");
            Intrinsics.h(appEnum, "appEnum");
            Intrinsics.h(hotSceneId, "hotSceneId");
            Intrinsics.h(adConfigUrl, "adConfigUrl");
            Intrinsics.h(adConfigHost, "adConfigHost");
            this.f41753a = hisavanaAppId;
            this.f41754b = z10;
            this.f41755c = z11;
            this.f41756d = appEnum;
            this.f41757e = hotSceneId;
            this.f41758f = adConfigUrl;
            this.f41759g = adConfigHost;
            this.f41760h = z12;
            this.f41761i = aVar;
            this.f41762j = z13;
            this.f41763k = z14;
            this.f41764l = z15;
        }

        public final String a() {
            return this.f41759g;
        }

        public final String b() {
            return this.f41758f;
        }

        public final boolean c() {
            return this.f41754b;
        }

        public final AppManager.AppEnum d() {
            return this.f41756d;
        }

        public final hi.a e() {
            return this.f41761i;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return Intrinsics.c(this.f41753a, aVar.f41753a) && this.f41754b == aVar.f41754b && this.f41755c == aVar.f41755c && this.f41756d == aVar.f41756d && Intrinsics.c(this.f41757e, aVar.f41757e) && Intrinsics.c(this.f41758f, aVar.f41758f) && Intrinsics.c(this.f41759g, aVar.f41759g) && this.f41760h == aVar.f41760h && Intrinsics.c(this.f41761i, aVar.f41761i) && this.f41762j == aVar.f41762j && this.f41763k == aVar.f41763k && this.f41764l == aVar.f41764l;
        }

        public final String f() {
            return this.f41753a;
        }

        public final String g() {
            return this.f41757e;
        }

        public final boolean h() {
            return this.f41760h;
        }

        public int hashCode() {
            int iHashCode = ((((((((((((((this.f41753a.hashCode() * 31) + e.a(this.f41754b)) * 31) + e.a(this.f41755c)) * 31) + this.f41756d.hashCode()) * 31) + this.f41757e.hashCode()) * 31) + this.f41758f.hashCode()) * 31) + this.f41759g.hashCode()) * 31) + e.a(this.f41760h)) * 31;
            hi.a aVar = this.f41761i;
            return ((((((iHashCode + (aVar == null ? 0 : aVar.hashCode())) * 31) + e.a(this.f41762j)) * 31) + e.a(this.f41763k)) * 31) + e.a(this.f41764l);
        }

        public final boolean i() {
            return this.f41762j;
        }

        public final boolean j() {
            return this.f41764l;
        }

        public final boolean k() {
            return this.f41763k;
        }

        public final boolean l() {
            return this.f41755c;
        }

        public final String m() {
            return StringsKt.n("\n                AdInitParams {\n                    hisavanaAppId = " + this.f41753a + "\n                    adTestDevice = " + this.f41754b + "\n                    isDebug = " + this.f41755c + "\n                    appEnum = " + this.f41756d.getValue() + "\n                    hotSceneId = " + this.f41757e + "\n                    adConfigUrl = " + this.f41758f + "\n                    mediaDisposeAppForeground = " + this.f41760h + "\n                    businessBridge = " + this.f41761i + "\n                    mediaDisposeH5Url = " + this.f41762j + "\n                    skipHiSdkInitDelay = " + this.f41763k + "\n                    openPsActivateAd = " + this.f41764l + "\n                }\n            ");
        }

        public String toString() {
            return "AdInitParams(hisavanaAppId=" + this.f41753a + ", adTestDevice=" + this.f41754b + ", isDebug=" + this.f41755c + ", appEnum=" + this.f41756d + ", hotSceneId=" + this.f41757e + ", adConfigUrl=" + this.f41758f + ", adConfigHost=" + this.f41759g + ", mediaDisposeAppForeground=" + this.f41760h + ", businessBridge=" + this.f41761i + ", mediaDisposeH5Url=" + this.f41762j + ", skipHiSdkInitDelay=" + this.f41763k + ", openPsActivateAd=" + this.f41764l + ")";
        }
    }

    public static final class b {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private boolean f41766b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private boolean f41767c;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private boolean f41772h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private hi.a f41773i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private boolean f41774j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private boolean f41775k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private boolean f41776l;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private String f41765a = "";

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private AppManager.AppEnum f41768d = AppManager.AppEnum.APP_MOVIE_BOX;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private String f41769e = "";

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private String f41770f = "";

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private String f41771g = "";

        public final a a() {
            if (this.f41765a.length() != 0) {
                return new a(this.f41765a, this.f41766b, this.f41767c, this.f41768d, this.f41769e, this.f41770f, this.f41771g, this.f41772h, this.f41773i, this.f41774j, this.f41775k, this.f41776l);
            }
            throw new IllegalArgumentException("HiSavana App ID must not be empty");
        }

        public final b b(String adConfigHost) {
            Intrinsics.h(adConfigHost, "adConfigHost");
            this.f41771g = adConfigHost;
            return this;
        }

        public final b c(String adConfigUrl) {
            Intrinsics.h(adConfigUrl, "adConfigUrl");
            this.f41770f = adConfigUrl;
            return this;
        }

        public final b d(boolean z10) {
            this.f41766b = z10;
            return this;
        }

        public final b e(AppManager.AppEnum appEnum) {
            Intrinsics.h(appEnum, "appEnum");
            this.f41768d = appEnum;
            return this;
        }

        public final b f(hi.a aVar) {
            this.f41773i = aVar;
            return this;
        }

        public final b g(String hisavanaAppId) {
            Intrinsics.h(hisavanaAppId, "hisavanaAppId");
            this.f41765a = hisavanaAppId;
            return this;
        }

        public final b h(String hotSceneId) {
            Intrinsics.h(hotSceneId, "hotSceneId");
            this.f41769e = hotSceneId;
            return this;
        }

        public final b i(boolean z10) {
            this.f41767c = z10;
            return this;
        }

        public final b j(boolean z10) {
            this.f41772h = z10;
            return this;
        }

        public final b k(boolean z10) {
            this.f41774j = z10;
            return this;
        }

        public final b l(boolean z10) {
            this.f41776l = z10;
            return this;
        }

        public final b m(boolean z10) {
            this.f41775k = z10;
            return this;
        }
    }

    private MBAd() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String d() {
        String simpleName = MBAd.class.getSimpleName();
        Intrinsics.g(simpleName, "getSimpleName(...)");
        return simpleName;
    }

    public final a c() {
        return (a) f41752b.get();
    }

    public final Object e(a aVar, Continuation continuation) {
        if (j0.a(f41752b, null, aVar)) {
            Object objG = i.g(y0.b(), new MBAd$initAd$2(aVar, null), continuation);
            return objG == IntrinsicsKt.f() ? objG : Unit.f67061a;
        }
        oi.a.c(oi.a.f71022a, d() + " --> initAd() --> 广告SDK，已经初始化", 6, false, 4, null);
        return Unit.f67061a;
    }

    public final Object f(String str, Continuation continuation) {
        Object objG = i.g(y0.b(), new MBAd$initNonAd$2(str, null), continuation);
        return objG == IntrinsicsKt.f() ? objG : Unit.f67061a;
    }

    public final boolean g() {
        a aVarC = c();
        if (aVarC != null) {
            return aVarC.l();
        }
        return false;
    }
}
