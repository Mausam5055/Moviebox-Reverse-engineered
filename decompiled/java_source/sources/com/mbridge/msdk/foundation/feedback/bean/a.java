package com.mbridge.msdk.foundation.feedback.bean;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.CompoundButton;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.g0;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.t0;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.mbridge.msdk.setting.h;
import com.mbridge.msdk.widget.FeedBackButton;
import com.mbridge.msdk.widget.FeedbackRadioGroup;
import com.mbridge.msdk.widget.dialog.MBFeedBackDialog;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;

/* JADX INFO: loaded from: classes5.dex */
public class a {
    private static int A = -1;
    private static String B;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f35295b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private CampaignEx f35296c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private FeedBackButton f35298e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f35299f;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private String f35302i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private MBFeedBackDialog f35303j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private Dialog f35304k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private JSONArray f35305l;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f35310q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private List<g> f35311r;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private int f35314u;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private float f35294a = 1.0f;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f35297d = "";

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private float f35300g = -1.0f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f35301h = -1;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f35306m = -1;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private int f35307n = -1;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f35308o = -1;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f35309p = -1;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private int f35312s = t0.a(com.mbridge.msdk.foundation.controller.c.m().d(), 20.0f);

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private String f35313t = "";

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private com.mbridge.msdk.widget.dialog.b f35315v = new C0486a();

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private int f35316w = A;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private int f35317x = -1;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private int f35318y = -1;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private int f35319z = -1;

    /* JADX INFO: renamed from: com.mbridge.msdk.foundation.feedback.bean.a$a, reason: collision with other inner class name */
    class C0486a implements com.mbridge.msdk.widget.dialog.b {
        C0486a() {
        }

        @Override // com.mbridge.msdk.widget.dialog.b
        public void a() {
            a.this.m();
        }

        @Override // com.mbridge.msdk.widget.dialog.b
        public void b() {
            a.this.l();
        }

