package com.mbridge.msdk.video.module;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import com.cloud.tmc.offline.download.model.TaskResultKt;
import com.mbridge.msdk.foundation.tools.g0;

/* JADX INFO: loaded from: classes5.dex */
public class MBridgeVastEndCardView extends MBridgeBaseView {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private ViewGroup f39341m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private View f39342n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private View f39343o;

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MBridgeVastEndCardView.this.notifyListener.a(104, "");
        }
    }

    class b extends com.mbridge.msdk.widget.a {
        b() {
        }

        @Override // com.mbridge.msdk.widget.a
        protected void a(View view) {
            MBridgeVastEndCardView mBridgeVastEndCardView = MBridgeVastEndCardView.this;
            mBridgeVastEndCardView.notifyListener.a(TaskResultKt.ERROR_LOAD_RESPONSE_STR_EMPTY, mBridgeVastEndCardView.c());
        }
    }

    public MBridgeVastEndCardView(Context context) {
        super(context);
    }

    public MBridgeVastEndCardView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    private boolean e() {
        this.f39341m = (ViewGroup) findViewById(findID("mbridge_rl_content"));
        this.f39342n = findViewById(findID("mbridge_iv_vastclose"));
        View viewFindViewById = findViewById(findID("mbridge_iv_vastok"));
        this.f39343o = viewFindViewById;
        return isNotNULL(this.f39341m, this.f39342n, viewFindViewById);
    }

    private void f() {
        if (this.f39229e) {
            setMatchParent();
            setBackgroundResource(findColor("mbridge_reward_endcard_vast_bg"));
            setClickable(true);
            ((RelativeLayout.LayoutParams) this.f39341m.getLayoutParams()).addRule(13, -1);
        }
    }

    @Override // com.mbridge.msdk.video.module.MBridgeBaseView
    protected void d() {
        super.d();
        if (this.f39229e) {
            this.f39342n.setOnClickListener(new a());
            this.f39343o.setOnClickListener(new b());
        }
    }

    @Override // com.mbridge.msdk.video.module.MBridgeBaseView
    public void init(Context context) {
        int iFindLayout = findLayout("mbridge_reward_endcard_vast");
        if (g0.a(iFindLayout)) {
            this.f39227c.inflate(iFindLayout, this);
            this.f39229e = e();
            d();
            f();
        }
    }

    public void notifyShowListener() {
        this.notifyListener.a(111, "");
    }

    public void preLoadData(com.mbridge.msdk.video.signal.factory.b bVar) {
    }
}
