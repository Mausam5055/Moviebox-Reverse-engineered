package com.cloud.tmc.integration.utils.ext;

import android.content.Context;
import com.cloud.tmc.integration.BuildConfig;
import com.cloud.tmc.integration.callback.CommonDialogCallback;
import com.cloud.tmc.integration.model.AlertBeforeUnloadCache;
import com.cloud.tmc.integration.proxy.ToastProxy;
import com.cloud.tmc.integration.structure.Page;
import com.cloud.tmc.integration.structure.PageContext;
import com.cloud.tmc.integration.ui.fragment.TmcFragment;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u001a\u001e\u0010\u0000\u001a\u00020\u0001*\u0004\u0018\u00010\u00022\u0010\b\u0002\u0010\u0003\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004¨\u0006\u0006"}, d2 = {"checkAlertBeforeUnload", "", "Lcom/cloud/tmc/integration/structure/Page;", "block", "Lkotlin/Function0;", "", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 2, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class PageExtKt {
    public static final synchronized boolean checkAlertBeforeUnload(final Page page, final Function0<Unit> function0) {
        Boolean boolValueOf;
        final AlertBeforeUnloadCache alertBeforeUnloadCache;
        Context context;
        if (page != null) {
            try {
                boolValueOf = Boolean.valueOf(page.getBooleanValue(TmcConstants.MINIAPP_ALERT_BEFORE_UNLOAD));
            } catch (Throwable th2) {
                throw th2;
            }
        } else {
            boolValueOf = null;
        }
        Boolean bool = Boolean.TRUE;
        if (Intrinsics.c(boolValueOf, bool)) {
            return true;
        }
        if (page != null && (alertBeforeUnloadCache = (AlertBeforeUnloadCache) page.getData(AlertBeforeUnloadCache.class)) != null) {
            PageContext pageContext = page.getPageContext();
            TmcFragment tmcFragment = pageContext instanceof TmcFragment ? (TmcFragment) pageContext : null;
            if (tmcFragment != null && (context = tmcFragment.getContext()) != null) {
                if (!alertBeforeUnloadCache.getEnabled()) {
                    return false;
                }
                page.putBooleanValue(TmcConstants.MINIAPP_ALERT_BEFORE_UNLOAD, true);
                ((ToastProxy) TmcProxy.get(ToastProxy.class)).showCommonDialog(null, alertBeforeUnloadCache.getMessage(), 0, bool, null, null, null, null, context, new CommonDialogCallback() { // from class: com.cloud.tmc.integration.utils.ext.PageExtKt.checkAlertBeforeUnload.1
                    @Override // com.cloud.tmc.integration.callback.CommonDialogCallback
                    public void onLeftClick() {
                        page.putBooleanValue(TmcConstants.MINIAPP_ALERT_BEFORE_UNLOAD, false);
                        TmcLogger.d(PageExt.TAG, "alertBeforeUnload is cancel");
                    }

                    @Override // com.cloud.tmc.integration.callback.CommonDialogCallback
                    public void onRightClick() {
                        page.putBooleanValue(TmcConstants.MINIAPP_ALERT_BEFORE_UNLOAD, false);
                        alertBeforeUnloadCache.setEnabled(false);
                        Function0<Unit> function1 = function0;
                        if (function1 != null) {
                            function1.invoke();
                        }
                    }
                });
                return true;
            }
            return false;
        }
        return false;
    }

    public static /* synthetic */ boolean checkAlertBeforeUnload$default(Page page, Function0 function0, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            function0 = null;
        }
        return checkAlertBeforeUnload(page, function0);
    }
}
