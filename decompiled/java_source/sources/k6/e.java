package k6;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.view.View;
import android.view.animation.DecelerateInterpolator;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class e implements b {
    @Override // k6.b
    public Animator[] a(View view) {
        Intrinsics.h(view, "view");
        ObjectAnimator animator = ObjectAnimator.ofFloat(view, "translationX", -view.getRootView().getWidth(), 0.0f);
        animator.setDuration(400L);
        animator.setInterpolator(new DecelerateInterpolator(1.8f));
        Intrinsics.g(animator, "animator");
        return new Animator[]{animator};
    }
}
