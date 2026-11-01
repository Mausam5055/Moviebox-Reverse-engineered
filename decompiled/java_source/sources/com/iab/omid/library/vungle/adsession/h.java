package com.iab.omid.library.vungle.adsession;

import android.view.View;
import com.iab.omid.library.vungle.internal.i;
import com.iab.omid.library.vungle.publisher.AdSessionStatePublisher;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;

/* JADX INFO: loaded from: classes4.dex */
public class h extends b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final d f33789a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final c f33790b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final com.iab.omid.library.vungle.internal.f f33791c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private we.a f33792d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private AdSessionStatePublisher f33793e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f33794f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f33795g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final String f33796h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f33797i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f33798j;

    h(c cVar, d dVar) {
        this(cVar, dVar, UUID.randomUUID().toString());
    }

    h(c cVar, d dVar, String str) {
        this.f33791c = new com.iab.omid.library.vungle.internal.f();
        this.f33794f = false;
        this.f33795g = false;
        this.f33790b = cVar;
        this.f33789a = dVar;
        this.f33796h = str;
        i(null);
        this.f33793e = (dVar.c() == AdSessionContextType.HTML || dVar.c() == AdSessionContextType.JAVASCRIPT) ? new com.iab.omid.library.vungle.publisher.a(str, dVar.j()) : new com.iab.omid.library.vungle.publisher.b(str, dVar.f(), dVar.g());
        this.f33793e.u();
        com.iab.omid.library.vungle.internal.c.e().b(this);
        this.f33793e.e(cVar);
    }

    private void e() {
        if (this.f33797i) {
            throw new IllegalStateException("Impression event can only be sent once");
        }
    }

    private void f(View view) {
        Collection<h> collectionC = com.iab.omid.library.vungle.internal.c.e().c();
        if (collectionC == null || collectionC.isEmpty()) {
            return;
        }
        for (h hVar : collectionC) {
            if (hVar != this && hVar.l() == view) {
                hVar.f33792d.clear();
            }
        }
    }

    private void h() {
        if (this.f33798j) {
            throw new IllegalStateException("Loaded event can only be sent once");
        }
    }

    private void i(View view) {
        this.f33792d = new we.a(view);
    }

    @Override // com.iab.omid.library.vungle.adsession.b
    public void b() {
        if (this.f33795g) {
            return;
        }
        this.f33792d.clear();
        u();
        this.f33795g = true;
        k().q();
        com.iab.omid.library.vungle.internal.c.e().d(this);
        k().l();
        this.f33793e = null;
    }

    @Override // com.iab.omid.library.vungle.adsession.b
    public void c(View view) {
        if (this.f33795g || l() == view) {
            return;
        }
        i(view);
        k().a();
        f(view);
    }

    @Override // com.iab.omid.library.vungle.adsession.b
    public void d() {
        if (this.f33794f || this.f33793e == null) {
            return;
        }
        this.f33794f = true;
        com.iab.omid.library.vungle.internal.c.e().f(this);
        this.f33793e.b(i.d().c());
        this.f33793e.i(com.iab.omid.library.vungle.internal.a.a().c());
        this.f33793e.f(this, this.f33789a);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void g(List list) {
        if (n()) {
            ArrayList arrayList = new ArrayList();
            Iterator it = list.iterator();
            while (it.hasNext()) {
                View view = (View) ((we.a) it.next()).get();
                if (view != null) {
                    arrayList.add(view);
                }
            }
            throw null;
        }
    }

    public String j() {
        return this.f33796h;
    }

    public AdSessionStatePublisher k() {
        return this.f33793e;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public View l() {
        return (View) this.f33792d.get();
    }

    public List m() {
        return this.f33791c.a();
    }

    public boolean n() {
        return false;
    }

    public boolean o() {
        return this.f33794f && !this.f33795g;
    }

    public boolean p() {
        return this.f33795g;
    }

    public boolean q() {
        return this.f33790b.b();
    }

    public boolean r() {
        return this.f33794f;
    }

    void s() {
        e();
        k().r();
        this.f33797i = true;
    }

    void t() {
        h();
        k().t();
        this.f33798j = true;
    }

    public void u() {
        if (this.f33795g) {
            return;
        }
        this.f33791c.b();
    }
}
