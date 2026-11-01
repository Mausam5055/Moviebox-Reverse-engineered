package ca;

import ba.i;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
final class f implements i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List f17106a;

    public f(List list) {
        this.f17106a = list;
    }

    @Override // ba.i
    public List getCues(long j11) {
        return j11 >= 0 ? this.f17106a : Collections.emptyList();
    }

    @Override // ba.i
    public long getEventTime(int i11) {
        com.google.android.exoplayer2.util.a.a(i11 == 0);
        return 0L;
    }

    @Override // ba.i
    public int getEventTimeCount() {
        return 1;
    }

    @Override // ba.i
    public int getNextEventTimeIndex(long j11) {
        return j11 < 0 ? 0 : -1;
    }
}