        @Override // com.mbridge.msdk.widget.dialog.b
        public void c() {
            a.this.n();
        }
    }

    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            a.this.p();
        }
    }

    class c implements com.mbridge.msdk.widget.dialog.b {
        c() {
        }

        @Override // com.mbridge.msdk.widget.dialog.b
        public void a() {
            a.this.m();
        }

        @Override // com.mbridge.msdk.widget.dialog.b
        public void b() {
            a.this.l();
        }

        @Override // com.mbridge.msdk.widget.dialog.b
        public void c() {
            a.this.n();
        }
    }

    class d implements CompoundButton.OnCheckedChangeListener {
        d() {
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z10) {
            if (z10) {
                String unused = a.B = (String) compoundButton.getText();
            }
            if (a.this.f35303j != null) {
                a.this.f35303j.setCancelButtonClickable(!TextUtils.isEmpty(a.B));
            }
        }
    }

    class e implements Runnable {
        e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                if (a.this.f35304k == null || !a.this.f35304k.isShowing()) {
                    return;
                }
                a.this.f35304k.dismiss();
            } catch (Exception e11) {
                e11.printStackTrace();
            }
        }
    }

    class f implements View.OnClickListener {
        f() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            a.this.p();
        }
    }

    public static class g implements com.mbridge.msdk.widget.dialog.b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private com.mbridge.msdk.foundation.feedback.a f35326a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private String f35327b;

        public g(String str, com.mbridge.msdk.foundation.feedback.a aVar) {
            this.f35326a = aVar;
            this.f35327b = str;
        }

        @Override // com.mbridge.msdk.widget.dialog.b
        public void a() {
            com.mbridge.msdk.foundation.feedback.b.f35289f = false;
            com.mbridge.msdk.foundation.feedback.a aVar = this.f35326a;
            if (aVar != null) {
                aVar.close();
            }
        }

        public void a(int i11) {
            com.mbridge.msdk.foundation.feedback.b.f35289f = true;
            com.mbridge.msdk.foundation.feedback.a aVar = this.f35326a;
            if (aVar == null || i11 != 2) {
                return;
            }
            aVar.a();
        }

        @Override // com.mbridge.msdk.widget.dialog.b
        public void b() {
            com.mbridge.msdk.foundation.feedback.b.f35289f = false;
            com.mbridge.msdk.foundation.feedback.a aVar = this.f35326a;
            if (aVar != null) {
                aVar.a(a.B);
            }
        }

        @Override // com.mbridge.msdk.widget.dialog.b
        public void c() {
            com.mbridge.msdk.foundation.feedback.a aVar = this.f35326a;
            if (aVar != null) {
                aVar.close();
            }
        }
    }

    public a(String str) {
        this.f35311r = new ArrayList();
        this.f35302i = str;
        if (this.f35311r == null) {
            this.f35311r = new ArrayList();
        }
        d();
        e();
        c();
    }

    private FeedbackRadioGroup a(com.mbridge.msdk.setting.b.C0536b c0536b) {
        JSONArray jSONArrayB = c0536b.b();
        Context contextD = com.mbridge.msdk.foundation.controller.c.m().d();
        if (jSONArrayB == null || jSONArrayB.length() <= 0 || contextD == null) {
            return null;
        }
        FeedbackRadioGroup feedbackRadioGroup = new FeedbackRadioGroup(contextD);
        feedbackRadioGroup.setOrientation(0);
        return feedbackRadioGroup;
    }

    private void a(int i11) {
        if (i11 == 2) {
            com.mbridge.msdk.foundation.feedback.b.b().a(this.f35302i, 0, 2, B, this.f35297d);
        } else {
            com.mbridge.msdk.foundation.feedback.b.b().a(this.f35302i, 0, 3, B, this.f35297d);
        }
        List<g> list = this.f35311r;
        if (list != null) {
            for (g gVar : list) {
                if (gVar != null) {
                    gVar.a(i11);
                }
            }
        }
    }

    private void a(Context context) {
        if (context != null) {
            try {
                com.mbridge.msdk.click.c.e(context, t0.a(this.f35296c));
            } catch (Exception unused) {
                com.mbridge.msdk.click.c.c(context, t0.a(this.f35296c));
            }
        }
    }

    private void a(RadioButton radioButton) {
        if (radioButton != null) {
            radioButton.setOnCheckedChangeListener(new d());
        }
    }

    private void a(FeedbackRadioGroup feedbackRadioGroup, com.mbridge.msdk.setting.b.C0536b c0536b) {
        ColorStateList colorStateList;
        JSONArray jSONArrayB = c0536b.b();
        Context contextD = com.mbridge.msdk.foundation.controller.c.m().d();
        if (jSONArrayB == null || jSONArrayB.length() <= 0 || contextD == null) {
            return;
        }
        g0.a(contextD, "mbridge_cm_feedback_choice_btn_bg", "drawable");
        Resources resourcesA = g0.a(contextD);
        int iA = g0.a(contextD, "mbridge_cm_feedback_rb_text_color_color_list", TtmlNode.ATTR_TTS_COLOR);
        if (resourcesA != null) {
            try {
                colorStateList = resourcesA.getColorStateList(iA);
            } catch (Exception e11) {
                e11.printStackTrace();
                colorStateList = null;
            }
        } else {
            colorStateList = null;
        }
        int iA2 = t0.a(contextD, 1.0f);
        int iA3 = t0.a(contextD, 1.0f);
        int iA4 = t0.a(contextD, 1.0f);
        for (int i11 = 0; i11 < jSONArrayB.length(); i11++) {
            String strOptString = jSONArrayB.optString(i11);
            RadioButton radioButton = new RadioButton(contextD);
            radioButton.setButtonTintList(colorStateList);
            radioButton.setText(strOptString);
            if (colorStateList != null) {
                radioButton.setTextColor(colorStateList);
            }
            radioButton.setCompoundDrawablePadding(iA2);
            radioButton.setPadding(iA2, iA3, iA2, iA3);
            radioButton.setEllipsize(TextUtils.TruncateAt.END);
            RadioGroup.LayoutParams layoutParams = new RadioGroup.LayoutParams(-1, -2);
            int i12 = iA4 / 4;
            layoutParams.setMargins(iA4, i12, iA4, i12);
            a(radioButton);
            feedbackRadioGroup.addView(radioButton, layoutParams);
        }
    }

    private void b() {
        FeedBackButton feedBackButton = this.f35298e;
        if (feedBackButton != null) {
            int i11 = this.f35318y;
            if (i11 > -1) {
                feedBackButton.setX(i11);
            }
            int i12 = this.f35319z;
            if (i12 > -1) {
                this.f35298e.setY(i12);
            }
            float f11 = this.f35294a;
            if (f11 >= 0.0f) {
                this.f35298e.setAlpha(f11);
                this.f35298e.setEnabled(this.f35294a != 0.0f);
            }
            ViewGroup.LayoutParams layoutParams = this.f35298e.getLayoutParams();
            int i13 = this.f35317x;
            if (i13 > 0) {
                this.f35298e.setWidth(i13);
                if (layoutParams != null) {
                    layoutParams.width = this.f35317x;
                }
            }
            int i14 = this.f35301h;
            if (i14 > 0) {
                this.f35298e.setHeight(i14);
                if (layoutParams != null) {
                    layoutParams.height = this.f35301h;
                }
            }
            if (layoutParams != null) {
                this.f35298e.setLayoutParams(layoutParams);
            }
            try {
                if (!TextUtils.isEmpty(this.f35299f)) {
                    this.f35298e.setTextColor(Color.parseColor(this.f35299f));
                }
            } catch (Exception e11) {
                e11.printStackTrace();
            }
            float f12 = this.f35300g;
            if (f12 > 0.0f) {
                this.f35298e.setTextSize(f12);
            }
            JSONArray jSONArray = this.f35305l;
            if (jSONArray != null && jSONArray.length() == 4) {
                Context contextD = com.mbridge.msdk.foundation.controller.c.m().d();
                this.f35298e.setPadding(t0.a(contextD, (float) this.f35305l.optDouble(0)), t0.a(contextD, (float) this.f35305l.optDouble(1)), t0.a(contextD, (float) this.f35305l.optDouble(2)), t0.a(contextD, (float) this.f35305l.optDouble(3)));
            }
            GradientDrawable gradientDrawable = new GradientDrawable();
            int i15 = this.f35312s;
            if (i15 > 0) {
                gradientDrawable.setCornerRadius(i15);
            }
            if (TextUtils.isEmpty(this.f35295b)) {
                gradientDrawable.setColor(Color.parseColor(FeedBackButton.FEEDBACK_BTN_BACKGROUND_COLOR_STR));
            } else {
                gradientDrawable.setColor(Color.parseColor(this.f35295b));
            }
            this.f35298e.setBackground(gradientDrawable);
        }
    }

    private void c() {
        try {
            if (com.mbridge.msdk.foundation.feedback.b.b().a(com.mbridge.msdk.foundation.controller.c.m().d()) != null) {
                com.mbridge.msdk.setting.g gVarD = h.b().d(com.mbridge.msdk.foundation.controller.c.m().b());
                if (gVarD == null) {
                    gVarD = h.b().a();
                }
                com.mbridge.msdk.setting.b.C0536b c0536bZ = gVarD.z();
                if (c0536bZ == null) {
                    o0.c("", "feedback fbk is null");
                    return;
                }
                d();
                this.f35303j = new MBFeedBackDialog(com.mbridge.msdk.foundation.feedback.b.b().a(com.mbridge.msdk.foundation.controller.c.m().d()), this.f35315v);
                FeedbackRadioGroup feedbackRadioGroupA = a(c0536bZ);
                this.f35303j.setCancelText(c0536bZ.d());
                this.f35303j.setConfirmText(c0536bZ.a());
                this.f35303j.setPrivacyText(c0536bZ.c());
                this.f35313t = c0536bZ.e();
                this.f35303j.setTitle(c0536bZ.f());
                this.f35303j.setContent(feedbackRadioGroupA);
                this.f35303j.setCancelButtonClickable(!TextUtils.isEmpty(B));
                a(feedbackRadioGroupA, c0536bZ);
            }
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    private void d() {
        if (this.f35315v == null) {
            this.f35315v = new c();
        }
    }

    private void e() {
        Context contextD = com.mbridge.msdk.foundation.controller.c.m().d();
        if (contextD != null) {
            try {
                FeedBackButton feedBackButton = new FeedBackButton(contextD);
                this.f35298e = feedBackButton;
                int i11 = 8;
                if (this.f35316w != 8) {
                    i11 = 0;
                }
                feedBackButton.setVisibility(i11);
                this.f35298e.setOnClickListener(new b());
            } catch (Exception e11) {
                e11.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l() {
        com.mbridge.msdk.foundation.feedback.b.b().a(this.f35302i, 1, 4, B, this.f35297d);
        List<g> list = this.f35311r;
        if (list != null) {
            for (g gVar : list) {
                if (gVar != null) {
                    gVar.b();
                }
            }
        }
        o();
        B = "";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void m() {
        com.mbridge.msdk.foundation.feedback.b.b().a(this.f35302i, 0, 4, B, this.f35297d);
        List<g> list = this.f35311r;
        if (list != null) {
            for (g gVar : list) {
                if (gVar != null) {
                    gVar.a();
                }
            }
        }
        B = "";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void n() {
        com.mbridge.msdk.foundation.feedback.b.b().a(this.f35302i, 0, 4, B, this.f35297d);
        Context contextF = com.mbridge.msdk.foundation.controller.c.m().f();
        if (contextF == null) {
            contextF = com.mbridge.msdk.foundation.controller.c.m().d();
        }
        List<g> list = this.f35311r;
        if (list != null) {
            for (g gVar : list) {
                if (gVar != null) {
                    gVar.a();
                }
            }
        }
        a(contextF);
        B = "";
    }

    private void o() {
        if (TextUtils.isEmpty(this.f35313t)) {
            return;
        }
        try {
            Activity activityA = com.mbridge.msdk.foundation.feedback.b.b().a(com.mbridge.msdk.foundation.controller.c.m().d());
            if (activityA != null) {
                View viewInflate = LayoutInflater.from(activityA).inflate(g0.a(activityA, "mbridge_cm_feedback_notice_layout", TtmlNode.TAG_LAYOUT), (ViewGroup) null);
                Dialog dialog = new Dialog(activityA, 3);
                this.f35304k = dialog;
                dialog.requestWindowFeature(1);
                WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
                Window window = this.f35304k.getWindow();
                layoutParams.copyFrom(window.getAttributes());
                layoutParams.width = -2;
                layoutParams.height = -2;
                this.f35304k.setContentView(viewInflate);
                this.f35304k.show();
                window.setAttributes(layoutParams);
                viewInflate.postDelayed(new e(), 2000L);
            }
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    public void a(int i11, int i12, int i13, int i14, int i15, float f11, String str, String str2, float f12, JSONArray jSONArray) {
        if (i11 > -1) {
            this.f35318y = i11;
        }
        if (i12 > -1) {
            this.f35319z = i12;
        }
        if (i13 > -1) {
            this.f35317x = i13;
        }
        if (i14 > -1) {
            this.f35301h = i14;
        }
        if (f12 > -1.0f) {
            this.f35300g = f12;
        }
        if (jSONArray != null) {
            this.f35305l = jSONArray;
        }
        this.f35299f = str;
        this.f35295b = str2;
        this.f35294a = f11;
        this.f35312s = i15;
        b();
    }

    public void a(CampaignEx campaignEx) {
        this.f35296c = campaignEx;
    }

    public void a(g gVar) {
        if (this.f35311r == null) {
            this.f35311r = new ArrayList();
        }
        this.f35311r.add(gVar);
    }

    public void a(FeedBackButton feedBackButton) {
        FeedBackButton feedBackButton2 = this.f35298e;
        if (feedBackButton2 != null) {
            feedBackButton2.setVisibility(8);
        }
        if (feedBackButton != null) {
            feedBackButton.setAlpha(this.f35294a);
            feedBackButton.setEnabled(this.f35294a != 0.0f);
            feedBackButton.setVisibility(this.f35316w != 8 ? 0 : 8);
            this.f35298e = feedBackButton;
            CampaignEx campaignEx = this.f35296c;
            if (campaignEx != null && !campaignEx.isDynamicView()) {
                b();
            }
            feedBackButton.setOnClickListener(new f());
        }
    }

    public void b(int i11) {
        this.f35310q = i11;
    }

    public void b(String str) {
        this.f35297d = str;
    }

    public void c(int i11) {
        this.f35314u = i11;
    }

    public void d(int i11) {
        this.f35316w = i11;
        FeedBackButton feedBackButton = this.f35298e;
        if (feedBackButton != null) {
            feedBackButton.setVisibility(i11);
        }
    }

    public void f() {
        FeedBackButton feedBackButton = this.f35298e;
        if (feedBackButton != null) {
            feedBackButton.setOnClickListener(null);
            this.f35298e.setVisibility(8);
            ViewGroup viewGroup = (ViewGroup) this.f35298e.getParent();
            if (viewGroup != null) {
                viewGroup.removeView(this.f35298e);
            }
        }
        MBFeedBackDialog mBFeedBackDialog = this.f35303j;
        if (mBFeedBackDialog != null) {
            mBFeedBackDialog.cancel();
            this.f35303j.setListener(null);
        }
        this.f35303j = null;
        this.f35311r = null;
        this.f35298e = null;
        this.f35315v = null;
    }

    public void g() {
        MBFeedBackDialog mBFeedBackDialog = this.f35303j;
        if (mBFeedBackDialog == null || !mBFeedBackDialog.isShowing()) {
            return;
        }
        this.f35303j.cancel();
    }

    public CampaignEx h() {
        return this.f35296c;
    }

    public FeedBackButton i() {
        if (this.f35298e == null) {
            e();
        }
        return this.f35298e;
    }

    public int j() {
        return this.f35310q;
    }

    public int k() {
        return this.f35314u;
    }

    public void p() {
        try {
            com.mbridge.msdk.foundation.feedback.b.b().a(this.f35302i, 0, 1, B, this.f35297d);
            Activity activityA = com.mbridge.msdk.foundation.feedback.b.b().a(com.mbridge.msdk.foundation.controller.c.m().d());
            MBFeedBackDialog mBFeedBackDialog = this.f35303j;
            if (mBFeedBackDialog == null || mBFeedBackDialog.getContext() != activityA) {
                c();
            }
            Context contextD = com.mbridge.msdk.foundation.controller.c.m().d();
            FeedBackButton feedBackButton = this.f35298e;
            if (feedBackButton != null) {
                contextD = feedBackButton.getContext();
            }
            boolean zA = com.mbridge.msdk.foundation.feedback.b.b().a(this.f35302i, contextD, this.f35303j);
            a(zA ? 2 : 3);
            if (zA) {
                return;
            }
            a(contextD);
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }
}
