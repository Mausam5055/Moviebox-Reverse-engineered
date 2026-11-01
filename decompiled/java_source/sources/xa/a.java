package xa;

import android.graphics.Typeface;

/* JADX INFO: loaded from: classes5.dex */
public final class a extends f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Typeface f78153a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final InterfaceC0960a f78154b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f78155c;

    /* JADX INFO: renamed from: xa.a$a, reason: collision with other inner class name */
    /* JADX INFO: loaded from: classes4.dex */
    public interface InterfaceC0960a {
        void a(Typeface typeface);
    }

    public a(InterfaceC0960a interfaceC0960a, Typeface typeface) {
        this.f78153a = typeface;
        this.f78154b = interfaceC0960a;
    }

    private void d(Typeface typeface) {
        if (this.f78155c) {
            return;
        }
        this.f78154b.a(typeface);
    }

    @Override // xa.f
    public void a(int i11) {
        d(this.f78153a);
    }

    @Override // xa.f
    public void b(Typeface typeface, boolean z10) {
        d(typeface);
    }

    public void c() {
        this.f78155c = true;
    }
}
