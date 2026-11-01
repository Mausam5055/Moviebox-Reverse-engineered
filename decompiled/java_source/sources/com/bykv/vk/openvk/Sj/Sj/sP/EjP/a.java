package com.bykv.vk.openvk.Sj.Sj.sP.EjP;

/* JADX INFO: loaded from: classes2.dex */
public abstract class a implements b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private b.InterfaceC0188b f20162a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private b.f f20163b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private b.d f20164c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private b.g f20165d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private b.c f20166e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private b.e f20167f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private b.a f20168g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    protected boolean f20169h = false;

    @Override // com.bykv.vk.openvk.Sj.Sj.sP.EjP.b
    public void Sj(boolean z10) {
        this.f20169h = z10;
    }

    @Override // com.bykv.vk.openvk.Sj.Sj.sP.EjP.b
    public final void a(b.g gVar) {
        this.f20165d = gVar;
    }

    @Override // com.bykv.vk.openvk.Sj.Sj.sP.EjP.b
    public final void b(b.d dVar) {
        this.f20164c = dVar;
    }

    @Override // com.bykv.vk.openvk.Sj.Sj.sP.EjP.b
    public final void c(b.a aVar) {
        this.f20168g = aVar;
    }

    @Override // com.bykv.vk.openvk.Sj.Sj.sP.EjP.b
    public final void e(b.f fVar) {
        this.f20163b = fVar;
    }

    @Override // com.bykv.vk.openvk.Sj.Sj.sP.EjP.b
    public final void f(b.e eVar) {
        this.f20167f = eVar;
    }

    @Override // com.bykv.vk.openvk.Sj.Sj.sP.EjP.b
    public final void i(b.c cVar) {
        this.f20166e = cVar;
    }

    @Override // com.bykv.vk.openvk.Sj.Sj.sP.EjP.b
    public final void j(b.InterfaceC0188b interfaceC0188b) {
        this.f20162a = interfaceC0188b;
    }

    protected final void k() {
        try {
            b.g gVar = this.f20165d;
            if (gVar != null) {
                gVar.TKC(this);
            }
        } catch (Throwable unused) {
        }
    }

    public void l() {
        this.f20162a = null;
        this.f20164c = null;
        this.f20163b = null;
        this.f20165d = null;
        this.f20166e = null;
        this.f20167f = null;
        this.f20168g = null;
    }

    protected final void m(int i11) {
        try {
            b.d dVar = this.f20164c;
            if (dVar != null) {
                dVar.Sj(this, i11);
            }
        } catch (Throwable unused) {
        }
    }

    protected final void n(int i11, int i12, int i13, int i14) {
        try {
            b.c cVar = this.f20166e;
            if (cVar != null) {
                cVar.Sj(this, i11, i12, i13, i14);
            }
        } catch (Throwable unused) {
        }
    }

    protected final boolean o(int i11, int i12) {
        try {
            b.e eVar = this.f20167f;
            return eVar != null && eVar.Sj(this, i11, i12);
        } catch (Throwable unused) {
        }
    }

    protected final void p() {
        try {
            b.f fVar = this.f20163b;
            if (fVar != null) {
                fVar.Sj(this);
            }
        } catch (Throwable unused) {
        }
    }

    protected final void q() {
        try {
            b.InterfaceC0188b interfaceC0188b = this.f20162a;
            if (interfaceC0188b != null) {
                interfaceC0188b.sP(this);
            }
        } catch (Throwable unused) {
        }
    }

    protected final boolean r(int i11, int i12) {
        try {
            b.a aVar = this.f20168g;
            return aVar != null && aVar.sP(this, i11, i12);
        } catch (Throwable unused) {
        }
    }
}
