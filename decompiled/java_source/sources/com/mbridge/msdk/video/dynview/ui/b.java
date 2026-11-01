package com.mbridge.msdk.video.dynview.ui;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.Keyframe;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.animation.ValueAnimator;
import android.graphics.Bitmap;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;
import com.mbridge.msdk.foundation.tools.t0;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public class b {

    class a implements Animator.AnimatorListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ View f39092a;

        a(View view) {
            this.f39092a = view;
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            View view = this.f39092a;
            if (view == null || !(view instanceof ViewGroup)) {
                return;
            }
            ((ViewGroup) view).removeAllViews();
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            View view = this.f39092a;
            if (view == null || !(view instanceof ViewGroup)) {
                return;
            }
            ((ViewGroup) view).removeAllViews();
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
        }
    }

    /* JADX INFO: renamed from: com.mbridge.msdk.video.dynview.ui.b$b, reason: collision with other inner class name */
    class C0562b implements ValueAnimator.AnimatorUpdateListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ List f39094a;

        C0562b(List list) {
            this.f39094a = list;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            List list = this.f39094a;
            if (list == null || list.size() <= 0) {
                return;
            }
            for (View view : this.f39094a) {
                if (view != null) {
                    view.setPadding(0, 0, 0, ((Integer) valueAnimator.getAnimatedValue()).intValue());
                    view.requestLayout();
                }
            }
        }
    }

    class c implements ValueAnimator.AnimatorUpdateListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ View f39096a;

        c(View view) {
            this.f39096a = view;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            View view = this.f39096a;
            if (view != null) {
                view.getLayoutParams().width = ((Integer) valueAnimator.getAnimatedValue()).intValue();
                this.f39096a.requestLayout();
            }
        }
    }

    class d implements ValueAnimator.AnimatorUpdateListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ View f39098a;

        d(View view) {
            this.f39098a = view;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            View view = this.f39098a;
            if (view != null) {
                view.getLayoutParams().height = ((Integer) valueAnimator.getAnimatedValue()).intValue();
                this.f39098a.requestLayout();
                if (this.f39098a.getVisibility() != 0) {
                    this.f39098a.setVisibility(0);
                }
            }
        }
    }

    class e implements ValueAnimator.AnimatorUpdateListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ View f39100a;

        e(View view) {
            this.f39100a = view;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            ViewGroup.LayoutParams layoutParams = this.f39100a.getLayoutParams();
            layoutParams.width = ((Integer) valueAnimator.getAnimatedValue()).intValue();
            this.f39100a.setLayoutParams(layoutParams);
        }
    }

    class f implements ValueAnimator.AnimatorUpdateListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ View f39102a;

        f(View view) {
            this.f39102a = view;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            this.f39102a.setScaleX(((Float) valueAnimator.getAnimatedValue()).floatValue());
            this.f39102a.setScaleY(((Float) valueAnimator.getAnimatedValue()).floatValue());
        }
    }

    private ObjectAnimator a(View view, float f11, float f12, float f13, long j11) {
        return ObjectAnimator.ofPropertyValuesHolder(view, b(View.SCALE_X, f11), b(View.SCALE_Y, f12), c(View.ROTATION_X, f13)).setDuration(j11);
    }

    private ObjectAnimator a(View view, float f11, float f12, long j11) {
        return ObjectAnimator.ofPropertyValuesHolder(view, a(View.SCALE_X, f11), a(View.SCALE_Y, f12)).setDuration(j11);
    }

    private PropertyValuesHolder a(Property property, float f11) {
        float f12 = f11 - 0.4f;
        return PropertyValuesHolder.ofKeyframe(property, Keyframe.ofFloat(0.0f, f11), Keyframe.ofFloat(0.1f, f12), Keyframe.ofFloat(0.2f, f12), Keyframe.ofFloat(0.3f, f11), Keyframe.ofFloat(0.4f, f11), Keyframe.ofFloat(0.5f, f11), Keyframe.ofFloat(0.6f, f11), Keyframe.ofFloat(0.7f, f11), Keyframe.ofFloat(0.8f, f11), Keyframe.ofFloat(0.9f, f11), Keyframe.ofFloat(1.0f, f11));
    }

    private void a(View view, int i11, int i12, long j11) {
        ValueAnimator valueAnimatorOfInt = view.getLayoutParams().width == 0 ? ValueAnimator.ofInt(i11, i12) : ValueAnimator.ofInt(i12, i11);
        valueAnimatorOfInt.setDuration(j11);
        valueAnimatorOfInt.addUpdateListener(new e(view));
        ValueAnimator valueAnimatorOfFloat = view.getLayoutParams().width == 0 ? ValueAnimator.ofFloat(0.0f, 1.0f) : ValueAnimator.ofFloat(1.0f, 0.0f);
        valueAnimatorOfFloat.setDuration(j11);
        valueAnimatorOfFloat.addUpdateListener(new f(view));
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(valueAnimatorOfInt, valueAnimatorOfFloat);
        animatorSet.start();
    }

    private PropertyValuesHolder b(Property property, float f11) {
        float f12 = f11 - 0.2f;
        float f13 = f11 + 0.3f;
        return PropertyValuesHolder.ofKeyframe(property, Keyframe.ofFloat(0.0f, f11), Keyframe.ofFloat(0.1f, f11 - 0.4f), Keyframe.ofFloat(0.2f, f12), Keyframe.ofFloat(0.3f, f13), Keyframe.ofFloat(0.4f, f12), Keyframe.ofFloat(0.5f, f13), Keyframe.ofFloat(0.6f, f11 - 0.1f), Keyframe.ofFloat(0.7f, f13), Keyframe.ofFloat(0.8f, f11), Keyframe.ofFloat(0.9f, 0.1f + f11), Keyframe.ofFloat(1.0f, f11));
    }

    private PropertyValuesHolder c(Property property, float f11) {
        float f12 = (-2.0f) * f11;
        float f13 = f11 * 2.0f;
        return PropertyValuesHolder.ofKeyframe(property, Keyframe.ofFloat(0.0f, 0.0f), Keyframe.ofFloat(0.1f, f12), Keyframe.ofFloat(0.2f, f12), Keyframe.ofFloat(0.3f, f13), Keyframe.ofFloat(0.4f, f12), Keyframe.ofFloat(0.5f, f13), Keyframe.ofFloat(0.6f, f12), Keyframe.ofFloat(0.7f, f13), Keyframe.ofFloat(0.8f, f12), Keyframe.ofFloat(0.9f, f13), Keyframe.ofFloat(1.0f, 0.0f));
    }

    public ObjectAnimator a(View view) {
        ObjectAnimator objectAnimatorA = a(view, 2.0f, 1000L);
        objectAnimatorA.setRepeatCount(-1);
        return objectAnimatorA;
    }

    public ObjectAnimator a(View view, float f11, long j11) {
        return ObjectAnimator.ofPropertyValuesHolder(view, c(View.ROTATION, f11)).setDuration(j11);
    }

    public void a(View view, int i11, int i12, int i13, int i14, long j11) {
        ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(i11, i12);
        valueAnimatorOfInt.addUpdateListener(new c(view));
        ValueAnimator valueAnimatorOfInt2 = ValueAnimator.ofInt(i13, i14);
        valueAnimatorOfInt2.addUpdateListener(new d(view));
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(valueAnimatorOfInt, valueAnimatorOfInt2);
        animatorSet.setDuration(j11);
        animatorSet.start();
    }

    public void a(View view, long j11) {
        if (view != null) {
            view.setVisibility(0);
            view.setAlpha(0.0f);
            view.animate().alpha(1.0f).setDuration(j11);
        }
    }

    public void a(List<View> list, int i11, int i12, long j11) {
        ValueAnimator duration = ValueAnimator.ofInt(i11, i12).setDuration(j11);
        duration.addUpdateListener(new C0562b(list));
        duration.start();
    }

    public void a(Map<String, Bitmap> map, com.mbridge.msdk.video.dynview.c cVar, View view) {
        if (view != null) {
            com.mbridge.msdk.video.dynview.util.draw.a.a().a(map, cVar, view);
        }
    }

    public ObjectAnimator b(View view) {
        ObjectAnimator objectAnimatorA = a(view, 1.0f, 1.0f, 5.0f, 2000L);
        objectAnimatorA.setRepeatCount(-1);
        return objectAnimatorA;
    }

    public void b(View view, long j11) {
        if (view != null) {
            view.setAlpha(1.0f);
            view.animate().alpha(0.0f).setDuration(j11).setListener(new a(view));
        }
    }

    public ObjectAnimator c(View view) {
        ObjectAnimator objectAnimatorA = a(view, 1.0f, 1.0f, 2000L);
        objectAnimatorA.setRepeatCount(-1);
        return objectAnimatorA;
    }

    public void c(View view, long j11) {
        if (view == null) {
            return;
        }
        a(view, 0, t0.g(view.getContext().getApplicationContext()), j11);
    }
}
