package com.transsion.ad.strategy;

import android.net.Uri;
import android.text.TextUtils;
import com.cloud.sdk.commonutil.util.DeviceUtil;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes5.dex */
public final class AdUrlParameterManager {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final AdUrlParameterManager f42213a = new AdUrlParameterManager();

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\b\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\n¨\u0006\u000b"}, d2 = {"Lcom/transsion/ad/strategy/AdUrlParameterManager$UrlParameterReplaceEnum;", "", AppMeasurementSdk.ConditionalUserProperty.VALUE, "", "<init>", "(Ljava/lang/String;ILjava/lang/String;)V", "getValue", "()Ljava/lang/String;", "GAID", "CUSTOM_USER_ID", "TIME_STAMP", "lib_ad_gpRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public enum UrlParameterReplaceEnum {
        GAID("GAID"),
        CUSTOM_USER_ID("CUSTOM_USER_ID"),
        TIME_STAMP("TIME_STAMP");

        private static final /* synthetic */ EnumEntries $ENTRIES = EnumEntriesKt.a(values());
        private final String value;

        UrlParameterReplaceEnum(String str) {
            this.value = str;
        }

        public static EnumEntries<UrlParameterReplaceEnum> getEntries() {
            return $ENTRIES;
        }

        public final String getValue() {
            return this.value;
        }
    }

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String f42214a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final String f42215b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final String f42216c;

        public a(String key, String value, String type) {
            Intrinsics.h(key, "key");
            Intrinsics.h(value, "value");
            Intrinsics.h(type, "type");
            this.f42214a = key;
            this.f42215b = value;
            this.f42216c = type;
        }

        public final String a() {
            return this.f42214a;
        }

        public final String b() {
            return this.f42216c;
        }

        public final String c() {
            return this.f42215b;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return Intrinsics.c(this.f42214a, aVar.f42214a) && Intrinsics.c(this.f42215b, aVar.f42215b) && Intrinsics.c(this.f42216c, aVar.f42216c);
        }

        public int hashCode() {
            return (((this.f42214a.hashCode() * 31) + this.f42215b.hashCode()) * 31) + this.f42216c.hashCode();
        }

        public String toString() {
            return "UrlParameterReplaceEntity(key=" + this.f42214a + ", value=" + this.f42215b + ", type=" + this.f42216c + ")";
        }
    }

    private AdUrlParameterManager() {
    }

    public final boolean a(String str) {
        Object objM454constructorimpl;
        try {
            Result.Companion companion = Result.INSTANCE;
            boolean z10 = false;
            if (str != null && str.length() != 0) {
                String queryParameter = Uri.parse(str).getQueryParameter("mb_system_browser");
                if (queryParameter != null && StringsKt.H(queryParameter, "true", true)) {
                    z10 = true;
                }
                objM454constructorimpl = Result.m454constructorimpl(Boolean.valueOf(z10));
                if (Result.m457exceptionOrNullimpl(objM454constructorimpl) != null) {
                    objM454constructorimpl = Boolean.FALSE;
                }
                return ((Boolean) objM454constructorimpl).booleanValue();
            }
            return false;
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
        }
    }

    public final String b(String url, String str) {
        Intrinsics.h(url, "url");
        try {
            Result.Companion companion = Result.INSTANCE;
            if (TextUtils.isEmpty(url)) {
                return url;
            }
            List<a> listG = com.transsion.ad.scene.b.f42202a.g();
            if (listG.isEmpty()) {
                return url;
            }
            Uri uri = Uri.parse(url);
            Intrinsics.g(uri, "parse(...)");
            Set<String> queryParameterNames = uri.getQueryParameterNames();
            String strQ = url;
            for (a aVar : listG) {
                if (queryParameterNames.contains(aVar.a()) && Intrinsics.c(uri.getQueryParameter(aVar.a()), aVar.c())) {
                    String strB = aVar.b();
                    if (Intrinsics.c(strB, UrlParameterReplaceEnum.GAID.getValue())) {
                        String strC = aVar.c();
                        String strE = DeviceUtil.e();
                        Intrinsics.g(strE, "getGAId(...)");
                        strQ = StringsKt.Q(strQ, strC, strE, false, 4, null);
                    } else if (Intrinsics.c(strB, UrlParameterReplaceEnum.CUSTOM_USER_ID.getValue())) {
                        strQ = StringsKt.Q(strQ, aVar.c(), "custom_use_id_ashdjhv1234dhb", false, 4, null);
                    } else if (Intrinsics.c(strB, UrlParameterReplaceEnum.TIME_STAMP.getValue())) {
                        strQ = StringsKt.Q(strQ, aVar.c(), String.valueOf(System.currentTimeMillis()), false, 4, null);
                    }
                }
            }
            oi.a aVar2 = oi.a.f71022a;
            if (str == null) {
                str = "";
            }
            oi.a.o(aVar2, str, "AdUrlParameterReplaceManager --> replaceParameter() --> url = " + url + " --> replaceList = " + listG + " --> newUrl = " + ((Object) strQ), 0, false, 12, null);
            return strQ;
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Object objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
            Object obj = url;
            if (Result.m457exceptionOrNullimpl(objM454constructorimpl) == null) {
                obj = objM454constructorimpl;
            }
            return (String) obj;
        }
    }
}
