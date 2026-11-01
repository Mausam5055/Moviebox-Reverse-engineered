package com.transsion.shorttv.base.widget.toast.core;

import android.app.Application;
import android.content.res.Resources;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final h f52989a = new h();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static Application f52990b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static gs.b f52991c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static gs.c f52992d;

    private h() {
    }

    public static /* synthetic */ void b(h hVar, Application application, gs.c cVar, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            cVar = f52992d;
        }
        hVar.a(application, cVar);
    }

    public final void a(Application application, gs.c cVar) {
        f52990b = application;
        if (f52991c == null) {
            e(new g());
        }
        if (cVar == null) {
            cVar = new hs.a();
        }
        f52989a.f(cVar);
    }

    public final void c(int i11, int i12, int i13) {
        d(i11, i12, i13, 0.0f, 0.0f);
    }

    public final void d(int i11, int i12, int i13, float f11, float f12) {
        gs.b bVar = f52991c;
        Intrinsics.e(bVar);
        gs.c cVar = f52992d;
        Intrinsics.e(cVar);
        bVar.b(new hs.b(cVar, i11, i12, i13, f11, f12));
    }

    public final void e(gs.b bVar) {
        f52991c = bVar;
        Intrinsics.e(bVar);
        bVar.registerStrategy(f52990b);
    }

    public final void f(gs.c cVar) {
        f52992d = cVar;
        gs.b bVar = f52991c;
        Intrinsics.e(bVar);
        bVar.b(cVar);
    }

    public final void g(int i11) {
        if (i11 <= 0) {
            return;
        }
        f(new hs.c(i11, f52992d));
    }

    public final void h(int i11) {
        try {
            Application application = f52990b;
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
        gs.b bVar = f52991c;
        Intrinsics.e(bVar);
        bVar.a(charSequence);
    }
}
