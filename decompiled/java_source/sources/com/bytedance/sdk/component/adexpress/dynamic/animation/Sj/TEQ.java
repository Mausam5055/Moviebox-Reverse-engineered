package com.bytedance.sdk.component.adexpress.dynamic.animation.Sj;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.cloud.tmc.integration.constants.IntegrationConstants;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class TEQ extends EjP {
    private Sj EjP;
    private float HiB;
    private float vS;

    private class Sj {
        private View sP;

        public Sj(View view) {
            this.sP = view;
        }

        public void Sj(int i11) {
            if (!IntegrationConstants.TAB_BAR_POSITION_TOP.equals(TEQ.this.sP.Sj())) {
                ViewGroup.LayoutParams layoutParams = this.sP.getLayoutParams();
                layoutParams.height = i11;
                this.sP.setLayoutParams(layoutParams);
                this.sP.requestLayout();
                return;
            }
            if (TEQ.this.TKC instanceof ViewGroup) {
                for (int i12 = 0; i12 < ((ViewGroup) TEQ.this.TKC).getChildCount(); i12++) {
                    ((ViewGroup) TEQ.this.TKC).getChildAt(i12).setTranslationY(i11 - TEQ.this.HiB);
                }
            }
            TEQ teq = TEQ.this;
            teq.TKC.setTranslationY(teq.HiB - i11);
        }
    }

    public TEQ(View view, com.bytedance.sdk.component.adexpress.dynamic.EjP.Sj sj2) {
        super(view, sj2);
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.animation.Sj.EjP
    List<ObjectAnimator> Sj() {
        int i11;
        String str;
        View view = this.TKC;
        if ((view instanceof ImageView) && (view.getParent() instanceof com.bytedance.sdk.component.adexpress.dynamic.dynamicview.HiB)) {
            this.TKC = (View) this.TKC.getParent();
        }
        this.TKC.setAlpha(0.0f);
        ObjectAnimator duration = ObjectAnimator.ofFloat(this.TKC, "alpha", 0.0f, 1.0f).setDuration((int) (this.sP.TEQ() * 1000.0d));
        this.EjP = new Sj(this.TKC);
        final int i12 = this.TKC.getLayoutParams().height;
        this.HiB = i12;
        this.vS = this.TKC.getLayoutParams().width;
        if (TtmlNode.LEFT.equals(this.sP.Sj()) || TtmlNode.RIGHT.equals(this.sP.Sj())) {
            i11 = (int) this.vS;
            str = "width";
        } else {
            str = "height";
            i11 = i12;
        }
        ObjectAnimator duration2 = ObjectAnimator.ofInt(this.EjP, str, 0, i11).setDuration((int) (this.sP.TEQ() * 1000.0d));
        ArrayList arrayList = new ArrayList();
        arrayList.add(Sj(duration));
        arrayList.add(Sj(duration2));
        ((ObjectAnimator) arrayList.get(0)).addListener(new Animator.AnimatorListener() { // from class: com.bytedance.sdk.component.adexpress.dynamic.animation.Sj.TEQ.1
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                TEQ.this.EjP.Sj(i12);
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator, boolean z10) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator, boolean z10) {
            }
        });
        return arrayList;
    }
}
