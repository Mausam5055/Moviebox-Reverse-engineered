package g2;

import androidx.media3.exoplayer.source.f0;
import androidx.media3.exoplayer.v2;
import com.google.common.collect.ImmutableList;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.util.Collection;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class d implements f0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ImmutableList f63201a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private long f63202b;

    private static final class a implements f0 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final f0 f63203a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final ImmutableList f63204b;

        public a(f0 f0Var, List list) {
            this.f63203a = f0Var;
            this.f63204b = ImmutableList.copyOf((Collection) list);
        }

        @Override // androidx.media3.exoplayer.source.f0
        public boolean a(v2 v2Var) {
            return this.f63203a.a(v2Var);
        }

        public ImmutableList c() {
            return this.f63204b;
        }

        @Override // androidx.media3.exoplayer.source.f0
        public long getBufferedPositionUs() {
            return this.f63203a.getBufferedPositionUs();
        }

        @Override // androidx.media3.exoplayer.source.f0
        public long getNextLoadPositionUs() {
            return this.f63203a.getNextLoadPositionUs();
        }

        @Override // androidx.media3.exoplayer.source.f0
        public boolean isLoading() {
            return this.f63203a.isLoading();
        }

        @Override // androidx.media3.exoplayer.source.f0
        public void reevaluateBuffer(long j11) {
            this.f63203a.reevaluateBuffer(j11);
        }
    }

    public d(List list, List list2) {
        ImmutableList.a aVarBuilder = ImmutableList.builder();
        androidx.media3.common.util.a.a(list.size() == list2.size());
        for (int i11 = 0; i11 < list.size(); i11++) {
            aVarBuilder.a(new a((f0) list.get(i11), (List) list2.get(i11)));
        }
        this.f63201a = aVarBuilder.e();
        this.f63202b = C.TIME_UNSET;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.media3.exoplayer.source.f0
    public boolean a(v2 v2Var) {
        boolean zA;
        boolean z10 = false;
        do {
            long nextLoadPositionUs = getNextLoadPositionUs();
            if (nextLoadPositionUs == Long.MIN_VALUE) {
                break;
            }
            zA = false;
            for (int i11 = 0; i11 < this.f63201a.size(); i11++) {
                long nextLoadPositionUs2 = ((a) this.f63201a.get(i11)).getNextLoadPositionUs();
                boolean z11 = nextLoadPositionUs2 != Long.MIN_VALUE && nextLoadPositionUs2 <= v2Var.f13050a;
                if (nextLoadPositionUs2 == nextLoadPositionUs || z11) {
                    zA |= ((a) this.f63201a.get(i11)).a(v2Var);
                }
            }
            z10 |= zA;
        } while (zA);
        return z10;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.media3.exoplayer.source.f0
    public long getBufferedPositionUs() {
        long jMin = Long.MAX_VALUE;
        long jMin2 = Long.MAX_VALUE;
        for (int i11 = 0; i11 < this.f63201a.size(); i11++) {
            a aVar = (a) this.f63201a.get(i11);
            long bufferedPositionUs = aVar.getBufferedPositionUs();
            if ((aVar.c().contains(1) || aVar.c().contains(2) || aVar.c().contains(4)) && bufferedPositionUs != Long.MIN_VALUE) {
                jMin = Math.min(jMin, bufferedPositionUs);
            }
            if (bufferedPositionUs != Long.MIN_VALUE) {
                jMin2 = Math.min(jMin2, bufferedPositionUs);
            }
        }
        if (jMin != Long.MAX_VALUE) {
            this.f63202b = jMin;
            return jMin;
        }
        if (jMin2 == Long.MAX_VALUE) {
            return Long.MIN_VALUE;
        }
        long j11 = this.f63202b;
        return j11 != C.TIME_UNSET ? j11 : jMin2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.media3.exoplayer.source.f0
    public long getNextLoadPositionUs() {
        long jMin = Long.MAX_VALUE;
        for (int i11 = 0; i11 < this.f63201a.size(); i11++) {
            long nextLoadPositionUs = ((a) this.f63201a.get(i11)).getNextLoadPositionUs();
            if (nextLoadPositionUs != Long.MIN_VALUE) {
                jMin = Math.min(jMin, nextLoadPositionUs);
            }
        }
        if (jMin == Long.MAX_VALUE) {
            return Long.MIN_VALUE;
        }
        return jMin;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.media3.exoplayer.source.f0
    public boolean isLoading() {
        for (int i11 = 0; i11 < this.f63201a.size(); i11++) {
            if (((a) this.f63201a.get(i11)).isLoading()) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.media3.exoplayer.source.f0
    public void reevaluateBuffer(long j11) {
        for (int i11 = 0; i11 < this.f63201a.size(); i11++) {
            ((a) this.f63201a.get(i11)).reevaluateBuffer(j11);
        }
    }
}
