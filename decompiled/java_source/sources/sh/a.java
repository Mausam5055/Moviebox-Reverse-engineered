package sh;

import android.content.Context;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.animation.DecelerateInterpolator;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.h;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class a extends h {

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final Float f75350q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final Float f75351r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final DecelerateInterpolator f75352s;

    public a(Context context, Float f11, Float f12) {
        super(context);
        this.f75350q = f11;
        this.f75351r = f12;
        this.f75352s = new DecelerateInterpolator(f12 != null ? f12.floatValue() : 1.0f);
    }

    @Override // androidx.recyclerview.widget.h, androidx.recyclerview.widget.RecyclerView.x
    protected void o(View targetView, RecyclerView.y state, RecyclerView.x.a action) {
        Intrinsics.h(targetView, "targetView");
        Intrinsics.h(state, "state");
        Intrinsics.h(action, "action");
        int iT = t(targetView, z());
        int iU = u(targetView, B());
        int iW = w((int) Math.sqrt((iT * iT) + (iU * iU)));
        if (iW > 0) {
            action.d(-iT, -iU, iW, this.f75352s);
        }
    }

    @Override // androidx.recyclerview.widget.h
    protected float v(DisplayMetrics displayMetrics) {
        Intrinsics.h(displayMetrics, "displayMetrics");
        Float f11 = this.f75350q;
        return (f11 != null ? f11.floatValue() : 25.0f) / displayMetrics.densityDpi;
    }
}
