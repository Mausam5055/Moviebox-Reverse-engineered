package androidx.core.view;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.view.View;
import android.view.ViewPropertyAnimator;
import android.view.animation.Interpolator;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes.dex */
public final class ViewPropertyAnimatorCompat {
    private final WeakReference<View> mView;

    class a extends AnimatorListenerAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ ViewPropertyAnimatorListener f8310a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ View f8311b;

        a(ViewPropertyAnimatorListener viewPropertyAnimatorListener, View view) {
            this.f8310a = viewPropertyAnimatorListener;
            this.f8311b = view;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            this.f8310a.onAnimationCancel(this.f8311b);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f8310a.onAnimationEnd(this.f8311b);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            this.f8310a.onAnimationStart(this.f8311b);
        }
    }

    static class b {
        static ViewPropertyAnimator a(ViewPropertyAnimator viewPropertyAnimator, float f11) {
            return viewPropertyAnimator.translationZ(f11);
        }

        static ViewPropertyAnimator b(ViewPropertyAnimator viewPropertyAnimator, float f11) {
            return viewPropertyAnimator.translationZBy(f11);
        }

        static ViewPropertyAnimator c(ViewPropertyAnimator viewPropertyAnimator, float f11) {
            return viewPropertyAnimator.z(f11);
        }

        static ViewPropertyAnimator d(ViewPropertyAnimator viewPropertyAnimator, float f11) {
            return viewPropertyAnimator.zBy(f11);
        }
    }

    ViewPropertyAnimatorCompat(View view) {
        this.mView = new WeakReference<>(view);
    }

    private void setListenerInternal(View view, ViewPropertyAnimatorListener viewPropertyAnimatorListener) {
        if (viewPropertyAnimatorListener != null) {
            view.animate().setListener(new a(viewPropertyAnimatorListener, view));
        } else {
            view.animate().setListener(null);
        }
    }

    public ViewPropertyAnimatorCompat alpha(float f11) {
        View view = this.mView.get();
        if (view != null) {
            view.animate().alpha(f11);
        }
        return this;
    }

    public ViewPropertyAnimatorCompat alphaBy(float f11) {
        View view = this.mView.get();
        if (view != null) {
            view.animate().alphaBy(f11);
        }
        return this;
    }

    public void cancel() {
        View view = this.mView.get();
        if (view != null) {
            view.animate().cancel();
        }
    }

    public long getDuration() {
        View view = this.mView.get();
        if (view != null) {
            return view.animate().getDuration();
        }
        return 0L;
    }

    public Interpolator getInterpolator() {
        View view = this.mView.get();
        if (view != null) {
            return (Interpolator) view.animate().getInterpolator();
        }
        return null;
    }

    public long getStartDelay() {
        View view = this.mView.get();
        if (view != null) {
            return view.animate().getStartDelay();
        }
        return 0L;
    }

    public ViewPropertyAnimatorCompat rotation(float f11) {
        View view = this.mView.get();
        if (view != null) {
            view.animate().rotation(f11);
        }
        return this;
    }

    public ViewPropertyAnimatorCompat rotationBy(float f11) {
        View view = this.mView.get();
        if (view != null) {
            view.animate().rotationBy(f11);
        }
        return this;
    }

    public ViewPropertyAnimatorCompat rotationX(float f11) {
        View view = this.mView.get();
        if (view != null) {
            view.animate().rotationX(f11);
        }
        return this;
    }

    public ViewPropertyAnimatorCompat rotationXBy(float f11) {
        View view = this.mView.get();
        if (view != null) {
            view.animate().rotationXBy(f11);
        }
        return this;
    }

    public ViewPropertyAnimatorCompat rotationY(float f11) {
        View view = this.mView.get();
        if (view != null) {
            view.animate().rotationY(f11);
        }
        return this;
    }

    public ViewPropertyAnimatorCompat rotationYBy(float f11) {
        View view = this.mView.get();
        if (view != null) {
            view.animate().rotationYBy(f11);
        }
        return this;
    }

    public ViewPropertyAnimatorCompat scaleX(float f11) {
        View view = this.mView.get();
        if (view != null) {
            view.animate().scaleX(f11);
        }
        return this;
    }

    public ViewPropertyAnimatorCompat scaleXBy(float f11) {
        View view = this.mView.get();
        if (view != null) {
            view.animate().scaleXBy(f11);
        }
        return this;
    }

    public ViewPropertyAnimatorCompat scaleY(float f11) {
        View view = this.mView.get();
        if (view != null) {
            view.animate().scaleY(f11);
        }
        return this;
    }

    public ViewPropertyAnimatorCompat scaleYBy(float f11) {
        View view = this.mView.get();
        if (view != null) {
            view.animate().scaleYBy(f11);
        }
        return this;
    }

    public ViewPropertyAnimatorCompat setDuration(long j11) {
        View view = this.mView.get();
        if (view != null) {
            view.animate().setDuration(j11);
        }
        return this;
    }

    public ViewPropertyAnimatorCompat setInterpolator(Interpolator interpolator) {
        View view = this.mView.get();
        if (view != null) {
            view.animate().setInterpolator(interpolator);
        }
        return this;
    }

    public ViewPropertyAnimatorCompat setListener(ViewPropertyAnimatorListener viewPropertyAnimatorListener) {
        View view = this.mView.get();
        if (view != null) {
            setListenerInternal(view, viewPropertyAnimatorListener);
        }
        return this;
    }

    public ViewPropertyAnimatorCompat setStartDelay(long j11) {
        View view = this.mView.get();
        if (view != null) {
            view.animate().setStartDelay(j11);
        }
        return this;
    }

    public ViewPropertyAnimatorCompat setUpdateListener(final ViewPropertyAnimatorUpdateListener viewPropertyAnimatorUpdateListener) {
        final View view = this.mView.get();
        if (view != null) {
            view.animate().setUpdateListener(viewPropertyAnimatorUpdateListener != null ? new ValueAnimator.AnimatorUpdateListener() { // from class: androidx.core.view.p0
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    viewPropertyAnimatorUpdateListener.onAnimationUpdate(view);
                }
            } : null);
        }
        return this;
    }

    public void start() {
        View view = this.mView.get();
        if (view != null) {
            view.animate().start();
        }
    }

    public ViewPropertyAnimatorCompat translationX(float f11) {
        View view = this.mView.get();
        if (view != null) {
            view.animate().translationX(f11);
        }
        return this;
    }

    public ViewPropertyAnimatorCompat translationXBy(float f11) {
        View view = this.mView.get();
        if (view != null) {
            view.animate().translationXBy(f11);
        }
        return this;
    }

    public ViewPropertyAnimatorCompat translationY(float f11) {
        View view = this.mView.get();
        if (view != null) {
            view.animate().translationY(f11);
        }
        return this;
    }

    public ViewPropertyAnimatorCompat translationYBy(float f11) {
        View view = this.mView.get();
        if (view != null) {
            view.animate().translationYBy(f11);
        }
        return this;
    }

    public ViewPropertyAnimatorCompat translationZ(float f11) {
        View view = this.mView.get();
        if (view != null) {
            b.a(view.animate(), f11);
        }
        return this;
    }

    public ViewPropertyAnimatorCompat translationZBy(float f11) {
        View view = this.mView.get();
        if (view != null) {
            b.b(view.animate(), f11);
        }
        return this;
    }

    public ViewPropertyAnimatorCompat withEndAction(Runnable runnable) {
        View view = this.mView.get();
        if (view != null) {
            view.animate().withEndAction(runnable);
        }
        return this;
    }

    @SuppressLint({"WrongConstant"})
    public ViewPropertyAnimatorCompat withLayer() {
        View view = this.mView.get();
        if (view != null) {
            view.animate().withLayer();
        }
        return this;
    }

    public ViewPropertyAnimatorCompat withStartAction(Runnable runnable) {
        View view = this.mView.get();
        if (view != null) {
            view.animate().withStartAction(runnable);
        }
        return this;
    }

    public ViewPropertyAnimatorCompat x(float f11) {
        View view = this.mView.get();
        if (view != null) {
            view.animate().x(f11);
        }
        return this;
    }

    public ViewPropertyAnimatorCompat xBy(float f11) {
        View view = this.mView.get();
        if (view != null) {
            view.animate().xBy(f11);
        }
        return this;
    }

    public ViewPropertyAnimatorCompat y(float f11) {
        View view = this.mView.get();
        if (view != null) {
            view.animate().y(f11);
        }
        return this;
    }

    public ViewPropertyAnimatorCompat yBy(float f11) {
        View view = this.mView.get();
        if (view != null) {
            view.animate().yBy(f11);
        }
        return this;
    }

    public ViewPropertyAnimatorCompat z(float f11) {
        View view = this.mView.get();
        if (view != null) {
            b.c(view.animate(), f11);
        }
        return this;
    }

    public ViewPropertyAnimatorCompat zBy(float f11) {
        View view = this.mView.get();
        if (view != null) {
            b.d(view.animate(), f11);
        }
        return this;
    }
}
