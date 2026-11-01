package com.bytedance.sdk.openadsdk.component.reward.top;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bytedance.sdk.component.utils.ib;
import com.bytedance.sdk.openadsdk.core.HiB.Dq;
import com.bytedance.sdk.openadsdk.core.HiB.EjP;
import com.bytedance.sdk.openadsdk.core.HiB.HiB;
import com.bytedance.sdk.openadsdk.core.dNu;
import com.bytedance.sdk.openadsdk.core.model.TzV;
import com.bytedance.sdk.openadsdk.core.model.sU;
import com.bytedance.sdk.openadsdk.core.model.uP;
import com.bytedance.sdk.openadsdk.core.settings.Fmk;
import com.bytedance.sdk.openadsdk.core.widget.vS;
import com.bytedance.sdk.openadsdk.utils.FPG;
import com.bytedance.sdk.openadsdk.utils.TEQ;
import com.bytedance.sdk.openadsdk.utils.Zq;
import com.google.android.material.card.MaterialCardView;

/* JADX INFO: loaded from: classes3.dex */
public class TopLayoutDislike2 extends HiB implements Sj<TopLayoutDislike2> {
    private boolean hasCutDown;
    private boolean hasShowClose;
    private boolean isVast;
    private EjP mCloseBtn;
    private View mImgDislike;
    private ImageView mImgSound;
    private boolean mIsSoundMute;
    private CharSequence mProgressStr;
    private ImageView mSkipIV;
    private TextView mTextViewCountDown;
    private sP mTopListener;
    private boolean shouldShowSkipTime;
    private int skipTime;
    private int videoDuration;

    public TopLayoutDislike2(@NonNull Context context) {
        this(context, null);
    }

