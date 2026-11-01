package com.bytedance.sdk.openadsdk.api.init;

import android.content.Context;
import android.provider.Settings;
import android.text.TextUtils;
import com.bytedance.sdk.component.adexpress.Sj.sP.sP;
import com.bytedance.sdk.openadsdk.ApmHelper;
import com.bytedance.sdk.openadsdk.common.HiB;
import com.bytedance.sdk.openadsdk.core.TKC;
import com.bytedance.sdk.openadsdk.core.aa;
import com.bytedance.sdk.openadsdk.core.act.Sj;
import com.bytedance.sdk.openadsdk.core.dNu;
import com.bytedance.sdk.openadsdk.core.uA;
import com.bytedance.sdk.openadsdk.multipro.EjP.EjP;
import com.bytedance.sdk.openadsdk.utils.FPG;
import com.bytedance.sdk.openadsdk.utils.Yf;
import com.bytedance.sdk.openadsdk.utils.ib;
import com.cloud.tmc.integration.net.UrlKt;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class PAGInitHelper {
    public static final List<PAGSdk.PAGInitCallback> CALLBACK_LIST = new ArrayList();
    public static float animationScale = 1.0f;

    private static void Sj(Context context) {
        TKC.Sj(context).Sj("uuid", ib.Sj());
    }

    public static void initAPM() {
        if (HiB.Sj()) {
            return;
        }
        try {
            String strEjP = uA.sP().EjP();
            if (TextUtils.isEmpty(strEjP)) {
                return;
            }
            ApmHelper.initApm(dNu.Sj(), new PAGConfig.Builder().appId(strEjP).build());
        } catch (Exception unused) {
        }
    }

    public static void initAnimationScale(Context context) {
        try {
            float f11 = Settings.System.getFloat(context.getContentResolver(), "animator_duration_scale", 1.0f);
            animationScale = f11;
            if (f11 <= 0.0f) {
                animationScale = 1.0f;
            }
        } catch (Throwable unused) {
            animationScale = 1.0f;
        }
    }

    public static void initMemoryData() {
        dNu.EjP();
        EjP.Sj("ttopenadsdk", "a", 0);
        EjP.Sj("sp_global_file", "a", 0);
        EjP.Sj("sp_global_privacy", "a", 0);
        EjP.Sj("sp_global_app_id", "a", 0);
        EjP.Sj("sp_global_icon_id", "a", 0);
        EjP.Sj("tpl_fetch_model", "a", 0);
        EjP.Sj("tt_sp", "a", 0);
        EjP.Sj("tt_sdk_event_net_ad", "a", 0);
        EjP.Sj("tt_sdk_event_net_state", "a", 0);
        EjP.Sj("tt_sdk_event_net_trail", "a", 0);
        EjP.Sj("tt_sdk_event_db_ad", "a", 0);
        EjP.Sj("tt_sdk_event_db_state", "a", 0);
        EjP.Sj("tt_sdk_event_db_trail", "a", 0);
        EjP.Sj("pag_sp_bad_par", "did");
        EjP.Sj("pag_sp_bad_par", UrlKt.KEY_MINI_GAID);
    }

    public static void maybeAsyncInitTask(Context context) {
        Sj.Sj(context);
        Yf.Sj();
        FPG.Sj(context);
        Sj(context);
        dNu.HiB();
        String strSj = aa.Sj(context);
        com.bytedance.sdk.openadsdk.core.uA.TKC.sP(strSj);
        com.bytedance.sdk.openadsdk.EjP.Sj.EjP.Sj(strSj, true);
        sP.Sj();
        com.bytedance.sdk.openadsdk.core.aa.TKC.Sj.Sj().sP();
        initAnimationScale(context);
    }
}
