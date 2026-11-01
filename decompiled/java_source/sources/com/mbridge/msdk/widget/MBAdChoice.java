package com.mbridge.msdk.widget;

import android.content.Context;
import android.graphics.Bitmap;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.widget.ImageView;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.same.image.c;
import com.mbridge.msdk.foundation.same.net.utils.d;
import com.mbridge.msdk.foundation.tools.t0;
import com.mbridge.msdk.out.Campaign;
import com.mbridge.msdk.setting.g;
import com.mbridge.msdk.setting.h;

/* JADX INFO: loaded from: classes5.dex */
public class MBAdChoice extends MBImageView {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Context f40023c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f40024d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f40025e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f40026f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private CampaignEx f40027g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private com.mbridge.msdk.foundation.feedback.a f40028h;

    class a implements com.mbridge.msdk.foundation.feedback.a {
        a() {
        }

        @Override // com.mbridge.msdk.foundation.feedback.a
        public void a() {
        }

        @Override // com.mbridge.msdk.foundation.feedback.a
        public void a(String str) {
        }

        @Override // com.mbridge.msdk.foundation.feedback.a
        public void close() {
        }
    }

    class b implements c {
        b() {
        }

        @Override // com.mbridge.msdk.foundation.same.image.c
        public void onFailedLoad(String str, String str2) {
        }

        @Override // com.mbridge.msdk.foundation.same.image.c
        public void onSuccessLoad(Bitmap bitmap, String str) {
            MBAdChoice.this.setImageBitmap(bitmap);
        }
    }

    public MBAdChoice(Context context) {
        super(context);
        this.f40024d = "";
        this.f40025e = "";
        this.f40026f = "";
        this.f40023c = context;
        b();
    }

    public MBAdChoice(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f40024d = "";
        this.f40025e = "";
        this.f40026f = "";
        this.f40023c = context;
        b();
    }

    public MBAdChoice(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        this.f40024d = "";
        this.f40025e = "";
        this.f40026f = "";
        this.f40023c = context;
        b();
    }

    private void a() {
        if (this.f40023c != null) {
            com.mbridge.msdk.foundation.same.image.b.a(com.mbridge.msdk.foundation.controller.c.m().d()).a(this.f40024d, new b());
        }
    }

    private void a(CampaignEx campaignEx, g gVar) {
        this.f40027g = campaignEx;
        if (campaignEx == null) {
            if (gVar != null) {
                this.f40024d = gVar.b();
                return;
            }
            return;
        }
        CampaignEx.a adchoice = campaignEx.getAdchoice();
        if (adchoice != null) {
            this.f40024d = adchoice.b();
        }
        if (!TextUtils.isEmpty(this.f40024d) || gVar == null) {
            return;
        }
        this.f40024d = gVar.b();
    }

    private boolean a(CampaignEx campaignEx) {
        this.f40027g = campaignEx;
        g gVarD = h.b().d(com.mbridge.msdk.foundation.controller.c.m().b());
        c(campaignEx, gVarD);
        a(campaignEx, gVarD);
        b(campaignEx, gVarD);
        boolean z10 = (TextUtils.isEmpty(this.f40024d) || TextUtils.isEmpty(this.f40025e) || TextUtils.isEmpty(this.f40026f)) ? false : true;
        setImageUrl(this.f40024d);
        return z10;
    }

    private void b() {
        setScaleType(ImageView.ScaleType.FIT_CENTER);
        setClickable(true);
    }

    private void b(CampaignEx campaignEx, g gVar) {
        this.f40027g = campaignEx;
        if (campaignEx == null) {
            if (gVar != null) {
                this.f40026f = gVar.d();
                return;
            }
            return;
        }
        CampaignEx.a adchoice = campaignEx.getAdchoice();
        if (adchoice != null) {
            this.f40026f = adchoice.d();
        }
        if (!TextUtils.isEmpty(this.f40026f) || gVar == null) {
            return;
        }
        this.f40026f = gVar.d();
    }

    private void c(CampaignEx campaignEx, g gVar) {
        this.f40027g = campaignEx;
        if (campaignEx == null) {
            if (gVar != null) {
                this.f40025e = gVar.c();
                return;
            }
            return;
        }
        String privacyUrl = campaignEx.getPrivacyUrl();
        this.f40025e = privacyUrl;
        if (TextUtils.isEmpty(privacyUrl)) {
            CampaignEx.a adchoice = campaignEx.getAdchoice();
            if (adchoice != null) {
                this.f40025e = adchoice.c();
            }
            if (TextUtils.isEmpty(this.f40025e) && gVar != null) {
                this.f40025e = gVar.c();
            }
            if (TextUtils.isEmpty(this.f40025e)) {
                this.f40025e = d.h().f35474g;
            }
        }
    }

    @Override // android.view.View
    public boolean performClick() {
        if (this.f40028h == null) {
            this.f40028h = new a();
        }
        t0.a(this.f40027g, this.f40028h, 4, "");
        return true;
    }

    public void setCampaign(Campaign campaign) {
        if (!(campaign instanceof CampaignEx)) {
            this.f40027g = null;
            return;
        }
        CampaignEx campaignEx = (CampaignEx) campaign;
        this.f40027g = campaignEx;
        if (a(campaignEx)) {
            a();
        }
    }

    public void setFeedbackDialogEventListener(com.mbridge.msdk.foundation.feedback.a aVar) {
        this.f40028h = aVar;
    }
}
