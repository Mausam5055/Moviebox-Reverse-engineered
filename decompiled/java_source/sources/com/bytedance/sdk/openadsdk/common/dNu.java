package com.bytedance.sdk.openadsdk.common;

import android.app.Dialog;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.graphics.Color;
import android.graphics.Typeface;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import com.bytedance.sdk.component.utils.ib;
import com.bytedance.sdk.component.utils.sU;
import com.bytedance.sdk.openadsdk.ApmHelper;
import com.bytedance.sdk.openadsdk.BuildConfig;
import com.bytedance.sdk.openadsdk.utils.FPG;
import com.bytedance.sdk.openadsdk.utils.Mts;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class dNu extends Dialog {
    private static final String[] sP = {"SDK version", "App", "App version", "OS", "Device", "Creative info"};
    private TextView EjP;
    private Button HiB;
    private final Handler Sj;
    private String TKC;
    private ImageView vS;

    public dNu(@NonNull Context context) {
        super(context, ib.vS(context, "tt_privacy_dialog_theme_ad_report"));
        this.Sj = new Handler(Looper.getMainLooper());
        this.TKC = "";
    }

    private int Sj(float f11) {
        return FPG.sP(getContext(), f11);
    }

    private View Sj(Context context) {
        com.bytedance.sdk.openadsdk.core.HiB.HiB hiB = new com.bytedance.sdk.openadsdk.core.HiB.HiB(context);
        ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(-1, -1);
        hiB.setBackground(com.bytedance.sdk.openadsdk.utils.TEQ.Sj(context, "tt_ad_report_info_bg"));
        hiB.setOrientation(1);
        hiB.setLayoutParams(layoutParams);
        com.bytedance.sdk.openadsdk.core.HiB.Jcg jcg = new com.bytedance.sdk.openadsdk.core.HiB.Jcg(context);
        jcg.setLayoutParams(new ViewGroup.LayoutParams(-1, Sj(44.0f)));
        com.bytedance.sdk.openadsdk.core.HiB.Dq dq2 = new com.bytedance.sdk.openadsdk.core.HiB.Dq(context);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(Sj(191.0f), Sj(24.0f));
        layoutParams2.addRule(13);
        dq2.setGravity(17);
        dq2.setText("Ad Report");
        dq2.setTextColor(Color.parseColor("#161823"));
        dq2.setTextSize(1, 17.0f);
        dq2.setLayoutParams(layoutParams2);
        this.vS = new com.bytedance.sdk.openadsdk.core.HiB.EjP(context);
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(Sj(40.0f), Sj(44.0f));
        layoutParams3.addRule(11);
        layoutParams3.addRule(15);
        layoutParams3.rightMargin = Sj(8.0f);
        this.vS.setPadding(Sj(12.0f), Sj(14.0f), Sj(12.0f), Sj(14.0f));
        this.vS.setImageResource(ib.EjP(context, "tt_ad_xmark"));
        this.vS.setLayoutParams(layoutParams3);
        View view = new View(context);
        ViewGroup.LayoutParams layoutParams4 = new ViewGroup.LayoutParams(-1, Sj(0.5f));
        view.setBackgroundColor(Color.parseColor("#1F161823"));
        view.setLayoutParams(layoutParams4);
        ScrollView scrollView = new ScrollView(context);
        LinearLayout.LayoutParams layoutParams5 = new LinearLayout.LayoutParams(-1, 0);
        layoutParams5.leftMargin = Sj(16.0f);
        layoutParams5.rightMargin = Sj(16.0f);
        layoutParams5.weight = 1.0f;
        layoutParams5.setMarginStart(Sj(16.0f));
        layoutParams5.setMarginEnd(Sj(16.0f));
        scrollView.setLayoutParams(layoutParams5);
        com.bytedance.sdk.openadsdk.core.HiB.HiB hiB2 = new com.bytedance.sdk.openadsdk.core.HiB.HiB(context);
        ViewGroup.LayoutParams layoutParams6 = new ViewGroup.LayoutParams(-1, -1);
        hiB2.setOrientation(1);
        hiB2.setLayoutParams(layoutParams6);
        String strHiB = Mts.HiB();
        String strJcg = Mts.Jcg();
        String str = "Android " + Build.VERSION.RELEASE;
        String str2 = Build.BRAND + " " + Build.MODEL;
        com.bytedance.sdk.openadsdk.core.HiB.HiB hiBSj = Sj(context, "SDK version", BuildConfig.VERSION_NAME);
        com.bytedance.sdk.openadsdk.core.HiB.HiB hiBSj2 = Sj(context, "App", strHiB);
        com.bytedance.sdk.openadsdk.core.HiB.HiB hiBSj3 = Sj(context, "App version", strJcg);
        com.bytedance.sdk.openadsdk.core.HiB.HiB hiBSj4 = Sj(context, "OS", str);
        com.bytedance.sdk.openadsdk.core.HiB.HiB hiBSj5 = Sj(context, "Device", str2);
        com.bytedance.sdk.openadsdk.core.HiB.HiB hiBSj6 = Sj(context, "Creative info", "loading ...");
        com.bytedance.sdk.openadsdk.core.HiB.HiB hiB3 = new com.bytedance.sdk.openadsdk.core.HiB.HiB(context);
        LinearLayout.LayoutParams layoutParams7 = new LinearLayout.LayoutParams(-1, Sj(76.0f));
        hiB3.setBackgroundColor(-1);
        hiB3.setLayoutParams(layoutParams7);
        this.HiB = new Button(context);
        LinearLayout.LayoutParams layoutParams8 = new LinearLayout.LayoutParams(-1, -1);
        int iSj = Sj(16.0f);
        layoutParams8.setMargins(iSj, iSj, iSj, iSj);
        this.HiB.setBackground(com.bytedance.sdk.openadsdk.utils.TEQ.Sj(context, "tt_ad_report_info_button_bg"));
        this.HiB.setText("copy all");
        this.HiB.setTextColor(Color.parseColor("#333333"));
        this.HiB.setTextSize(14.0f);
        this.HiB.setLayoutParams(layoutParams8);
        hiB.addView(jcg);
        jcg.addView(dq2);
        jcg.addView(this.vS);
        hiB.addView(view);
        hiB.addView(scrollView);
        scrollView.addView(hiB2);
        hiB2.addView(hiBSj);
        hiB2.addView(hiBSj2);
        hiB2.addView(hiBSj3);
        hiB2.addView(hiBSj4);
        hiB2.addView(hiBSj5);
        hiB2.addView(hiBSj6);
        hiB.addView(hiB3);
        hiB3.addView(this.HiB);
        return hiB;
    }

    private com.bytedance.sdk.openadsdk.core.HiB.HiB Sj(Context context, String str, String str2) {
        com.bytedance.sdk.openadsdk.core.HiB.HiB hiB = new com.bytedance.sdk.openadsdk.core.HiB.HiB(context);
        ViewGroup.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, str.equals("Creative info") ? -2 : Sj(74.0f));
        hiB.setOrientation(1);
        hiB.setPadding(0, Sj(16.0f), 0, Sj(16.0f));
        hiB.setLayoutParams(layoutParams);
        com.bytedance.sdk.openadsdk.core.HiB.Dq dq2 = new com.bytedance.sdk.openadsdk.core.HiB.Dq(context);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams2.bottomMargin = Sj(7.0f);
        dq2.setIncludeFontPadding(false);
        dq2.setText(str);
        dq2.setTextColor(Color.parseColor("#333333"));
        dq2.setTextSize(16.0f);
        dq2.setTypeface(Typeface.defaultFromStyle(1));
        dq2.setLayoutParams(layoutParams2);
        hiB.addView(dq2);
        com.bytedance.sdk.openadsdk.core.HiB.Dq dq3 = new com.bytedance.sdk.openadsdk.core.HiB.Dq(context);
        if (str.equals("Creative info")) {
            this.EjP = dq3;
        }
        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-2, -2);
        dq3.setIncludeFontPadding(false);
        dq3.setTextColor(Color.parseColor("#666666"));
        dq3.setText(str2);
        dq3.setTextSize(14.0f);
        dq3.setLayoutParams(layoutParams3);
        hiB.addView(dq3);
        return hiB;
    }

    private void sP() {
        final String strHiB = Mts.HiB();
        final String strJcg = Mts.Jcg();
        final String str = "Android " + Build.VERSION.RELEASE;
        final String str2 = Build.BRAND + " " + Build.MODEL;
        this.HiB.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.common.dNu.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ClipboardManager clipboardManager = (ClipboardManager) dNu.this.getContext().getSystemService("clipboard");
                if (clipboardManager != null) {
                    StringBuilder sb2 = new StringBuilder();
                    String[] strArr = {BuildConfig.VERSION_NAME, strHiB, strJcg, str, str2, dNu.this.TKC};
                    for (int i11 = 0; i11 < dNu.sP.length; i11++) {
                        sb2.append(dNu.sP[i11]);
                        sb2.append(": ");
                        sb2.append(strArr[i11]);
                        sb2.append("\n");
                    }
                    try {
                        clipboardManager.setPrimaryClip(ClipData.newPlainText("pangle sdk build info", sb2));
                    } catch (Throwable unused) {
                    }
                }
            }
        });
        this.vS.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.common.dNu.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                dNu.this.EjP.setText("loading ...");
                dNu.this.cancel();
            }
        });
    }

    public void Sj(String str) {
        try {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            this.TKC = com.bytedance.sdk.component.utils.Sj.Sj(new JSONObject(str)).toString();
        } catch (JSONException e11) {
            sU.sP("TTPrivacyAdReportDialog", e11.getMessage());
        }
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(Sj(getContext()), new ViewGroup.LayoutParams(FPG.TKC(getContext()), (int) (((double) FPG.HiB(getContext())) * 0.9d)));
        sP();
        if (getWindow() != null) {
            getWindow().setGravity(80);
        }
    }

    @Override // android.app.Dialog
    public void show() {
        try {
            super.show();
            this.Sj.postDelayed(new Runnable() { // from class: com.bytedance.sdk.openadsdk.common.dNu.3
                @Override // java.lang.Runnable
                public void run() {
                    dNu.this.EjP.setText(dNu.this.TKC);
                }
            }, 1000L);
        } catch (Exception e11) {
            ApmHelper.reportCustomError("showPrivacyAdReportDialogError", "showPrivacyAdReportDialogError", e11);
        }
    }
}
