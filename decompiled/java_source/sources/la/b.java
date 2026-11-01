package la;

import android.os.SystemClock;
import com.google.android.exoplayer2.o1;
import com.google.android.exoplayer2.source.TrackGroup;
import com.google.android.exoplayer2.util.p0;
import java.util.Arrays;
import java.util.Comparator;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public abstract class b implements com.google.android.exoplayer2.trackselection.h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected final TrackGroup f68778a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected final int f68779b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected final int[] f68780c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f68781d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final o1[] f68782e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final long[] f68783f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f68784g;

    public b(TrackGroup trackGroup, int... iArr) {
        this(trackGroup, iArr, 0);
    }

    public b(TrackGroup trackGroup, int[] iArr, int i11) {
        int i12 = 0;
        com.google.android.exoplayer2.util.a.g(iArr.length > 0);
        this.f68781d = i11;
        this.f68778a = (TrackGroup) com.google.android.exoplayer2.util.a.e(trackGroup);
        int length = iArr.length;
        this.f68779b = length;
        this.f68782e = new o1[length];
        for (int i13 = 0; i13 < iArr.length; i13++) {
            this.f68782e[i13] = trackGroup.c(iArr[i13]);
        }
        Arrays.sort(this.f68782e, new Comparator() { // from class: la.a
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return b.i((o1) obj, (o1) obj2);
            }
        });
        this.f68780c = new int[this.f68779b];
        while (true) {
            int i14 = this.f68779b;
            if (i12 >= i14) {
                this.f68783f = new long[i14];
                return;
            } else {
                this.f68780c[i12] = trackGroup.d(this.f68782e[i12]);
                i12++;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int i(o1 o1Var, o1 o1Var2) {
        return o1Var2.f25492h - o1Var.f25492h;
    }

    @Override // com.google.android.exoplayer2.trackselection.h
    public /* synthetic */ void a() {
        k.a(this);
    }

    @Override // com.google.android.exoplayer2.trackselection.h
    public /* synthetic */ void b(boolean z10) {
        k.b(this, z10);
    }

    @Override // com.google.android.exoplayer2.trackselection.h
    public boolean blacklist(int i11, long j11) {
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        boolean zE = e(i11, jElapsedRealtime);
        int i12 = 0;
        while (i12 < this.f68779b && !zE) {
            zE = (i12 == i11 || e(i12, jElapsedRealtime)) ? false : true;
            i12++;
        }
        if (!zE) {
            return false;
        }
        long[] jArr = this.f68783f;
        jArr[i11] = Math.max(jArr[i11], p0.b(jElapsedRealtime, j11, Long.MAX_VALUE));
        return true;
    }

    @Override // com.google.android.exoplayer2.trackselection.h
    public /* synthetic */ void c() {
        k.c(this);
    }

    @Override // com.google.android.exoplayer2.trackselection.h
    public void disable() {
    }

    @Override // com.google.android.exoplayer2.trackselection.h
    public boolean e(int i11, long j11) {
        return this.f68783f[i11] > j11;
    }

    @Override // com.google.android.exoplayer2.trackselection.h
    public void enable() {
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        b bVar = (b) obj;
        return this.f68778a == bVar.f68778a && Arrays.equals(this.f68780c, bVar.f68780c);
    }

    @Override // com.google.android.exoplayer2.trackselection.h
    public int evaluateQueueSize(long j11, List list) {
        return list.size();
    }

    @Override // com.google.android.exoplayer2.trackselection.h
    public /* synthetic */ boolean f(long j11, v9.f fVar, List list) {
        return k.d(this, j11, fVar, list);
    }

    @Override // la.m
    public final int g(o1 o1Var) {
        for (int i11 = 0; i11 < this.f68779b; i11++) {
            if (this.f68782e[i11] == o1Var) {
                return i11;
            }
        }
        return -1;
    }

    @Override // la.m
    public final o1 getFormat(int i11) {
        return this.f68782e[i11];
    }

    @Override // la.m
    public final int getIndexInTrackGroup(int i11) {
        return this.f68780c[i11];
    }

    @Override // com.google.android.exoplayer2.trackselection.h
    public final o1 getSelectedFormat() {
        return this.f68782e[getSelectedIndex()];
    }

    @Override // com.google.android.exoplayer2.trackselection.h
    public final int getSelectedIndexInTrackGroup() {
        return this.f68780c[getSelectedIndex()];
    }

    @Override // la.m
    public final TrackGroup getTrackGroup() {
        return this.f68778a;
    }

    public int hashCode() {
        if (this.f68784g == 0) {
            this.f68784g = (System.identityHashCode(this.f68778a) * 31) + Arrays.hashCode(this.f68780c);
        }
        return this.f68784g;
    }

    @Override // la.m
    public final int indexOf(int i11) {
        for (int i12 = 0; i12 < this.f68779b; i12++) {
            if (this.f68780c[i12] == i11) {
                return i12;
            }
        }
        return -1;
    }

    @Override // la.m
    public final int length() {
        return this.f68780c.length;
    }

    @Override // com.google.android.exoplayer2.trackselection.h
    public void onPlaybackSpeed(float f11) {
    }
}
