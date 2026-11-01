package com.iab.omid.library.bytedance2.internal;

import android.content.Context;
import androidx.annotation.NonNull;
import java.util.Date;
import java.util.Iterator;

/* JADX INFO: loaded from: classes4.dex */
public class a implements d.a {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static a f33435f = new a(new d());

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected com.iab.omid.library.bytedance2.utils.f f33436a = new com.iab.omid.library.bytedance2.utils.f();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Date f33437b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f33438c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private d f33439d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f33440e;

    private a(d dVar) {
        this.f33439d = dVar;
    }

    public static a a() {
        return f33435f;
    }

    private void c() {
        if (!this.f33438c || this.f33437b == null) {
            return;
        }
        Iterator<com.iab.omid.library.bytedance2.adsession.a> it = c.c().a().iterator();
        while (it.hasNext()) {
            it.next().getAdSessionStatePublisher().a(b());
        }
    }

    public void a(@NonNull Context context) {
        if (this.f33438c) {
            return;
        }
        this.f33439d.a(context);
        this.f33439d.a(this);
        this.f33439d.e();
        this.f33440e = this.f33439d.c();
        this.f33438c = true;
    }

    @Override // com.iab.omid.library.bytedance2.internal.d.a
    public void a(boolean z10) {
        if (!this.f33440e && z10) {
            d();
        }
        this.f33440e = z10;
    }

    public Date b() {
        Date date = this.f33437b;
        if (date != null) {
            return (Date) date.clone();
        }
        return null;
    }

    public void d() {
        Date dateA = this.f33436a.a();
        Date date = this.f33437b;
        if (date == null || dateA.after(date)) {
            this.f33437b = dateA;
            c();
        }
    }
}
