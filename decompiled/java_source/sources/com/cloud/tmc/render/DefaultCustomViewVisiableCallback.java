package com.cloud.tmc.render;

import android.view.View;
import android.webkit.WebChromeClient;
import com.cloud.tmc.kernel.render.CustomViewVisiableCallback;
import com.cloud.tmc.kernel.render.ICustomViewVisiable;
import com.mbridge.msdk.MBridgeConstans;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u00012\u00020\u0002B\u000f\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0004¢\u0006\u0002\u0010\u0005J\b\u0010\t\u001a\u00020\nH\u0016J\u001c\u0010\u000b\u001a\u00020\n2\b\u0010\f\u001a\u0004\u0018\u00010\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0016J\u0012\u0010\u0010\u001a\u00020\n2\b\u0010\u0003\u001a\u0004\u0018\u00010\u0004H\u0016R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\u0005¨\u0006\u0011"}, d2 = {"Lcom/cloud/tmc/render/DefaultCustomViewVisiableCallback;", "Lcom/cloud/tmc/kernel/render/CustomViewVisiableCallback;", "Lcom/cloud/tmc/render/IRegisterCustomViewVisiable;", "customViewVisiable", "Lcom/cloud/tmc/kernel/render/ICustomViewVisiable;", "(Lcom/cloud/tmc/kernel/render/ICustomViewVisiable;)V", "getCustomViewVisiable", "()Lcom/cloud/tmc/kernel/render/ICustomViewVisiable;", "setCustomViewVisiable", "onHideCustomView", "", "onShowCustomView", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "Landroid/view/View;", "callback", "Landroid/webkit/WebChromeClient$CustomViewCallback;", "register", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class DefaultCustomViewVisiableCallback implements CustomViewVisiableCallback, IRegisterCustomViewVisiable {
    private ICustomViewVisiable customViewVisiable;

    public DefaultCustomViewVisiableCallback(ICustomViewVisiable iCustomViewVisiable) {
        this.customViewVisiable = iCustomViewVisiable;
    }

    public final ICustomViewVisiable getCustomViewVisiable() {
        return this.customViewVisiable;
    }

    @Override // com.cloud.tmc.kernel.render.CustomViewVisiableCallback
    public void onHideCustomView() {
        ICustomViewVisiable iCustomViewVisiable = this.customViewVisiable;
        if (iCustomViewVisiable != null) {
            iCustomViewVisiable.onHideCustomView();
        }
    }

    @Override // com.cloud.tmc.kernel.render.CustomViewVisiableCallback
    public void onShowCustomView(View view, WebChromeClient.CustomViewCallback callback) {
        ICustomViewVisiable iCustomViewVisiable = this.customViewVisiable;
        if (iCustomViewVisiable != null) {
            iCustomViewVisiable.onShowCustomView(view, callback);
        }
    }

    @Override // com.cloud.tmc.render.IRegisterCustomViewVisiable
    public void register(ICustomViewVisiable customViewVisiable) {
        this.customViewVisiable = customViewVisiable;
    }

    public final void setCustomViewVisiable(ICustomViewVisiable iCustomViewVisiable) {
        this.customViewVisiable = iCustomViewVisiable;
    }
}
