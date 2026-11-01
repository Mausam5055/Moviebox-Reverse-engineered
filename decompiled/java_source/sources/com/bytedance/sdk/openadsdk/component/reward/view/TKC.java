package com.bytedance.sdk.openadsdk.component.reward.view;

import android.animation.Keyframe;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.view.ViewCompat;
import com.bytedance.sdk.openadsdk.core.model.sU;
import com.bytedance.sdk.openadsdk.core.widget.Zq;
import com.bytedance.sdk.openadsdk.core.widget.uvD;
import com.bytedance.sdk.openadsdk.utils.FPG;
import com.bytedance.sdk.openadsdk.utils.Mts;
import com.hisavana.common.tracking.TrackingKey;
import java.lang.ref.WeakReference;
import java.util.Locale;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public class TKC extends com.bytedance.sdk.openadsdk.core.HiB.HiB {
    private TextView EjP;
    private boolean HiB;
    private Zq Sj;
    private uvD TKC;
    private TextView sP;
    private com.bytedance.sdk.openadsdk.component.reward.Sj.Sj vS;

    private static class Sj implements com.bytedance.sdk.component.HiB.uvD<Bitmap> {
        private final WeakReference<ImageView> EjP;
        private final sU Sj;
        private final String TKC;
        private final String sP;

        public Sj(ImageView imageView, sU sUVar, String str, String str2) {
            this.EjP = new WeakReference<>(imageView);
            this.Sj = sUVar;
            this.sP = str;
            this.TKC = str2;
        }

        private void Sj(final int i11, final String str, final String str2) {
            com.bytedance.sdk.openadsdk.EjP.TKC.Sj(new com.bytedance.sdk.component.Dq.Dq("load_vast_icon_fail") { // from class: com.bytedance.sdk.openadsdk.component.reward.view.TKC.Sj.1
                @Override // java.lang.Runnable
                public void run() {
                    JSONObject jSONObject = new JSONObject();
                    try {
                        jSONObject.put("error_code", i11);
                        jSONObject.put(TrackingKey.DESCRIPTION, i11 + ":" + str);
                        jSONObject.put("url", str2);
                    } catch (Throwable unused) {
                    }
                    com.bytedance.sdk.openadsdk.EjP.TKC.sP(Sj.this.Sj, Sj.this.TKC, "load_vast_icon_fail", jSONObject);
                }
            });
        }

        @Override // com.bytedance.sdk.component.HiB.uvD
        public void Sj(int i11, String str, @Nullable Throwable th2) {
            Sj(i11, str, this.sP);
        }

        @Override // com.bytedance.sdk.component.HiB.uvD
        public void Sj(com.bytedance.sdk.component.HiB.Ym<Bitmap> ym2) {
            if (ym2 == null || ym2.sP() == null) {
                return;
            }
            ImageView imageView = this.EjP.get();
            if (imageView != null) {
                imageView.setImageBitmap(ym2.sP());
            }
            com.bytedance.sdk.openadsdk.EjP.TKC.sP(this.Sj, this.TKC, "load_vast_icon_success", (JSONObject) null);
        }
    }

    public TKC(@NonNull Context context) {
        super(context);
        setOrientation(1);
        setVisibility(8);
        setBackgroundColor(-1);
    }

    private void EjP() {
        setOrientation(0);
        setGravity(16);
        Context context = getContext();
        setPadding(FPG.sP(context, 16.0f), FPG.sP(context, 12.0f), FPG.sP(context, 16.0f), FPG.sP(context, 12.0f));
        uvD uvd = new uvD(context);
        this.TKC = uvd;
        uvd.setBackgroundColor(0);
        this.TKC.setId(com.bytedance.sdk.openadsdk.utils.Zq.sP);
        addView(this.TKC, new LinearLayout.LayoutParams(FPG.sP(context, 48.0f), FPG.sP(context, 48.0f)));
        com.bytedance.sdk.openadsdk.core.HiB.HiB hiB = new com.bytedance.sdk.openadsdk.core.HiB.HiB(context);
        hiB.setOrientation(1);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(0, -2);
        layoutParams.leftMargin = FPG.sP(context, 12.0f);
        layoutParams.weight = 1.0f;
        addView(hiB, layoutParams);
        com.bytedance.sdk.openadsdk.core.HiB.Dq dq2 = new com.bytedance.sdk.openadsdk.core.HiB.Dq(context);
        this.EjP = dq2;
        TextUtils.TruncateAt truncateAt = TextUtils.TruncateAt.END;
        dq2.setEllipsize(truncateAt);
        this.EjP.setGravity(16);
        this.EjP.setSingleLine(true);
        this.EjP.setTextSize(2, 17.0f);
        this.EjP.setId(com.bytedance.sdk.openadsdk.utils.Zq.TKC);
        this.EjP.setTextColor(ViewCompat.MEASURED_STATE_MASK);
        hiB.addView(this.EjP, new LinearLayout.LayoutParams(-1, -2));
        Zq zq2 = new Zq(context);
        this.Sj = zq2;
        zq2.setId(com.bytedance.sdk.openadsdk.utils.Zq.HiB);
        hiB.addView(this.Sj, new LinearLayout.LayoutParams(-2, FPG.sP(context, 14.0f)));
        com.bytedance.sdk.openadsdk.core.HiB.Dq dq3 = new com.bytedance.sdk.openadsdk.core.HiB.Dq(context);
        this.sP = dq3;
        dq3.setGravity(17);
        this.sP.setEllipsize(truncateAt);
        this.sP.setSingleLine(true);
        this.sP.setTextColor(-1);
        this.sP.setTextSize(2, 16.0f);
        this.sP.setId(520093705);
        this.sP.setBackground(Sj(context));
        this.sP.setText(this.vS.sP.Ir());
        addView(this.sP, new LinearLayout.LayoutParams(FPG.sP(context, 164.0f), FPG.sP(context, 36.0f)));
    }

    private void HiB() {
        Context context = getContext();
        setPadding(FPG.sP(context, 16.0f), FPG.sP(context, 16.0f), FPG.sP(context, 16.0f), FPG.sP(context, 24.0f));
        com.bytedance.sdk.openadsdk.core.HiB.HiB hiB = new com.bytedance.sdk.openadsdk.core.HiB.HiB(context);
        hiB.setOrientation(0);
        hiB.setGravity(16);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
        layoutParams.bottomMargin = FPG.sP(context, 12.0f);
        addView(hiB, layoutParams);
        uvD uvd = new uvD(context);
        this.TKC = uvd;
        uvd.setBackgroundColor(0);
        this.TKC.setId(com.bytedance.sdk.openadsdk.utils.Zq.sP);
        hiB.addView(this.TKC, new LinearLayout.LayoutParams(FPG.sP(context, 48.0f), FPG.sP(context, 48.0f)));
        com.bytedance.sdk.openadsdk.core.HiB.HiB hiB2 = new com.bytedance.sdk.openadsdk.core.HiB.HiB(context);
        hiB2.setOrientation(1);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-1, -2);
        layoutParams2.leftMargin = FPG.sP(context, 12.0f);
        hiB.addView(hiB2, layoutParams2);
        com.bytedance.sdk.openadsdk.core.HiB.Dq dq2 = new com.bytedance.sdk.openadsdk.core.HiB.Dq(context);
        this.EjP = dq2;
        TextUtils.TruncateAt truncateAt = TextUtils.TruncateAt.END;
        dq2.setEllipsize(truncateAt);
        this.EjP.setGravity(16);
        this.EjP.setSingleLine(true);
        this.EjP.setTextSize(2, 17.0f);
        this.EjP.setId(com.bytedance.sdk.openadsdk.utils.Zq.TKC);
        this.EjP.setTextColor(ViewCompat.MEASURED_STATE_MASK);
        hiB2.addView(this.EjP, new LinearLayout.LayoutParams(-1, -2));
        Zq zq2 = new Zq(context);
        this.Sj = zq2;
        zq2.setId(com.bytedance.sdk.openadsdk.utils.Zq.HiB);
        hiB2.addView(this.Sj, new LinearLayout.LayoutParams(-2, FPG.sP(context, 14.0f)));
        com.bytedance.sdk.openadsdk.core.HiB.Dq dq3 = new com.bytedance.sdk.openadsdk.core.HiB.Dq(context);
        this.sP = dq3;
        dq3.setGravity(17);
        this.sP.setEllipsize(truncateAt);
        this.sP.setSingleLine(true);
        this.sP.setTextColor(-1);
        this.sP.setTextSize(2, 16.0f);
        this.sP.setId(520093705);
        this.sP.setBackground(Sj(context));
        this.sP.setText(this.vS.sP.Ir());
        addView(this.sP, new LinearLayout.LayoutParams(-1, FPG.sP(context, 36.0f)));
    }

    private static Drawable Sj(Context context) {
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(Color.parseColor("#1A73E8"));
        gradientDrawable.setCornerRadius(FPG.sP(context, 18.0f));
        return gradientDrawable;
    }

    private void TKC() {
        this.HiB = true;
        if (this.vS.sdp == 1) {
            HiB();
        } else {
            EjP();
        }
        if (this.sP == null) {
            this.sP = (TextView) this.vS.xD.findViewById(520093705);
        }
        sU sUVar = this.vS.sP;
        TextView textView = this.sP;
        if (textView != null) {
            textView.addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: com.bytedance.sdk.openadsdk.component.reward.view.TKC.1
                @Override // android.view.View.OnLayoutChangeListener
                public void onLayoutChange(View view, int i11, int i12, int i13, int i14, int i15, int i16, int i17, int i18) {
                    int width = ((ViewGroup) TKC.this.sP.getParent()).getWidth();
                    if (width > 0) {
                        TKC.this.sP.setMaxWidth((int) (width * 0.45f));
                    }
                }
            });
            if (!sUVar.Ph()) {
                this.sP.setText(sUVar.FPG() == 3 ? getButtonTextForNewStyleBar() : sUVar.Ir());
            } else if (sUVar.GMp() != null && TextUtils.isEmpty(sUVar.GMp().vS())) {
                FPG.Sj((View) this.sP, 8);
            }
        }
        if (this.TKC != null && sUVar.EZ() != null && !TextUtils.isEmpty(sUVar.EZ().Sj())) {
            String strSj = sUVar.EZ().Sj();
            if (sUVar.Ph()) {
                com.bytedance.sdk.openadsdk.uA.EjP.Sj(sUVar.EZ()).TKC(2).Sj(new com.bytedance.sdk.openadsdk.uA.sP(sUVar, sUVar.EZ().Sj(), new Sj(this.TKC, sUVar, strSj, this.vS.HiB)));
                if (sUVar.GMp() != null && sUVar.GMp().sP() != null) {
                    sUVar.GMp().sP().sP(0L);
                }
            } else {
                com.bytedance.sdk.openadsdk.TzV.sP.Sj().Sj(sUVar.EZ(), this.TKC, sUVar);
            }
        }
        TextView textView2 = this.EjP;
        if (textView2 != null) {
            textView2.setText(sUVar.xu());
        }
        Zq zq2 = this.Sj;
        if (zq2 != null) {
            FPG.Sj((TextView) null, zq2, sUVar);
        }
        if (this.vS.sdp == 2 && sUVar.FPG() == 1) {
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.sP.getLayoutParams();
            layoutParams.height = FPG.sP(this.vS.Ei, 55.0f);
            layoutParams.topMargin = FPG.sP(this.vS.Ei, 20.0f);
            this.sP.setLayoutParams(layoutParams);
            FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) getLayoutParams();
            layoutParams2.bottomMargin = FPG.sP(this.vS.Ei, 12.0f);
            setLayoutParams(layoutParams2);
        }
        sP();
    }

    private String getCnOrEnBtnText() {
        return this.vS.sP.sdp() != 4 ? "View" : "Install";
    }

    public void Sj() {
        Keyframe keyframeOfFloat = Keyframe.ofFloat(0.0f, 0.0f);
        Keyframe keyframeOfFloat2 = Keyframe.ofFloat(0.65f, 1.0f);
        Keyframe keyframeOfFloat3 = Keyframe.ofFloat(0.765f, 0.9f);
        Keyframe keyframeOfFloat4 = Keyframe.ofFloat(0.88f, 1.0f);
        Keyframe keyframeOfFloat5 = Keyframe.ofFloat(0.95f, 0.95f);
        Keyframe keyframeOfFloat6 = Keyframe.ofFloat(1.0f, 1.0f);
        ObjectAnimator objectAnimatorOfPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(this, PropertyValuesHolder.ofKeyframe("scaleX", keyframeOfFloat, keyframeOfFloat2, keyframeOfFloat3, keyframeOfFloat4, keyframeOfFloat5, keyframeOfFloat6), PropertyValuesHolder.ofKeyframe("scaleY", keyframeOfFloat, keyframeOfFloat2, keyframeOfFloat3, keyframeOfFloat4, keyframeOfFloat5, keyframeOfFloat6));
        objectAnimatorOfPropertyValuesHolder.setDuration(1000L);
        objectAnimatorOfPropertyValuesHolder.start();
    }

    public void Sj(com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj2) {
        this.vS = sj2;
        if (sj2.sP.FPG() == 1) {
            TKC();
        }
    }

    protected String getButtonTextForNewStyleBar() {
        boolean zEquals;
        String strIr;
        String strJcg = Mts.Jcg(this.vS.Ei);
        if (strJcg == null) {
            strJcg = "";
        }
        try {
            zEquals = strJcg.equals(Locale.ENGLISH.getLanguage());
        } catch (Throwable unused) {
            zEquals = false;
        }
        if (TextUtils.isEmpty(this.vS.sP.Ir())) {
            strIr = this.vS.sP.sdp() != 4 ? "View" : "Install";
        } else {
            strIr = this.vS.sP.Ir();
            if (strIr == null || !Mts.vS(strIr) || strIr.length() <= 2) {
                if (strIr != null && !Mts.vS(strIr) && strIr.length() > 7 && zEquals) {
                    strIr = getCnOrEnBtnText();
                }
            } else if (zEquals) {
                strIr = getCnOrEnBtnText();
            }
        }
        if (zEquals && !Mts.vS(strIr)) {
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.sP.getLayoutParams();
            layoutParams.bottomMargin = FPG.sP(this.vS.Ei, 4.0f);
            this.sP.setLayoutParams(layoutParams);
        }
        return strIr;
    }

    @SuppressLint({"ClickableViewAccessibility"})
    public void sP() {
        com.bytedance.sdk.openadsdk.core.sP.HiB HiB = this.vS.LqL.HiB();
        final com.bytedance.sdk.openadsdk.core.sP.sP sPVarEjP = this.vS.LqL.EjP();
        final sU sUVar = this.vS.sP;
        if (sUVar.Wjd() == null) {
            return;
        }
        if (sUVar.FPG() != 5 && this.sP != null) {
            if (sUVar.Wjd().HiB) {
                this.sP.setOnClickListener(HiB);
                this.sP.setOnTouchListener(HiB);
            } else {
                this.sP.setOnClickListener(sPVarEjP);
            }
        }
        if (sUVar.FPG() == 1) {
            if (!sUVar.Wjd().Sj) {
                FPG.Sj((View) this, (View.OnClickListener) sPVarEjP, "TTBaseVideoActivity#mRlDownloadBar");
                this.EjP.setOnClickListener(sPVarEjP);
                this.Sj.setOnClickListener(sPVarEjP);
                this.TKC.setOnClickListener(sPVarEjP);
                return;
            }
            FPG.Sj((View) this, (View.OnClickListener) HiB, "TTBaseVideoActivity#mRlDownloadBar");
            FPG.Sj((View) this, (View.OnTouchListener) HiB, "TTBaseVideoActivity#mRlDownloadBar");
            this.EjP.setOnClickListener(HiB);
            this.EjP.setOnTouchListener(HiB);
            this.Sj.setOnClickListener(HiB);
            this.Sj.setOnTouchListener(HiB);
            this.TKC.setOnClickListener(HiB);
            this.TKC.setOnTouchListener(HiB);
            return;
        }
        if (sUVar.FPG() != 5) {
            if (!sUVar.Wjd().TKC) {
                FPG.Sj((View) this, (View.OnClickListener) sPVarEjP, "TTBaseVideoActivity#mRlDownloadBar");
                return;
            } else {
                FPG.Sj((View) this, (View.OnClickListener) HiB, "TTBaseVideoActivity#mRlDownloadBar");
                FPG.Sj((View) this, (View.OnTouchListener) HiB, "TTBaseVideoActivity#mRlDownloadBar");
                return;
            }
        }
        String str = "VAST_ICON";
        if (!sUVar.Wjd().HiB) {
            View.OnClickListener onClickListener = new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.component.reward.view.TKC.4
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    View.OnClickListener onClickListener2 = sPVarEjP;
                    if (onClickListener2 != null) {
                        onClickListener2.onClick(view);
                    }
                    if (view == null || !"VAST_ICON".equals(view.getTag(570425345))) {
                        if (sUVar.GMp() != null) {
                            sUVar.GMp().Sj().Jcg(TKC.this.vS.f20992ib.Jcg());
                        }
                    } else {
                        if (sUVar.GMp() == null || sUVar.GMp().sP() == null) {
                            return;
                        }
                        sUVar.GMp().sP().Sj(TKC.this.vS.f20992ib.Jcg());
                    }
                }
            };
            TextView textView = this.sP;
            if (textView != null) {
                textView.setOnClickListener(onClickListener);
            }
            TextView textView2 = this.EjP;
            if (textView2 != null && !TextUtils.isEmpty(textView2.getText())) {
                this.EjP.setOnClickListener(onClickListener);
            }
            uvD uvd = this.TKC;
            if (uvd != null) {
                uvd.setTag(570425345, "VAST_ICON");
                this.TKC.setOnClickListener(sPVarEjP);
                return;
            }
            return;
        }
        com.bytedance.sdk.openadsdk.core.sP.Jcg jcg = new com.bytedance.sdk.openadsdk.core.sP.Jcg("VAST_ACTION_BUTTON", sUVar.GMp(), HiB) { // from class: com.bytedance.sdk.openadsdk.component.reward.view.TKC.2
        };
        com.bytedance.sdk.openadsdk.core.sP.Jcg jcg2 = new com.bytedance.sdk.openadsdk.core.sP.Jcg(str, sUVar.GMp(), HiB) { // from class: com.bytedance.sdk.openadsdk.component.reward.view.TKC.3
        };
        TextView textView3 = this.sP;
        if (textView3 != null) {
            textView3.setOnClickListener(jcg);
            this.sP.setOnTouchListener(jcg);
        }
        uvD uvd2 = this.TKC;
        if (uvd2 != null) {
            uvd2.setOnClickListener(jcg2);
            this.TKC.setOnTouchListener(jcg2);
        }
        TextView textView4 = this.EjP;
        if (textView4 == null || TextUtils.isEmpty(textView4.getText())) {
            return;
        }
        this.EjP.setOnClickListener(jcg);
        this.EjP.setOnTouchListener(jcg);
    }

    @Override // android.view.View
    public void setVisibility(int i11) {
        super.setVisibility(i11);
        if (i11 != 0 || this.HiB) {
            return;
        }
        TKC();
    }
}
