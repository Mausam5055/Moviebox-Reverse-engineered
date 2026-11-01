package com.transsion.shorttv_pugc.base.widget.toast.core;

import android.app.Application;
import android.content.res.Resources;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final h f53969a = new h();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static Application f53970b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static lt.b f53971c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static lt.c f53972d;

    private h() {
    }

    public static /* synthetic */ void b(h hVar, Application application, lt.c cVar, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            cVar = f53972d;
        }
        hVar.a(application, cVar);
    }

    public final void a(Application application, lt.c cVar) {
        f53970b = application;
        if (f53971c == null) {
            e(new g());
        }
        if (cVar == null) {
            cVar = new mt.a();
        }
        f53969a.f(cVar);
    }

    public final void c(int i11, int i12, int i13) {
        d(i11, i12, i13, 0.0f, 0.0f);
    }

    public final void d(int i11, int i12, int i13, float f11, float f12) {
        lt.b bVar = f53971c;
        Intrinsics.e(bVar);
        lt.c cVar = f53972d;
        Intrinsics.e(cVar);
        bVar.b(new mt.b(cVar, i11, i12, i13, f11, f12));
    }

    public final void e(lt.b bVar) {
        f53971c = bVar;
        Intrinsics.e(bVar);
        bVar.registerStrategy(f53970b);
    }

    public final void f(lt.c cVar) {
        f53972d = cVar;
        lt.b bVar = f53971c;
        Intrinsics.e(bVar);
        bVar.b(cVar);
    }

    public final void g(int i11) {
        if (i11 <= 0) {
            return;
        }
        f(new mt.c(i11, f53972d));
    }

    public final void h(int i11) {
        try {
            Application application = f53970b;
            Intrinsics.e(application);
            i(application.getResources().getText(i11));
        } catch (Resources.NotFoundException unused) {
            i(String.valueOf(i11));
        }
    }

    public final void i(CharSequence charSequence) {
        if (charSequence == null || charSequence.length() == 0) {
            return;
        }
        lt.b bVar = f53971c;
        Intrinsics.e(bVar);
        bVar.a(charSequence);
    }
}
