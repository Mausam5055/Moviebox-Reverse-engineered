package kotlinx.coroutines.flow;

import java.util.List;
import kotlin.collections.CollectionsKt;

/* JADX INFO: loaded from: classes7.dex */
final class StartedWhileSubscribed implements g1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final long f67768b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final long f67769c;

    public StartedWhileSubscribed(long j11, long j12) {
        this.f67768b = j11;
        this.f67769c = j12;
        if (j11 < 0) {
            throw new IllegalArgumentException(("stopTimeout(" + j11 + " ms) cannot be negative").toString());
        }
        if (j12 >= 0) {
            return;
        }
        throw new IllegalArgumentException(("replayExpiration(" + j12 + " ms) cannot be negative").toString());
    }

    @Override // kotlinx.coroutines.flow.g1
    public b a(i1 i1Var) {
        return d.k(d.l(d.H(i1Var, new StartedWhileSubscribed$command$1(this, null)), new StartedWhileSubscribed$command$2(null)));
    }

    public boolean equals(Object obj) {
        if (obj instanceof StartedWhileSubscribed) {
            StartedWhileSubscribed startedWhileSubscribed = (StartedWhileSubscribed) obj;
            if (this.f67768b == startedWhileSubscribed.f67768b && this.f67769c == startedWhileSubscribed.f67769c) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return (androidx.collection.s.a(this.f67768b) * 31) + androidx.collection.s.a(this.f67769c);
    }

    public String toString() {
        List listD = CollectionsKt.d(2);
        if (this.f67768b > 0) {
            listD.add("stopTimeout=" + this.f67768b + "ms");
        }
        if (this.f67769c < Long.MAX_VALUE) {
            listD.add("replayExpiration=" + this.f67769c + "ms");
        }
        return "SharingStarted.WhileSubscribed(" + CollectionsKt.s0(CollectionsKt.a(listD), null, null, null, 0, null, null, 63, null) + ')';
    }
}
