package com.cloud.tmc.miniapp.utils;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import com.cloud.tmc.integration.MiniAppConfigHelper;
import com.cloud.tmc.integration.utils.AppUtils;
import com.cloud.tmc.integration.utils.PopWindowManager;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.proxy.performanceanalyse.PerformanceAnalyseProxy;
import com.cloud.tmc.kernel.service.ConfigService;
import com.cloud.tmc.kernel.utils.TmcGsonUtils;
import com.cloud.tmc.launcherlib.LauncherMiniAppConfigHelper;
import com.google.gson.reflect.TypeToken;
import java.lang.reflect.Type;
import java.util.ArrayList;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes3.dex */
@SourceDebugExtension
public final class AddHomeToastUtils {
    public static final AddHomeToastUtils OooO00o = new AddHomeToastUtils();
    public static final Handler OooO0O0 = new Handler(Looper.getMainLooper());
    public static Runnable OooO0OO;

    public static final class OooO00o implements PopWindowManager.IPopWindowManagerController {
        public final Context OooO00o;
        public final String OooO0O0;
        public final long OooO0OO;
        public final Function0<Unit> OooO0Oo;

        public OooO00o(Context context, String windowToken, long j11, Function0<Unit> function0) {
            Intrinsics.h(context, "context");
            Intrinsics.h(windowToken, "windowToken");
            this.OooO00o = context;
            this.OooO0O0 = windowToken;
            this.OooO0OO = j11;
            this.OooO0Oo = function0;
        }

        @Override // com.cloud.tmc.integration.utils.PopWindowManager.IPopWindowManagerController
        public void onRefresh(PopWindowManager.PopWindowData bean) {
            Intrinsics.h(bean, "bean");
            TmcLogger.d("AddHomeToastUtils", "onRefresh:" + (System.currentTimeMillis() - this.OooO0OO));
            AddHomeToastUtils.OooO00o.OooO00o(this.OooO0O0, this.OooO0OO, bean.getDelayTime() - (System.currentTimeMillis() - this.OooO0OO));
        }

        @Override // com.cloud.tmc.integration.utils.PopWindowManager.IPopWindowManagerController
        public void show(String appId) {
            Function0<Unit> function0;
            Intrinsics.h(appId, "appId");
            boolean zQueryShortcutExist = AppUtils.INSTANCE.queryShortcutExist(this.OooO00o, appId);
            TmcLogger.d("AddHomeToastUtils", "查询桌面是否存在 show()，status: " + zQueryShortcutExist);
            if (zQueryShortcutExist || (function0 = this.OooO0Oo) == null) {
                return;
            }
            function0.invoke();
        }
    }

    public static final class OooO0O0 extends Lambda implements Function0<Unit> {
        public final /* synthetic */ String OooO00o;
        public final /* synthetic */ Function0<Unit> OooO0O0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public OooO0O0(String str, Function0<Unit> function0) {
            super(0);
            this.OooO00o = str;
            this.OooO0O0 = function0;
        }

        @Override // kotlin.jvm.functions.Function0
        public Object invoke() {
            ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).recordForCommon(this.OooO00o, TmcConstants.REPORTER_SHOW_ADDHOME_POPWINDOW, new Bundle());
            Function0<Unit> function0 = this.OooO0O0;
            if (function0 != null) {
                function0.invoke();
            }
            return Unit.f67061a;
        }
    }

    public static final void OooO00o(String windowToken, long j11) {
        Intrinsics.h(windowToken, "$windowToken");
        PopWindowManager.INSTANCE.showPopWindow(windowToken, System.currentTimeMillis() - j11);
    }

    public final void OooO00o(Context context, String str, String windowToken, long j11, long j12, Function0<Unit> function0) {
        Intrinsics.h(context, "context");
        Intrinsics.h(windowToken, "windowToken");
        if (str == null || str.length() == 0) {
            return;
        }
        boolean zQueryShortcutExist = AppUtils.INSTANCE.queryShortcutExist(context, str);
        TmcLogger.d("AddHomeToastUtils", "查询桌面是否存在，status: " + zQueryShortcutExist);
        if (!zQueryShortcutExist && OooO00o(str)) {
            if (j12 <= 0) {
                TmcLogger.d("AddHomeToastUtils", "添加桌面展示延迟时间小于等于 0");
            } else {
                PopWindowManager.INSTANCE.addPopWindow(windowToken, new PopWindowManager.PopWindowData(str, j12, 10, new OooO00o(context, windowToken, j11, new OooO0O0(str, function0)), false, 16, null));
            }
        }
    }

    public final void OooO00o(final String str, final long j11, long j12) {
        Runnable runnable = OooO0OO;
        if (runnable != null) {
            OooO0O0.removeCallbacks(runnable);
        }
        Runnable runnable2 = new Runnable() { // from class: com.cloud.tmc.miniapp.utils.a
            @Override // java.lang.Runnable
            public final void run() {
                AddHomeToastUtils.OooO00o(str, j11);
            }
        };
        OooO0OO = runnable2;
        OooO0O0.postDelayed(runnable2, j12);
    }

    public final boolean OooO00o(String str) {
        String configString;
        ArrayList arrayList;
        if (str == null || str.length() == 0) {
            return false;
        }
        try {
            configString = ((ConfigService) TmcProxy.get(ConfigService.class)).getConfigString(LauncherMiniAppConfigHelper.KEY_MINI_ADD_HOME_CUSTOM_WHITE_LIST, MiniAppConfigHelper.DEFAULT_ADD_HOME_WHITE_LIST);
        } catch (Throwable th2) {
            TmcLogger.e("AddHomeToastUtils", "checkAddHomeCustomWhiteList failed!", th2);
            configString = MiniAppConfigHelper.DEFAULT_ADD_HOME_WHITE_LIST;
        }
        if (configString != null) {
            try {
                Type type = new TypeToken<ArrayList<String>>() { // from class: com.cloud.tmc.miniapp.utils.AddHomeToastUtils$checkAddHomeCustomWhiteList$whiteList$1
                }.getType();
                Intrinsics.g(type, "object :\n               …ayList<String>>() {}.type");
                arrayList = (ArrayList) TmcGsonUtils.fromJson(configString, type);
            } catch (Throwable th3) {
                TmcLogger.e("AddHomeToastUtils", th3);
                try {
                    Type type2 = new TypeToken<ArrayList<String>>() { // from class: com.cloud.tmc.miniapp.utils.AddHomeToastUtils$checkAddHomeCustomWhiteList$whiteList$2
                    }.getType();
                    Intrinsics.g(type2, "object : TypeToken<ArrayList<String>>() {}.type");
                    arrayList = (ArrayList) TmcGsonUtils.fromJson(MiniAppConfigHelper.DEFAULT_ADD_HOME_WHITE_LIST, type2);
                } catch (Throwable th4) {
                    TmcLogger.e("AddHomeToastUtils", "", th4);
                    arrayList = new ArrayList();
                }
            }
        } else {
            arrayList = null;
        }
        if (arrayList == null) {
            return false;
        }
        TmcLogger.d("AddHomeToastUtils", "addHomeCustom: " + arrayList.contains(str) + " 白名单：" + arrayList);
        return arrayList.contains(str);
    }
}
