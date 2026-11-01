package wa;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.res.Resources;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.material.R$dimen;

/* JADX INFO: loaded from: classes5.dex */
public class f extends wa.a {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final float f77620g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final float f77621h;

    class a extends AnimatorListenerAdapter {
        a() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            f.this.f77608b.setTranslationY(0.0f);
            f.this.k(0.0f);
        }
    }

    public f(View view) {
        super(view);
        Resources resources = view.getResources();
        this.f77620g = resources.getDimension(R$dimen.m3_back_progress_bottom_container_max_scale_x_distance);
        this.f77621h = resources.getDimension(R$dimen.m3_back_progress_bottom_container_max_scale_y_distance);
    }

    private Animator g() {
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(ObjectAnimator.ofFloat(this.f77608b, (Property<View, Float>) View.SCALE_X, 1.0f), ObjectAnimator.ofFloat(this.f77608b, (Property<View, Float>) View.SCALE_Y, 1.0f));
        View view = this.f77608b;
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i11 = 0; i11 < viewGroup.getChildCount(); i11++) {
                animatorSet.playTogether(ObjectAnimator.ofFloat(viewGroup.getChildAt(i11), (Property<View, Float>) View.SCALE_Y, 1.0f));
            }
        }
        animatorSet.setInterpolator(new o1.b());
        return animatorSet;
    }

    public void f() {
        if (super.b() == null) {
            return;
        }
        Animator animatorG = g();
        animatorG.setDuration(this.f77611e);
        animatorG.start();
    }

    public void h(androidx.activity.b bVar, Animator.AnimatorListener animatorListener) {
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.f77608b, (Property<View, Float>) View.TRANSLATION_Y, this.f77608b.getHeight() * this.f77608b.getScaleY());
        objectAnimatorOfFloat.setInterpolator(new o1.b());
        objectAnimatorOfFloat.setDuration(oa.a.c(this.f77609c, this.f77610d, bVar.a()));
        objectAnimatorOfFloat.addListener(new a());
        if (animatorListener != null) {
            objectAnimatorOfFloat.addListener(animatorListener);
        }
        objectAnimatorOfFloat.start();
    }

    public void i(androidx.activity.b bVar, Animator.AnimatorListener animatorListener) {
        Animator animatorG = g();
        animatorG.setDuration(oa.a.c(this.f77609c, this.f77610d, bVar.a()));
        if (animatorListener != null) {
            animatorG.addListener(animatorListener);
        }
        animatorG.start();
    }

    public void j(androidx.activity.b bVar) {
        super.d(bVar);
    }

    public void k(float f11) {
        float fA = a(f11);
        float width = this.f77608b.getWidth();
        float height = this.f77608b.getHeight();
        if (width <= 0.0f || height <= 0.0f) {
            return;
        }
        float f12 = this.f77620g / width;
        float f13 = this.f77621h / height;
        float fA2 = 1.0f - oa.a.a(0.0f, f12, fA);
        float fA3 = 1.0f - oa.a.a(0.0f, f13, fA);
        this.f77608b.setScaleX(fA2);
        this.f77608b.setPivotY(height);
        this.f77608b.setScaleY(fA3);
        View view = this.f77608b;
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i11 = 0; i11 < viewGroup.getChildCount(); i11++) {
                View childAt = viewGroup.getChildAt(i11);
                childAt.setPivotY(-childAt.getTop());
                childAt.setScaleY(fA3 != 0.0f ? fA2 / fA3 : 1.0f);
            }
        }
    }

    public void l(androidx.activity.b bVar) {
        if (super.e(bVar) == null) {
            return;
        }
        k(bVar.a());
    }
}
