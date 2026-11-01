package k6;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.view.View;
import android.view.animation.DecelerateInterpolator;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class c implements b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final a f66670b = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final float f66671a;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    @JvmOverloads
    public c() {
        this(0.0f, 1, null);
    }

    public c(float f11) {
        this.f66671a = f11;
    }

    public /* synthetic */ c(float f11, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? 0.5f : f11);
    }

    @Override // k6.b
    public Animator[] a(View view) {
        Intrinsics.h(view, "view");
        ObjectAnimator scaleX = ObjectAnimator.ofFloat(view, "scaleX", this.f66671a, 1.0f);
        scaleX.setDuration(300L);
        scaleX.setInterpolator(new DecelerateInterpolator());
        ObjectAnimator scaleY = ObjectAnimator.ofFloat(view, "scaleY", this.f66671a, 1.0f);
        scaleY.setDuration(300L);
        scaleY.setInterpolator(new DecelerateInterpolator());
        Intrinsics.g(scaleX, "scaleX");
        Intrinsics.g(scaleY, "scaleY");
        return new Animator[]{scaleX, scaleY};
    }
}
