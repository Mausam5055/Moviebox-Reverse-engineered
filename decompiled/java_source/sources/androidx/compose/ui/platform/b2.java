package androidx.compose.ui.platform;

import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class b2 implements androidx.compose.ui.node.z0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f5738a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final List f5739b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Float f5740c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Float f5741d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private androidx.compose.ui.semantics.g f5742e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private androidx.compose.ui.semantics.g f5743f;

    public b2(int i11, List list, Float f11, Float f12, androidx.compose.ui.semantics.g gVar, androidx.compose.ui.semantics.g gVar2) {
        this.f5738a = i11;
        this.f5739b = list;
        this.f5740c = f11;
        this.f5741d = f12;
        this.f5742e = gVar;
        this.f5743f = gVar2;
    }

    public final androidx.compose.ui.semantics.g a() {
        return this.f5742e;
    }

    public final Float b() {
        return this.f5740c;
    }

    public final Float c() {
        return this.f5741d;
    }

    public final int d() {
        return this.f5738a;
    }

    public final androidx.compose.ui.semantics.g e() {
        return this.f5743f;
    }

    public final void f(androidx.compose.ui.semantics.g gVar) {
        this.f5742e = gVar;
    }

    public final void g(Float f11) {
        this.f5740c = f11;
    }

    public final void h(Float f11) {
        this.f5741d = f11;
    }

    public final void i(androidx.compose.ui.semantics.g gVar) {
        this.f5743f = gVar;
    }

    @Override // androidx.compose.ui.node.z0
    public boolean isValidOwnerScope() {
        return this.f5739b.contains(this);
    }
}
