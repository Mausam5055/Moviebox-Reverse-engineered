package com.cloud.tmc.miniapp.defaultimpl;

import android.app.ActivityManager;
import android.app.Application;
import android.content.Context;
import com.cloud.tmc.integration.MiniAppConfigHelper;
import com.cloud.tmc.integration.proxy.AnimtionProxy;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.service.ConfigService;
import com.cloud.tmc.launcherlib.LauncherMiniAppConfigHelper;
import com.cloud.tmc.miniapp.widget.LogoAnimationConfig;
import com.cloud.tmc.miniutils.util.GsonUtils;
import com.cloud.tmc.miniutils.util.Utils;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes3.dex */
public final class AnimtionProxyImpl implements AnimtionProxy {
    public final String OooO00o = "AnimtionProxyImpl";
    public final Lazy OooO0O0 = LazyKt.b(new OooO00o());

    public static final class OooO00o extends Lambda implements Function0<Integer> {
        public OooO00o() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public Object invoke() {
            AnimtionProxyImpl animtionProxyImpl = AnimtionProxyImpl.this;
            Application app = Utils.getApp();
            Intrinsics.g(app, "getApp()");
            return Integer.valueOf(animtionProxyImpl.OooO00o(app));
        }
    }

    public final int OooO00o() {
        return ((Number) this.OooO0O0.getValue()).intValue();
    }

    public final int OooO00o(Context context) {
        try {
            Object systemService = context.getSystemService("activity");
            Intrinsics.f(systemService, "null cannot be cast to non-null type android.app.ActivityManager");
            ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
            ((ActivityManager) systemService).getMemoryInfo(memoryInfo);
            float f11 = memoryInfo.totalMem / 1.0737418E9f;
            TmcLogger.d(this.OooO00o, "Current device memory size : " + f11 + " GB");
            return (int) Math.ceil(f11);
        } catch (Throwable th2) {
            TmcLogger.e(this.OooO00o, th2);
            return 0;
        }
    }

    @Override // com.cloud.tmc.integration.proxy.AnimtionProxy
    public boolean enableAnimation() {
        return !isLowClient();
    }

    @Override // com.cloud.tmc.integration.proxy.AnimtionProxy
    public boolean enableLoadingAnimation() {
        try {
            LogoAnimationConfig logoAnimationConfig = (LogoAnimationConfig) GsonUtils.getGson().fromJson(MiniAppConfigHelper.INSTANCE.getConfigTargetStr(LauncherMiniAppConfigHelper.KEY_LOGO_ANIMATE_ENABLE, MiniAppConfigHelper.DEFAULT_MINI_LOGO_ANIMATE_ENABLE), LogoAnimationConfig.class);
            return Intrinsics.c(logoAnimationConfig.getMiniAnimateEnable(), Boolean.TRUE) && OooO00o() >= logoAnimationConfig.getLoadingAnimMemorySize();
        } catch (Throwable th2) {
            TmcLogger.e(this.OooO00o, th2);
            return false;
        }
    }

    public final String getTAG() {
        return this.OooO00o;
    }

    @Override // com.cloud.tmc.integration.proxy.AnimtionProxy
    public boolean isLowClient() {
        int configInt = ((ConfigService) TmcProxy.get(ConfigService.class)).getConfigInt(LauncherMiniAppConfigHelper.KEY_MINI_ANIM_MEMORY_SIZE, 4);
        TmcLogger.d(this.OooO00o, "Current device memory size format: " + OooO00o() + " GB");
        return OooO00o() <= configInt;
    }
}
