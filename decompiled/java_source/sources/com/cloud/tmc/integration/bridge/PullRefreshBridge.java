package com.cloud.tmc.integration.bridge;

import com.cloud.tmc.integration.proxy.IRefreshProxy;
import com.cloud.tmc.integration.structure.App;
import com.cloud.tmc.integration.structure.app.TmcAppContext;
import com.cloud.tmc.integration.ui.fragment.TmcFragment;
import com.cloud.tmc.kernel.annotation.ActionFilter;
import com.cloud.tmc.kernel.annotation.ThreadType;
import com.cloud.tmc.kernel.bridge.extension.BridgeCallback;
import com.cloud.tmc.kernel.bridge.extension.annotation.BindingCallback;
import com.cloud.tmc.kernel.bridge.extension.annotation.BindingNode;
import com.cloud.tmc.kernel.bridge.extension.annotation.BindingParam;
import com.cloud.tmc.kernel.executor.ExecutorType;
import com.cloud.tmc.kernel.extension.BridgeExtension;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.security.Permission;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;

/* JADX INFO: loaded from: classes3.dex */
public class PullRefreshBridge implements BridgeExtension {
    private static final String TAG = "PullRefreshBridge";

    @Override // com.cloud.tmc.kernel.extension.BridgeExtension
    public /* synthetic */ void callbackFail(BridgeCallback bridgeCallback, String str, Boolean bool) {
        com.cloud.tmc.kernel.extension.a.a(this, bridgeCallback, str, bool);
    }

    @ActionFilter
    @ThreadType(ExecutorType.UI)
    public void enableLoadMore(@BindingNode(App.class) App app, @BindingParam(name = {OfflineConstantsKt.OFFLINE_CONFIG_ENABLE}) Boolean bool, @BindingCallback BridgeCallback bridgeCallback) {
        if (app == null || app.getAppContext() == null) {
            if (bridgeCallback != null) {
                bridgeCallback.sendFailResponse();
                return;
            }
            return;
        }
        TmcFragment tmcFragmentFindFragmentForPage = ((TmcAppContext) app.getAppContext()).getFragmentManager().findFragmentForPage(app.getActivePage());
        if (tmcFragmentFindFragmentForPage == null) {
            if (bridgeCallback != null) {
                bridgeCallback.sendFailResponse();
            }
        } else {
            ((IRefreshProxy) TmcProxy.get(IRefreshProxy.class)).enableLoadMore(tmcFragmentFindFragmentForPage, bool.booleanValue());
            if (bridgeCallback != null) {
                bridgeCallback.sendSuccessResponse();
            }
        }
    }

    @ActionFilter
    @ThreadType(ExecutorType.UI)
    public void enableRefresh(@BindingNode(App.class) App app, @BindingParam(name = {OfflineConstantsKt.OFFLINE_CONFIG_ENABLE}) Boolean bool, @BindingCallback BridgeCallback bridgeCallback) {
        if (app == null || app.getAppContext() == null) {
            if (bridgeCallback != null) {
                bridgeCallback.sendFailResponse();
                return;
            }
            return;
        }
        TmcFragment tmcFragmentFindFragmentForPage = ((TmcAppContext) app.getAppContext()).getFragmentManager().findFragmentForPage(app.getActivePage());
        if (tmcFragmentFindFragmentForPage == null) {
            if (bridgeCallback != null) {
                bridgeCallback.sendFailResponse();
            }
        } else {
            ((IRefreshProxy) TmcProxy.get(IRefreshProxy.class)).enableRefresh(tmcFragmentFindFragmentForPage, bool.booleanValue());
            if (bridgeCallback != null) {
                bridgeCallback.sendSuccessResponse();
            }
        }
    }

    @Override // com.cloud.tmc.kernel.extension.Extension
    public void onFinalized() {
        TmcLogger.d(TAG, "onFinalized");
    }

    @Override // com.cloud.tmc.kernel.extension.Extension
    public void onInitialized() {
        TmcLogger.d(TAG, "onInitialized");
    }

    @Override // com.cloud.tmc.kernel.security.Guard
    public Permission permit() {
        return null;
    }

    @ActionFilter
    @ThreadType(ExecutorType.UI)
    public void startPullDownRefresh(@BindingNode(App.class) App app, @BindingCallback BridgeCallback bridgeCallback) {
        if (app == null || app.getAppContext() == null) {
            if (bridgeCallback != null) {
                bridgeCallback.sendFailResponse();
                return;
            }
            return;
        }
        TmcFragment tmcFragmentFindFragmentForPage = ((TmcAppContext) app.getAppContext()).getFragmentManager().findFragmentForPage(app.getActivePage());
        if (tmcFragmentFindFragmentForPage == null) {
            if (bridgeCallback != null) {
                bridgeCallback.sendFailResponse();
                return;
            }
            return;
        }
        boolean zStartPullDownRefresh = ((IRefreshProxy) TmcProxy.get(IRefreshProxy.class)).startPullDownRefresh(tmcFragmentFindFragmentForPage);
        if (bridgeCallback != null) {
            if (zStartPullDownRefresh) {
                bridgeCallback.sendSuccessResponse();
            } else {
                bridgeCallback.sendFailResponse();
            }
        }
    }

    @ActionFilter
    @ThreadType(ExecutorType.UI)
    public void stopPullDownRefresh(@BindingNode(App.class) App app, @BindingCallback BridgeCallback bridgeCallback) {
        if (app == null || app.getAppContext() == null) {
            if (bridgeCallback != null) {
                bridgeCallback.sendFailResponse();
                return;
            }
            return;
        }
        TmcFragment tmcFragmentFindFragmentForPage = ((TmcAppContext) app.getAppContext()).getFragmentManager().findFragmentForPage(app.getActivePage());
        if (tmcFragmentFindFragmentForPage == null) {
            if (bridgeCallback != null) {
                bridgeCallback.sendFailResponse();
                return;
            }
            return;
        }
        boolean zStopPullDownRefresh = ((IRefreshProxy) TmcProxy.get(IRefreshProxy.class)).stopPullDownRefresh(tmcFragmentFindFragmentForPage);
        if (bridgeCallback != null) {
            if (zStopPullDownRefresh) {
                bridgeCallback.sendSuccessResponse();
            } else {
                bridgeCallback.sendFailResponse();
            }
        }
    }

    @ActionFilter
    @ThreadType(ExecutorType.UI)
    public void stopPullUpRefresh(@BindingNode(App.class) App app, @BindingCallback BridgeCallback bridgeCallback) {
        if (app == null || app.getAppContext() == null) {
            if (bridgeCallback != null) {
                bridgeCallback.sendFailResponse();
                return;
            }
            return;
        }
        TmcFragment tmcFragmentFindFragmentForPage = ((TmcAppContext) app.getAppContext()).getFragmentManager().findFragmentForPage(app.getActivePage());
        if (tmcFragmentFindFragmentForPage == null) {
            if (bridgeCallback != null) {
                bridgeCallback.sendFailResponse();
                return;
            }
            return;
        }
        boolean zStopPullUpRefresh = ((IRefreshProxy) TmcProxy.get(IRefreshProxy.class)).stopPullUpRefresh(tmcFragmentFindFragmentForPage);
        if (bridgeCallback != null) {
            if (zStopPullUpRefresh) {
                bridgeCallback.sendSuccessResponse();
            } else {
                bridgeCallback.sendFailResponse();
            }
        }
    }
}
