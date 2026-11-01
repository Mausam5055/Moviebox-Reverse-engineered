package ay;

import com.transsion.mb.config.manager.ConfigBean;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONObject;
import sm.f;

/* JADX INFO: loaded from: classes6.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f16171a = new a();

    private a() {
    }

    private final JSONObject a() {
        Object objM454constructorimpl;
        String value;
        try {
            Result.Companion companion = Result.INSTANCE;
            ConfigBean configBeanC = f.f75407c.a().c("mb_ad_config", true);
            if (configBeanC != null && (value = configBeanC.getValue()) != null) {
                objM454constructorimpl = Result.m454constructorimpl(new JSONObject(value));
                return (JSONObject) (Result.m460isFailureimpl(objM454constructorimpl) ? null : objM454constructorimpl);
            }
            return null;
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
        }
    }

    public final String b() {
        Object objM454constructorimpl;
        try {
            Result.Companion companion = Result.INSTANCE;
            JSONObject jSONObjectA = a();
            objM454constructorimpl = Result.m454constructorimpl(jSONObjectA != null ? jSONObjectA.optString("trendingSceneId", "") : null);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
        }
        String str = (String) (Result.m460isFailureimpl(objM454constructorimpl) ? null : objM454constructorimpl);
        if (Intrinsics.c(str, "TrendingScene_1")) {
            return "TrendingScene_1";
        }
        return Intrinsics.c(str, "TrendingScene_2") ? "TrendingScene_2" : "TrendingScene";
    }
}
