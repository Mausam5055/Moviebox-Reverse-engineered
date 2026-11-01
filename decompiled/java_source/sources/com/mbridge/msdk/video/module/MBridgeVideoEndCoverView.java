package com.mbridge.msdk.video.module;

import android.content.Context;
import android.content.res.Configuration;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.g0;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.t0;
import com.mbridge.msdk.video.module.listener.impl.j;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class MBridgeVideoEndCoverView extends MBridgeBaseView {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final String f39346m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private View f39347n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private ImageView f39348o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private ImageView f39349p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private TextView f39350q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private TextView f39351r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private TextView f39352s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private com.mbridge.msdk.video.signal.factory.b f39353t;

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MBridgeVideoEndCoverView.this.notifyListener.a(104, "");
        }
    }

    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MBridgeVideoEndCoverView.this.g();
        }
    }

    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MBridgeVideoEndCoverView.this.g();
        }
    }

    public MBridgeVideoEndCoverView(Context context) {
        super(context);
        this.f39346m = "MBridgeVideoEndCoverView";
    }

    public MBridgeVideoEndCoverView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f39346m = "MBridgeVideoEndCoverView";
    }

    private boolean a(View view) {
        if (view == null) {
            return true;
        }
        try {
            this.f39348o = (ImageView) view.findViewById(findID("mbridge_vec_iv_icon"));
            this.f39349p = (ImageView) view.findViewById(findID("mbridge_vec_iv_close"));
            this.f39350q = (TextView) view.findViewById(findID("mbridge_vec_tv_title"));
            this.f39351r = (TextView) view.findViewById(findID("mbridge_vec_tv_desc"));
            this.f39352s = (TextView) view.findViewById(findID("mbridge_vec_btn"));
            return true;
        } catch (Throwable th2) {
            o0.b("MBridgeVideoEndCoverView", th2.getMessage());
            return false;
        }
    }

    private void e() {
        ImageView imageView;
        CampaignEx campaignEx = this.f39226b;
        if (campaignEx != null) {
            if (!TextUtils.isEmpty(campaignEx.getIconUrl()) && (imageView = this.f39348o) != null) {
                com.mbridge.msdk.foundation.same.image.b.a(this.f39225a.getApplicationContext()).a(this.f39226b.getIconUrl(), new j(imageView, t0.a(com.mbridge.msdk.foundation.controller.c.m().d(), 8.0f)));
            }
            TextView textView = this.f39350q;
            if (textView != null) {
                textView.setText(this.f39226b.getAppName());
            }
            TextView textView2 = this.f39352s;
            if (textView2 != null) {
                textView2.setText(this.f39226b.getAdCall());
            }
            TextView textView3 = this.f39351r;
            if (textView3 != null) {
                textView3.setText(this.f39226b.getAppDesc());
            }
        }
    }

    private void f() {
        View view = this.f39347n;
        if (view == null) {
            init(this.f39225a);
            preLoadData(this.f39353t);
            return;
        }
        if (view.getParent() != null) {
            ((ViewGroup) this.f39347n.getParent()).removeView(this.f39347n);
        }
        addView(this.f39347n);
        a(this.f39347n);
        d();
    }

    @Override // com.mbridge.msdk.video.module.MBridgeBaseView
    protected void d() {
        super.d();
        this.f39349p.setOnClickListener(new a());
        this.f39348o.setOnClickListener(new b());
        this.f39352s.setOnClickListener(new c());
    }

    protected void g() {
        JSONException e11;
        JSONObject jSONObject;
        JSONObject jSONObject2;
        JSONException e12;
        try {
            JSONObject jSONObject3 = new JSONObject();
            try {
                jSONObject2 = new JSONObject();
                try {
                    jSONObject2.put(com.mbridge.msdk.foundation.same.a.f35336h, t0.b(com.mbridge.msdk.foundation.controller.c.m().d(), this.f39230f));
                    jSONObject2.put(com.mbridge.msdk.foundation.same.a.f35337i, t0.b(com.mbridge.msdk.foundation.controller.c.m().d(), this.f39231g));
                    jSONObject2.put(com.mbridge.msdk.foundation.same.a.f35341m, 0);
                    try {
                        this.f39228d = getContext().getResources().getConfiguration().orientation;
                    } catch (Exception e13) {
                        e13.printStackTrace();
                    }
                    jSONObject2.put(com.mbridge.msdk.foundation.same.a.f35339k, this.f39228d);
                    jSONObject2.put(com.mbridge.msdk.foundation.same.a.f35340l, t0.d(getContext()));
                } catch (JSONException e14) {
                    e12 = e14;
                    o0.b("MBridgeVideoEndCoverView", e12.getMessage());
                }
            } catch (JSONException e15) {
                jSONObject2 = jSONObject3;
                e12 = e15;
            }
            jSONObject = new JSONObject();
            try {
                jSONObject.put(com.mbridge.msdk.foundation.same.a.f35338j, jSONObject2);
            } catch (JSONException e16) {
                e11 = e16;
                e11.printStackTrace();
            }
        } catch (JSONException e17) {
            e11 = e17;
            jSONObject = null;
        }
        this.notifyListener.a(105, jSONObject);
    }

    @Override // com.mbridge.msdk.video.module.MBridgeBaseView
    public void init(Context context) {
        int iFindLayout = findLayout("mbridge_reward_videoend_cover");
        if (g0.a(iFindLayout)) {
            View viewInflate = this.f39227c.inflate(iFindLayout, (ViewGroup) null);
            this.f39347n = viewInflate;
            if (viewInflate != null) {
                this.f39229e = a(viewInflate);
                addView(this.f39347n, -1, -1);
                d();
            }
        }
    }

    @Override // com.mbridge.msdk.video.module.MBridgeBaseView, android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        this.f39230f = motionEvent.getRawX();
        this.f39231g = motionEvent.getRawY();
        return super.onInterceptTouchEvent(motionEvent);
    }

    @Override // com.mbridge.msdk.video.module.MBridgeBaseView
    public void onSelfConfigurationChanged(Configuration configuration) {
        super.onSelfConfigurationChanged(configuration);
        this.f39228d = configuration.orientation;
        removeView(this.f39347n);
        f();
    }

    public void preLoadData(com.mbridge.msdk.video.signal.factory.b bVar) {
        this.f39353t = bVar;
        try {
            if (this.f39226b == null || !this.f39229e) {
                return;
            }
            e();
        } catch (Throwable th2) {
            o0.a("MBridgeVideoEndCoverView", th2.getMessage());
        }
    }
}
