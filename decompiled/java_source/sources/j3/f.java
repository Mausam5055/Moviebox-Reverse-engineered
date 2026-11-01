package j3;

import i3.k;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
final class f implements k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List f65939a;

    public f(List list) {
        this.f65939a = list;
    }

    @Override // i3.k
    public List getCues(long j11) {
        return j11 >= 0 ? this.f65939a : Collections.emptyList();
    }

    @Override // i3.k
    public long getEventTime(int i11) {
        androidx.media3.common.util.a.a(i11 == 0);
        return 0L;
    }

    @Override // i3.k
    public int getEventTimeCount() {
        return 1;
    }

    @Override // i3.k
    public int getNextEventTimeIndex(long j11) {
        return j11 < 0 ? 0 : -1;
    }
}
