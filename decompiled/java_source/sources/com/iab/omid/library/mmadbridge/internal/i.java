package com.iab.omid.library.mmadbridge.internal;

import android.content.Context;
import android.os.Handler;
import com.iab.omid.library.mmadbridge.walking.TreeWalker;
import java.util.Iterator;

/* JADX INFO: loaded from: classes4.dex */
public class i implements d.a, me.c {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static i f33709f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private float f33710a = 0.0f;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final me.e f33711b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final me.b f33712c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private me.d f33713d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private c f33714e;

    public i(me.e eVar, me.b bVar) {
        this.f33711b = eVar;
        this.f33712c = bVar;
    }

    private c a() {
        if (this.f33714e == null) {
            this.f33714e = c.e();
        }
        return this.f33714e;
    }

    public static i d() {
        if (f33709f == null) {
            f33709f = new i(new me.e(), new me.b());
        }
        return f33709f;
    }

    @Override // me.c
    public void a(float f11) {
        this.f33710a = f11;
        Iterator it = a().a().iterator();
        while (it.hasNext()) {
            ((com.iab.omid.library.mmadbridge.adsession.h) it.next()).t().b(f11);
        }
    }

    @Override // com.iab.omid.library.mmadbridge.internal.d.a
    public void a(boolean z10) {
        if (z10) {
            TreeWalker.p().q();
        } else {
            TreeWalker.p().o();
        }
    }

    public void b(Context context) {
        this.f33713d = this.f33711b.a(new Handler(), context, this.f33712c.a(), this);
    }

    public float c() {
        return this.f33710a;
    }

    public void e() {
        b.k().b(this);
        b.k().i();
        TreeWalker.p().q();
        this.f33713d.d();
    }

    public void f() {
        TreeWalker.p().s();
        b.k().j();
        this.f33713d.e();
    }
}
