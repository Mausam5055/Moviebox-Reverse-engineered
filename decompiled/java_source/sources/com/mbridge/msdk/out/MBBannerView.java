package com.mbridge.msdk.out;

import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.widget.RelativeLayout;
import com.mbridge.msdk.foundation.controller.c;
import com.mbridge.msdk.foundation.error.b;
import com.mbridge.msdk.foundation.same.report.metrics.e;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.t0;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class MBBannerView extends RelativeLayout implements BaseExtraInterfaceForHandler {
    private String bidToken;
    private com.mbridge.msdk.mbbanner.controll.a controller;
    private boolean hadAttached;
    private boolean isVisible;
    private BannerAdListener mBannerAdListener;
    private MBridgeIds mBridgeIds;
    private String unitId;

    public MBBannerView(Context context) {
        this(context, null);
    }

    public MBBannerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public MBBannerView(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        this.hadAttached = false;
        this.isVisible = false;
        c.m().a(context);
    }

    private void callbackAndReportFail(com.mbridge.msdk.foundation.same.report.metrics.c cVar, b bVar) {
        String strG = "";
        if (bVar != null) {
            try {
                strG = bVar.g();
            } catch (Throwable th2) {
                o0.b("BannerView", th2.getMessage());
            }
        }
        cVar.a(bVar);
        cVar.b(true);
        com.mbridge.msdk.mbbanner.common.report.a.a("2000047", cVar, (e) null);
        BannerAdListener bannerAdListener = this.mBannerAdListener;
        if (bannerAdListener != null) {
            bannerAdListener.onLoadFailed(this.mBridgeIds, strG);
        }
    }

    private void delayedNotify() {
        postDelayed(new Runnable() { // from class: com.mbridge.msdk.out.MBBannerView.1
            @Override // java.lang.Runnable
            public void run() {
                if (MBBannerView.this.controller == null || com.mbridge.msdk.foundation.feedback.b.f35289f) {
                    return;
                }
                MBBannerView.this.controller.c(true);
            }
        }, 200L);
    }

    private void updateAttachedState(boolean z10) {
        this.hadAttached = z10;
        com.mbridge.msdk.mbbanner.controll.a aVar = this.controller;
        if (aVar != null) {
            aVar.b(z10);
        }
    }

    public String getCreativeIdWithUnitId() {
        com.mbridge.msdk.mbbanner.controll.a aVar = this.controller;
        return aVar != null ? aVar.d() : "";
    }

    public String getRequestId() {
        com.mbridge.msdk.mbbanner.controll.a aVar = this.controller;
        return aVar != null ? aVar.e() : "";
    }

    public void init(BannerSize bannerSize, String str, String str2) {
        this.unitId = str2;
        this.mBridgeIds = new MBridgeIds(TextUtils.isEmpty(str) ? "" : str, str2);
        String strE = t0.e(str2);
        if (!TextUtils.isEmpty(strE)) {
            t0.b(str2, strE);
        }
        com.mbridge.msdk.mbbanner.controll.a aVar = new com.mbridge.msdk.mbbanner.controll.a(this, bannerSize, str, str2);
        this.controller = aVar;
        aVar.c(this.isVisible);
        this.controller.b(this.hadAttached);
    }

    public void load() {
        String strB = com.mbridge.msdk.mbbanner.common.report.a.b(this.bidToken);
        com.mbridge.msdk.foundation.same.report.metrics.c cVarA = com.mbridge.msdk.mbbanner.common.report.a.a(this.unitId, strB);
        cVarA.g("0");
        com.mbridge.msdk.mbbanner.controll.a aVar = this.controller;
        if (aVar != null) {
            aVar.b(this.hadAttached);
            this.controller.a("", strB);
        } else {
            b bVar = new b(880042);
            bVar.b(strB);
            callbackAndReportFail(cVarA, bVar);
        }
    }

    public void loadFromBid(String str) {
        this.bidToken = str;
        String strB = com.mbridge.msdk.mbbanner.common.report.a.b(str);
        com.mbridge.msdk.foundation.same.report.metrics.c cVarA = com.mbridge.msdk.mbbanner.common.report.a.a(this.unitId, strB);
        cVarA.g("1");
        if (this.controller == null) {
            b bVar = new b(880042);
            bVar.b(strB);
            callbackAndReportFail(cVarA, bVar);
        } else if (TextUtils.isEmpty(str)) {
            b bVar2 = new b(880035);
            bVar2.b(strB);
            callbackAndReportFail(cVarA, bVar2);
        } else {
            this.controller.b(this.hadAttached);
            this.controller.b(0);
            this.controller.a(str, strB);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        updateAttachedState(true);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        updateAttachedState(false);
    }

    public void onPause() {
        if (this.controller == null || !TextUtils.isEmpty(this.bidToken)) {
            return;
        }
        this.controller.g();
    }

    public void onResume() {
        if (this.controller == null || !TextUtils.isEmpty(this.bidToken) || com.mbridge.msdk.foundation.feedback.b.f35289f) {
            return;
        }
        this.controller.h();
    }

    @Override // android.view.View
    protected void onSizeChanged(int i11, int i12, int i13, int i14) {
        super.onSizeChanged(i11, i12, i13, i14);
        com.mbridge.msdk.mbbanner.controll.a aVar = this.controller;
        if (aVar != null) {
            aVar.a(i11, i12, i13, i14);
        }
    }

    @Override // android.view.View
    protected void onVisibilityChanged(View view, int i11) {
        super.onVisibilityChanged(view, i11);
        this.isVisible = i11 == 0;
        com.mbridge.msdk.mbbanner.controll.a aVar = this.controller;
        if (aVar != null) {
            if (i11 == 0) {
                delayedNotify();
            } else {
                aVar.c(false);
            }
        }
    }

    @Override // android.view.View
    protected void onWindowVisibilityChanged(int i11) {
        super.onWindowVisibilityChanged(i11);
        this.isVisible = i11 == 0;
        if (this.controller != null) {
            if (i11 == 0) {
                delayedNotify();
            } else {
                if (com.mbridge.msdk.foundation.feedback.b.f35289f) {
                    return;
                }
                this.controller.c(false);
            }
        }
    }

    public void release() {
        if (this.mBannerAdListener != null) {
            this.mBannerAdListener = null;
        }
        com.mbridge.msdk.mbbanner.controll.a aVar = this.controller;
        if (aVar != null) {
            aVar.a((BannerAdListener) null);
            this.controller.i();
        }
        removeAllViews();
    }

    public void setAllowShowCloseBtn(boolean z10) {
        com.mbridge.msdk.mbbanner.controll.a aVar = this.controller;
        if (aVar != null) {
            aVar.a(z10);
        }
    }

    public void setBannerAdListener(BannerAdListener bannerAdListener) {
        this.mBannerAdListener = bannerAdListener;
        com.mbridge.msdk.mbbanner.controll.a aVar = this.controller;
        if (aVar != null) {
            aVar.a(bannerAdListener);
        }
    }

    @Override // com.mbridge.msdk.out.BaseExtraInterfaceForHandler
    public void setExtraInfo(JSONObject jSONObject) {
        c.m().a(this.unitId, jSONObject);
    }

    public void setRefreshTime(int i11) {
        com.mbridge.msdk.mbbanner.controll.a aVar = this.controller;
        if (aVar == null || i11 < 0) {
            return;
        }
        aVar.b(i11);
    }

    public void updateBannerSize(BannerSize bannerSize) {
        com.mbridge.msdk.mbbanner.controll.a aVar = this.controller;
        if (aVar != null) {
            aVar.a(bannerSize);
        }
    }
}
