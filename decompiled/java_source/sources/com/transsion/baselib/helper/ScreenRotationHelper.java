package com.transsion.baselib.helper;

import android.content.Context;
import android.os.Handler;
import android.provider.Settings;
import java.lang.ref.WeakReference;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class ScreenRotationHelper {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f43256a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Function0 f43257b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Function1 f43258c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f43259d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Lazy f43260e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Lazy f43261f;

    public ScreenRotationHelper(Context context, Function0 isCloseAutoRotationCallback, Function1 rotationCallback) {
        Intrinsics.h(context, "context");
        Intrinsics.h(isCloseAutoRotationCallback, "isCloseAutoRotationCallback");
        Intrinsics.h(rotationCallback, "rotationCallback");
        this.f43256a = context;
        this.f43257b = isCloseAutoRotationCallback;
        this.f43258c = rotationCallback;
        this.f43260e = LazyKt.b(new Function0() { // from class: com.transsion.baselib.helper.h
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ScreenRotationHelper.k(this.f43278a);
            }
        });
        this.f43261f = LazyKt.b(new Function0() { // from class: com.transsion.baselib.helper.i
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ScreenRotationHelper.i(this.f43279a);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void e(boolean z10) {
        if (!((Boolean) this.f43257b.invoke()).booleanValue() && this.f43259d && com.blankj.utilcode.util.c.l()) {
            this.f43258c.invoke(Boolean.valueOf(z10));
        }
    }

    private final k f() {
        return (k) this.f43261f.getValue();
    }

    private final g g() {
        return (g) this.f43260e.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final k i(final ScreenRotationHelper screenRotationHelper) {
        return new k(new Handler(), new WeakReference(screenRotationHelper.f43256a), new Function1() { // from class: com.transsion.baselib.helper.j
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return ScreenRotationHelper.j(this.f43280a, ((Boolean) obj).booleanValue());
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit j(ScreenRotationHelper screenRotationHelper, boolean z10) {
        screenRotationHelper.f43259d = z10;
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final g k(ScreenRotationHelper screenRotationHelper) {
        return new g(screenRotationHelper.f43256a, new ScreenRotationHelper$orientationListener$2$1(screenRotationHelper));
    }

    public final void h() {
        this.f43256a.getContentResolver().registerContentObserver(Settings.System.getUriFor("accelerometer_rotation"), true, f());
        this.f43259d = f().a(this.f43256a);
        g gVarG = g();
        if (gVarG.canDetectOrientation()) {
            gVarG.enable();
        }
    }

    public final void l() {
        try {
            Result.Companion companion = Result.INSTANCE;
            this.f43256a.getContentResolver().unregisterContentObserver(f());
            g().disable();
            Result.m454constructorimpl(Unit.f67061a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m454constructorimpl(ResultKt.a(th2));
        }
    }
}
