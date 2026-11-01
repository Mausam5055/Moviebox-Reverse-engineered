package com.iab.omid.library.mmadbridge.internal;

import android.content.Context;
import java.util.Date;
import java.util.Iterator;

/* JADX INFO: loaded from: classes4.dex */
public class a implements d.a {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static a f33684f = new a(new d());

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected oe.f f33685a = new oe.f();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Date f33686b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f33687c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private d f33688d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f33689e;

    private a(d dVar) {
        this.f33688d = dVar;
    }

    public static a a() {
        return f33684f;
    }

    private void d() {
        if (!this.f33687c || this.f33686b == null) {
            return;
        }
        Iterator it = c.e().a().iterator();
        while (it.hasNext()) {
            ((com.iab.omid.library.mmadbridge.adsession.h) it.next()).t().l(c());
        }
    }

    @Override // com.iab.omid.library.mmadbridge.internal.d.a
    public void a(boolean z10) {
        if (!this.f33689e && z10) {
            e();
        }
        this.f33689e = z10;
    }

    public void b(Context context) {
        if (this.f33687c) {
            return;
        }
        this.f33688d.a(context);
        this.f33688d.b(this);
        this.f33688d.i();
        this.f33689e = this.f33688d.g();
        this.f33687c = true;
    }

    public Date c() {
        Date date = this.f33686b;
        if (date != null) {
            return (Date) date.clone();
        }
        return null;
    }

    public void e() {
        Date dateA = this.f33685a.a();
        Date date = this.f33686b;
        if (date == null || dateA.after(date)) {
            this.f33686b = dateA;
            d();
        }
    }
}
