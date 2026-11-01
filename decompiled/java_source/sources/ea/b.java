package ea;

import ba.i;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
final class b implements i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List f61842a;

    public b(List list) {
        this.f61842a = list;
    }

    @Override // ba.i
    public List getCues(long j11) {
        return this.f61842a;
    }

    @Override // ba.i
    public long getEventTime(int i11) {
        return 0L;
    }

    @Override // ba.i
    public int getEventTimeCount() {
        return 1;
    }

    @Override // ba.i
    public int getNextEventTimeIndex(long j11) {
        return -1;
    }
}
