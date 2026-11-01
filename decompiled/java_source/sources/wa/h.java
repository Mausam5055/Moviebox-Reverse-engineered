package wa;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.res.Resources;
import android.graphics.Rect;
import android.os.Build;
import android.util.Property;
import android.view.RoundedCorner;
import android.view.View;
import android.view.WindowInsets;
import com.google.android.material.R$dimen;
import com.google.android.material.internal.ClippableRoundedCornerLayout;
import com.google.android.material.internal.f0;

/* JADX INFO: loaded from: classes5.dex */
public class h extends wa.a {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final float f77624g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final float f77625h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private float f77626i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private Rect f77627j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private Rect f77628k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private Integer f77629l;

    class a extends AnimatorListenerAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ View f77630a;

        a(View view) {
            this.f77630a = view;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            View view = this.f77630a;
            if (view != null) {
                view.setVisibility(0);
            }
        }
    }

    public h(View view) {
        super(view);
        Resources resources = view.getResources();
        this.f77624g = resources.getDimension(R$dimen.m3_back_progress_main_container_min_edge_gap);
        this.f77625h = resources.getDimension(R$dimen.m3_back_progress_main_container_max_translation_y);
    }

    private ValueAnimator h(final ClippableRoundedCornerLayout clippableRoundedCornerLayout) {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(clippableRoundedCornerLayout.getCornerRadius(), k());
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: wa.g
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                h.q(clippableRoundedCornerLayout, valueAnimator);
            }
        });
        return valueAnimatorOfFloat;
    }

    private AnimatorSet i(View view) {
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(ObjectAnimator.ofFloat(this.f77608b, (Property<View, Float>) View.SCALE_X, 1.0f), ObjectAnimator.ofFloat(this.f77608b, (Property<View, Float>) View.SCALE_Y, 1.0f), ObjectAnimator.ofFloat(this.f77608b, (Property<View, Float>) View.TRANSLATION_X, 0.0f), ObjectAnimator.ofFloat(this.f77608b, (Property<View, Float>) View.TRANSLATION_Y, 0.0f));
        animatorSet.addListener(new a(view));
        return animatorSet;
    }

    private int n() {
        WindowInsets rootWindowInsets;
        if (Build.VERSION.SDK_INT < 31 || (rootWindowInsets = this.f77608b.getRootWindowInsets()) == null) {
            return 0;
        }
        return Math.max(Math.max(o(rootWindowInsets, 0), o(rootWindowInsets, 1)), Math.max(o(rootWindowInsets, 3), o(rootWindowInsets, 2)));
    }

    private int o(WindowInsets windowInsets, int i11) {
        RoundedCorner roundedCorner = windowInsets.getRoundedCorner(i11);
        if (roundedCorner != null) {
            return roundedCorner.getRadius();
        }
        return 0;
    }

    private boolean p() {
        int[] iArr = new int[2];
        this.f77608b.getLocationOnScreen(iArr);
        return iArr[1] == 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void q(ClippableRoundedCornerLayout clippableRoundedCornerLayout, ValueAnimator valueAnimator) {
        clippableRoundedCornerLayout.updateCornerRadius(((Float) valueAnimator.getAnimatedValue()).floatValue());
    }

    private void r() {
        this.f77626i = 0.0f;
        this.f77627j = null;
        this.f77628k = null;
    }

    public void g(View view) {
        if (super.b() == null) {
            return;
        }
        AnimatorSet animatorSetI = i(view);
        View view2 = this.f77608b;
        if (view2 instanceof ClippableRoundedCornerLayout) {
            animatorSetI.playTogether(h((ClippableRoundedCornerLayout) view2));
        }
        animatorSetI.setDuration(this.f77611e);
        animatorSetI.start();
        r();
    }

    public void j(long j11, View view) {
        AnimatorSet animatorSetI = i(view);
        animatorSetI.setDuration(j11);
        animatorSetI.start();
        r();
    }

    public int k() {
        if (this.f77629l == null) {
            this.f77629l = Integer.valueOf(p() ? n() : 0);
        }
        return this.f77629l.intValue();
    }

    public Rect l() {
        return this.f77628k;
    }

    public Rect m() {
        return this.f77627j;
    }

    public void s(float f11, View view) {
        this.f77627j = f0.c(this.f77608b);
        if (view != null) {
            this.f77628k = f0.b(this.f77608b, view);
        }
        this.f77626i = f11;
    }

    public void t(androidx.activity.b bVar, View view) {
        super.d(bVar);
        s(bVar.c(), view);
    }

    public void u(float f11, boolean z10, float f12, float f13) {
        float fA = a(f11);
        float width = this.f77608b.getWidth();
        float height = this.f77608b.getHeight();
        if (width <= 0.0f || height <= 0.0f) {
            return;
        }
        float fA2 = oa.a.a(1.0f, 0.9f, fA);
        float fA3 = oa.a.a(0.0f, Math.max(0.0f, ((width - (0.9f * width)) / 2.0f) - this.f77624g), fA) * (z10 ? 1 : -1);
        float fMin = Math.min(Math.max(0.0f, ((height - (fA2 * height)) / 2.0f) - this.f77624g), this.f77625h);
        float f14 = f12 - this.f77626i;
        float fA4 = oa.a.a(0.0f, fMin, Math.abs(f14) / height) * Math.signum(f14);
        this.f77608b.setScaleX(fA2);
        this.f77608b.setScaleY(fA2);
        this.f77608b.setTranslationX(fA3);
        this.f77608b.setTranslationY(fA4);
        View view = this.f77608b;
        if (view instanceof ClippableRoundedCornerLayout) {
            ((ClippableRoundedCornerLayout) view).updateCornerRadius(oa.a.a(k(), f13, fA));
        }
    }

    public void v(androidx.activity.b bVar, View view, float f11) {
        if (super.e(bVar) == null) {
            return;
        }
        if (view != null && view.getVisibility() != 4) {
            view.setVisibility(4);
        }
        u(bVar.a(), bVar.b() == 0, bVar.c(), f11);
    }
}
