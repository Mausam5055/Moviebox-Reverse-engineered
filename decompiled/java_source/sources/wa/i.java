package wa;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.res.Resources;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.view.GravityCompat;
import androidx.core.view.ViewCompat;
import com.google.android.material.R$dimen;

/* JADX INFO: loaded from: classes5.dex */
public class i extends wa.a {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final float f77632g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final float f77633h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final float f77634i;

    class a extends AnimatorListenerAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ boolean f77635a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f77636b;

        a(boolean z10, int i11) {
            this.f77635a = z10;
            this.f77636b = i11;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            i.this.f77608b.setTranslationX(0.0f);
            i.this.k(0.0f, this.f77635a, this.f77636b);
        }
    }

    public i(View view) {
        super(view);
        Resources resources = view.getResources();
        this.f77632g = resources.getDimension(R$dimen.m3_back_progress_side_container_max_scale_x_distance_shrink);
        this.f77633h = resources.getDimension(R$dimen.m3_back_progress_side_container_max_scale_x_distance_grow);
        this.f77634i = resources.getDimension(R$dimen.m3_back_progress_side_container_max_scale_y_distance);
    }

    private boolean g(int i11, int i12) {
        return (GravityCompat.getAbsoluteGravity(i11, ViewCompat.getLayoutDirection(this.f77608b)) & i12) == i12;
    }

    private int i(boolean z10) {
        ViewGroup.LayoutParams layoutParams = this.f77608b.getLayoutParams();
        if (!(layoutParams instanceof ViewGroup.MarginLayoutParams)) {
            return 0;
        }
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
        return z10 ? marginLayoutParams.leftMargin : marginLayoutParams.rightMargin;
    }

    public void f() {
        if (super.b() == null) {
            return;
        }
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(ObjectAnimator.ofFloat(this.f77608b, (Property<View, Float>) View.SCALE_X, 1.0f), ObjectAnimator.ofFloat(this.f77608b, (Property<View, Float>) View.SCALE_Y, 1.0f));
        View view = this.f77608b;
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i11 = 0; i11 < viewGroup.getChildCount(); i11++) {
                animatorSet.playTogether(ObjectAnimator.ofFloat(viewGroup.getChildAt(i11), (Property<View, Float>) View.SCALE_Y, 1.0f));
            }
        }
        animatorSet.setDuration(this.f77611e);
        animatorSet.start();
    }

    public void h(androidx.activity.b bVar, int i11, Animator.AnimatorListener animatorListener, ValueAnimator.AnimatorUpdateListener animatorUpdateListener) {
        boolean z10 = bVar.b() == 0;
        boolean zG = g(i11, 3);
        float width = (this.f77608b.getWidth() * this.f77608b.getScaleX()) + i(zG);
        View view = this.f77608b;
        Property property = View.TRANSLATION_X;
        if (zG) {
            width = -width;
        }
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(view, (Property<View, Float>) property, width);
        if (animatorUpdateListener != null) {
            objectAnimatorOfFloat.addUpdateListener(animatorUpdateListener);
        }
        objectAnimatorOfFloat.setInterpolator(new o1.b());
        objectAnimatorOfFloat.setDuration(oa.a.c(this.f77609c, this.f77610d, bVar.a()));
        objectAnimatorOfFloat.addListener(new a(z10, i11));
        if (animatorListener != null) {
            objectAnimatorOfFloat.addListener(animatorListener);
        }
        objectAnimatorOfFloat.start();
    }

    public void j(androidx.activity.b bVar) {
        super.d(bVar);
    }

    public void k(float f11, boolean z10, int i11) {
        float fA = a(f11);
        boolean zG = g(i11, 3);
        boolean z11 = z10 == zG;
        int width = this.f77608b.getWidth();
        int height = this.f77608b.getHeight();
        float f12 = width;
        if (f12 > 0.0f) {
            float f13 = height;
            if (f13 <= 0.0f) {
                return;
            }
            float f14 = this.f77632g / f12;
            float f15 = this.f77633h / f12;
            float f16 = this.f77634i / f13;
            View view = this.f77608b;
            if (zG) {
                f12 = 0.0f;
            }
            view.setPivotX(f12);
            if (!z11) {
                f15 = -f14;
            }
            float fA2 = oa.a.a(0.0f, f15, fA);
            float f17 = fA2 + 1.0f;
            this.f77608b.setScaleX(f17);
            float fA3 = 1.0f - oa.a.a(0.0f, f16, fA);
            this.f77608b.setScaleY(fA3);
            View view2 = this.f77608b;
            if (view2 instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view2;
                for (int i12 = 0; i12 < viewGroup.getChildCount(); i12++) {
                    View childAt = viewGroup.getChildAt(i12);
                    childAt.setPivotX(zG ? (width - childAt.getRight()) + childAt.getWidth() : -childAt.getLeft());
                    childAt.setPivotY(-childAt.getTop());
                    float f18 = z11 ? 1.0f - fA2 : 1.0f;
                    float f19 = fA3 != 0.0f ? (f17 / fA3) * f18 : 1.0f;
                    childAt.setScaleX(f18);
                    childAt.setScaleY(f19);
                }
            }
        }
    }

    public void l(androidx.activity.b bVar, int i11) {
        if (super.e(bVar) == null) {
            return;
        }
        k(bVar.a(), bVar.b() == 0, i11);
    }
}
