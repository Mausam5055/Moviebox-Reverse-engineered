package ja;

import ba.i;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
final class b implements i {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final b f65979b = new b();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List f65980a;

    private b() {
        this.f65980a = Collections.emptyList();
    }

    public b(ba.b bVar) {
        this.f65980a = Collections.singletonList(bVar);
    }

    @Override // ba.i
    public List getCues(long j11) {
        return j11 >= 0 ? this.f65980a : Collections.emptyList();
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
