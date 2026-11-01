package i3;

import androidx.media3.common.util.a1;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.Ordering;
import com.google.common.collect.g3;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class g implements k {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Ordering f64900c = Ordering.natural().onResultOf(new com.google.common.base.f() { // from class: i3.f
        @Override // com.google.common.base.f
        public final Object apply(Object obj) {
            return g.c((e) obj);
        }
    });

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ImmutableList f64901a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final long[] f64902b;

    /* JADX WARN: Code duplicated, block: B:23:0x00b4  */
    /* JADX WARN: Multi-variable type inference failed */
    public g(List list) {
        if (list.size() == 1) {
            e eVar = (e) g3.j(list);
            long jD = d(eVar.f64897b);
            if (eVar.f64898c == C.TIME_UNSET) {
                this.f64901a = ImmutableList.of(eVar.f64896a);
                this.f64902b = new long[]{jD};
                return;
            } else {
                this.f64901a = ImmutableList.of(eVar.f64896a, ImmutableList.of());
                this.f64902b = new long[]{jD, eVar.f64898c + jD};
                return;
            }
        }
        long[] jArr = new long[list.size() * 2];
        this.f64902b = jArr;
        Arrays.fill(jArr, Long.MAX_VALUE);
        ArrayList arrayList = new ArrayList();
        ImmutableList immutableListSortedCopyOf = ImmutableList.sortedCopyOf(f64900c, list);
        int i11 = 0;
        for (int i12 = 0; i12 < immutableListSortedCopyOf.size(); i12++) {
            e eVar2 = (e) immutableListSortedCopyOf.get(i12);
            long jD2 = d(eVar2.f64897b);
            long j11 = eVar2.f64898c + jD2;
            if (i11 != 0) {
                int i13 = i11 - 1;
                long j12 = this.f64902b[i13];
                if (j12 < jD2) {
                    this.f64902b[i11] = jD2;
                    arrayList.add(eVar2.f64896a);
                    i11++;
                } else if (j12 == jD2 && ((ImmutableList) arrayList.get(i13)).isEmpty()) {
                    arrayList.set(i13, eVar2.f64896a);
                } else {
                    androidx.media3.common.util.u.h("CuesWithTimingSubtitle", "Truncating unsupported overlapping cues.");
                    this.f64902b[i13] = jD2;
                    arrayList.set(i13, eVar2.f64896a);
                }
            } else {
                this.f64902b[i11] = jD2;
                arrayList.add(eVar2.f64896a);
                i11++;
            }
            if (eVar2.f64898c != C.TIME_UNSET) {
                this.f64902b[i11] = j11;
                arrayList.add(ImmutableList.of());
                i11++;
            }
        }
        this.f64901a = ImmutableList.copyOf((Collection) arrayList);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Comparable c(e eVar) {
        return Long.valueOf(d(eVar.f64897b));
    }

    private static long d(long j11) {
        if (j11 == C.TIME_UNSET) {
            return 0L;
        }
        return j11;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // i3.k
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public ImmutableList getCues(long j11) {
        int iH = a1.h(this.f64902b, j11, true, false);
        return iH == -1 ? ImmutableList.of() : (ImmutableList) this.f64901a.get(iH);
    }

    @Override // i3.k
    public long getEventTime(int i11) {
        androidx.media3.common.util.a.a(i11 < this.f64901a.size());
        return this.f64902b[i11];
    }

    @Override // i3.k
    public int getEventTimeCount() {
        return this.f64901a.size();
    }

    @Override // i3.k
    public int getNextEventTimeIndex(long j11) {
        int iD = a1.d(this.f64902b, j11, false, false);
        if (iD < this.f64901a.size()) {
            return iD;
        }
        return -1;
    }
}
