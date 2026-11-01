package com.cloud.tmc.miniapp.prepare.steps;

import android.app.Activity;
import android.os.Bundle;
import android.text.TextUtils;
import com.cloud.tmc.integration.model.AppModel;
import com.cloud.tmc.integration.model.PrepareContext;
import com.cloud.tmc.integration.performance.innerrender.IInnerRenderPool;
import com.cloud.tmc.integration.performance.innerwebview.IInnerH5WebviewPool;
import com.cloud.tmc.integration.performance.innerworker.IInnerWorkerPool;
import com.cloud.tmc.integration.performance.offscreen.webview.OffScreenWebviewPool;
import com.cloud.tmc.integration.utils.AppUtils;
import com.cloud.tmc.kernel.constants.MiniAppType;
import com.cloud.tmc.kernel.constants.PageType;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.utils.BundleUtils;
import com.cloud.tmc.kernel.utils.KUrlUtils;
import com.cloud.tmc.miniapp.prepare.controller.PrepareController;
import com.cloud.tmc.miniapp.prestrategy.PreStrategyManager;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes3.dex */
public abstract class o00oO0o extends com.cloud.tmc.miniapp.prepare.steps.OooO00o {

    public class OooO00o implements Function1<Boolean, Unit> {
        public final /* synthetic */ PrepareContext OooO00o;
        public final /* synthetic */ String OooO0O0;

        public OooO00o(o00oO0o o00oo0o, PrepareContext prepareContext, String str) {
            this.OooO00o = prepareContext;
            this.OooO0O0 = str;
        }

        @Override // kotlin.jvm.functions.Function1
        public Object invoke(Object obj) {
            if (!((Boolean) obj).booleanValue() || this.OooO00o.getActivity() == null) {
                return null;
            }
            TmcLogger.d("nevermore", "startWarmup 常规小程序 首页是H5 预热webview 开启离屏渲染");
            OffScreenWebviewPool.INSTANCE.offScreenRender(this.OooO0O0, PageType.H5, this.OooO00o.getActivity(), this.OooO00o);
            return null;
        }
    }

    public class OooO0O0 implements Function1<Boolean, Unit> {
        public final /* synthetic */ PrepareContext OooO00o;
        public final /* synthetic */ AppModel OooO0O0;

        public OooO0O0(o00oO0o o00oo0o, PrepareContext prepareContext, AppModel appModel) {
            this.OooO00o = prepareContext;
            this.OooO0O0 = appModel;
        }

        @Override // kotlin.jvm.functions.Function1
        public Object invoke(Object obj) {
            if (!((Boolean) obj).booleanValue()) {
                return null;
            }
            Activity activity = this.OooO00o.getActivity();
            String h5Url = this.OooO0O0.getExtend() != null ? this.OooO0O0.getExtend().getH5Url() : "";
            Bundle startParams = this.OooO00o.getStartParams();
            if (activity == null || TextUtils.isEmpty(h5Url) || startParams == null) {
                return null;
            }
            TmcLogger.d("nevermore", "startWarmup 独立站 开启离屏渲染");
            OffScreenWebviewPool.INSTANCE.offScreenRender(KUrlUtils.generateShellUrl(h5Url, BundleUtils.clone(startParams)), PageType.H5_SHELL, activity, this.OooO00o);
            return null;
        }
    }

    public final void OooO00o(PrepareContext prepareContext, AppModel appModel) {
        TmcLogger.d("nevermore", "startWarmup");
        if (prepareContext.getVirtualStart()) {
            TmcLogger.d("nevermore", "startWarmup 虚拟启动 return");
            return;
        }
        if (prepareContext.getIsWarmup().get()) {
            TmcLogger.d("nevermore", "startWarmup 已经预热过了 return");
            return;
        }
        if (appModel == null) {
            TmcLogger.d("nevermore", "startWarmup appModel是空的 return");
            return;
        }
        int appinfoCategoryType = appModel.getAppinfoCategoryType();
        String str = "[{\"appId\":\"" + (!TextUtils.isEmpty(prepareContext.getAppId()) ? prepareContext.getAppId() : "") + "\"}]";
        if (appinfoCategoryType != MiniAppType.NORMAL.getType()) {
            if (appinfoCategoryType == MiniAppType.SHELL.getType() || appinfoCategoryType == MiniAppType.SHELL_GAME.getType()) {
                TmcLogger.d("nevermore", "startWarmup 独立站");
                prepareContext.getIsWarmup().set(true);
                ((IInnerH5WebviewPool) TmcProxy.get(IInnerH5WebviewPool.class)).createWebview();
                PreStrategyManager.OooO00o.OooO0O0(prepareContext.getStartContext(), "keyMiniAppStart", str, new OooO0O0(this, prepareContext, appModel));
                return;
            }
            return;
        }
        TmcLogger.d("nevermore", "startWarmup 常规小程序");
        Bundle startParams = prepareContext.getStartParams();
        Bundle sceneParams = prepareContext.getSceneParams();
        String string = startParams.getString("page");
        boolean z10 = !TextUtils.isEmpty(string) && string.startsWith("http") && AppUtils.isLegalPath(sceneParams, string);
        prepareContext.getIsWarmup().set(true);
        if (z10) {
            TmcLogger.d("nevermore", "startWarmup 常规小程序 首页是H5");
            ((IInnerH5WebviewPool) TmcProxy.get(IInnerH5WebviewPool.class)).createWebview();
            PreStrategyManager.OooO00o.OooO0O0(prepareContext.getStartContext(), "keyMiniAppStart", str, new OooO00o(this, prepareContext, string));
        } else {
            TmcLogger.d("nevermore", "startWarmup 常规小程序 首页是Normal 预热render&worker");
            ((IInnerRenderPool) TmcProxy.get(IInnerRenderPool.class)).createRender(false);
            ((IInnerWorkerPool) TmcProxy.get(IInnerWorkerPool.class)).createWorker(false);
        }
    }

    @Override // com.cloud.tmc.miniapp.prepare.steps.OooO00o, com.cloud.tmc.miniapp.prepare.steps.o0OoOo0
    public void OooO0O0(PrepareController prepareController, PrepareContext prepareContext, o000oOoO o000oooo) throws PrepareException {
        super.OooO0O0(prepareController, prepareContext, o000oooo);
        TmcLogger.d("nevermore", "WarmupAndOffScreenStep");
        try {
            if (prepareContext.getAppInfoQuery() != null) {
                OooO00o(prepareContext, this.OooO0O0.getAppModel(prepareContext.getStartContext(), prepareContext.getAppInfoQuery()));
            }
        } catch (Throwable th2) {
            TmcLogger.d("nevermore", "WarmupAndOffScreenStep:" + th2);
        }
    }
}
