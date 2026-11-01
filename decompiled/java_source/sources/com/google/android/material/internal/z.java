package com.google.android.material.internal;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public class z extends androidx.transition.j {

    class a implements ValueAnimator.AnimatorUpdateListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ TextView f29286a;

        a(TextView textView) {
            this.f29286a = textView;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            this.f29286a.setScaleX(fFloatValue);
            this.f29286a.setScaleY(fFloatValue);
        }
    }

    private void f0(androidx.transition.w wVar) {
        View view = wVar.f15110b;
        if (view instanceof TextView) {
            wVar.f15109a.put("android:textscale:scale", Float.valueOf(((TextView) view).getScaleX()));
        }
    }

    @Override // androidx.transition.j
    public void f(androidx.transition.w wVar) {
        f0(wVar);
    }

    @Override // androidx.transition.j
    public void j(androidx.transition.w wVar) {
        f0(wVar);
    }

    @Override // androidx.transition.j
    public Animator n(ViewGroup viewGroup, androidx.transition.w wVar, androidx.transition.w wVar2) {
        if (wVar == null || wVar2 == null || !(wVar.f15110b instanceof TextView)) {
            return null;
        }
        View view = wVar2.f15110b;
        if (!(view instanceof TextView)) {
            return null;
        }
        TextView textView = (TextView) view;
        Map map = wVar.f15109a;
        Map map2 = wVar2.f15109a;
        float fFloatValue = map.get("android:textscale:scale") != null ? ((Float) map.get("android:textscale:scale")).floatValue() : 1.0f;
        float fFloatValue2 = map2.get("android:textscale:scale") != null ? ((Float) map2.get("android:textscale:scale")).floatValue() : 1.0f;
        if (fFloatValue == fFloatValue2) {
            return null;
        }
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(fFloatValue, fFloatValue2);
        valueAnimatorOfFloat.addUpdateListener(new a(textView));
        return valueAnimatorOfFloat;
    }
}
