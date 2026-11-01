package com.bytedance.sdk.component.adexpress.vS;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.LinearInterpolator;
import android.widget.TextSwitcher;
import android.widget.TextView;
import android.widget.ViewSwitcher;
import com.bytedance.sdk.component.utils.LqL;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class Sj extends TextSwitcher implements ViewSwitcher.ViewFactory, LqL.Sj {
    private int Dq;
    private final int EjP;
    private int Fmk;
    private Context HiB;
    private int Jcg;
    Animation.AnimationListener Sj;
    private int TEQ;
    private int TKC;
    private int Ym;

    /* JADX INFO: renamed from: aa, reason: collision with root package name */
    private int f20907aa;
    private List<String> sP;
    private Handler sef;
    private float uA;
    private TextView vS;

    public Sj(Context context, int i11, float f11, int i12, int i13) {
        super(context);
        this.sP = new ArrayList();
        this.TKC = 0;
        this.EjP = 1;
        this.sef = new LqL(Looper.getMainLooper(), this);
        this.Sj = new Animation.AnimationListener() { // from class: com.bytedance.sdk.component.adexpress.vS.Sj.1
            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                if (Sj.this.vS != null) {
                    Sj.this.vS.setText("");
                }
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation) {
            }
        };
        this.HiB = context;
        this.Dq = i11;
        this.uA = f11;
        this.TEQ = i12;
        this.Fmk = i13;
        TKC();
    }

    private void TKC() {
        setFactory(this);
    }

    public void Sj() {
        int i11 = this.f20907aa;
        if (i11 == 1) {
            setInAnimation(getContext(), com.bytedance.sdk.component.utils.ib.uA(this.HiB, "tt_text_animation_y_in"));
            setOutAnimation(getContext(), com.bytedance.sdk.component.utils.ib.uA(this.HiB, "tt_text_animation_y_out"));
        } else if (i11 == 0) {
            setInAnimation(getContext(), com.bytedance.sdk.component.utils.ib.uA(this.HiB, "tt_text_animation_x_in"));
            setOutAnimation(getContext(), com.bytedance.sdk.component.utils.ib.uA(this.HiB, "tt_text_animation_x_in"));
            getInAnimation().setInterpolator(new LinearInterpolator());
            getOutAnimation().setInterpolator(new LinearInterpolator());
            getInAnimation().setAnimationListener(this.Sj);
            getOutAnimation().setAnimationListener(this.Sj);
        }
        this.sef.sendEmptyMessage(1);
    }

    @Override // com.bytedance.sdk.component.utils.LqL.Sj
    public void Sj(Message message) {
        if (message.what != 1) {
            return;
        }
        sP();
        this.sef.sendEmptyMessageDelayed(1, this.Jcg);
    }

    @Override // android.widget.ViewSwitcher.ViewFactory
    public View makeView() {
        TextView textView = new TextView(getContext());
        this.vS = textView;
        textView.setTextColor(this.Dq);
        this.vS.setTextSize(this.uA);
        this.vS.setMaxLines(this.TEQ);
        this.vS.setTextAlignment(this.Fmk);
        return this.vS;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.sef.sendEmptyMessageDelayed(1, this.Jcg);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.sef.removeMessages(1);
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i11, int i12) {
        try {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(com.bytedance.sdk.component.adexpress.dynamic.HiB.Ym.sP(this.sP.get(this.Ym), this.uA, false)[0], 1073741824), i11);
        } catch (Exception unused) {
            super.onMeasure(i11, i12);
        }
    }

    public void sP() {
        List<String> list = this.sP;
        if (list == null || list.size() <= 0) {
            return;
        }
        int i11 = this.TKC;
        this.TKC = i11 + 1;
        this.Ym = i11;
        setText(this.sP.get(i11));
        if (this.TKC > this.sP.size() - 1) {
            this.TKC = 0;
        }
    }

    public void setAnimationDuration(int i11) {
        this.Jcg = i11;
    }

    public void setAnimationText(List<String> list) {
        this.sP = list;
    }

    public void setAnimationType(int i11) {
        this.f20907aa = i11;
    }

    public void setMaxLines(int i11) {
        this.TEQ = i11;
    }

    public void setTextColor(int i11) {
        this.Dq = i11;
    }

    public void setTextSize(float f11) {
        this.uA = f11;
    }
}
