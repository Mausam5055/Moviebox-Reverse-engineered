package com.tn.lib.widget.toast.core;

import android.app.Application;
import android.content.res.Resources;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final h f41479a = new h();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static Application f41480b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static vh.b f41481c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static vh.c f41482d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static Boolean f41483e;

    private h() {
    }

    public static /* synthetic */ void c(h hVar, Application application, vh.c cVar, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            cVar = f41482d;
        }
        hVar.b(application, cVar);
    }

    private final boolean d() {
        if (f41483e == null) {
            Application application = f41480b;
            Intrinsics.e(application);
            f41483e = Boolean.valueOf((application.getApplicationInfo().flags & 2) != 0);
        }
        Boolean bool = f41483e;
        Intrinsics.e(bool);
        return bool.booleanValue();
    }

    public final void a(CharSequence charSequence) {
        if (d()) {
            l(charSequence);
        }
    }

    public final void b(Application application, vh.c cVar) {
        f41480b = application;
        if (f41481c == null) {
            h(new g());
        }
        if (cVar == null) {
            cVar = new wh.a();
        }
        f41479a.i(cVar);
    }

    public final void e(int i11) {
        f(i11, 0, 0);
    }

    public final void f(int i11, int i12, int i13) {
        g(i11, i12, i13, 0.0f, 0.0f);
    }

    public final void g(int i11, int i12, int i13, float f11, float f12) {
        vh.b bVar = f41481c;
        Intrinsics.e(bVar);
        vh.c cVar = f41482d;
        Intrinsics.e(cVar);
        bVar.b(new wh.b(cVar, i11, i12, i13, f11, f12));
    }

    public final void h(vh.b bVar) {
        f41481c = bVar;
        Intrinsics.e(bVar);
        bVar.registerStrategy(f41480b);
    }

    public final void i(vh.c cVar) {
        f41482d = cVar;
        vh.b bVar = f41481c;
        Intrinsics.e(bVar);
        bVar.b(cVar);
    }

    public final void j(int i11) {
        if (i11 <= 0) {
            return;
        }
        i(new wh.c(i11, f41482d));
    }

    public final void k(int i11) {
        try {
            Application application = f41480b;
            Intrinsics.e(application);
            l(application.getResources().getText(i11));
        } catch (Resources.NotFoundException unused) {
            l(String.valueOf(i11));
        }
    }

    public final void l(CharSequence charSequence) {
        if (charSequence == null || charSequence.length() == 0) {
            return;
        }
        vh.b bVar = f41481c;
        Intrinsics.e(bVar);
        bVar.a(charSequence);
    }
}
