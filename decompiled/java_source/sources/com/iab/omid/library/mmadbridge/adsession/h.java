package com.iab.omid.library.mmadbridge.adsession;

import android.view.View;
import com.iab.omid.library.mmadbridge.internal.i;
import com.iab.omid.library.mmadbridge.publisher.AdSessionStatePublisher;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class h extends b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final d f33669a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final c f33670b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final com.iab.omid.library.mmadbridge.internal.f f33671c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private qe.a f33672d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private AdSessionStatePublisher f33673e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f33674f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f33675g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final String f33676h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f33677i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f33678j;

    h(c cVar, d dVar) {
        this(cVar, dVar, UUID.randomUUID().toString());
    }

    h(c cVar, d dVar, String str) {
        this.f33671c = new com.iab.omid.library.mmadbridge.internal.f();
        this.f33674f = false;
        this.f33675g = false;
        this.f33670b = cVar;
        this.f33669a = dVar;
        this.f33676h = str;
        m(null);
        this.f33673e = (dVar.c() == AdSessionContextType.HTML || dVar.c() == AdSessionContextType.JAVASCRIPT) ? new com.iab.omid.library.mmadbridge.publisher.a(str, dVar.j()) : new com.iab.omid.library.mmadbridge.publisher.b(str, dVar.f(), dVar.g());
        this.f33673e.y();
        com.iab.omid.library.mmadbridge.internal.c.e().b(this);
        this.f33673e.e(cVar);
    }

    private void h() {
        if (this.f33677i) {
            throw new IllegalStateException("Impression event can only be sent once");
        }
    }

    private void i(View view) {
        Collection<h> collectionC = com.iab.omid.library.mmadbridge.internal.c.e().c();
        if (collectionC == null || collectionC.isEmpty()) {
            return;
        }
        for (h hVar : collectionC) {
            if (hVar != this && hVar.n() == view) {
                hVar.f33672d.clear();
            }
        }
    }

    private void l() {
        if (this.f33678j) {
            throw new IllegalStateException("Loaded event can only be sent once");
        }
    }

    private void m(View view) {
        this.f33672d = new qe.a(view);
    }

    @Override // com.iab.omid.library.mmadbridge.adsession.b
    public void a(View view, FriendlyObstructionPurpose friendlyObstructionPurpose, String str) {
        if (this.f33675g) {
            return;
        }
        this.f33671c.c(view, friendlyObstructionPurpose, str);
    }

    @Override // com.iab.omid.library.mmadbridge.adsession.b
    public void c() {
        if (this.f33675g) {
            return;
        }
        this.f33672d.clear();
        e();
        this.f33675g = true;
        t().u();
        com.iab.omid.library.mmadbridge.internal.c.e().d(this);
        t().o();
        this.f33673e = null;
    }

    @Override // com.iab.omid.library.mmadbridge.adsession.b
    public void d(View view) {
        if (this.f33675g) {
            return;
        }
        oe.g.d(view, "AdView is null");
        if (n() == view) {
            return;
        }
        m(view);
        t().a();
        i(view);
    }

    @Override // com.iab.omid.library.mmadbridge.adsession.b
    public void e() {
        if (this.f33675g) {
            return;
        }
        this.f33671c.f();
    }

    @Override // com.iab.omid.library.mmadbridge.adsession.b
    public void f(View view) {
        if (this.f33675g) {
            return;
        }
        this.f33671c.g(view);
    }

    @Override // com.iab.omid.library.mmadbridge.adsession.b
    public void g() {
        if (this.f33674f) {
            return;
        }
        this.f33674f = true;
        com.iab.omid.library.mmadbridge.internal.c.e().f(this);
        this.f33673e.b(i.d().c());
        this.f33673e.l(com.iab.omid.library.mmadbridge.internal.a.a().c());
        this.f33673e.f(this, this.f33669a);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void j(List list) {
        if (p()) {
            ArrayList arrayList = new ArrayList();
            Iterator it = list.iterator();
            while (it.hasNext()) {
                View view = (View) ((qe.a) it.next()).get();
                if (view != null) {
                    arrayList.add(view);
                }
            }
            throw null;
        }
    }

    void k(JSONObject jSONObject) {
        l();
        t().m(jSONObject);
        this.f33678j = true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public View n() {
        return (View) this.f33672d.get();
    }

    public List o() {
        return this.f33671c.a();
    }

    public boolean p() {
        return false;
    }

    public boolean q() {
        return this.f33674f && !this.f33675g;
    }

    public boolean r() {
        return this.f33675g;
    }

    public String s() {
        return this.f33676h;
    }

    public AdSessionStatePublisher t() {
        return this.f33673e;
    }

    public boolean u() {
        return this.f33670b.b();
    }

    public boolean v() {
        return this.f33670b.c();
    }

    public boolean w() {
        return this.f33674f;
    }

    void x() {
        h();
        t().v();
        this.f33677i = true;
    }

    void y() {
        l();
        t().x();
        this.f33678j = true;
    }
}
