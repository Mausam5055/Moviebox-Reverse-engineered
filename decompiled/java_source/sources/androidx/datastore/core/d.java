package androidx.datastore.core;

/* JADX INFO: loaded from: classes.dex */
public final class d extends r {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Object f8591b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f8592c;

    public d(Object obj, int i11, int i12) {
        super(i12, null);
        this.f8591b = obj;
        this.f8592c = i11;
    }

    public final void b() {
        Object obj = this.f8591b;
        if ((obj != null ? obj.hashCode() : 0) != this.f8592c) {
            throw new IllegalStateException("Data in DataStore was mutated but DataStore is only compatible with Immutable types.");
        }
    }

    public final Object c() {
        return this.f8591b;
    }
}