    public TopLayoutDislike2(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public TopLayoutDislike2(@NonNull Context context, @Nullable AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        this.mProgressStr = "";
        setOrientation(0);
    }

    private ImageView getCommonRingBGImageView() {
        EjP ejP = new EjP(getContext());
        int iSP = FPG.sP(getContext(), 5.0f);
        ejP.setPadding(iSP, iSP, iSP, iSP);
        ejP.setScaleType(ImageView.ScaleType.CENTER);
        ejP.setBackground(com.bytedance.sdk.openadsdk.core.widget.EjP.Sj());
        return ejP;
    }

    private void initListener() {
        View view = this.mImgDislike;
        if (view != null) {
            view.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.component.reward.top.TopLayoutDislike2.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    if (TopLayoutDislike2.this.mTopListener != null) {
                        TopLayoutDislike2.this.mTopListener.sP(view2);
                    }
                }
            });
        }
        ImageView imageView = this.mImgSound;
        if (imageView != null) {
            imageView.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.component.reward.top.TopLayoutDislike2.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    Drawable drawableSj;
                    TopLayoutDislike2 topLayoutDislike2 = TopLayoutDislike2.this;
                    topLayoutDislike2.mIsSoundMute = !topLayoutDislike2.mIsSoundMute;
                    if (TopLayoutDislike2.this.mSkipIV != null) {
                        drawableSj = TopLayoutDislike2.this.mIsSoundMute ? ib.TKC(TopLayoutDislike2.this.getContext(), "tt_reward_full_mute") : ib.TKC(TopLayoutDislike2.this.getContext(), "tt_reward_full_unmute");
                    } else {
                        drawableSj = TopLayoutDislike2.this.mIsSoundMute ? TEQ.Sj(TopLayoutDislike2.this.getContext(), "tt_mute_wrapper") : TEQ.Sj(TopLayoutDislike2.this.getContext(), "tt_unmute_wrapper");
                    }
                    TopLayoutDislike2.this.mImgSound.setImageDrawable(drawableSj);
                    if (TopLayoutDislike2.this.mImgSound.getDrawable() != null) {
                        TopLayoutDislike2.this.mImgSound.getDrawable().setAutoMirrored(true);
                    }
                    if (TopLayoutDislike2.this.mTopListener != null) {
                        Object tag = TopLayoutDislike2.this.mImgSound.getTag(TopLayoutDislike2.this.mImgSound.getId());
                        TopLayoutDislike2.this.mTopListener.Sj(view2, tag instanceof String ? tag.toString() : "nativeClick");
                    }
                    TopLayoutDislike2.this.mImgSound.setTag(TopLayoutDislike2.this.mImgSound.getId(), null);
                }
            });
        }
        ImageView imageView2 = this.mSkipIV;
        if (imageView2 != null) {
            imageView2.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.component.reward.top.TopLayoutDislike2.3
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    if (TopLayoutDislike2.this.mTopListener != null) {
                        TopLayoutDislike2.this.mTopListener.Sj(view2);
                    }
                }
            });
        } else {
            TextView textView = this.mTextViewCountDown;
            if (textView != null) {
                textView.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.component.reward.top.TopLayoutDislike2.4
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view2) {
                        if (TopLayoutDislike2.this.mTopListener != null) {
                            TopLayoutDislike2.this.mTopListener.Sj(view2);
                        }
                    }
                });
            }
        }
        EjP ejP = this.mCloseBtn;
        if (ejP != null) {
            ejP.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.component.reward.top.TopLayoutDislike2.5
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    if (TopLayoutDislike2.this.mTopListener != null) {
                        TopLayoutDislike2.this.mTopListener.TKC(view2);
                    }
                }
            });
        }
    }

    private void initView() {
        int iSP = FPG.sP(getContext(), 16.0f);
        int iSP2 = FPG.sP(getContext(), 20.0f);
        int iSP3 = FPG.sP(getContext(), 28.0f);
        this.mImgSound = getCommonRingBGImageView();
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(iSP3, iSP3);
        layoutParams.leftMargin = iSP;
        layoutParams.topMargin = iSP2;
        this.mImgSound.setId(Zq.Jw);
        this.mImgSound.setLayoutParams(layoutParams);
        ImageView commonRingBGImageView = getCommonRingBGImageView();
        this.mImgDislike = commonRingBGImageView;
        commonRingBGImageView.setId(520093713);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(iSP3, iSP3);
        layoutParams2.topMargin = iSP2;
        layoutParams2.leftMargin = iSP;
        this.mImgDislike.setLayoutParams(layoutParams2);
        View view = new View(getContext());
        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(0, 0);
        layoutParams3.weight = 1.0f;
        view.setLayoutParams(layoutParams3);
        Dq dq2 = new Dq(getContext());
        this.mTextViewCountDown = dq2;
        dq2.setBackground(com.bytedance.sdk.openadsdk.core.widget.EjP.sP());
        LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(-2, FPG.sP(getContext(), 28.0f));
        layoutParams4.topMargin = FPG.sP(getContext(), 20.0f);
        int iSP4 = FPG.sP(getContext(), 16.0f);
        layoutParams2.rightMargin = iSP4;
        layoutParams4.rightMargin = iSP4;
        int iSP5 = FPG.sP(getContext(), 12.0f);
        FPG.sP(getContext(), 5.0f);
        this.mTextViewCountDown.setPadding(iSP5, 0, iSP5, 0);
        this.mTextViewCountDown.setLayoutParams(layoutParams4);
        this.mTextViewCountDown.setGravity(17);
        this.mTextViewCountDown.setTextColor(-1);
        this.mTextViewCountDown.setTextSize(14.0f);
        this.mTextViewCountDown.setVisibility(8);
        ImageView commonRingBGImageView2 = getCommonRingBGImageView();
        this.mSkipIV = commonRingBGImageView2;
        commonRingBGImageView2.setId(520093714);
        LinearLayout.LayoutParams layoutParams5 = new LinearLayout.LayoutParams(iSP3, iSP3);
        layoutParams5.topMargin = iSP2;
        layoutParams5.rightMargin = iSP;
        this.mSkipIV.setLayoutParams(layoutParams5);
        this.mSkipIV.setScaleType(ImageView.ScaleType.CENTER_CROP);
        EjP ejPSP = vS.sP(getContext());
        this.mCloseBtn = ejPSP;
        ejPSP.setId(520093708);
        FrameLayout.LayoutParams layoutParams6 = new FrameLayout.LayoutParams(-2, -2);
        layoutParams6.gravity = MaterialCardView.CHECKED_ICON_GRAVITY_TOP_END;
        layoutParams6.topMargin = FPG.sP(getContext(), 20.0f);
        layoutParams6.rightMargin = FPG.sP(getContext(), 24.0f);
        this.mCloseBtn.setLayoutParams(layoutParams6);
        this.mCloseBtn.setContentDescription(ib.Sj(getContext(), "tt_ad_close_text"));
        this.mCloseBtn.setVisibility(8);
        addView(this.mImgSound);
        addView(this.mImgDislike);
        addView(view);
        addView(this.mTextViewCountDown);
        addView(this.mSkipIV);
        addView(this.mCloseBtn);
    }

    private void updateTime(boolean z10) {
        if (this.hasShowClose) {
            return;
        }
        if (this.shouldShowSkipTime) {
            this.mSkipIV.setVisibility(8);
            this.mTextViewCountDown.setVisibility(0);
        } else if (z10) {
            this.mTextViewCountDown.setVisibility(0);
            this.mSkipIV.setVisibility(8);
        } else {
            this.mTextViewCountDown.setVisibility(8);
            this.mSkipIV.setVisibility(0);
        }
    }

    public void clickDislike() {
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.top.Sj
    public void clickSkip() {
        ImageView imageView = this.mSkipIV;
        if (imageView != null) {
            imageView.performClick();
        }
        TextView textView = this.mTextViewCountDown;
        if (textView != null) {
            textView.performClick();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.top.Sj
    public void clickSound(String str) {
        ImageView imageView = this.mImgSound;
        if (imageView != null) {
            imageView.setTag(imageView.getId(), str);
            this.mImgSound.performClick();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.top.Sj
    public View getCloseButton() {
        return this.mCloseBtn;
    }

    public TopLayoutDislike2 load(@NonNull sU sUVar) {
        initView();
        this.mImgDislike.setVisibility(0);
        ((ImageView) this.mImgDislike).setImageResource(ib.EjP(dNu.Sj(), "tt_reward_full_feedback"));
        if (!Fmk.gq().sef(String.valueOf(sUVar.If())) || sUVar.dx() == 5 || sUVar.dx() == 6) {
            this.mSkipIV.setImageResource(ib.EjP(dNu.Sj(), "tt_close_btn"));
        } else {
            this.mSkipIV.setImageResource(ib.EjP(dNu.Sj(), "tt_skip_btn"));
        }
        if (this.mSkipIV.getDrawable() != null) {
            this.mSkipIV.getDrawable().setAutoMirrored(true);
        }
        this.mSkipIV.setVisibility(8);
        this.videoDuration = sUVar.UHs() == null ? 0 : ((int) sUVar.UHs().K()) * sUVar.UHs().N();
        if (TzV.EjP(sUVar) && sUVar.Fmk() != null) {
            this.videoDuration = (int) sUVar.Fmk().sP();
        } else if (TzV.HiB(sUVar) && sUVar.Fmk() != null) {
            this.videoDuration = (int) sUVar.Fmk().EjP();
        }
        if (this.videoDuration <= 0) {
            this.videoDuration = 10;
        }
        if (sUVar.DKa() != 8 || sUVar.xD() == null) {
            if (sUVar.sP() >= 0) {
                this.skipTime = sUVar.sP();
            } else {
                this.skipTime = dNu.EjP().TEQ(sUVar.xD().getCodeId());
            }
        } else if (sUVar.Sj() >= 0) {
            this.skipTime = sUVar.Sj();
        } else {
            this.skipTime = dNu.EjP().RiZ(sUVar.xD().getCodeId());
        }
        if (uP.TKC(sUVar)) {
            this.skipTime = dNu.EjP().Sj(String.valueOf(sUVar.If()), sUVar.TT());
            this.videoDuration = sUVar.oWa();
        }
        int i11 = this.skipTime;
        this.shouldShowSkipTime = i11 == -1 || i11 >= this.videoDuration;
        if (sUVar.Ph()) {
            this.mImgDislike.setVisibility(8);
            this.isVast = true;
        }
        this.mTextViewCountDown.setVisibility(4);
        this.mTextViewCountDown.setText("");
        this.mTextViewCountDown.setEnabled(false);
        this.mTextViewCountDown.setClickable(false);
        initListener();
        return this;
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.top.Sj
    public void setListener(sP sPVar) {
        this.mTopListener = sPVar;
    }

    public void setShouldShowSkipTime(boolean z10) {
        this.shouldShowSkipTime = z10;
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.top.Sj
    public void setShowDislike(boolean z10) {
        View view = this.mImgDislike;
        if (view == null || this.isVast) {
            return;
        }
        view.setVisibility(z10 ? 0 : 8);
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.top.Sj
    public void setShowSkip(boolean z10) {
        TextView textView = this.mTextViewCountDown;
        if (textView == null) {
            return;
        }
        if (!z10) {
            textView.setText("");
        }
        if (this.mSkipIV.getVisibility() == 4) {
            return;
        }
        this.hasShowClose = !z10;
        this.mSkipIV.setVisibility((z10 && this.hasCutDown) ? 0 : 8);
        this.mTextViewCountDown.setVisibility(z10 & (TextUtils.isEmpty(this.mTextViewCountDown.getText()) ^ true) ? 0 : 8);
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.top.Sj
    public void setShowSound(boolean z10) {
        ImageView imageView = this.mImgSound;
        if (imageView != null) {
            imageView.setVisibility(z10 ? 0 : 8);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.top.Sj
    public void setSkipEnable(boolean z10) {
        ImageView imageView = this.mSkipIV;
        if (imageView != null) {
            imageView.setEnabled(z10);
            this.mSkipIV.setClickable(z10);
            return;
        }
        TextView textView = this.mTextViewCountDown;
        if (textView != null) {
            textView.setEnabled(z10);
            this.mTextViewCountDown.setClickable(z10);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.top.Sj
    public void setSkipInvisiable() {
        this.mTextViewCountDown.setWidth(20);
        this.mTextViewCountDown.setVisibility(4);
        this.mSkipIV.setVisibility(4);
        this.hasShowClose = true;
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.top.Sj
    public void setSkipText(CharSequence charSequence) {
        if (TextUtils.isEmpty(charSequence)) {
            return;
        }
        this.mTextViewCountDown.setText(charSequence);
        if (this.mTextViewCountDown.getVisibility() != 0) {
            this.mTextViewCountDown.setVisibility(0);
        }
        ImageView imageView = this.mSkipIV;
        if (imageView != null) {
            imageView.setVisibility(8);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.top.Sj
    public void setSoundMute(boolean z10) {
        Drawable drawableSj;
        this.mIsSoundMute = z10;
        if (this.mSkipIV != null) {
            drawableSj = z10 ? ib.TKC(getContext(), "tt_reward_full_mute") : ib.TKC(getContext(), "tt_reward_full_unmute");
        } else {
            drawableSj = z10 ? TEQ.Sj(getContext(), "tt_mute_wrapper") : TEQ.Sj(getContext(), "tt_unmute_wrapper");
        }
        this.mImgSound.setImageDrawable(drawableSj);
        if (this.mImgSound.getDrawable() != null) {
            this.mImgSound.getDrawable().setAutoMirrored(true);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.top.Sj
    @SuppressLint({"SetTextI18n"})
    public void setTime(CharSequence charSequence, CharSequence charSequence2) {
        if (!TextUtils.isEmpty(charSequence)) {
            this.mProgressStr = charSequence;
        }
        if (this.mSkipIV == null) {
            return;
        }
        this.hasCutDown = true;
        if (this.shouldShowSkipTime) {
            this.mTextViewCountDown.setText(((Object) this.mProgressStr) + "s");
            updateTime(false);
            return;
        }
        String str = (String) this.mProgressStr;
        try {
            int i11 = this.skipTime;
            int i12 = i11 == 0 ? Integer.parseInt(str) : i11 - (this.videoDuration - Integer.parseInt(str));
            if (i12 <= 0) {
                this.mTextViewCountDown.setText(((Object) this.mProgressStr) + "s");
                updateTime(false);
                return;
            }
            if (this.skipTime == 0) {
                updateTime(false);
                return;
            }
            this.mTextViewCountDown.setText(i12 + "s");
            updateTime(true);
        } catch (Exception unused) {
        }
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.top.Sj
    public void showCloseButton() {
        setSkipInvisiable();
        this.mSkipIV.setVisibility(8);
        this.mCloseBtn.setVisibility(0);
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.top.Sj
    public void showCountDownText() {
        this.mTextViewCountDown.setVisibility(0);
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.top.Sj
    public void showSkipButton() {
        ImageView imageView = this.mSkipIV;
        if (imageView != null) {
            imageView.setVisibility(0);
        }
        this.mTextViewCountDown.setVisibility(8);
    }
}
