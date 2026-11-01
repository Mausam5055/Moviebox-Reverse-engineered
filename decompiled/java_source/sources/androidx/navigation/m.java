package androidx.navigation;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes2.dex */
public final class m {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f13930b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f13931c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f13933e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f13934f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f13935g;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final l.a f13929a = new l.a();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f13932d = -1;

    private final void j(String str) {
        if (str != null) {
            if (StringsKt.q0(str)) {
                throw new IllegalArgumentException("Cannot pop up to an empty route");
            }
            this.f13933e = str;
            this.f13934f = false;
        }
    }

    public final void a(Function1 animBuilder) {
        Intrinsics.h(animBuilder, "animBuilder");
        a aVar = new a();
        animBuilder.invoke(aVar);
        this.f13929a.b(aVar.a()).c(aVar.b()).e(aVar.c()).f(aVar.d());
    }

    public final l b() {
        l.a aVar = this.f13929a;
        aVar.d(c());
        aVar.j(f());
        if (e() != null) {
            aVar.h(e(), this.f13934f, this.f13935g);
        } else {
            aVar.g(d(), this.f13934f, this.f13935g);
        }
        return aVar.a();
    }

    public final boolean c() {
        return this.f13930b;
    }

    public final int d() {
        return this.f13932d;
    }

    public final String e() {
        return this.f13933e;
    }

    public final boolean f() {
        return this.f13931c;
    }

    public final void g(int i11, Function1 popUpToBuilder) {
        Intrinsics.h(popUpToBuilder, "popUpToBuilder");
        i(i11);
        j(null);
        s sVar = new s();
        popUpToBuilder.invoke(sVar);
        this.f13934f = sVar.a();
        this.f13935g = sVar.b();
    }

    public final void h(boolean z10) {
        this.f13930b = z10;
    }

    public final void i(int i11) {
        this.f13932d = i11;
        this.f13934f = false;
    }
}
