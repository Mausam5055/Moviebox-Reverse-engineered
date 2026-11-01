package o3;

import androidx.media3.common.util.a1;
import i3.k;
import java.util.Collections;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
final class h implements k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final c f70722a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final long[] f70723b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Map f70724c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Map f70725d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Map f70726e;

    public h(c cVar, Map map, Map map2, Map map3) {
        this.f70722a = cVar;
        this.f70725d = map2;
        this.f70726e = map3;
        this.f70724c = map != null ? Collections.unmodifiableMap(map) : Collections.emptyMap();
        this.f70723b = cVar.j();
    }

    @Override // i3.k
    public List getCues(long j11) {
        return this.f70722a.h(j11, this.f70724c, this.f70725d, this.f70726e);
    }

    @Override // i3.k
    public long getEventTime(int i11) {
        return this.f70723b[i11];
    }

    @Override // i3.k
    public int getEventTimeCount() {
        return this.f70723b.length;
    }

    @Override // i3.k
    public int getNextEventTimeIndex(long j11) {
        int iD = a1.d(this.f70723b, j11, false, false);
        if (iD < this.f70723b.length) {
            return iD;
        }
        return -1;
    }
}
