package kotlin.text;

import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0010\f\n\u0002\u0010\u000e\n\u0002\b\u0003\u001a\u0013\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u0000¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"", "", "a", "(C)Ljava/lang/String;", "kotlin-stdlib"}, k = 2, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class _OneToManyTitlecaseMappingsKt {
    public static final String a(char c11) {
        String strValueOf = String.valueOf(c11);
        Intrinsics.f(strValueOf, "null cannot be cast to non-null type java.lang.String");
        Locale locale = Locale.ROOT;
        String upperCase = strValueOf.toUpperCase(locale);
        Intrinsics.g(upperCase, "toUpperCase(...)");
        if (upperCase.length() <= 1) {
            return String.valueOf(Character.toTitleCase(c11));
        }
        if (c11 == 329) {
            return upperCase;
        }
        char cCharAt = upperCase.charAt(0);
        Intrinsics.f(upperCase, "null cannot be cast to non-null type java.lang.String");
        String strSubstring = upperCase.substring(1);
        Intrinsics.g(strSubstring, "substring(...)");
        Intrinsics.f(strSubstring, "null cannot be cast to non-null type java.lang.String");
        String lowerCase = strSubstring.toLowerCase(locale);
        Intrinsics.g(lowerCase, "toLowerCase(...)");
        return cCharAt + lowerCase;
    }
}
