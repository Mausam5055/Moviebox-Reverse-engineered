package i2;

import com.google.common.collect.ImmutableList;
import com.google.common.collect.Ordering;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
final class e implements a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Ordering f64882b = Ordering.natural().onResultOf(new com.google.common.base.f() { // from class: i2.c
        @Override // com.google.common.base.f
        public final Object apply(Object obj) {
            return e.h((i3.e) obj);
        }
    }).compound(Ordering.natural().reverse().onResultOf(new com.google.common.base.f() { // from class: i2.d
        @Override // com.google.common.base.f
        public final Object apply(Object obj) {
            return e.i((i3.e) obj);
        }
    }));

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List f64883a = new ArrayList();

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Long h(i3.e eVar) {
        return Long.valueOf(eVar.f64897b);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Long i(i3.e eVar) {
        return Long.valueOf(eVar.f64898c);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // i2.a
    public ImmutableList a(long j11) {
        if (!this.f64883a.isEmpty()) {
            if (j11 >= ((i3.e) this.f64883a.get(0)).f64897b) {
                ArrayList arrayList = new ArrayList();
                for (int i11 = 0; i11 < this.f64883a.size(); i11++) {
                    i3.e eVar = (i3.e) this.f64883a.get(i11);
                    if (j11 >= eVar.f64897b && j11 < eVar.f64899d) {
                        arrayList.add(eVar);
                    }
                    if (j11 < eVar.f64897b) {
                        break;
                    }
                }
                ImmutableList immutableListSortedCopyOf = ImmutableList.sortedCopyOf(f64882b, arrayList);
                ImmutableList.a aVarBuilder = ImmutableList.builder();
                for (int i12 = 0; i12 < immutableListSortedCopyOf.size(); i12++) {
                    aVarBuilder.l(((i3.e) immutableListSortedCopyOf.get(i12)).f64896a);
                }
                return aVarBuilder.e();
            }
        }
        return ImmutableList.of();
    }

    @Override // i2.a
    public long b(long j11) {
        if (this.f64883a.isEmpty()) {
            return C.TIME_UNSET;
        }
        if (j11 < ((i3.e) this.f64883a.get(0)).f64897b) {
            return C.TIME_UNSET;
        }
        long jMax = ((i3.e) this.f64883a.get(0)).f64897b;
        for (int i11 = 0; i11 < this.f64883a.size(); i11++) {
            long j12 = ((i3.e) this.f64883a.get(i11)).f64897b;
            long j13 = ((i3.e) this.f64883a.get(i11)).f64899d;
            if (j13 > j11) {
                if (j12 > j11) {
                    break;
                }
                jMax = Math.max(jMax, j12);
            } else {
                jMax = Math.max(jMax, j13);
            }
        }
        return jMax;
    }

    @Override // i2.a
    public long c(long j11) {
        long jMin = -9223372036854775807L;
        for (int i11 = 0; i11 < this.f64883a.size(); i11++) {
            long j12 = ((i3.e) this.f64883a.get(i11)).f64897b;
            long j13 = ((i3.e) this.f64883a.get(i11)).f64899d;
            if (j11 < j12) {
                if (jMin != C.TIME_UNSET) {
                    jMin = Math.min(jMin, j12);
                    break;
                }
                jMin = j12;
                break;
            }
            if (j11 < j13) {
                jMin = jMin == C.TIME_UNSET ? j13 : Math.min(jMin, j13);
            }
        }
        if (jMin != C.TIME_UNSET) {
            return jMin;
        }
        return Long.MIN_VALUE;
    }

    @Override // i2.a
    public void clear() {
        this.f64883a.clear();
    }

    @Override // i2.a
    public boolean d(i3.e eVar, long j11) {
        androidx.media3.common.util.a.a(eVar.f64897b != C.TIME_UNSET);
        androidx.media3.common.util.a.a(eVar.f64898c != C.TIME_UNSET);
        boolean z10 = eVar.f64897b <= j11 && j11 < eVar.f64899d;
        for (int size = this.f64883a.size() - 1; size >= 0; size--) {
            if (eVar.f64897b >= ((i3.e) this.f64883a.get(size)).f64897b) {
                this.f64883a.add(size + 1, eVar);
                return z10;
            }
        }
        this.f64883a.add(0, eVar);
        return z10;
    }

    @Override // i2.a
    public void e(long j11) {
        int i11 = 0;
        while (i11 < this.f64883a.size()) {
            long j12 = ((i3.e) this.f64883a.get(i11)).f64897b;
            if (j11 > j12 && j11 > ((i3.e) this.f64883a.get(i11)).f64899d) {
                this.f64883a.remove(i11);
                i11--;
            } else if (j11 < j12) {
                return;
            }
            i11++;
        }
    }
}
