package com.bytedance.sdk.openadsdk.common;

import android.R;
import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.bytedance.sdk.component.utils.ib;
import com.bytedance.sdk.openadsdk.ApmHelper;
import com.bytedance.sdk.openadsdk.FilterWord;
import com.bytedance.sdk.openadsdk.core.model.sU;
import com.bytedance.sdk.openadsdk.utils.FPG;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes2.dex */
public class TzV {
    private ImageView Dq;
    private final RelativeLayout HiB;
    private final Context Jcg;
    Zq Sj;
    private com.bytedance.sdk.openadsdk.core.HiB.vS TEQ;

    /* JADX INFO: renamed from: aa, reason: collision with root package name */
    private boolean f20985aa;
    TTAdDislikeToast sP;
    private TextView uA;
    private final sU vS;
    final AtomicBoolean TKC = new AtomicBoolean(false);
    final AtomicBoolean EjP = new AtomicBoolean(false);
    private final int Ym = FPG.sP(com.bytedance.sdk.openadsdk.core.dNu.Sj(), 44.0f);

    public TzV(Context context, RelativeLayout relativeLayout, sU sUVar) {
        this.Jcg = context;
        this.HiB = relativeLayout;
        this.vS = sUVar;
        HiB();
    }

    private void HiB() {
        this.Dq = (ImageView) this.HiB.findViewById(com.bytedance.sdk.openadsdk.utils.Zq.f21134kb);
        this.uA = (TextView) this.HiB.findViewById(com.bytedance.sdk.openadsdk.utils.Zq.Uc);
        ImageView imageView = (ImageView) this.HiB.findViewById(com.bytedance.sdk.openadsdk.utils.Zq.f21138xu);
        this.TEQ = (com.bytedance.sdk.openadsdk.core.HiB.vS) this.HiB.findViewById(com.bytedance.sdk.openadsdk.utils.Zq.gR);
        sU sUVar = this.vS;
        if (sUVar != null) {
            this.uA.setText(TextUtils.isEmpty(sUVar.xu()) ? ib.Sj(this.Jcg, "tt_web_title_default") : this.vS.xu());
        }
        imageView.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.common.TzV.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                TzV.this.EjP();
            }
        });
    }

    private void Jcg() {
        this.sP.show(TTAdDislikeToast.getDislikeTip());
    }

    private void vS() {
        try {
            if (this.Sj == null) {
                Zq zq2 = new Zq(this.Jcg, this.vS);
                this.Sj = zq2;
                zq2.setDislikeSource("landing_page");
                this.Sj.setCallback(new Zq.Sj() { // from class: com.bytedance.sdk.openadsdk.common.TzV.6
                    @Override // com.bytedance.sdk.openadsdk.common.Zq.Sj
                    public void Sj(View view) {
                        TzV.this.TKC.set(true);
                    }

                    @Override // com.bytedance.sdk.openadsdk.common.Zq.Sj
                    public void Sj(FilterWord filterWord) {
                        if (TzV.this.EjP.get() || filterWord == null || filterWord.hasSecondOptions()) {
                            return;
                        }
                        TzV.this.EjP.set(true);
                    }

                    @Override // com.bytedance.sdk.openadsdk.common.Zq.Sj
                    public void sP(View view) {
                        TzV.this.TKC.set(false);
                    }
                });
            }
            FrameLayout frameLayout = (FrameLayout) this.HiB.getRootView().findViewById(R.id.content);
            frameLayout.addView(this.Sj);
            if (this.sP == null) {
                TTAdDislikeToast tTAdDislikeToast = new TTAdDislikeToast(this.Jcg);
                this.sP = tTAdDislikeToast;
                frameLayout.addView(tTAdDislikeToast);
            }
        } catch (Throwable th2) {
            ApmHelper.reportCustomError("initDislike error", "TTTitleNewStyleManager", th2);
        }
    }

    protected void EjP() {
        if (this.EjP.get()) {
            Jcg();
            return;
        }
        if (this.Sj == null) {
            vS();
        }
        Zq zq2 = this.Sj;
        if (zq2 != null) {
            zq2.Sj();
        }
    }

    public void Sj() {
        try {
            final ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.HiB.getLayoutParams();
            if (this.f20985aa) {
                return;
            }
            int i11 = marginLayoutParams.topMargin;
            int i12 = this.Ym;
            if (i11 == (-i12)) {
                ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(-i12, 0);
                valueAnimatorOfInt.setDuration(300L);
                valueAnimatorOfInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.bytedance.sdk.openadsdk.common.TzV.2
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public void onAnimationUpdate(ValueAnimator valueAnimator) {
                        marginLayoutParams.topMargin = ((Integer) valueAnimator.getAnimatedValue()).intValue();
                        TzV.this.HiB.setLayoutParams(marginLayoutParams);
                    }
                });
                valueAnimatorOfInt.addListener(new Animator.AnimatorListener() { // from class: com.bytedance.sdk.openadsdk.common.TzV.3
                    @Override // android.animation.Animator.AnimatorListener
                    public void onAnimationCancel(Animator animator) {
                    }

                    @Override // android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        TzV.this.f20985aa = false;
                    }

                    @Override // android.animation.Animator.AnimatorListener
                    public void onAnimationRepeat(Animator animator) {
                    }

                    @Override // android.animation.Animator.AnimatorListener
                    public void onAnimationStart(Animator animator) {
                        TzV.this.f20985aa = true;
                    }
                });
                valueAnimatorOfInt.start();
            }
        } catch (Throwable unused) {
        }
    }

    public void Sj(int i11) {
        if (i11 == 100) {
            this.TEQ.setVisibility(8);
        } else {
            this.TEQ.setVisibility(0);
            this.TEQ.setProgress(i11);
        }
    }

    public ImageView TKC() {
        return this.Dq;
    }

    public void sP() {
        try {
            final ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.HiB.getLayoutParams();
            if (this.f20985aa || marginLayoutParams.topMargin != 0) {
                return;
            }
            ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(0, -this.Ym);
            valueAnimatorOfInt.setDuration(300L);
            valueAnimatorOfInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.bytedance.sdk.openadsdk.common.TzV.4
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    marginLayoutParams.topMargin = ((Integer) valueAnimator.getAnimatedValue()).intValue();
                    TzV.this.HiB.setLayoutParams(marginLayoutParams);
                }
            });
            valueAnimatorOfInt.addListener(new Animator.AnimatorListener() { // from class: com.bytedance.sdk.openadsdk.common.TzV.5
                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationCancel(Animator animator) {
                }

                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    TzV.this.f20985aa = false;
                }

                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationRepeat(Animator animator) {
                }

                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationStart(Animator animator) {
                    TzV.this.f20985aa = true;
                }
            });
            valueAnimatorOfInt.start();
        } catch (Throwable unused) {
        }
    }
}
