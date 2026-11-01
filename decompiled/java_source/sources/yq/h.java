package yq;

import com.google.gson.Gson;
import com.transsion.mb.config.manager.ConfigBean;
import com.transsion.search.net.GoogleSuggestConfig;
import java.util.Locale;
import java.util.Map;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes6.dex */
public final class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final h f79052a = new h();

    private h() {
    }

    private final Map b() {
        return MapsKt.l(TuplesKt.a("hl", a()), TuplesKt.a("client", "android"));
    }

    private final GoogleSuggestConfig d(String str) {
        Object objM454constructorimpl;
        try {
            Result.Companion companion = Result.INSTANCE;
            GoogleSuggestConfig googleSuggestConfig = (GoogleSuggestConfig) new Gson().fromJson(str, GoogleSuggestConfig.class);
            Map<String, String> queryParams = googleSuggestConfig.getQueryParams();
            Map<String, String> mapH = (queryParams == null || queryParams.isEmpty()) ? MapsKt.h() : googleSuggestConfig.getQueryParams();
            Map<String, String> headers = googleSuggestConfig.getHeaders();
            if (headers == null) {
                headers = MapsKt.h();
            }
            objM454constructorimpl = Result.m454constructorimpl(new GoogleSuggestConfig(headers, mapH));
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
        }
        if (Result.m457exceptionOrNullimpl(objM454constructorimpl) != null) {
            objM454constructorimpl = new GoogleSuggestConfig(MapsKt.h(), f79052a.b());
        }
        return (GoogleSuggestConfig) objM454constructorimpl;
    }

    public final String a() {
        String strG = yg.b.f79009a.g();
        if (strG == null) {
            strG = Locale.getDefault().getLanguage();
        }
        return StringsKt.q0(strG) ? "en" : strG;
    }

    public final GoogleSuggestConfig c() {
        Object objM454constructorimpl;
        try {
            Result.Companion companion = Result.INSTANCE;
            ConfigBean configBeanC = sm.f.f75407c.a().c(ak.g.f639a.b() ? "google_suggest_api_config_for_showbox" : "google_suggest_api_config", false);
            objM454constructorimpl = Result.m454constructorimpl(configBeanC != null ? configBeanC.getValue() : null);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
        }
        String str = (String) (Result.m460isFailureimpl(objM454constructorimpl) ? null : objM454constructorimpl);
        return (str == null || StringsKt.q0(str)) ? new GoogleSuggestConfig(MapsKt.h(), b()) : d(str);
    }
}
