package androidx.compose.runtime.snapshots;

import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.Map;
import kotlin.Unit;

/* JADX INFO: loaded from: classes.dex */
abstract class y {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final t f4036a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Iterator f4037b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f4038c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Map.Entry f4039d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Map.Entry f4040e;

    public y(t tVar, Iterator it) {
        this.f4036a = tVar;
        this.f4037b = it;
        this.f4038c = tVar.e();
        e();
    }

    protected final void e() {
        this.f4039d = this.f4040e;
        this.f4040e = this.f4037b.hasNext() ? (Map.Entry) this.f4037b.next() : null;
    }

    protected final Map.Entry f() {
        return this.f4039d;
    }

    public final t h() {
        return this.f4036a;
    }

    public final boolean hasNext() {
        return this.f4040e != null;
    }

    protected final Map.Entry i() {
        return this.f4040e;
    }

    public final void remove() {
        if (h().e() != this.f4038c) {
            throw new ConcurrentModificationException();
        }
        Map.Entry entry = this.f4039d;
        if (entry == null) {
            throw new IllegalStateException();
        }
        this.f4036a.remove(entry.getKey());
        this.f4039d = null;
        Unit unit = Unit.f67061a;
        this.f4038c = h().e();
    }
}
