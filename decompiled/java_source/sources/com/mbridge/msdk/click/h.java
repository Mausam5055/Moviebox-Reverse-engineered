package com.mbridge.msdk.click;

import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.out.NativeListener;
import com.mbridge.msdk.scheme.applet.AppletSchemeCallBack;
import com.mbridge.msdk.scheme.applet.AppletsModel;

/* JADX INFO: loaded from: classes5.dex */
public class h extends AppletSchemeCallBack {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final NativeListener.NativeTrackingListener f34329a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final CampaignEx f34330b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final AppletsModel f34331c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final a f34332d;

    public h(NativeListener.NativeTrackingListener nativeTrackingListener, CampaignEx campaignEx, AppletsModel appletsModel, a aVar) {
        this.f34329a = nativeTrackingListener;
        this.f34330b = campaignEx;
        this.f34331c = appletsModel;
        this.f34332d = aVar;
    }

    @Override // com.mbridge.msdk.scheme.applet.AppletSchemeCallBack
    protected void onRequestFailed(int i11, String str, String str2) {
        CampaignEx campaignEx = this.f34330b;
        if (campaignEx == null || this.f34331c == null) {
            return;
        }
        try {
            NativeListener.NativeTrackingListener nativeTrackingListener = this.f34329a;
            if (nativeTrackingListener != null) {
                try {
                    nativeTrackingListener.onFinishRedirection(campaignEx, campaignEx.getClickURL());
                } catch (Exception e11) {
                    if (MBridgeConstans.DEBUG) {
                        o0.b("DefaultAppletSchemeCallBack", e11.getMessage());
                    }
                }
            }
            this.f34331c.setUserClick(false);
            this.f34331c.setRequestingFinish();
            this.f34330b.setClickURL(str2);
            a aVar = this.f34332d;
            if (aVar != null) {
                try {
                    aVar.a(this.f34330b);
                } catch (Exception e12) {
                    if (MBridgeConstans.DEBUG) {
                        o0.b("DefaultAppletSchemeCallBack", e12.getMessage());
                    }
                }
            }
        } catch (Exception e13) {
            if (MBridgeConstans.DEBUG) {
                o0.b("DefaultAppletSchemeCallBack", e13.getMessage());
            }
        }
    }

    @Override // com.mbridge.msdk.scheme.applet.AppletSchemeCallBack
    protected void onRequestStart() {
    }

    @Override // com.mbridge.msdk.scheme.applet.AppletSchemeCallBack
    protected void onRequestSuccess(String str) {
        CampaignEx campaignEx = this.f34330b;
        if (campaignEx == null || this.f34331c == null) {
            return;
        }
        try {
            NativeListener.NativeTrackingListener nativeTrackingListener = this.f34329a;
            if (nativeTrackingListener != null) {
                try {
                    nativeTrackingListener.onFinishRedirection(campaignEx, campaignEx.getClickURL());
                } catch (Exception e11) {
                    if (MBridgeConstans.DEBUG) {
                        o0.b("DefaultAppletSchemeCallBack", e11.getMessage());
                    }
                }
            }
            this.f34331c.setUserClick(false);
            this.f34331c.setRequestingFinish();
            this.f34330b.setDeepLinkUrl(str);
            a aVar = this.f34332d;
            if (aVar != null) {
                try {
                    aVar.a(this.f34330b);
                } catch (Exception e12) {
                    if (MBridgeConstans.DEBUG) {
                        o0.b("DefaultAppletSchemeCallBack", e12.getMessage());
                    }
                }
            }
        } catch (Exception e13) {
            if (MBridgeConstans.DEBUG) {
                o0.b("DefaultAppletSchemeCallBack", e13.getMessage());
            }
        }
    }
}
