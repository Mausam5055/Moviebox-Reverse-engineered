package ia;

import ba.i;
import com.google.android.exoplayer2.util.p0;
import java.util.Collections;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
final class h implements i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final d f65146a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final long[] f65147b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Map f65148c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Map f65149d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Map f65150e;

    public h(d dVar, Map map, Map map2, Map map3) {
        this.f65146a = dVar;
        this.f65149d = map2;
        this.f65150e = map3;
        this.f65148c = map != null ? Collections.unmodifiableMap(map) : Collections.emptyMap();
        this.f65147b = dVar.j();
    }

    @Override // ba.i
    public List getCues(long j11) {
        return this.f65146a.h(j11, this.f65148c, this.f65149d, this.f65150e);
    }

    @Override // ba.i
    public long getEventTime(int i11) {
        return this.f65147b[i11];
    }

    @Override // ba.i
    public int getEventTimeCount() {
        return this.f65147b.length;
    }

    @Override // ba.i
    public int getNextEventTimeIndex(long j11) {
        int iE = p0.e(this.f65147b, j11, false, false);
        if (iE < this.f65147b.length) {
            return iE;
        }
        return -1;
    }
}
