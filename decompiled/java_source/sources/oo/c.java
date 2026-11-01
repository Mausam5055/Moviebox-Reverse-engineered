package oo;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final View f71068a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final View f71069b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f71070c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Lazy f71071d;

    public c(View startView, View endView) {
        Intrinsics.h(startView, "startView");
        Intrinsics.h(endView, "endView");
        this.f71068a = startView;
        this.f71069b = endView;
        this.f71071d = LazyKt.b(new Function0() { // from class: oo.a
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return c.g(this.f71066a);
            }
        });
    }

    private final g e() {
        return (g) this.f71071d.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final g g(final c cVar) {
        Context context = cVar.f71068a.getContext();
        Intrinsics.f(context, "null cannot be cast to non-null type android.app.Activity");
        return new g((Activity) context, new Function1() { // from class: oo.b
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return c.h(this.f71067a, ((Integer) obj).intValue());
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit h(c cVar, int i11) {
        if (i11 == 0 || i11 == 1 || i11 == 3) {
            cVar.i(cVar.f71070c, i11);
        }
        return Unit.f67061a;
    }

    private final void i(boolean z10, int i11) {
        int iC = com.blankj.utilcode.util.d.c();
        int i12 = (z10 && i11 == 1) ? iC : 0;
        if (!z10 || i11 != 3) {
            iC = 0;
        }
        ViewGroup.LayoutParams layoutParams = this.f71068a.getLayoutParams();
        layoutParams.width = i12;
        this.f71068a.setLayoutParams(layoutParams);
        ViewGroup.LayoutParams layoutParams2 = this.f71069b.getLayoutParams();
        layoutParams2.width = iC;
        this.f71069b.setLayoutParams(layoutParams2);
    }

    public final void c() {
        g gVarE = e();
        if (gVarE != null) {
            gVarE.disable();
        }
    }

    public final void d() {
        g gVarE = e();
        if (gVarE != null) {
            gVarE.enable();
        }
    }

    public final void f(boolean z10) {
        this.f71070c = z10;
        i(z10, z10 ? 1 : 0);
    }
}
