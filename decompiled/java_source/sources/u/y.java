package u;

import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class y extends u {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final i f76528d;

    public y(i iVar) {
        this.f76528d = iVar;
    }

    @Override // java.util.Iterator
    /* JADX INFO: renamed from: p, reason: merged with bridge method [inline-methods] */
    public Map.Entry next() {
        w.a.a(h());
        o(f() + 2);
        return new c(this.f76528d, e()[f() - 2], e()[f() - 1]);
    }
}
