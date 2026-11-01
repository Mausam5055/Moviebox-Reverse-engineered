package ga;

import ba.i;
import com.google.android.exoplayer2.util.p0;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
final class d implements i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List f63520a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final List f63521b;

    public d(List list, List list2) {
        this.f63520a = list;
        this.f63521b = list2;
    }

    @Override // ba.i
    public List getCues(long j11) {
        int iG = p0.g(this.f63521b, Long.valueOf(j11), true, false);
        return iG == -1 ? Collections.emptyList() : (List) this.f63520a.get(iG);
    }

    @Override // ba.i
    public long getEventTime(int i11) {
        com.google.android.exoplayer2.util.a.a(i11 >= 0);
        com.google.android.exoplayer2.util.a.a(i11 < this.f63521b.size());
        return ((Long) this.f63521b.get(i11)).longValue();
    }

    @Override // ba.i
    public int getEventTimeCount() {
        return this.f63521b.size();
    }

    @Override // ba.i
    public int getNextEventTimeIndex(long j11) {
        int iD = p0.d(this.f63521b, Long.valueOf(j11), false, false);
        if (iD < this.f63521b.size()) {
            return iD;
        }
        return -1;
    }
}
