package m4;

import com.airbnb.lottie.model.content.ShapeTrimPath;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class u implements c, n4.a.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f69307a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final boolean f69308b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final List f69309c = new ArrayList();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final ShapeTrimPath.Type f69310d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final n4.a f69311e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final n4.a f69312f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final n4.a f69313g;

    public u(com.airbnb.lottie.model.layer.a aVar, ShapeTrimPath shapeTrimPath) {
        this.f69307a = shapeTrimPath.c();
        this.f69308b = shapeTrimPath.g();
        this.f69310d = shapeTrimPath.f();
        n4.d dVarA = shapeTrimPath.e().a();
        this.f69311e = dVarA;
        n4.d dVarA2 = shapeTrimPath.b().a();
        this.f69312f = dVarA2;
        n4.d dVarA3 = shapeTrimPath.d().a();
        this.f69313g = dVarA3;
        aVar.i(dVarA);
        aVar.i(dVarA2);
        aVar.i(dVarA3);
        dVarA.a(this);
        dVarA2.a(this);
        dVarA3.a(this);
    }

    @Override // n4.a.b
    public void a() {
        for (int i11 = 0; i11 < this.f69309c.size(); i11++) {
            ((n4.a.b) this.f69309c.get(i11)).a();
        }
    }

    void b(n4.a.b bVar) {
        this.f69309c.add(bVar);
    }

    @Override // m4.c
    public void c(List list, List list2) {
    }

    public n4.a d() {
        return this.f69312f;
    }

    public n4.a g() {
        return this.f69313g;
    }

    public n4.a i() {
        return this.f69311e;
    }

    ShapeTrimPath.Type j() {
        return this.f69310d;
    }

    public boolean k() {
        return this.f69308b;
    }
}
