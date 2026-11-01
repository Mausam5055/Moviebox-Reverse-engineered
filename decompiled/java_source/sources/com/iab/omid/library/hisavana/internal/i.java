package com.iab.omid.library.hisavana.internal;

import android.content.Context;
import android.os.Handler;
import com.iab.omid.library.hisavana.walking.TreeWalker;
import java.util.Iterator;

/* JADX INFO: loaded from: classes4.dex */
public class i implements d.a, ge.c {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static i f33590f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private float f33591a = 0.0f;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ge.e f33592b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final ge.b f33593c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private ge.d f33594d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private c f33595e;

    public i(ge.e eVar, ge.b bVar) {
        this.f33592b = eVar;
        this.f33593c = bVar;
    }

    private c a() {
        if (this.f33595e == null) {
            this.f33595e = c.e();
        }
        return this.f33595e;
    }

    public static i d() {
        if (f33590f == null) {
            f33590f = new i(new ge.e(), new ge.b());
        }
        return f33590f;
    }

    @Override // ge.c
    public void a(float f11) {
        this.f33591a = f11;
        Iterator it = a().a().iterator();
        while (it.hasNext()) {
            ((com.iab.omid.library.hisavana.adsession.h) it.next()).l().b(f11);
        }
    }

    @Override // com.iab.omid.library.hisavana.internal.d.a
    public void a(boolean z10) {
        if (z10) {
            TreeWalker.p().q();
        } else {
            TreeWalker.p().o();
        }
    }

    public void b(Context context) {
        this.f33594d = this.f33592b.a(new Handler(), context, this.f33593c.a(), this);
    }

    public float c() {
        return this.f33591a;
    }

    public void e() {
        b.k().b(this);
        b.k().i();
        TreeWalker.p().q();
        this.f33594d.d();
    }

    public void f() {
        TreeWalker.p().s();
        b.k().j();
        this.f33594d.e();
    }
}
