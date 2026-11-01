package com.transsion.room.helper;

import android.R;
import android.animation.ObjectAnimator;
import android.app.Activity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.widget.FrameLayout;
import com.transsion.room.R$layout;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final n f51635a = new n();

    private n() {
    }

    private final ObjectAnimator b(View view) {
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(view, "translationY", 0.0f, -dk.a.b(12));
        objectAnimatorOfFloat.setDuration(500L);
        objectAnimatorOfFloat.setRepeatMode(2);
        objectAnimatorOfFloat.setRepeatCount(-1);
        objectAnimatorOfFloat.setInterpolator(new AccelerateDecelerateInterpolator());
        Intrinsics.g(objectAnimatorOfFloat, "apply(...)");
        return objectAnimatorOfFloat;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void d(ObjectAnimator objectAnimator, FrameLayout frameLayout, View view) {
        try {
            Result.Companion companion = Result.INSTANCE;
            objectAnimator.cancel();
            frameLayout.removeView(view);
            Result.m454constructorimpl(Unit.f67061a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m454constructorimpl(ResultKt.a(th2));
        }
    }

    public final void c(Activity activity) {
        Intrinsics.h(activity, "activity");
        final FrameLayout frameLayout = (FrameLayout) activity.findViewById(R.id.content);
        final View viewInflate = LayoutInflater.from(activity).inflate(R$layout.layout_room_tab_refresh, (ViewGroup) null);
        Intrinsics.e(viewInflate);
        final ObjectAnimator objectAnimatorB = b(viewInflate);
        objectAnimatorB.start();
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
        layoutParams.gravity = 81;
        layoutParams.bottomMargin = dk.a.b(80);
        frameLayout.addView(viewInflate, layoutParams);
        hj.i.f64505a.D("room_home", MapsKt.m(TuplesKt.a("opt_type", "refresh_float")));
        frameLayout.postDelayed(new Runnable() { // from class: com.transsion.room.helper.m
            @Override // java.lang.Runnable
            public final void run() {
                n.d(objectAnimatorB, frameLayout, viewInflate);
            }
        }, 3000L);
    }
}
