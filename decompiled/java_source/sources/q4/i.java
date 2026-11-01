package q4;

import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class i implements o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final b f73088a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final b f73089b;

    public i(b bVar, b bVar2) {
        this.f73088a = bVar;
        this.f73089b = bVar2;
    }

    @Override // q4.o
    public n4.a a() {
        return new n4.n(this.f73088a.a(), this.f73089b.a());
    }

    @Override // q4.o
    public List b() {
        throw new UnsupportedOperationException("Cannot call getKeyframes on AnimatableSplitDimensionPathValue.");
    }

    @Override // q4.o
    public boolean c() {
        return this.f73088a.c() && this.f73089b.c();
    }
}
