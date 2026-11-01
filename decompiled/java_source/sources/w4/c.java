package w4;

/* JADX INFO: loaded from: classes2.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final b f77586a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private n4.a f77587b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected Object f77588c;

    public c() {
        this.f77586a = new b();
        this.f77588c = null;
    }

    public c(Object obj) {
        this.f77586a = new b();
        this.f77588c = obj;
    }

    public Object a(b bVar) {
        return this.f77588c;
    }

    public final Object b(float f11, float f12, Object obj, Object obj2, float f13, float f14, float f15) {
        return a(this.f77586a.h(f11, f12, obj, obj2, f13, f14, f15));
    }

    public final void c(n4.a aVar) {
        this.f77587b = aVar;
    }
}
