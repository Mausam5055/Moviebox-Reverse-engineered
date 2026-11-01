package yq;

import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonParser;
import com.transsion.search.bean.GoogleSuggestResponse;
import java.util.ArrayList;
import java.util.List;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes6.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final b f79047a = new b();

    private b() {
    }

    private final JsonArray a(JsonArray jsonArray, int i11) {
        Object objM454constructorimpl;
        JsonElement jsonElementC = c(jsonArray, i11);
        if (jsonElementC == null) {
            return null;
        }
        try {
            Result.Companion companion = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(jsonElementC.getAsJsonArray());
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
        }
        return (JsonArray) (Result.m460isFailureimpl(objM454constructorimpl) ? null : objM454constructorimpl);
    }

    private final List b(JsonArray jsonArray) {
        Object objM454constructorimpl;
        ArrayList arrayList = new ArrayList();
        for (JsonElement jsonElement : jsonArray) {
            try {
                Result.Companion companion = Result.INSTANCE;
                objM454constructorimpl = Result.m454constructorimpl(jsonElement.getAsString());
            } catch (Throwable th2) {
                Result.Companion companion2 = Result.INSTANCE;
                objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
            }
            if (Result.m460isFailureimpl(objM454constructorimpl)) {
                objM454constructorimpl = null;
            }
            String str = (String) objM454constructorimpl;
            if (str != null) {
                arrayList.add(str);
            }
        }
        return arrayList;
    }

    private final JsonElement c(JsonArray jsonArray, int i11) {
        if (i11 < 0 || i11 >= jsonArray.size()) {
            return null;
        }
        return jsonArray.get(i11);
    }

    private final GoogleSuggestResponse d() {
        return new GoogleSuggestResponse("", CollectionsKt.l());
    }

    private final String f(JsonArray jsonArray, int i11) {
        Object objM454constructorimpl;
        JsonElement jsonElementC = c(jsonArray, i11);
        if (jsonElementC == null) {
            return "";
        }
        try {
            Result.Companion companion = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(jsonElementC.getAsString());
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
        }
        return (String) (Result.m460isFailureimpl(objM454constructorimpl) ? "" : objM454constructorimpl);
    }

    private final String g(String str) {
        String string = StringsKt.s1(str).toString();
        int i11 = 0;
        if (!StringsKt.W(string, ")]}'", false, 2, null)) {
            return string;
        }
        int length = string.length();
        while (true) {
            if (i11 >= length) {
                i11 = -1;
                break;
            }
            char cCharAt = string.charAt(i11);
            if (cCharAt == '\n' || cCharAt == '\r') {
                break;
            }
            i11++;
        }
        if (i11 < 0) {
            lg.a.C0828a.z(lg.a.f68839a, "GoogleSuggestParser", "parse failed: xssi prefix found without line break", false, 4, null);
            return "";
        }
        while (i11 < string.length() && (string.charAt(i11) == '\n' || string.charAt(i11) == '\r')) {
            i11++;
        }
        String strSubstring = string.substring(i11);
        Intrinsics.g(strSubstring, "substring(...)");
        return strSubstring;
    }

    public final GoogleSuggestResponse e(String raw) {
        Object objM454constructorimpl;
        Intrinsics.h(raw, "raw");
        String strG = g(raw);
        if (StringsKt.q0(strG)) {
            lg.a.C0828a.z(lg.a.f68839a, "GoogleSuggestParser", "parse failed: empty payload after stripping prefix", false, 4, null);
            return d();
        }
        try {
            Result.Companion companion = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(JsonParser.parseString(strG).getAsJsonArray());
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
        }
        Throwable thM457exceptionOrNullimpl = Result.m457exceptionOrNullimpl(objM454constructorimpl);
        if (thM457exceptionOrNullimpl != null) {
            lg.a.C0828a.y(lg.a.f68839a, "GoogleSuggestParser", "parse failed: invalid json array", thM457exceptionOrNullimpl, false, 8, null);
        }
        if (Result.m460isFailureimpl(objM454constructorimpl)) {
            objM454constructorimpl = null;
        }
        JsonArray jsonArray = (JsonArray) objM454constructorimpl;
        if (jsonArray == null) {
            return d();
        }
        if (jsonArray.size() <= 1) {
            lg.a.C0828a.z(lg.a.f68839a, "GoogleSuggestParser", "parse failed: unexpected array size=" + jsonArray.size(), false, 4, null);
            return d();
        }
        String strF = f(jsonArray, 0);
        JsonArray jsonArrayA = a(jsonArray, 1);
        List listB = jsonArrayA != null ? b(jsonArrayA) : null;
        if (listB == null) {
            listB = CollectionsKt.l();
        }
        ArrayList arrayList = new ArrayList();
        for (Object obj : listB) {
            if (!StringsKt.q0((String) obj)) {
                arrayList.add(obj);
            }
        }
        return new GoogleSuggestResponse(strF, arrayList);
    }
}
