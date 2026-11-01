package com.cloud.tmc.integration.utils;

import android.text.TextUtils;
import com.cloud.tmc.integration.BuildConfig;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.launcherlib.LauncherMiniAppConfigHelper;
import com.cloud.tmc.miniutils.util.EncodeUtils;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.ArrayIteratorKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.Regex;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u0011\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\b\u0006\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0010\u001a\u00020\u00052\u0006\u0010\u0011\u001a\u00020\u0005J\u000e\u0010\u0012\u001a\u00020\u00052\u0006\u0010\u0011\u001a\u00020\u0005J\u0016\u0010\u0013\u001a\u00020\u00052\u0006\u0010\u0014\u001a\u00020\u00052\u0006\u0010\u0015\u001a\u00020\u0016J\u0016\u0010\u0017\u001a\u00020\u00052\u0006\u0010\u0014\u001a\u00020\u00052\u0006\u0010\u0015\u001a\u00020\u0016J\u001c\u0010\u0018\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u00192\u0006\u0010\u001a\u001a\u00020\u0005H\u0002J\u0018\u0010\u001b\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0011\u001a\u00020\u00052\u0006\u0010\u001a\u001a\u00020\u0005J\u0012\u0010\u001c\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u001d\u001a\u00020\u0005H\u0002J\u0012\u0010\u001e\u001a\u00020\u00162\b\u0010\u001a\u001a\u0004\u0018\u00010\u0005H\u0007R\u001d\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u001d\u0010\b\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\u0007R!\u0010\n\u001a\u0010\u0012\f\u0012\n \f*\u0004\u0018\u00010\u00050\u00050\u000b¢\u0006\n\n\u0002\u0010\u000f\u001a\u0004\b\r\u0010\u000e¨\u0006\u001f"}, d2 = {"Lcom/cloud/tmc/integration/utils/UrlUtil;", "", "()V", "symbolDecodeMap", "Ljava/util/concurrent/ConcurrentHashMap;", "", "getSymbolDecodeMap", "()Ljava/util/concurrent/ConcurrentHashMap;", "symbolEncodeMap", "getSymbolEncodeMap", "symbol_plus", "", "kotlin.jvm.PlatformType", "getSymbol_plus", "()[Ljava/lang/String;", "[Ljava/lang/String;", "convertDecodeSymbol", "key", "convertEncodeSymbol", LauncherMiniAppConfigHelper.KEY_FIX_ENCODE_URL, "orginalUrl", "enableFixEncodeUrl", "", "getFixDecodeUrl", "getParamMap", "", "url", "getParamValue", "getUrlParams", "strURL", "isHttpOrHttpsUrl", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class UrlUtil {
    public static final UrlUtil INSTANCE = new UrlUtil();
    private static final ConcurrentHashMap<String, String> symbolDecodeMap;
    private static final ConcurrentHashMap<String, String> symbolEncodeMap;
    private static final String[] symbol_plus;

    static {
        ConcurrentHashMap<String, String> concurrentHashMap = new ConcurrentHashMap<>();
        symbolEncodeMap = concurrentHashMap;
        ConcurrentHashMap<String, String> concurrentHashMap2 = new ConcurrentHashMap<>();
        symbolDecodeMap = concurrentHashMap2;
        String[] strArr = {"%2B", EncodeUtils.urlEncode("miniSymbol_01"), "+", "%20", EncodeUtils.urlEncode("miniSymbol_02"), " "};
        symbol_plus = strArr;
        String str = strArr[0];
        Intrinsics.g(str, "symbol_plus[0]");
        String str2 = strArr[1];
        Intrinsics.g(str2, "symbol_plus[1]");
        concurrentHashMap.put(str, str2);
        String str3 = strArr[1];
        Intrinsics.g(str3, "symbol_plus[1]");
        String str4 = strArr[2];
        Intrinsics.g(str4, "symbol_plus[2]");
        concurrentHashMap2.put(str3, str4);
        String str5 = strArr[3];
        Intrinsics.g(str5, "symbol_plus[3]");
        String str6 = strArr[4];
        Intrinsics.g(str6, "symbol_plus[4]");
        concurrentHashMap2.put(str5, str6);
        String str7 = strArr[4];
        Intrinsics.g(str7, "symbol_plus[4]");
        String str8 = strArr[5];
        Intrinsics.g(str8, "symbol_plus[5]");
        concurrentHashMap2.put(str7, str8);
    }

    private UrlUtil() {
    }

    private final Map<String, String> getParamMap(String url) {
        HashMap map = new HashMap();
        String urlParams = getUrlParams(url);
        if (urlParams == null) {
            return map;
        }
        Iterator itA = ArrayIteratorKt.a((String[]) new Regex("[&]").split(urlParams, 0).toArray(new String[0]));
        while (itA.hasNext()) {
            String[] strArr = (String[]) new Regex("[=]").split((String) itA.next(), 0).toArray(new String[0]);
            if (strArr.length > 1) {
                map.put(strArr[0], strArr[1]);
            } else {
                String str = strArr[0];
                if (str != "") {
                    map.put(str, "");
                }
            }
        }
        return map;
    }

    private final String getUrlParams(String strURL) {
        String string;
        String str;
        List<String> listSplit;
        if (strURL != null) {
            int length = strURL.length() - 1;
            int i11 = 0;
            boolean z10 = false;
            while (i11 <= length) {
                boolean z11 = Intrinsics.j(strURL.charAt(!z10 ? i11 : length), 32) <= 0;
                if (z10) {
                    if (!z11) {
                        break;
                    }
                    length--;
                } else if (z11) {
                    i11++;
                } else {
                    z10 = true;
                }
            }
            string = strURL.subSequence(i11, length + 1).toString();
        } else {
            string = null;
        }
        String[] strArr = (string == null || (listSplit = new Regex("[?]").split(string, 0)) == null) ? null : (String[]) listSplit.toArray(new String[0]);
        if (string == null || string.length() <= 1 || strArr == null || strArr.length <= 1 || (str = strArr[1]) == null) {
            return null;
        }
        return str;
    }

    @JvmStatic
    public static final boolean isHttpOrHttpsUrl(String url) {
        if (url != null) {
            try {
                if (url.length() != 0) {
                    String string = StringsKt.n1(url).toString();
                    return StringsKt.W(string, "http://", false, 2, null) || StringsKt.W(string, "https://", false, 2, null);
                }
            } catch (Throwable th2) {
                TmcLogger.e("UrlUtil", "Invalid url", th2);
            }
        }
        return false;
    }

    public final String convertDecodeSymbol(String key) {
        String str;
        Intrinsics.h(key, "key");
        ConcurrentHashMap<String, String> concurrentHashMap = symbolDecodeMap;
        String str2 = "";
        if (concurrentHashMap.containsKey(key) && (str = concurrentHashMap.get(key)) != null) {
            str2 = str;
        }
        TmcLogger.d("seven", "[convertDecodeSymbol] -> key:" + key + ", ret:" + str2);
        return str2;
    }

    public final String convertEncodeSymbol(String key) {
        String str;
        Intrinsics.h(key, "key");
        ConcurrentHashMap<String, String> concurrentHashMap = symbolEncodeMap;
        String str2 = "";
        if (concurrentHashMap.containsKey(key) && (str = concurrentHashMap.get(key)) != null) {
            str2 = str;
        }
        TmcLogger.d("seven", "[convertEncodeSymbol] -> key:" + key + ", ret:" + str2);
        return str2;
    }

    public final String fixEncodeUrl(String orginalUrl, boolean enableFixEncodeUrl) {
        Intrinsics.h(orginalUrl, "orginalUrl");
        TmcLogger.d("seven", "[fixEncodeUrl] -> orginalUrl:" + orginalUrl);
        if (!enableFixEncodeUrl) {
            return orginalUrl;
        }
        try {
            String[] strArr = symbol_plus;
            String str = strArr[0];
            Intrinsics.g(str, "symbol_plus[0]");
            String str2 = strArr[0];
            Intrinsics.g(str2, "symbol_plus[0]");
            orginalUrl = StringsKt.Q(orginalUrl, str, convertEncodeSymbol(str2), false, 4, null);
            TmcLogger.d("seven", "[fixEncodeUrl] -> fixUrl:" + orginalUrl);
            return orginalUrl;
        } catch (Throwable unused) {
            return orginalUrl;
        }
    }

    public final String getFixDecodeUrl(String orginalUrl, boolean enableFixEncodeUrl) {
        Intrinsics.h(orginalUrl, "orginalUrl");
        try {
            TmcLogger.d("seven", "[getFixDecodeUrl] -> orginalUrl:" + orginalUrl);
            if (!enableFixEncodeUrl) {
                return orginalUrl;
            }
            String[] strArr = symbol_plus;
            String str = strArr[1];
            Intrinsics.g(str, "symbol_plus[1]");
            String str2 = strArr[1];
            Intrinsics.g(str2, "symbol_plus[1]");
            orginalUrl = StringsKt.Q(orginalUrl, str, convertDecodeSymbol(str2), false, 4, null);
            TmcLogger.d("seven", "[getFixDecodeUrl] -> fixUrl:" + orginalUrl);
            return orginalUrl;
        } catch (Throwable unused) {
            return orginalUrl;
        }
    }

    public final String getParamValue(String key, String url) {
        Intrinsics.h(key, "key");
        Intrinsics.h(url, "url");
        Map<String, String> paramMap = getParamMap(url);
        if (paramMap == null || paramMap.isEmpty()) {
            return "";
        }
        String str = paramMap.get(key);
        return TextUtils.isEmpty(str) ? "" : str;
    }

    public final ConcurrentHashMap<String, String> getSymbolDecodeMap() {
        return symbolDecodeMap;
    }

    public final ConcurrentHashMap<String, String> getSymbolEncodeMap() {
        return symbolEncodeMap;
    }

    public final String[] getSymbol_plus() {
        return symbol_plus;
    }
}
