package u8;

/* JADX INFO: loaded from: classes4.dex */
public final class c implements b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final c f76687b = new c(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Object f76688a;

    private c(Object obj) {
        this.f76688a = obj;
    }

    public static b a(Object obj) {
        return new c(d.c(obj, "instance cannot be null"));
    }

    @Override // uz.a
    public Object get() {
        return this.f76688a;
    }
}
