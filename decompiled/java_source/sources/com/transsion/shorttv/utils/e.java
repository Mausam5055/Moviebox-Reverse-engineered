package com.transsion.shorttv.utils;

import android.graphics.Insets;
import android.os.Build;
import android.view.View;
import android.view.Window;
import android.view.WindowInsets;
import androidx.fragment.app.FragmentActivity;
import com.blankj.utilcode.util.a0;
import java.util.ArrayList;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class e {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final a f53649c = new a(null);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final Lazy f53650d = LazyKt.b(new Function0() { // from class: com.transsion.shorttv.utils.d
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return e.g();
        }
    });

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private List f53651a = new ArrayList();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f53652b;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final e a() {
            return (e) e.f53650d.getValue();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void f(FragmentActivity fragmentActivity, e eVar) {
        View decorView;
        WindowInsets rootWindowInsets;
        if (fragmentActivity.isFinishing()) {
            return;
        }
        Window window = fragmentActivity.getWindow();
        Insets mandatorySystemGestureInsets = (window == null || (decorView = window.getDecorView()) == null || (rootWindowInsets = decorView.getRootWindowInsets()) == null) ? null : rootWindowInsets.getMandatorySystemGestureInsets();
        if (mandatorySystemGestureInsets == null || mandatorySystemGestureInsets.bottom > a0.a(40.0f)) {
            lg.a.C0828a.f(lg.a.f68839a, "ImmVideoHelper", "is open navigation bar 2", false, 4, null);
            return;
        }
        int i11 = mandatorySystemGestureInsets.bottom;
        eVar.f53652b = i11;
        lg.a.C0828a.f(lg.a.f68839a, "ImmVideoHelper", "on get navigation gesture height = " + i11, false, 4, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final e g() {
        return new e();
    }

    public final List d() {
        return this.f53651a;
    }

    public final void e(final FragmentActivity activity) {
        Intrinsics.h(activity, "activity");
        if (Build.VERSION.SDK_INT < 29) {
            this.f53652b = 0;
            return;
        }
        if (com.blankj.utilcode.util.d.a() > 50) {
            lg.a.C0828a.f(lg.a.f68839a, "ImmVideoHelper", "is open navigation bar", false, 4, null);
            this.f53652b = 0;
            return;
        }
        Window window = activity.getWindow();
        View decorView = window != null ? window.getDecorView() : null;
        if (decorView != null) {
            decorView.post(new Runnable() { // from class: com.transsion.shorttv.utils.c
                @Override // java.lang.Runnable
                public final void run() {
                    e.f(activity, this);
                }
            });
        }
    }
}
