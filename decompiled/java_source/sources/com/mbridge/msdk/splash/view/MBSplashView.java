package com.mbridge.msdk.splash.view;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.content.res.Configuration;
import android.util.AttributeSet;
import android.util.Base64;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.widget.RelativeLayout;
import com.cloud.tmc.integration.params.TmcStartParams;
import com.mbridge.msdk.dycreator.listener.DyCountDownListener;
import com.mbridge.msdk.foundation.tools.b0;
import com.mbridge.msdk.foundation.tools.c1;
import com.mbridge.msdk.foundation.tools.k0;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.t0;
import com.mbridge.msdk.mbsignalcommon.windvane.f;
import java.util.HashMap;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class MBSplashView extends RelativeLayout {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static String f37692r = "MBSplashView";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f37693a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private MBSplashWebview f37694b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private com.mbridge.msdk.splash.view.a f37695c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private ViewGroup f37696d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private View f37697e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private View f37698f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f37699g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f37700h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f37701i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f37702j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private ViewGroup f37703k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private View f37704l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private boolean f37705m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private boolean f37706n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private RelativeLayout.LayoutParams f37707o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private com.mbridge.msdk.splash.signal.b f37708p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private DyCountDownListener f37709q;

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                o0.a(MBSplashView.f37692r, "webviewshow");
                String string = "";
                try {
                    int[] iArr = new int[2];
                    MBSplashView.this.f37694b.getLocationOnScreen(iArr);
                    o0.b(MBSplashView.f37692r, "coordinate:" + iArr[0] + "--" + iArr[1]);
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("startX", t0.b(com.mbridge.msdk.foundation.controller.c.m().d(), (float) iArr[0]));
                    jSONObject.put("startY", t0.b(com.mbridge.msdk.foundation.controller.c.m().d(), (float) iArr[1]));
                    string = jSONObject.toString();
                } catch (Throwable th2) {
                    o0.b(MBSplashView.f37692r, th2.getMessage(), th2);
                }
                int[] iArr2 = new int[2];
                MBSplashView.this.f37694b.getLocationInWindow(iArr2);
                MBSplashView.transInfoForMraid(MBSplashView.this.f37694b, iArr2[0], iArr2[1], MBSplashView.this.f37694b.getWidth(), MBSplashView.this.f37694b.getHeight());
                f.a().a((WebView) MBSplashView.this.f37694b, "webviewshow", Base64.encodeToString(string.toString().getBytes(), 2));
            } catch (Exception e11) {
                e11.printStackTrace();
            }
        }
    }

    class b implements View.OnTouchListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ boolean f37711a;

        b(boolean z10) {
            this.f37711a = z10;
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            return !this.f37711a;
        }
    }

    class c implements View.OnTouchListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ boolean f37713a;

        c(boolean z10) {
            this.f37713a = z10;
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            return !this.f37713a;
        }
    }

    public MBSplashView(Context context) {
        this(context, null);
    }

    public MBSplashView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public MBSplashView(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        b();
    }

    private void b() {
        setBackgroundColor(0);
        this.f37693a = getResources().getConfiguration().orientation;
    }

    private void c() {
        View view;
        View view2;
        View view3;
        if (this.f37698f != null) {
            if (this.f37696d == null) {
                RelativeLayout relativeLayout = new RelativeLayout(getContext());
                this.f37696d = relativeLayout;
                relativeLayout.setId(2147482647);
            }
            if (this.f37693a == 2) {
                this.f37699g = t0.g(getContext());
                RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
                layoutParams.addRule(0, this.f37696d.getId());
                if (!this.f37705m || (view2 = this.f37704l) == null) {
                    MBSplashWebview mBSplashWebview = this.f37694b;
                    if (mBSplashWebview != null && mBSplashWebview.getParent() == null) {
                        addView(this.f37694b, layoutParams);
                    }
                    d();
                } else {
                    if (view2.getParent() != null) {
                        c1.a(this.f37704l);
                    }
                    addView(this.f37704l, layoutParams);
                }
                ViewGroup viewGroup = this.f37696d;
                if (viewGroup != null && viewGroup.getParent() == null) {
                    int i11 = this.f37707o.width;
                    c1.a(this.f37698f);
                    int i12 = this.f37699g / 4;
                    if (i11 > i12) {
                        this.f37696d.addView(this.f37698f, i12, -1);
                        i11 = i12;
                    } else {
                        this.f37696d.addView(this.f37698f, i11, -1);
                    }
                    RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(i11, -1);
                    layoutParams2.addRule(11);
                    layoutParams2.addRule(13);
                    addView(this.f37696d, layoutParams2);
                }
            } else {
                this.f37699g = t0.f(getContext());
                RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-1, -1);
                layoutParams3.addRule(2, this.f37696d.getId());
                if (!this.f37705m || (view = this.f37704l) == null) {
                    MBSplashWebview mBSplashWebview2 = this.f37694b;
                    if (mBSplashWebview2 != null && mBSplashWebview2.getParent() == null) {
                        addView(this.f37694b, layoutParams3);
                    }
                    d();
                } else {
                    if (view.getParent() != null) {
                        c1.a(this.f37704l);
                    }
                    addView(this.f37704l, layoutParams3);
                }
                ViewGroup viewGroup2 = this.f37696d;
                if (viewGroup2 != null && viewGroup2.getParent() == null) {
                    int i13 = this.f37707o.height;
                    int i14 = this.f37699g / 4;
                    if (i13 > i14) {
                        i13 = i14;
                    }
                    c1.a(this.f37698f);
                    this.f37696d.addView(this.f37698f, -1, i13);
                    RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(-1, i13);
                    layoutParams4.addRule(12);
                    addView(this.f37696d, layoutParams4);
                }
            }
        } else if (!this.f37705m || (view3 = this.f37704l) == null) {
            MBSplashWebview mBSplashWebview3 = this.f37694b;
            if (mBSplashWebview3 != null && mBSplashWebview3.getParent() == null) {
                addView(this.f37694b, new ViewGroup.LayoutParams(-1, -1));
            }
            d();
        } else {
            if (view3.getParent() != null) {
                c1.a(this.f37704l);
            }
            addView(this.f37704l, new ViewGroup.LayoutParams(-1, -1));
        }
        View view4 = this.f37697e;
        if (view4 != null) {
            if (view4.getParent() != null) {
                bringChildToFront(this.f37697e);
                return;
            }
            RelativeLayout.LayoutParams layoutParams5 = new RelativeLayout.LayoutParams(t0.a(getContext(), 100.0f), t0.a(getContext(), 30.0f));
            layoutParams5.addRule(10);
            layoutParams5.addRule(11);
            layoutParams5.rightMargin = t0.a(getContext(), 10.0f);
            layoutParams5.topMargin = t0.a(getContext(), 10.0f);
            addView(this.f37697e, layoutParams5);
        }
    }

    private void d() {
        MBSplashWebview mBSplashWebview = this.f37694b;
        if (mBSplashWebview != null) {
            mBSplashWebview.setObject(this.f37708p);
            this.f37694b.post(new a());
        }
    }

    public static void transInfoForMraid(WebView webView, int i11, int i12, int i13, int i14) {
        String str;
        o0.b(f37692r, "transInfoForMraid");
        try {
            int i15 = com.mbridge.msdk.foundation.controller.c.m().d().getResources().getConfiguration().orientation;
            JSONObject jSONObject = new JSONObject();
            if (i15 == 2) {
                str = TmcStartParams.KEY_LANDSCAPE;
            } else {
                str = i15 == 1 ? "portrait" : "undefined";
            }
            jSONObject.put("orientation", str);
            jSONObject.put("locked", "true");
            float fN = k0.n(com.mbridge.msdk.foundation.controller.c.m().d());
            float fM = k0.m(com.mbridge.msdk.foundation.controller.c.m().d());
            HashMap mapV = k0.v(com.mbridge.msdk.foundation.controller.c.m().d());
            int iIntValue = ((Integer) mapV.get("width")).intValue();
            int iIntValue2 = ((Integer) mapV.get("height")).intValue();
            HashMap map = new HashMap();
            map.put("placementType", "Interstitial");
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
            o0.b(f37692r, "transInfoForMraid", th2);
        }
    }

    public void changeCloseBtnState(int i11) {
        View view = this.f37697e;
        if (view != null) {
            if (i11 == 2) {
                view.setVisibility(8);
            } else {
                view.setVisibility(0);
            }
        }
    }

    public void clearResState() {
        this.f37702j = false;
        this.f37701i = false;
        this.f37700h = false;
    }

    public void destroy() {
        removeAllViews();
        ViewGroup viewGroup = this.f37703k;
        if (viewGroup != null) {
            viewGroup.removeAllViews();
        }
        MBSplashWebview mBSplashWebview = this.f37694b;
        if (mBSplashWebview == null || mBSplashWebview.isDestoryed()) {
            return;
        }
        this.f37694b.finishAdSession();
        com.mbridge.msdk.splash.signal.c.a(this.f37694b, "onSystemDestory", "");
        this.f37694b.release();
        this.f37694b = null;
    }

    public View getCloseView() {
        return this.f37697e;
    }

    public ViewGroup getDevContainer() {
        return this.f37703k;
    }

    public View getIconVg() {
        return this.f37698f;
    }

    public com.mbridge.msdk.splash.signal.b getSplashSignalCommunicationImpl() {
        return this.f37708p;
    }

    public MBSplashWebview getSplashWebview() {
        return this.f37694b;
    }

    public boolean isAttach() {
        return this.f37706n;
    }

    public boolean isDynamicView() {
        return this.f37705m;
    }

    public boolean isH5Ready() {
        return this.f37700h;
    }

    public boolean isImageReady() {
        return this.f37702j;
    }

    public boolean isVideoReady() {
        return this.f37701i;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f37706n = true;
    }

    @Override // android.view.View
    protected void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        b();
    }

    public void onPause() {
        View view = this.f37704l;
        if (view == null || !(view instanceof MBSplashNativeView)) {
            return;
        }
        ((MBSplashNativeView) view).setIsPause(true);
    }

    public void onResume() {
        View view = this.f37704l;
        if (view == null || !(view instanceof MBSplashNativeView)) {
            return;
        }
        ((MBSplashNativeView) view).setIsPause(false);
    }

    public void resetLoadState() {
        this.f37701i = false;
        this.f37700h = false;
    }

    @SuppressLint({"ClickableViewAccessibility"})
    public void setAllowClickSplash(boolean z10) {
        MBSplashWebview mBSplashWebview = this.f37694b;
        if (mBSplashWebview != null) {
            mBSplashWebview.setOnTouchListener(new b(z10));
        }
        setOnTouchListener(new c(z10));
    }

    public void setCloseView(View view) {
        this.f37697e = view;
        if (view != null) {
            view.setContentDescription("closeButton");
        }
    }

    public void setDevContainer(ViewGroup viewGroup) {
        this.f37703k = viewGroup;
    }

    public void setDyCountDownListener(DyCountDownListener dyCountDownListener) {
        this.f37709q = dyCountDownListener;
    }

    public void setDynamicView(boolean z10) {
        this.f37705m = z10;
    }

    public void setH5Ready(boolean z10) {
        this.f37700h = z10;
    }

    public void setIconVg(View view, RelativeLayout.LayoutParams layoutParams) {
        this.f37698f = view;
        this.f37707o = layoutParams;
    }

    public void setImageReady(boolean z10) {
        this.f37702j = z10;
    }

    public void setNotchPadding(int i11, int i12, int i13, int i14) {
        View view = this.f37704l;
        if (view != null && (view instanceof MBSplashNativeView)) {
            ((MBSplashNativeView) view).setNotchPadding(i11, i12, i13, i14);
        }
        if (this.f37694b != null) {
            f.a().a((WebView) this.f37694b, "oncutoutfetched", Base64.encodeToString(b0.a(-999, i11, i12, i13, i14).getBytes(), 0));
        }
    }

    public void setSplashNativeView(View view) {
        if (view != null) {
            this.f37704l = view;
        }
    }

    public void setSplashSignalCommunicationImpl(com.mbridge.msdk.splash.signal.b bVar) {
        this.f37708p = bVar;
        MBSplashWebview mBSplashWebview = this.f37694b;
        if (mBSplashWebview != null) {
            mBSplashWebview.setObject(bVar);
        }
    }

    public void setSplashWebView() {
        if (this.f37694b == null) {
            try {
                MBSplashWebview mBSplashWebview = new MBSplashWebview(getContext());
                this.f37694b = mBSplashWebview;
                com.mbridge.msdk.splash.signal.b bVar = this.f37708p;
                if (bVar != null) {
                    mBSplashWebview.setObject(bVar);
                }
                com.mbridge.msdk.splash.view.a aVar = this.f37695c;
                if (aVar != null) {
                    this.f37694b.setWebViewClient(aVar);
                    return;
                }
                com.mbridge.msdk.splash.view.a aVar2 = new com.mbridge.msdk.splash.view.a();
                this.f37695c = aVar2;
                this.f37694b.setWebViewClient(aVar2);
            } catch (Throwable th2) {
                o0.b(f37692r, th2.getMessage());
            }
        }
    }

    public void setVideoReady(boolean z10) {
        this.f37701i = z10;
    }

    public void show() {
        ViewGroup viewGroup;
        if (this.f37708p != null && (viewGroup = this.f37703k) != null && (viewGroup.getContext() instanceof Activity)) {
            this.f37708p.a(this.f37703k.getContext());
            com.mbridge.msdk.splash.view.a aVar = this.f37695c;
            if (aVar != null) {
                aVar.a(this.f37708p.a());
            }
        }
        c();
        clearResState();
    }

    public void updateCountdown(int i11) {
        DyCountDownListener dyCountDownListener;
        View view;
        if (this.f37694b != null && !this.f37705m) {
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("countdown", i11);
                f.a().a((WebView) this.f37694b, "updateCountdown", Base64.encodeToString(jSONObject.toString().getBytes(), 2));
            } catch (JSONException e11) {
                e11.printStackTrace();
            }
        }
        if (this.f37705m && (view = this.f37704l) != null && (view instanceof MBSplashNativeView)) {
            ((MBSplashNativeView) view).updateCountDown(i11);
        }
        if (!this.f37705m || (dyCountDownListener = this.f37709q) == null) {
            return;
        }
        dyCountDownListener.getCountDownValue(i11);
    }
}
