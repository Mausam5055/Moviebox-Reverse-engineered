package com.iab.omid.library.hisavana.internal;

import android.content.Context;
import java.util.Date;
import java.util.Iterator;

/* JADX INFO: loaded from: classes4.dex */
public class a implements d.a {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static a f33565f = new a(new d());

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected ie.f f33566a = new ie.f();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Date f33567b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f33568c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private d f33569d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f33570e;

    private a(d dVar) {
        this.f33569d = dVar;
    }

    public static a a() {
        return f33565f;
    }

    private void d() {
        if (!this.f33568c || this.f33567b == null) {
            return;
        }
        Iterator it = c.e().a().iterator();
        while (it.hasNext()) {
            ((com.iab.omid.library.hisavana.adsession.h) it.next()).l().i(c());
        }
    }

    @Override // com.iab.omid.library.hisavana.internal.d.a
    public void a(boolean z10) {
        if (!this.f33570e && z10) {
            e();
        }
        this.f33570e = z10;
    }

    public void b(Context context) {
        if (this.f33568c) {
            return;
        }
        this.f33569d.a(context);
        this.f33569d.b(this);
        this.f33569d.i();
        this.f33570e = this.f33569d.g();
        this.f33568c = true;
    }

    public Date c() {
        Date date = this.f33567b;
        if (date != null) {
            return (Date) date.clone();
        }
        return null;
    }

    public void e() {
        Date dateA = this.f33566a.a();
        Date date = this.f33567b;
        if (date == null || dateA.after(date)) {
            this.f33567b = dateA;
            d();
        }
    }
}
