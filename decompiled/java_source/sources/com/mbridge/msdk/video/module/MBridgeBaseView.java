package com.mbridge.msdk.video.module;

import android.content.Context;
import android.content.res.Configuration;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import com.mbridge.msdk.foundation.controller.c;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.g0;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.t0;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.mbridge.msdk.video.module.listener.a;
import com.mbridge.msdk.video.module.listener.impl.f;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public abstract class MBridgeBaseView extends RelativeLayout {
    public static final String TAG = "MBridgeBaseView";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected Context f39225a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected CampaignEx f39226b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected LayoutInflater f39227c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected int f39228d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected boolean f39229e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected float f39230f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    protected float f39231g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    protected boolean f39232h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    protected int f39233i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    protected boolean f39234j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    protected int f39235k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    protected int f39236l;
    public a notifyListener;

    public MBridgeBaseView(Context context) {
        this(context, null);
    }

    public MBridgeBaseView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f39228d = 1;
        this.notifyListener = new f();
        this.f39229e = false;
        this.f39235k = 1;
        this.f39236l = 0;
        this.f39225a = context;
        this.f39227c = LayoutInflater.from(context);
        init(context);
    }

    public MBridgeBaseView(Context context, AttributeSet attributeSet, boolean z10, int i11, boolean z11, int i12, int i13) {
        super(context, attributeSet);
        this.f39228d = 1;
        this.notifyListener = new f();
        this.f39229e = false;
        this.f39235k = 1;
        this.f39236l = 0;
        this.f39225a = context;
        this.f39227c = LayoutInflater.from(context);
        this.f39232h = z10;
        this.f39233i = i11;
        this.f39234j = z11;
        this.f39235k = i12;
        this.f39236l = i13;
        init(context);
    }

    protected JSONObject a(int i11) {
        JSONObject jSONObject = new JSONObject();
        try {
            JSONObject jSONObject2 = new JSONObject();
            try {
                jSONObject2.put(com.mbridge.msdk.foundation.same.a.f35336h, t0.b(c.m().d(), this.f39230f));
                jSONObject2.put(com.mbridge.msdk.foundation.same.a.f35337i, t0.b(c.m().d(), this.f39231g));
                jSONObject2.put(com.mbridge.msdk.foundation.same.a.f35341m, i11);
                try {
                    this.f39228d = getContext().getResources().getConfiguration().orientation;
                } catch (Exception e11) {
                    e11.printStackTrace();
                }
                jSONObject2.put(com.mbridge.msdk.foundation.same.a.f35339k, this.f39228d);
                jSONObject2.put(com.mbridge.msdk.foundation.same.a.f35340l, t0.d(getContext()));
                return jSONObject2;
            } catch (JSONException e12) {
                e = e12;
                jSONObject = jSONObject2;
                e.printStackTrace();
                return jSONObject;
            }
        } catch (JSONException e13) {
            e = e13;
        }
    }

    protected String c() {
        return a(0).toString();
    }

    protected void d() {
    }

    public void defaultShow() {
        o0.a(TAG, "defaultShow");
    }

    public int filterFindViewId(boolean z10, String str) {
        return z10 ? findDyID(str) : findID(str);
    }

    public int findColor(String str) {
        return g0.a(this.f39225a.getApplicationContext(), str, TtmlNode.ATTR_TTS_COLOR);
    }

    public int findDrawable(String str) {
        return g0.a(this.f39225a.getApplicationContext(), str, "drawable");
    }

    public int findDyID(String str) {
        if (TextUtils.isEmpty(str)) {
            return -1;
        }
        return str.hashCode();
    }

    public int findID(String str) {
        return g0.a(this.f39225a.getApplicationContext(), str, "id");
    }

    public int findLayout(String str) {
        return g0.a(this.f39225a.getApplicationContext(), str, TtmlNode.TAG_LAYOUT);
    }

    public CampaignEx getCampaign() {
        return this.f39226b;
    }

    public LinearLayout.LayoutParams getParentLinearLayoutParams() {
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if (layoutParams instanceof LinearLayout.LayoutParams) {
            return (LinearLayout.LayoutParams) layoutParams;
        }
        return null;
    }

    public RelativeLayout.LayoutParams getParentRelativeLayoutParams() {
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if (layoutParams instanceof RelativeLayout.LayoutParams) {
            return (RelativeLayout.LayoutParams) layoutParams;
        }
        return null;
    }

    public abstract void init(Context context);

    public boolean isLandscape() {
        return this.f39225a.getResources().getConfiguration().orientation == 2;
    }

    public boolean isNotNULL(View... viewArr) {
        if (viewArr == null) {
            return false;
        }
        int length = viewArr.length;
        int i11 = 0;
        boolean z10 = false;
        while (i11 < length) {
            if (viewArr[i11] == null) {
                return false;
            }
            i11++;
            z10 = true;
        }
        return z10;
    }

    @Override // android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        this.f39228d = configuration.orientation;
        super.onConfigurationChanged(configuration);
        StringBuilder sb2 = new StringBuilder();
        sb2.append("onConfigurationChanged:");
        sb2.append(configuration.orientation);
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        this.f39230f = motionEvent.getRawX();
        this.f39231g = motionEvent.getRawY();
        return super.onInterceptTouchEvent(motionEvent);
    }

    public void onSelfConfigurationChanged(Configuration configuration) {
        this.f39228d = configuration.orientation;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("onSelfConfigurationChanged:");
        sb2.append(configuration.orientation);
    }

    public void setCampaign(CampaignEx campaignEx) {
        this.f39226b = campaignEx;
    }

    public void setLayoutCenter(int i11, int i12) {
        RelativeLayout.LayoutParams parentRelativeLayoutParams = getParentRelativeLayoutParams();
        LinearLayout.LayoutParams parentLinearLayoutParams = getParentLinearLayoutParams();
        if (parentRelativeLayoutParams != null) {
            parentRelativeLayoutParams.addRule(13);
            if (i11 != -999) {
                parentRelativeLayoutParams.width = i11;
            }
            if (i12 != -999) {
                parentRelativeLayoutParams.height = i12;
            }
            setLayoutParams(parentRelativeLayoutParams);
            return;
        }
        if (parentLinearLayoutParams != null) {
            parentLinearLayoutParams.gravity = 17;
            if (i11 != -999) {
                parentLinearLayoutParams.width = i11;
            }
            if (i12 != -999) {
                parentLinearLayoutParams.height = i12;
            }
            setLayoutParams(parentLinearLayoutParams);
        }
    }

    public void setLayoutParam(int i11, int i12, int i13, int i14) {
        RelativeLayout.LayoutParams parentRelativeLayoutParams = getParentRelativeLayoutParams();
        LinearLayout.LayoutParams parentLinearLayoutParams = getParentLinearLayoutParams();
        if (parentRelativeLayoutParams != null) {
            parentRelativeLayoutParams.topMargin = i12;
            parentRelativeLayoutParams.leftMargin = i11;
            if (i13 != -999) {
                parentRelativeLayoutParams.width = i13;
            }
            if (i14 != -999) {
                parentRelativeLayoutParams.height = i14;
            }
            setLayoutParams(parentRelativeLayoutParams);
            return;
        }
        if (parentLinearLayoutParams != null) {
            parentLinearLayoutParams.topMargin = i12;
            parentLinearLayoutParams.leftMargin = i11;
            if (i13 != -999) {
                parentLinearLayoutParams.width = i13;
            }
            if (i14 != -999) {
                parentLinearLayoutParams.height = i14;
            }
            setLayoutParams(parentLinearLayoutParams);
        }
    }

    public void setMatchParent() {
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if (layoutParams == null) {
            setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        } else {
            layoutParams.height = -1;
            layoutParams.width = -1;
        }
    }

    public void setNotifyListener(a aVar) {
        this.notifyListener = aVar;
    }

    public void setWrapContent() {
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if (layoutParams == null) {
            setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
        } else {
            layoutParams.height = -2;
            layoutParams.width = -2;
        }
    }
}
