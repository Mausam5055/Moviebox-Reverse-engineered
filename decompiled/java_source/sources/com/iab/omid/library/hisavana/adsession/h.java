package com.iab.omid.library.hisavana.adsession;

import android.view.View;
import com.iab.omid.library.hisavana.internal.i;
import com.iab.omid.library.hisavana.publisher.AdSessionStatePublisher;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;

/* JADX INFO: loaded from: classes4.dex */
public class h extends b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final d f33555a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final c f33556b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final com.iab.omid.library.hisavana.internal.f f33557c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private ke.a f33558d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private AdSessionStatePublisher f33559e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f33560f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f33561g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final String f33562h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f33563i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f33564j;

    h(c cVar, d dVar) {
        this(cVar, dVar, UUID.randomUUID().toString());
    }

    h(c cVar, d dVar, String str) {
        this.f33557c = new com.iab.omid.library.hisavana.internal.f();
        this.f33560f = false;
        this.f33561g = false;
        this.f33556b = cVar;
        this.f33555a = dVar;
        this.f33562h = str;
        j(null);
        this.f33559e = (dVar.b() == AdSessionContextType.HTML || dVar.b() == AdSessionContextType.JAVASCRIPT) ? new com.iab.omid.library.hisavana.publisher.a(str, dVar.i()) : new com.iab.omid.library.hisavana.publisher.b(str, dVar.e(), dVar.f());
        this.f33559e.u();
        com.iab.omid.library.hisavana.internal.c.e().b(this);
        this.f33559e.e(cVar);
    }

    private void f() {
        if (this.f33563i) {
            throw new IllegalStateException("Impression event can only be sent once");
        }
    }

    private void g(View view) {
        Collection<h> collectionC = com.iab.omid.library.hisavana.internal.c.e().c();
        if (collectionC == null || collectionC.isEmpty()) {
            return;
        }
        for (h hVar : collectionC) {
            if (hVar != this && hVar.m() == view) {
                hVar.f33558d.clear();
            }
        }
    }

    private void i() {
        if (this.f33564j) {
            throw new IllegalStateException("Loaded event can only be sent once");
        }
    }

    private void j(View view) {
        this.f33558d = new ke.a(view);
    }

    @Override // com.iab.omid.library.hisavana.adsession.b
    public void a(View view, FriendlyObstructionPurpose friendlyObstructionPurpose, String str) {
        if (this.f33561g) {
            return;
        }
        this.f33557c.c(view, friendlyObstructionPurpose, str);
    }

    @Override // com.iab.omid.library.hisavana.adsession.b
    public void c() {
        if (this.f33561g) {
            return;
        }
        this.f33558d.clear();
        v();
        this.f33561g = true;
        l().q();
        com.iab.omid.library.hisavana.internal.c.e().d(this);
        l().l();
        this.f33559e = null;
    }

    @Override // com.iab.omid.library.hisavana.adsession.b
    public void d(View view) {
        if (this.f33561g || m() == view) {
            return;
        }
        j(view);
        l().a();
        g(view);
    }

    @Override // com.iab.omid.library.hisavana.adsession.b
    public void e() {
        if (this.f33560f || this.f33559e == null) {
            return;
        }
        this.f33560f = true;
        com.iab.omid.library.hisavana.internal.c.e().f(this);
        this.f33559e.b(i.d().c());
        this.f33559e.i(com.iab.omid.library.hisavana.internal.a.a().c());
        this.f33559e.f(this, this.f33555a);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void h(List list) {
        if (o()) {
            ArrayList arrayList = new ArrayList();
            Iterator it = list.iterator();
            while (it.hasNext()) {
                View view = (View) ((ke.a) it.next()).get();
                if (view != null) {
                    arrayList.add(view);
                }
            }
            throw null;
        }
    }

    public String k() {
        return this.f33562h;
    }

    public AdSessionStatePublisher l() {
        return this.f33559e;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public View m() {
        return (View) this.f33558d.get();
    }

    public List n() {
        return this.f33557c.a();
    }

    public boolean o() {
        return false;
    }

    public boolean p() {
        return this.f33560f && !this.f33561g;
    }

    public boolean q() {
        return this.f33561g;
    }

    public boolean r() {
        return this.f33556b.b();
    }

    public boolean s() {
        return this.f33560f;
    }

    void t() {
        f();
        l().r();
        this.f33563i = true;
    }

    void u() {
        i();
        l().t();
        this.f33564j = true;
    }

    public void v() {
        if (this.f33561g) {
            return;
        }
        this.f33557c.f();
    }
}
