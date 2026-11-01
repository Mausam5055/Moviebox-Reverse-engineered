package com.iab.omid.library.vungle.internal;

import android.content.Context;
import android.os.Handler;
import com.iab.omid.library.vungle.walking.TreeWalker;
import java.util.Iterator;

/* JADX INFO: loaded from: classes4.dex */
public class i implements d.a, se.c {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static i f33820f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private float f33821a = 0.0f;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final se.e f33822b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final se.b f33823c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private se.d f33824d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private c f33825e;

    public i(se.e eVar, se.b bVar) {
        this.f33822b = eVar;
        this.f33823c = bVar;
    }

    private c a() {
        if (this.f33825e == null) {
            this.f33825e = c.e();
        }
        return this.f33825e;
    }

    public static i d() {
        if (f33820f == null) {
            f33820f = new i(new se.e(), new se.b());
        }
        return f33820f;
    }

    @Override // se.c
    public void a(float f11) {
        this.f33821a = f11;
        Iterator it = a().a().iterator();
        while (it.hasNext()) {
            ((com.iab.omid.library.vungle.adsession.h) it.next()).k().b(f11);
        }
    }

    @Override // com.iab.omid.library.vungle.internal.d.a
    public void a(boolean z10) {
        if (z10) {
            TreeWalker.p().q();
        } else {
            TreeWalker.p().o();
        }
    }

    public void b(Context context) {
        this.f33824d = this.f33822b.a(new Handler(), context, this.f33823c.a(), this);
    }

    public float c() {
        return this.f33821a;
    }

    public void e() {
        b.k().b(this);
        b.k().i();
        TreeWalker.p().q();
        this.f33824d.d();
    }

    public void f() {
        TreeWalker.p().s();
        b.k().j();
        this.f33824d.e();
    }
}
