package com.bytedance.sdk.openadsdk.component.reward.view;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.Path;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.view.GravityCompat;
import androidx.core.view.ViewCompat;
import com.bytedance.sdk.component.utils.ib;
import com.bytedance.sdk.openadsdk.activity.TTWebsiteActivity;
import com.bytedance.sdk.openadsdk.core.model.dx;
import com.bytedance.sdk.openadsdk.core.model.sU;
import com.bytedance.sdk.openadsdk.core.widget.PAGLogoView;
import com.bytedance.sdk.openadsdk.core.widget.Zq;
import com.bytedance.sdk.openadsdk.core.widget.uvD;
import com.bytedance.sdk.openadsdk.utils.FPG;
import com.google.android.material.card.MaterialCardView;
import java.util.HashMap;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public class RFEndCardBackUpLayout extends com.bytedance.sdk.openadsdk.core.HiB.TKC {
    private static final String TAG = "TTAD.RFEndCardBackUpL";
    private com.bytedance.sdk.openadsdk.component.reward.Sj.Sj adContext;
    private PAGLogoView adLogo;
    private uvD ivIcon;
    private boolean mInit;
    private Zq rbScore;
    private int shownAdCount;
    private com.bytedance.sdk.openadsdk.core.HiB.Dq tvDesc;
    private com.bytedance.sdk.openadsdk.core.HiB.Dq tvDownload;
    private TextView tvTitle;

    private static final class Sj extends Drawable {
        Path Sj = new Path();
        private final int TKC;
        private final Drawable sP;

        public Sj(Context context) {
            this.sP = ib.TKC(context, "tt_ad_bg_header_gradient");
            this.TKC = FPG.sP(context, 8.0f);
        }

        @Override // android.graphics.drawable.Drawable
        public void draw(@NonNull Canvas canvas) {
            canvas.clipPath(this.Sj);
            canvas.drawColor(-1);
            this.sP.draw(canvas);
        }

        @Override // android.graphics.drawable.Drawable
        public int getOpacity() {
            return -3;
        }

        @Override // android.graphics.drawable.Drawable
        public void setAlpha(int i11) {
        }

        @Override // android.graphics.drawable.Drawable
        public void setBounds(int i11, int i12, int i13, int i14) {
            super.setBounds(i11, i12, i13, i14);
            float f11 = i13;
            this.sP.setBounds(i11, i12, i13, (int) (((1.0f * f11) / this.sP.getIntrinsicWidth()) * this.sP.getIntrinsicHeight()));
            this.Sj.reset();
            Path path = this.Sj;
            RectF rectF = new RectF(0.0f, 0.0f, f11, i14);
            int i15 = this.TKC;
            path.addRoundRect(rectF, i15, i15, Path.Direction.CCW);
        }

        @Override // android.graphics.drawable.Drawable
        public void setColorFilter(@Nullable ColorFilter colorFilter) {
        }
    }

    public RFEndCardBackUpLayout(Context context) {
        super(context);
        setVisibility(8);
        setId(com.bytedance.sdk.openadsdk.utils.Zq.eMB);
    }

    private void bindDescData(com.bytedance.sdk.openadsdk.core.HiB.Dq dq2, sU sUVar) {
        if (dq2 == null) {
            return;
        }
        String strGR = sUVar.gR();
        if (TextUtils.isEmpty(strGR)) {
            return;
        }
        dq2.setText(strGR);
    }

    private void bindIconData(com.bytedance.sdk.openadsdk.core.HiB.EjP ejP, sU sUVar) {
        if (ejP == null || sUVar.EZ() == null || TextUtils.isEmpty(sUVar.EZ().Sj())) {
            return;
        }
        com.bytedance.sdk.openadsdk.TzV.sP.Sj().Sj(sUVar.EZ(), ejP, sUVar);
    }

    private void bindTitleData(TextView textView, sU sUVar, String str) {
        if (textView != null) {
            if (sUVar.tz() == null || TextUtils.isEmpty(sUVar.tz().sP())) {
                textView.setText(str);
            } else {
                textView.setText(sUVar.tz().sP());
            }
        }
    }

    private void initData(sU sUVar, com.bytedance.sdk.openadsdk.core.HiB.Dq dq2) {
        setDownloadButtonData(dq2, sUVar, -1);
        bindIconData(this.ivIcon, sUVar);
        Zq zq2 = this.rbScore;
        if (zq2 != null) {
            FPG.Sj((TextView) null, zq2, sUVar);
            if (sUVar.tz() != null) {
                this.rbScore.setVisibility(0);
            }
        }
        if (this.tvTitle != null) {
            if (sUVar.tz() != null && !TextUtils.isEmpty(sUVar.tz().sP())) {
                this.tvTitle.setText(sUVar.tz().sP());
            } else if (TextUtils.isEmpty(sUVar.dwU())) {
                this.tvTitle.setVisibility(8);
            } else {
                this.tvTitle.setText(sUVar.dwU());
            }
        }
        if (this.tvDesc != null) {
            String strXu = sUVar.xu();
            if (TextUtils.isEmpty(strXu)) {
                this.tvDesc.setVisibility(8);
            } else {
                this.tvDesc.setText(strXu);
            }
        }
        this.adLogo.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.component.reward.view.RFEndCardBackUpLayout.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                try {
                    TTWebsiteActivity.Sj(RFEndCardBackUpLayout.this.adContext.Fm, RFEndCardBackUpLayout.this.adContext.sP, RFEndCardBackUpLayout.this.adContext.HiB);
                } catch (Throwable unused) {
                }
            }
        });
    }

    private void initOneSlotMultipleAdsLayout() {
        Context context = getContext();
        setBackgroundColor(Color.parseColor("#C2FFFFFF"));
        com.bytedance.sdk.openadsdk.core.HiB.HiB hiB = new com.bytedance.sdk.openadsdk.core.HiB.HiB(context);
        hiB.setOrientation(1);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -2);
        layoutParams.setMargins(FPG.sP(context, 16.0f), 0, FPG.sP(context, 16.0f), 0);
        layoutParams.gravity = 17;
        addView(hiB, layoutParams);
        if (this.adContext.sdp == 2) {
            com.bytedance.sdk.openadsdk.core.HiB.HiB hiB2 = new com.bytedance.sdk.openadsdk.core.HiB.HiB(context);
            hiB2.setOrientation(0);
            hiB.addView(hiB2, new FrameLayout.LayoutParams(-1, -2));
            initOneSlotMultipleAdsLayoutLandscape(hiB2, this.shownAdCount);
        } else if (this.shownAdCount == 2) {
            initOneSlotMultipleAdsLayoutForTwoAdVertical(hiB);
        } else {
            initOneSlotMultipleAdsLayoutForThreeAdVertical(hiB);
        }
        com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj2 = this.adContext;
        View viewCreatePAGLogoViewByMaterial = PAGLogoView.createPAGLogoViewByMaterial(sj2.Fm, sj2.sP);
        viewCreatePAGLogoViewByMaterial.setId(520093757);
        hiB.addView(viewCreatePAGLogoViewByMaterial);
        viewCreatePAGLogoViewByMaterial.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.component.reward.view.RFEndCardBackUpLayout.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                TTWebsiteActivity.Sj(RFEndCardBackUpLayout.this.adContext.Fm, RFEndCardBackUpLayout.this.adContext.sP, RFEndCardBackUpLayout.this.adContext.HiB);
            }
        });
    }

    private void initOneSlotMultipleAdsLayoutForThreeAdVertical(com.bytedance.sdk.openadsdk.core.HiB.HiB hiB) {
        sU sUVar = this.adContext.sP;
        if (sUVar instanceof dx) {
            List<sU> listEjP = ((dx) sUVar).CBE().EjP();
            for (int i11 = 0; i11 < listEjP.size() && i11 < 3; i11++) {
                initSingleCardInThreeCardStyle(hiB, listEjP.get(i11), i11);
            }
        }
    }

    private void initOneSlotMultipleAdsLayoutForTwoAdVertical(com.bytedance.sdk.openadsdk.core.HiB.HiB hiB) {
        sU sUVar = this.adContext.sP;
        if (sUVar instanceof dx) {
            List<sU> listEjP = ((dx) sUVar).CBE().EjP();
            for (int i11 = 0; i11 < listEjP.size() && i11 < 2; i11++) {
                initSingleCardInTwoCardStyle(hiB, listEjP.get(i11), i11);
            }
        }
    }

    private void initOneSlotMultipleAdsLayoutLandscape(com.bytedance.sdk.openadsdk.core.HiB.HiB hiB, int i11) {
        sU sUVar = this.adContext.sP;
        if (sUVar instanceof dx) {
            List<sU> listEjP = ((dx) sUVar).CBE().EjP();
            for (int i12 = 0; i12 < listEjP.size() && i12 < i11 && i12 < 3; i12++) {
                initSingleCardInTwoCardStyleLandscape(hiB, listEjP.get(i12), i12, i11);
            }
        }
    }

    private void initSingleCardInThreeCardStyle(com.bytedance.sdk.openadsdk.core.HiB.HiB hiB, sU sUVar, int i11) {
        Context context = getContext();
        com.bytedance.sdk.openadsdk.core.HiB.HiB hiB2 = new com.bytedance.sdk.openadsdk.core.HiB.HiB(context);
        hiB2.setOrientation(1);
        hiB2.setGravity(1);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -2);
        layoutParams.setMargins(0, i11 > 0 ? FPG.sP(context, 12.0f) : 0, 0, 0);
        hiB2.setBackground(new Sj(context));
        hiB.addView(hiB2, layoutParams);
        com.bytedance.sdk.openadsdk.core.HiB.HiB hiB3 = new com.bytedance.sdk.openadsdk.core.HiB.HiB(context);
        hiB3.setOrientation(0);
        hiB3.setGravity(16);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-1, -2);
        layoutParams2.topMargin = FPG.sP(context, 20.0f);
        layoutParams2.leftMargin = FPG.sP(context, 17.0f);
        layoutParams2.rightMargin = FPG.sP(context, 30.0f);
        hiB2.addView(hiB3, layoutParams2);
        uvD uvd = new uvD(context);
        hiB3.addView(uvd, new FrameLayout.LayoutParams(FPG.sP(context, 70.0f), FPG.sP(context, 63.0f)));
        bindIconData(uvd, sUVar);
        com.bytedance.sdk.openadsdk.core.HiB.HiB hiB4 = new com.bytedance.sdk.openadsdk.core.HiB.HiB(context);
        hiB4.setOrientation(1);
        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-1, -2);
        layoutParams3.leftMargin = FPG.sP(context, 7.0f);
        hiB3.addView(hiB4, layoutParams3);
        com.bytedance.sdk.openadsdk.core.HiB.Dq dq2 = new com.bytedance.sdk.openadsdk.core.HiB.Dq(context);
        dq2.setSingleLine(true);
        TextUtils.TruncateAt truncateAt = TextUtils.TruncateAt.END;
        dq2.setEllipsize(truncateAt);
        dq2.setTextSize(18.0f);
        dq2.setTextColor(Color.parseColor("#161823"));
        dq2.setGravity(GravityCompat.START);
        dq2.setTypeface(null, 1);
        hiB4.addView(dq2, new FrameLayout.LayoutParams(-1, -2));
        bindTitleData(dq2, sUVar, sUVar.dwU());
        com.bytedance.sdk.openadsdk.core.HiB.Dq dq3 = new com.bytedance.sdk.openadsdk.core.HiB.Dq(context);
        dq3.setSingleLine(true);
        dq3.setEllipsize(truncateAt);
        dq3.setTextSize(16.0f);
        dq3.setTextColor(Color.parseColor("#80161823"));
        hiB4.addView(dq3, new FrameLayout.LayoutParams(-1, -2));
        bindDescData(dq3, sUVar);
        com.bytedance.sdk.openadsdk.core.HiB.HiB hiB5 = new com.bytedance.sdk.openadsdk.core.HiB.HiB(context);
        hiB5.setOrientation(0);
        hiB5.setGravity(16);
        hiB4.addView(hiB5, new FrameLayout.LayoutParams(-2, -2));
        com.bytedance.sdk.openadsdk.core.HiB.Dq dq4 = new com.bytedance.sdk.openadsdk.core.HiB.Dq(context);
        dq4.setTextSize(16.0f);
        dq4.setTextColor(Color.parseColor("#80161823"));
        hiB5.addView(dq4, new ViewGroup.LayoutParams(-2, -2));
        Zq zq2 = new Zq(context);
        LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams4.leftMargin = FPG.sP(context, 8.0f);
        hiB5.addView(zq2, layoutParams4);
        FPG.Sj(dq4, zq2, sUVar, 18);
        com.bytedance.sdk.openadsdk.core.HiB.Dq dq5 = new com.bytedance.sdk.openadsdk.core.HiB.Dq(context);
        dq5.setGravity(17);
        dq5.setId(520093707);
        dq5.setText(ib.Sj(context, "tt_video_download_apk"));
        dq5.setTextColor(-1);
        dq5.setTextSize(2, 16.0f);
        dq5.setBackground(com.bytedance.sdk.openadsdk.utils.TEQ.Sj(context, "tt_reward_full_video_backup_btn_bg"));
        FrameLayout.LayoutParams layoutParams5 = new FrameLayout.LayoutParams(-1, FPG.sP(context, 36.0f));
        layoutParams5.setMargins(FPG.sP(context, 20.0f), FPG.sP(context, 22.0f), FPG.sP(context, 20.0f), FPG.sP(context, 20.0f));
        hiB2.addView(dq5, layoutParams5);
        setDownloadButtonData(dq5, sUVar, i11);
    }

    private void initSingleCardInTwoCardStyle(com.bytedance.sdk.openadsdk.core.HiB.HiB hiB, sU sUVar, int i11) {
        Context context = getContext();
        com.bytedance.sdk.openadsdk.core.HiB.HiB hiB2 = new com.bytedance.sdk.openadsdk.core.HiB.HiB(context);
        hiB2.setOrientation(1);
        hiB2.setGravity(1);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -2);
        layoutParams.setMargins(0, i11 > 0 ? FPG.sP(context, 12.0f) : 0, 0, 0);
        hiB2.setBackground(new Sj(context));
        hiB.addView(hiB2, layoutParams);
        uvD uvd = new uvD(context);
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(FPG.sP(context, 70.0f), FPG.sP(context, 63.0f));
        layoutParams2.setMargins(0, FPG.sP(context, 24.0f), 0, FPG.sP(context, 12.0f));
        hiB2.addView(uvd, layoutParams2);
        bindIconData(uvd, sUVar);
        com.bytedance.sdk.openadsdk.core.HiB.Dq dq2 = new com.bytedance.sdk.openadsdk.core.HiB.Dq(context);
        dq2.setSingleLine(true);
        TextUtils.TruncateAt truncateAt = TextUtils.TruncateAt.END;
        dq2.setEllipsize(truncateAt);
        dq2.setTextSize(18.0f);
        dq2.setTextColor(Color.parseColor("#161823"));
        dq2.setGravity(17);
        dq2.setTypeface(null, 1);
        FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(-1, -2);
        layoutParams3.setMargins(FPG.sP(context, 56.0f), 0, FPG.sP(context, 56.0f), 0);
        hiB2.addView(dq2, layoutParams3);
        bindTitleData(dq2, sUVar, sUVar.dwU());
        com.bytedance.sdk.openadsdk.core.HiB.Dq dq3 = new com.bytedance.sdk.openadsdk.core.HiB.Dq(context);
        dq3.setSingleLine(true);
        dq3.setEllipsize(truncateAt);
        dq3.setTextSize(16.0f);
        dq3.setTextColor(Color.parseColor("#80161823"));
        FrameLayout.LayoutParams layoutParams4 = new FrameLayout.LayoutParams(-1, -2);
        layoutParams4.setMargins(FPG.sP(context, 56.0f), FPG.sP(context, 4.0f), FPG.sP(context, 56.0f), 0);
        hiB2.addView(dq3, layoutParams4);
        bindDescData(dq3, sUVar);
        com.bytedance.sdk.openadsdk.core.HiB.HiB hiB3 = new com.bytedance.sdk.openadsdk.core.HiB.HiB(context);
        hiB3.setOrientation(0);
        hiB3.setGravity(16);
        hiB2.addView(hiB3, new FrameLayout.LayoutParams(-2, -2));
        com.bytedance.sdk.openadsdk.core.HiB.Dq dq4 = new com.bytedance.sdk.openadsdk.core.HiB.Dq(context);
        dq4.setTextSize(16.0f);
        dq4.setTextColor(Color.parseColor("#80161823"));
        hiB3.addView(dq4, new ViewGroup.LayoutParams(-2, -2));
        Zq zq2 = new Zq(context);
        LinearLayout.LayoutParams layoutParams5 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams5.leftMargin = FPG.sP(context, 8.0f);
        hiB3.addView(zq2, layoutParams5);
        FPG.Sj(dq4, zq2, sUVar, 18);
        com.bytedance.sdk.openadsdk.core.HiB.Dq dq5 = new com.bytedance.sdk.openadsdk.core.HiB.Dq(context);
        dq5.setGravity(17);
        dq5.setId(520093707);
        dq5.setText(ib.Sj(context, "tt_video_download_apk"));
        dq5.setTextColor(-1);
        dq5.setTextSize(2, 16.0f);
        dq5.setBackground(com.bytedance.sdk.openadsdk.utils.TEQ.Sj(context, "tt_reward_full_video_backup_btn_bg"));
        FrameLayout.LayoutParams layoutParams6 = new FrameLayout.LayoutParams(-1, FPG.sP(context, 36.0f));
        layoutParams6.setMargins(FPG.sP(context, 20.0f), FPG.sP(context, 36.0f), FPG.sP(context, 20.0f), FPG.sP(context, 20.0f));
        hiB2.addView(dq5, layoutParams6);
        setDownloadButtonData(dq5, sUVar, i11);
    }

    private void initSingleCardInTwoCardStyleLandscape(com.bytedance.sdk.openadsdk.core.HiB.HiB hiB, sU sUVar, int i11, int i12) {
        Context context = getContext();
        com.bytedance.sdk.openadsdk.core.HiB.HiB hiB2 = new com.bytedance.sdk.openadsdk.core.HiB.HiB(context);
        hiB2.setOrientation(1);
        hiB2.setGravity(1);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(0, -2);
        layoutParams.weight = 1.0f;
        if (i11 > 0) {
            layoutParams.setMargins(FPG.sP(context, 12.0f), 0, 0, 0);
        }
        hiB2.setBackground(new Sj(context));
        hiB.addView(hiB2, layoutParams);
        com.bytedance.sdk.openadsdk.core.HiB.HiB hiB3 = new com.bytedance.sdk.openadsdk.core.HiB.HiB(context);
        hiB3.setOrientation(0);
        hiB3.setGravity(48);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-1, -2);
        layoutParams2.topMargin = FPG.sP(context, 20.0f);
        layoutParams2.leftMargin = FPG.sP(context, 17.0f);
        layoutParams2.rightMargin = FPG.sP(context, 30.0f);
        hiB2.addView(hiB3, layoutParams2);
        uvD uvd = new uvD(context);
        hiB3.addView(uvd, new FrameLayout.LayoutParams(FPG.sP(context, 44.0f), FPG.sP(context, 44.0f)));
        bindIconData(uvd, sUVar);
        com.bytedance.sdk.openadsdk.core.HiB.HiB hiB4 = new com.bytedance.sdk.openadsdk.core.HiB.HiB(context);
        hiB4.setOrientation(1);
        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-1, -2);
        layoutParams3.leftMargin = FPG.sP(context, 7.0f);
        hiB3.addView(hiB4, layoutParams3);
        com.bytedance.sdk.openadsdk.core.HiB.Dq dq2 = new com.bytedance.sdk.openadsdk.core.HiB.Dq(context);
        dq2.setSingleLine(true);
        TextUtils.TruncateAt truncateAt = TextUtils.TruncateAt.END;
        dq2.setEllipsize(truncateAt);
        dq2.setTextSize(18.0f);
        dq2.setTextColor(Color.parseColor("#161823"));
        dq2.setGravity(GravityCompat.START);
        dq2.setTypeface(null, 1);
        hiB4.addView(dq2, new FrameLayout.LayoutParams(-1, -2));
        bindTitleData(dq2, sUVar, sUVar.dwU());
        com.bytedance.sdk.openadsdk.core.HiB.HiB hiB5 = new com.bytedance.sdk.openadsdk.core.HiB.HiB(context);
        hiB5.setOrientation(0);
        hiB5.setGravity(16);
        hiB4.addView(hiB5, new FrameLayout.LayoutParams(-2, -2));
        com.bytedance.sdk.openadsdk.core.HiB.Dq dq3 = new com.bytedance.sdk.openadsdk.core.HiB.Dq(context);
        dq3.setTextSize(16.0f);
        dq3.setTextColor(Color.parseColor("#80161823"));
        hiB5.addView(dq3, new ViewGroup.LayoutParams(-2, -2));
        Zq zq2 = new Zq(context);
        LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams4.leftMargin = FPG.sP(context, 8.0f);
        hiB5.addView(zq2, layoutParams4);
        FPG.Sj(dq3, zq2, sUVar, 18);
        com.bytedance.sdk.openadsdk.core.HiB.Dq dq4 = new com.bytedance.sdk.openadsdk.core.HiB.Dq(context);
        if (i12 == 2) {
            dq4.setSingleLine(true);
        } else {
            dq4.setLines(2);
        }
        dq4.setEllipsize(truncateAt);
        dq4.setTextSize(16.0f);
        dq4.setTextColor(Color.parseColor("#80161823"));
        LinearLayout.LayoutParams layoutParams5 = new LinearLayout.LayoutParams(-1, -2);
        int i13 = layoutParams2.leftMargin;
        layoutParams5.rightMargin = i13;
        layoutParams5.leftMargin = i13;
        layoutParams5.topMargin = FPG.sP(context, 12.0f);
        hiB2.addView(dq4, layoutParams5);
        bindDescData(dq4, sUVar);
        com.bytedance.sdk.openadsdk.core.HiB.Dq dq5 = new com.bytedance.sdk.openadsdk.core.HiB.Dq(context);
        dq5.setGravity(17);
        dq5.setId(520093707);
        dq5.setText(ib.Sj(context, "tt_video_download_apk"));
        dq5.setTextColor(-1);
        dq5.setTextSize(2, 16.0f);
        dq5.setBackground(com.bytedance.sdk.openadsdk.utils.TEQ.Sj(context, "tt_reward_full_video_backup_btn_bg"));
        FrameLayout.LayoutParams layoutParams6 = new FrameLayout.LayoutParams(-1, FPG.sP(context, 36.0f));
        layoutParams6.setMargins(FPG.sP(context, 20.0f), FPG.sP(context, 22.0f), FPG.sP(context, 20.0f), FPG.sP(context, 20.0f));
        hiB2.addView(dq5, layoutParams6);
        setDownloadButtonData(dq5, sUVar, i11);
    }

    @SuppressLint({"ClickableViewAccessibility"})
    private void initViews() {
        com.bytedance.sdk.openadsdk.activity.vS vSVar;
        if (this.mInit) {
            return;
        }
        this.mInit = true;
        if (this.adContext.sP.tR() && (vSVar = this.adContext.HS) != null && vSVar.kF() && this.shownAdCount > 1) {
            initOneSlotMultipleAdsLayout();
            return;
        }
        sU sUVar = this.adContext.sP;
        if (sUVar.Ph()) {
            initViewsForVast();
        } else {
            initViewsDefault();
            initData(sUVar, this.tvDownload);
        }
    }

    private void initViewsDefault() {
        Context context = getContext();
        boolean z10 = this.adContext.sP.liH() == 1;
        setBackgroundColor(ViewCompat.MEASURED_STATE_MASK);
        com.bytedance.sdk.openadsdk.core.HiB.HiB hiB = new com.bytedance.sdk.openadsdk.core.HiB.HiB(context);
        hiB.setGravity(1);
        hiB.setOrientation(1);
        FrameLayout.LayoutParams layoutParams = z10 ? new FrameLayout.LayoutParams(-1, -2) : new FrameLayout.LayoutParams(FPG.sP(context, 327.0f), -2);
        layoutParams.gravity = 17;
        int iSP = FPG.sP(context, 24.0f);
        layoutParams.rightMargin = iSP;
        layoutParams.leftMargin = iSP;
        addView(hiB, layoutParams);
        uvD uvd = new uvD(context);
        this.ivIcon = uvd;
        uvd.setBackgroundColor(0);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(FPG.sP(context, 80.0f), FPG.sP(context, 80.0f));
        layoutParams2.bottomMargin = FPG.sP(context, 12.0f);
        hiB.addView(this.ivIcon, layoutParams2);
        com.bytedance.sdk.openadsdk.core.HiB.Dq dq2 = new com.bytedance.sdk.openadsdk.core.HiB.Dq(context);
        this.tvTitle = dq2;
        TextUtils.TruncateAt truncateAt = TextUtils.TruncateAt.END;
        dq2.setEllipsize(truncateAt);
        this.tvTitle.setGravity(17);
        this.tvTitle.setMaxLines(2);
        this.tvTitle.setMaxWidth(FPG.sP(context, 180.0f));
        this.tvTitle.setTextColor(-1);
        this.tvTitle.setTextSize(2, 24.0f);
        hiB.addView(this.tvTitle, new LinearLayout.LayoutParams(-1, -2));
        com.bytedance.sdk.openadsdk.core.HiB.Dq dq3 = new com.bytedance.sdk.openadsdk.core.HiB.Dq(context);
        this.tvDesc = dq3;
        dq3.setEllipsize(truncateAt);
        this.tvDesc.setGravity(17);
        this.tvDesc.setMaxLines(2);
        this.tvDesc.setTextColor(Color.parseColor("#BFFFFFFF"));
        this.tvDesc.setTextSize(2, 16.0f);
        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-1, -2);
        layoutParams3.topMargin = FPG.sP(context, 8.0f);
        hiB.addView(this.tvDesc, layoutParams3);
        this.rbScore = new Zq(context, true);
        LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(-2, FPG.sP(context, 16.0f));
        layoutParams4.topMargin = FPG.sP(context, 12.0f);
        this.rbScore.setVisibility(8);
        hiB.addView(this.rbScore, layoutParams4);
        com.bytedance.sdk.openadsdk.core.HiB.Dq dq4 = new com.bytedance.sdk.openadsdk.core.HiB.Dq(context);
        this.tvDownload = dq4;
        dq4.setId(520093707);
        this.tvDownload.setGravity(17);
        this.tvDownload.setText(ib.Sj(context, "tt_video_download_apk"));
        this.tvDownload.setTextColor(-1);
        this.tvDownload.setTextSize(2, 16.0f);
        this.tvDownload.setBackground(com.bytedance.sdk.openadsdk.utils.TEQ.Sj(context, "tt_reward_full_video_backup_btn_bg"));
        LinearLayout.LayoutParams layoutParams5 = new LinearLayout.LayoutParams(-1, FPG.sP(context, 44.0f));
        layoutParams5.topMargin = FPG.sP(context, 54.0f);
        hiB.addView(this.tvDownload, layoutParams5);
        this.adLogo = PAGLogoView.createPAGLogoViewByMaterial(context, this.adContext.sP);
        FrameLayout.LayoutParams layoutParams6 = new FrameLayout.LayoutParams(-2, FPG.sP(context, 14.0f));
        layoutParams6.gravity = MaterialCardView.CHECKED_ICON_GRAVITY_BOTTOM_START;
        layoutParams6.leftMargin = FPG.sP(context, 18.0f);
        if (z10) {
            layoutParams6.bottomMargin = FPG.sP(context, 61.0f);
        } else {
            layoutParams6.bottomMargin = FPG.sP(context, 24.0f);
        }
        addView(this.adLogo, layoutParams6);
    }

    private void initViewsForVast() {
        Context context = getContext();
        setBackgroundColor(ViewCompat.MEASURED_STATE_MASK);
        com.bytedance.sdk.openadsdk.core.HiB.EjP ejP = new com.bytedance.sdk.openadsdk.core.HiB.EjP(context);
        ejP.setId(com.bytedance.sdk.openadsdk.utils.Zq.Dq);
        ejP.setVisibility(8);
        addView(ejP, new FrameLayout.LayoutParams(-1, -1));
        View vSVar = new com.bytedance.sdk.component.uA.vS(context, true);
        vSVar.setVisibility(8);
        vSVar.setId(com.bytedance.sdk.openadsdk.utils.Zq.uA);
        addView(vSVar, new FrameLayout.LayoutParams(-1, -1));
    }

    private void setDownloadButtonData(com.bytedance.sdk.openadsdk.core.HiB.Dq dq2, sU sUVar, int i11) {
        com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj2 = this.adContext;
        com.bytedance.sdk.openadsdk.core.sP.HiB hiBSj = sj2.LqL.Sj(sj2, sUVar);
        com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj3 = this.adContext;
        hiBSj.Sj(com.bytedance.sdk.openadsdk.RiZ.Sj.Sj.Jcg.Sj(sj3.Fm, sUVar, sj3.HiB));
        if (i11 != -1) {
            HashMap map = new HashMap();
            int i12 = i11 + 1;
            map.put("ad_show_order", Integer.valueOf(i12));
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("ad_show_order", i12);
                map.put("pag_json_data", jSONObject.toString());
            } catch (Throwable unused) {
            }
            hiBSj.Sj(map);
        }
        dq2.setOnClickListener(hiBSj);
        dq2.setOnTouchListener(hiBSj);
        CharSequence charSequenceIr = sUVar.Ir();
        if (TextUtils.isEmpty(charSequenceIr)) {
            return;
        }
        dq2.setText(charSequenceIr);
    }

    public void init(com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj2) {
        this.adContext = sj2;
        if (sj2.sP.Ph()) {
            initViews();
        }
    }

    public void setShownAdCount(int i11) {
        this.shownAdCount = i11;
    }

    @Override // android.view.View
    public void setVisibility(int i11) {
        super.setVisibility(i11);
        if (i11 == 0) {
            initViews();
        }
    }
}
