package com.cloud.tmc.integration.utils;

import com.cloud.tmc.integration.BuildConfig;
import com.cloud.tmc.integration.MiniAppConfigHelper;
import com.cloud.tmc.integration.model.AppModel;
import com.cloud.tmc.integration.model.ExtendModel;
import com.cloud.tmc.integration.structure.App;
import com.cloud.tmc.integration.structure.node.AppNode;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.utils.TmcGsonUtils;
import com.cloud.tmc.kernel.utils.UrlUtils;
import com.cloud.tmc.launcherlib.LauncherMiniAppConfigHelper;
import com.google.gson.reflect.TypeToken;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.Regex;
import kotlin.text.RegexOption;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0005\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\b2\u0006\u0010\t\u001a\u00020\u0004J\u001a\u0010\n\u001a\u00020\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\f\u001a\u00020\u0004H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\r"}, d2 = {"Lcom/cloud/tmc/integration/utils/MiniShellUtils;", "", "()V", "TAG", "", "checkJumpUrlWhitelist", "", "app", "Lcom/cloud/tmc/integration/structure/App;", "url", "getOriginUrl", "Lcom/cloud/tmc/integration/structure/node/AppNode;", "currentUrl", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class MiniShellUtils {
    public static final MiniShellUtils INSTANCE = new MiniShellUtils();
    private static final String TAG = "MiniShellUtils";

    private MiniShellUtils() {
    }

    @JvmStatic
    public static final String getOriginUrl(AppNode app, String currentUrl) {
        AppModel appModel;
        ExtendModel extend;
        String h5Url;
        Intrinsics.h(currentUrl, "currentUrl");
        try {
            return (!MiniAppConfigHelper.INSTANCE.getConfigTargetBool(LauncherMiniAppConfigHelper.KEY_FIX_HOT_START_URL, true) || app == null || (appModel = app.getAppModel()) == null || (extend = appModel.getExtend()) == null || (h5Url = extend.getH5Url()) == null) ? currentUrl : h5Url;
        } catch (Throwable unused) {
            return currentUrl;
        }
    }

    public final boolean checkJumpUrlWhitelist(App app, String url) {
        String strQ;
        AppModel appModel;
        ExtendModel extend;
        Intrinsics.h(url, "url");
        try {
            TmcLogger.d(TAG, "checkJumpUrlWhitelist: 原链接: " + url);
            List<String> jumpUrlWhitelist = (app == null || (appModel = app.getAppModel()) == null || (extend = appModel.getExtend()) == null) ? null : extend.getJumpUrlWhitelist();
            TmcLogger.d(TAG, "checkJumpUrlWhitelist: jumpUrlWhitelist: " + jumpUrlWhitelist);
            List<String> list = jumpUrlWhitelist;
            if (list != null && !list.isEmpty()) {
                String host = UrlUtils.getHost(url);
                if (host == null) {
                    host = "";
                }
                TmcLogger.d(TAG, "checkJumpUrlWhitelist: originHost: " + host);
                List<String> list2 = jumpUrlWhitelist;
                if (!(list2 instanceof Collection) || !list2.isEmpty()) {
                    for (String str : list2) {
                        String str2 = "^" + ((str == null || (strQ = StringsKt.Q(str, ".", "\\.", false, 4, null)) == null) ? null : StringsKt.Q(strQ, "*", ".*?", false, 4, null)) + "$";
                        TmcLogger.d(TAG, "checkJumpUrlWhitelist: regex: " + str2);
                        if (new Regex(str2, RegexOption.IGNORE_CASE).matches(host)) {
                            return true;
                        }
                    }
                }
                String configTargetStr = MiniAppConfigHelper.INSTANCE.getConfigTargetStr(LauncherMiniAppConfigHelper.KEY_JUMP_URL_WHITE_LIST, "[]");
                Type type = new TypeToken<ArrayList<String>>() { // from class: com.cloud.tmc.integration.utils.MiniShellUtils$checkJumpUrlWhitelist$commonWhiteListConfig$1
                }.getType();
                Intrinsics.g(type, "object :\n               …ayList<String>>() {}.type");
                ArrayList arrayList = (ArrayList) TmcGsonUtils.fromJson(configTargetStr, type);
                if (arrayList.isEmpty()) {
                    TmcLogger.d(TAG, "checkJumpUrlWhitelist: commonWhiteListConfig is null or empty");
                    return false;
                }
                if (arrayList.isEmpty()) {
                    return false;
                }
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    String str3 = "^" + StringsKt.Q(StringsKt.Q((String) it.next(), ".", "\\.", false, 4, null), "*", ".*?", false, 4, null) + "$";
                    TmcLogger.d(TAG, "checkJumpUrlWhitelist:common regex: " + str3);
                    if (new Regex(str3, RegexOption.IGNORE_CASE).matches(host)) {
                        return true;
                    }
                }
                return false;
            }
            TmcLogger.d(TAG, "checkJumpUrlWhitelist: jumpUrlWhitelist is null or empty");
            return false;
        } catch (Throwable th2) {
            TmcLogger.e(TAG, "checkJumpUrlWhitelist is fail!", th2);
            return false;
        }
    }
}
