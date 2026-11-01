package dy;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.transsion.ad.scene.d;
import ii.b;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f61460a = new a();

    private a() {
    }

    public final long a(String sceneId, int i11) {
        Object objM454constructorimpl;
        JsonElement jsonElement;
        Intrinsics.h(sceneId, "sceneId");
        try {
            Result.Companion companion = Result.INSTANCE;
            JsonObject jsonObjectB = d.f42204a.b(sceneId);
            objM454constructorimpl = Result.m454constructorimpl(Long.valueOf(((long) ((jsonObjectB == null || (jsonElement = jsonObjectB.get("coordinatorInterval")) == null) ? i11 : jsonElement.getAsInt())) * 1000));
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
        }
        if (Result.m457exceptionOrNullimpl(objM454constructorimpl) != null) {
            objM454constructorimpl = Long.valueOf(((long) i11) * 1000);
        }
        return ((Number) objM454constructorimpl).longValue();
    }

    public final int b(String sceneId, int i11) {
        Object objM454constructorimpl;
        JsonElement jsonElement;
        Intrinsics.h(sceneId, "sceneId");
        try {
            Result.Companion companion = Result.INSTANCE;
            JsonObject jsonObjectB = d.f42204a.b(sceneId);
            objM454constructorimpl = Result.m454constructorimpl(Integer.valueOf((jsonObjectB == null || (jsonElement = jsonObjectB.get("coordinatorPriority")) == null) ? i11 : jsonElement.getAsInt()));
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
        }
        if (Result.m457exceptionOrNullimpl(objM454constructorimpl) != null) {
            objM454constructorimpl = Integer.valueOf(i11);
        }
        return ((Number) objM454constructorimpl).intValue();
    }

    public final void c() {
        lg.a.C0828a.f(lg.a.f68839a, "AdSceneCoordinator", "initCoordinatorAdScenes", false, 4, null);
        b.f65248a.i(MapsKt.l(TuplesKt.a("TrendingTwoLevelloftScene", new ii.a(b("TrendingTwoLevelloftScene", 0), a("TrendingTwoLevelloftScene", 0))), TuplesKt.a("MainDialogInterstitialScene", new ii.a(b("MainDialogInterstitialScene", 1), a("MainDialogInterstitialScene", 0))), TuplesKt.a("HotStartScene", new ii.a(b("HotStartScene", 1), a("HotStartScene", 0))), TuplesKt.a("LocalVideoBackInterstitialV2Scene", new ii.a(b("LocalVideoBackInterstitialV2Scene", 1), a("LocalVideoBackInterstitialV2Scene", 0))), TuplesKt.a("AppInstallTip", new ii.a(b("AppInstallTip", 2), a("AppInstallTip", 300))), TuplesKt.a("MemberActivateTip", new ii.a(b("MemberActivateTip", 3), a("MemberActivateTip", 300))), TuplesKt.a("MemberPUSH", new ii.a(b("MemberPUSH", 4), a("MemberPUSH", 0))), TuplesKt.a("StreamerIconAdScene", new ii.a(b("StreamerIconAdScene", 5), a("StreamerIconAdScene", 300)))));
    }
}
