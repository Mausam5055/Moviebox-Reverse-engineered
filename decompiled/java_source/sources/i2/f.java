package i2;

import com.google.common.collect.ImmutableList;
import com.google.common.collect.g3;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
final class f implements a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ArrayList f64884a = new ArrayList();

    private int f(long j11) {
        for (int i11 = 0; i11 < this.f64884a.size(); i11++) {
            if (j11 < ((i3.e) this.f64884a.get(i11)).f64897b) {
                return i11;
            }
        }
        return this.f64884a.size();
    }

    @Override // i2.a
    public ImmutableList a(long j11) {
        int iF = f(j11);
        if (iF == 0) {
            return ImmutableList.of();
        }
        i3.e eVar = (i3.e) this.f64884a.get(iF - 1);
        long j12 = eVar.f64899d;
        return (j12 == C.TIME_UNSET || j11 < j12) ? eVar.f64896a : ImmutableList.of();
    }

    @Override // i2.a
    public long b(long j11) {
        if (this.f64884a.isEmpty() || j11 < ((i3.e) this.f64884a.get(0)).f64897b) {
            return C.TIME_UNSET;
        }
        for (int i11 = 1; i11 < this.f64884a.size(); i11++) {
            long j12 = ((i3.e) this.f64884a.get(i11)).f64897b;
            if (j11 == j12) {
                return j12;
            }
            if (j11 < j12) {
                i3.e eVar = (i3.e) this.f64884a.get(i11 - 1);
                long j13 = eVar.f64899d;
                return (j13 == C.TIME_UNSET || j13 > j11) ? eVar.f64897b : j13;
            }
        }
        i3.e eVar2 = (i3.e) g3.g(this.f64884a);
        long j14 = eVar2.f64899d;
        return (j14 == C.TIME_UNSET || j11 < j14) ? eVar2.f64897b : j14;
    }

    @Override // i2.a
    public long c(long j11) {
        if (this.f64884a.isEmpty()) {
            return Long.MIN_VALUE;
        }
        if (j11 < ((i3.e) this.f64884a.get(0)).f64897b) {
            return ((i3.e) this.f64884a.get(0)).f64897b;
        }
        for (int i11 = 1; i11 < this.f64884a.size(); i11++) {
            i3.e eVar = (i3.e) this.f64884a.get(i11);
            if (j11 < eVar.f64897b) {
                long j12 = ((i3.e) this.f64884a.get(i11 - 1)).f64899d;
                return (j12 == C.TIME_UNSET || j12 <= j11 || j12 >= eVar.f64897b) ? eVar.f64897b : j12;
            }
        }
        long j13 = ((i3.e) g3.g(this.f64884a)).f64899d;
        if (j13 == C.TIME_UNSET || j11 >= j13) {
            return Long.MIN_VALUE;
        }
        return j13;
    }

    @Override // i2.a
    public void clear() {
        this.f64884a.clear();
    }

    /* JADX WARN: Code duplicated, block: B:13:0x0025  */
    @Override // i2.a
    public boolean d(i3.e eVar, long j11) {
        boolean z10;
        androidx.media3.common.util.a.a(eVar.f64897b != C.TIME_UNSET);
        if (eVar.f64897b <= j11) {
            long j12 = eVar.f64899d;
            if (j12 == C.TIME_UNSET || j11 < j12) {
                z10 = true;
            } else {
                z10 = false;
            }
        } else {
            z10 = false;
        }
        for (int size = this.f64884a.size() - 1; size >= 0; size--) {
            if (eVar.f64897b >= ((i3.e) this.f64884a.get(size)).f64897b) {
                this.f64884a.add(size + 1, eVar);
                return z10;
            }
            if (((i3.e) this.f64884a.get(size)).f64897b <= j11) {
                z10 = false;
            }
        }
        this.f64884a.add(0, eVar);
        return z10;
    }

    @Override // i2.a
    public void e(long j11) {
        int iF = f(j11);
        if (iF == 0) {
            return;
        }
        long j12 = ((i3.e) this.f64884a.get(iF - 1)).f64899d;
        if (j12 == C.TIME_UNSET || j12 >= j11) {
            iF--;
        }
        this.f64884a.subList(0, iF).clear();
    }
}
