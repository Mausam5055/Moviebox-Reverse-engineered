package com.iab.omid.library.vungle.internal;

import android.content.Context;
import java.util.Date;
import java.util.Iterator;

/* JADX INFO: loaded from: classes4.dex */
public class a implements d.a {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static a f33799f = new a(new d());

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected ue.f f33800a = new ue.f();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Date f33801b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f33802c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private d f33803d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f33804e;

    private a(d dVar) {
        this.f33803d = dVar;
    }

    public static a a() {
        return f33799f;
    }

    private void d() {
        if (!this.f33802c || this.f33801b == null) {
            return;
        }
        Iterator it = c.e().a().iterator();
        while (it.hasNext()) {
            ((com.iab.omid.library.vungle.adsession.h) it.next()).k().i(c());
        }
    }

    @Override // com.iab.omid.library.vungle.internal.d.a
    public void a(boolean z10) {
        if (!this.f33804e && z10) {
            e();
        }
        this.f33804e = z10;
    }

    public void b(Context context) {
        if (this.f33802c) {
            return;
        }
        this.f33803d.a(context);
        this.f33803d.b(this);
        this.f33803d.i();
        this.f33804e = this.f33803d.g();
        this.f33802c = true;
    }

    public Date c() {
        Date date = this.f33801b;
        if (date != null) {
            return (Date) date.clone();
        }
        return null;
    }

    public void e() {
        Date dateA = this.f33800a.a();
        Date date = this.f33801b;
        if (date == null || dateA.after(date)) {
            this.f33801b = dateA;
            d();
        }
    }
}
