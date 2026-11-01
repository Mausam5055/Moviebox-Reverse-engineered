package com.bytedance.sdk.component.adexpress.vS;

import android.content.Context;
import android.text.TextUtils;
import android.view.animation.LinearInterpolator;
import android.view.animation.RotateAnimation;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;

/* JADX INFO: loaded from: classes2.dex */
public class Ym extends FrameLayout {
    private final RotateAnimation EjP;
    private final TextView Sj;
    private final aa TKC;
    private final ImageView sP;

    public Ym(@NonNull Context context) {
        super(context);
        addView(com.bytedance.sdk.component.adexpress.TKC.Sj.EjP(context));
        this.Sj = (TextView) findViewById(2097610742);
        this.sP = (ImageView) findViewById(2097610745);
        this.TKC = (aa) findViewById(2097610744);
        RotateAnimation rotateAnimation = new RotateAnimation(0.0f, 30.0f, 1, 0.65f, 1, 0.9f);
        this.EjP = rotateAnimation;
        rotateAnimation.setDuration(300L);
        rotateAnimation.setRepeatMode(2);
        rotateAnimation.setRepeatCount(1);
        rotateAnimation.setInterpolator(new LinearInterpolator());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Runnable getHaloAnimation() {
        return new Runnable() { // from class: com.bytedance.sdk.component.adexpress.vS.Ym.1
            @Override // java.lang.Runnable
            public void run() {
                Ym.this.sP.startAnimation(Ym.this.EjP);
                Ym.this.postDelayed(new Runnable() { // from class: com.bytedance.sdk.component.adexpress.vS.Ym.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        Ym.this.TKC.Sj(4);
                    }
                }, 100L);
                Ym.this.postDelayed(new Runnable() { // from class: com.bytedance.sdk.component.adexpress.vS.Ym.1.2
                    @Override // java.lang.Runnable
                    public void run() {
                        Ym.this.TKC.Sj(4);
                    }
                }, 300L);
                Ym ym2 = Ym.this;
                ym2.postDelayed(ym2.getHaloAnimation(), 1200L);
            }
        };
    }

    public void Sj() {
        postDelayed(getHaloAnimation(), 300L);
    }

    public void sP() {
        this.EjP.cancel();
    }

    public void setText(String str) {
        if (TextUtils.isEmpty(str)) {
            str = "Slide or click to jump to the details page or third-party application";
        }
        TextView textView = this.Sj;
        if (textView != null) {
            textView.setText(str);
        }
    }
}
