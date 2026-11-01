package com.mbridge.msdk.advanced.view;

import android.content.Context;
import android.content.res.Configuration;
import android.util.AttributeSet;
import android.util.Base64;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.widget.RelativeLayout;
import androidx.core.app.NotificationCompat;
import com.cloud.tmc.integration.params.TmcStartParams;
import com.mbridge.msdk.foundation.controller.c;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.k0;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.t0;
import com.mbridge.msdk.mbsignalcommon.windvane.f;
import com.mbridge.msdk.widget.MBAdChoice;
import java.util.HashMap;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class MBNativeAdvancedView extends RelativeLayout {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static String f34242i = "MBAdvancedNativeView";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private MBNativeAdvancedWebview f34243a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private View f34244b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f34245c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f34246d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f34247e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    MBAdChoice f34248f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private com.mbridge.msdk.advanced.signal.b f34249g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private Context f34250h;

    class a implements com.mbridge.msdk.foundation.feedback.a {
        a() {
        }

        @Override // com.mbridge.msdk.foundation.feedback.a
        public void a() {
            String string;
            try {
                JSONObject jSONObject = new JSONObject();
                if (c.m().d() != null) {
                    jSONObject.put(NotificationCompat.CATEGORY_STATUS, 1);
                }
                string = jSONObject.toString();
            } catch (Throwable th2) {
                o0.b(MBNativeAdvancedView.f34242i, th2.getMessage(), th2);
                string = "";
            }
            f.a().a((WebView) MBNativeAdvancedView.this.getAdvancedNativeWebview(), "onFeedbackAlertStatusNotify", Base64.encodeToString(string.getBytes(), 2));
        }

        @Override // com.mbridge.msdk.foundation.feedback.a
        public void a(String str) {
            String string;
            try {
                JSONObject jSONObject = new JSONObject();
                if (c.m().d() != null) {
                    jSONObject.put(NotificationCompat.CATEGORY_STATUS, 1);
                }
                string = jSONObject.toString();
            } catch (Throwable th2) {
                o0.b(MBNativeAdvancedView.f34242i, th2.getMessage(), th2);
                string = "";
            }
            f.a().a((WebView) MBNativeAdvancedView.this.getAdvancedNativeWebview(), "onFeedbackAlertStatusNotify", Base64.encodeToString(string.getBytes(), 2));
        }

        @Override // com.mbridge.msdk.foundation.feedback.a
        public void close() {
            String string;
            try {
                JSONObject jSONObject = new JSONObject();
                if (c.m().d() != null) {
                    jSONObject.put(NotificationCompat.CATEGORY_STATUS, 2);
                }
                string = jSONObject.toString();
            } catch (Throwable th2) {
                o0.b(MBNativeAdvancedView.f34242i, th2.getMessage(), th2);
                string = "";
            }
            f.a().a((WebView) MBNativeAdvancedView.this.getAdvancedNativeWebview(), "onFeedbackAlertStatusNotify", Base64.encodeToString(string.getBytes(), 2));
        }
    }

    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                o0.a(MBNativeAdvancedView.f34242i, "webviewshow");
                String string = "";
                try {
                    int[] iArr = new int[2];
                    MBNativeAdvancedView.this.f34243a.getLocationOnScreen(iArr);
                    o0.b(MBNativeAdvancedView.f34242i, "coordinate:" + iArr[0] + "--" + iArr[1]);
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("startX", t0.b(c.m().d(), (float) iArr[0]));
                    jSONObject.put("startY", t0.b(c.m().d(), (float) iArr[1]));
                    string = jSONObject.toString();
                } catch (Throwable th2) {
                    o0.b(MBNativeAdvancedView.f34242i, th2.getMessage(), th2);
                }
                f.a().a((WebView) MBNativeAdvancedView.this.f34243a, "webviewshow", Base64.encodeToString(string.toString().getBytes(), 2));
            } catch (Exception e11) {
                e11.printStackTrace();
            }
        }
    }

    public MBNativeAdvancedView(Context context) {
        this(context, null);
    }

    public MBNativeAdvancedView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public MBNativeAdvancedView(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        this.f34250h = context;
    }

    private void b() {
        MBNativeAdvancedWebview mBNativeAdvancedWebview = this.f34243a;
        if (mBNativeAdvancedWebview != null && mBNativeAdvancedWebview.getParent() == null) {
            addView(this.f34243a, new ViewGroup.LayoutParams(-1, -1));
        }
        c();
        View view = this.f34244b;
        if (view != null) {
            if (view.getParent() == null) {
                RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(t0.a(getContext(), 28.0f), t0.a(getContext(), 16.0f));
                layoutParams.addRule(10);
                layoutParams.addRule(11);
                layoutParams.rightMargin = t0.a(getContext(), 2.0f);
                layoutParams.topMargin = t0.a(getContext(), 2.0f);
                addView(this.f34244b, layoutParams);
            } else {
                bringChildToFront(this.f34244b);
            }
        }
        if (this.f34248f == null) {
            MBAdChoice mBAdChoice = new MBAdChoice(getContext());
            this.f34248f = mBAdChoice;
            mBAdChoice.setFeedbackDialogEventListener(new a());
        }
    }

    private void c() {
        int[] iArr = new int[2];
        this.f34243a.getLocationInWindow(iArr);
        MBNativeAdvancedWebview mBNativeAdvancedWebview = this.f34243a;
        transInfoForMraid(mBNativeAdvancedWebview, iArr[0], iArr[1], mBNativeAdvancedWebview.getWidth(), this.f34243a.getHeight());
        MBNativeAdvancedWebview mBNativeAdvancedWebview2 = this.f34243a;
        if (mBNativeAdvancedWebview2 != null) {
            mBNativeAdvancedWebview2.setObject(this.f34249g);
            this.f34243a.post(new b());
        }
    }

    public static void transInfoForMraid(WebView webView, int i11, int i12, int i13, int i14) {
        String str;
        o0.b(f34242i, "transInfoForMraid");
        try {
            int i15 = c.m().d().getResources().getConfiguration().orientation;
            JSONObject jSONObject = new JSONObject();
            if (i15 == 2) {
                str = TmcStartParams.KEY_LANDSCAPE;
            } else {
                str = i15 == 1 ? "portrait" : "undefined";
            }
            jSONObject.put("orientation", str);
            jSONObject.put("locked", "true");
            float fN = k0.n(c.m().d());
            float fM = k0.m(c.m().d());
            HashMap mapV = k0.v(c.m().d());
            int iIntValue = ((Integer) mapV.get("width")).intValue();
            int iIntValue2 = ((Integer) mapV.get("height")).intValue();
            HashMap map = new HashMap();
            map.put("placementType", "inline");
            map.put("state", "default");
            map.put("viewable", "true");
            map.put("currentAppOrientation", jSONObject);
            float f11 = i11;
            float f12 = i12;
            float f13 = i13;
            float f14 = i14;
            com.mbridge.msdk.mbsignalcommon.mraid.a.a().b(webView, f11, f12, f13, f14);
            com.mbridge.msdk.mbsignalcommon.mraid.a.a().a(webView, f11, f12, f13, f14);
            com.mbridge.msdk.mbsignalcommon.mraid.a.a().b(webView, fN, fM);
            com.mbridge.msdk.mbsignalcommon.mraid.a.a().a(webView, iIntValue, iIntValue2);
            com.mbridge.msdk.mbsignalcommon.mraid.a.a().a(webView, map);
            com.mbridge.msdk.mbsignalcommon.mraid.a.a().a(webView);
        } catch (Throwable th2) {
            o0.b(f34242i, "transInfoForMraid", th2);
        }
    }

    public void changeCloseBtnState(int i11) {
        View view = this.f34244b;
        if (view != null) {
            if (i11 == 2) {
                view.setVisibility(8);
            } else {
                view.setVisibility(0);
            }
        }
    }

    public void clearResState() {
        this.f34247e = false;
        this.f34246d = false;
        this.f34245c = false;
    }

    public void clearResStateAndRemoveClose() {
        clearResState();
        View view = this.f34244b;
        if (view != null && view.getParent() != null) {
            removeView(this.f34244b);
        }
        MBAdChoice mBAdChoice = this.f34248f;
        if (mBAdChoice == null || mBAdChoice.getParent() == null) {
            return;
        }
        removeView(this.f34248f);
    }

    public void destroy() {
        removeAllViews();
        MBNativeAdvancedWebview mBNativeAdvancedWebview = this.f34243a;
        if (mBNativeAdvancedWebview != null && !mBNativeAdvancedWebview.isDestoryed()) {
            this.f34243a.release();
            com.mbridge.msdk.advanced.signal.a.a(this.f34243a, "onSystemDestory", "");
        }
        if (this.f34250h != null) {
            this.f34250h = null;
        }
    }

    public com.mbridge.msdk.advanced.signal.b getAdvancedNativeSignalCommunicationImpl() {
        return this.f34249g;
    }

    public MBNativeAdvancedWebview getAdvancedNativeWebview() {
        return this.f34243a;
    }

    public View getCloseView() {
        return this.f34244b;
    }

    public boolean isEndCardReady() {
        return this.f34247e;
    }

    public boolean isH5Ready() {
        return this.f34245c;
    }

    public boolean isVideoReady() {
        return this.f34246d;
    }

    @Override // android.view.View
    protected void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
    }

    public void resetLoadState() {
        this.f34247e = false;
        this.f34246d = false;
        this.f34245c = false;
    }

    public void setAdChoiceCampaign(CampaignEx campaignEx) {
        MBAdChoice mBAdChoice = this.f34248f;
        if (mBAdChoice != null) {
            mBAdChoice.setCampaign(campaignEx);
            if (this.f34248f.getParent() != null) {
                bringChildToFront(this.f34248f);
                return;
            }
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(t0.a(c.m().d(), 6.0f), t0.a(c.m().d(), 6.0f));
            layoutParams.addRule(11);
            layoutParams.addRule(12);
            addView(this.f34248f, layoutParams);
        }
    }

    public void setAdvancedNativeSignalCommunicationImpl(com.mbridge.msdk.advanced.signal.b bVar) {
        this.f34249g = bVar;
        MBNativeAdvancedWebview mBNativeAdvancedWebview = this.f34243a;
        if (mBNativeAdvancedWebview != null) {
            mBNativeAdvancedWebview.setObject(bVar);
        }
    }

    public void setAdvancedNativeWebview(MBNativeAdvancedWebview mBNativeAdvancedWebview) {
        this.f34243a = mBNativeAdvancedWebview;
        com.mbridge.msdk.advanced.signal.b bVar = this.f34249g;
        if (bVar != null) {
            mBNativeAdvancedWebview.setObject(bVar);
        }
    }

    public void setCloseView(View view) {
        this.f34244b = view;
        if (view != null) {
            view.setContentDescription("closeButton");
        }
    }

    public void setEndCardReady(boolean z10) {
        this.f34247e = z10;
    }

    public void setH5Ready(boolean z10) {
        this.f34245c = z10;
    }

    public void setVideoReady(boolean z10) {
        this.f34246d = z10;
    }

    public void show() {
        b();
        clearResState();
    }
}
