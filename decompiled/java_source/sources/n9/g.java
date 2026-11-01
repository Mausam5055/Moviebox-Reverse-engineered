package n9;

import com.mbridge.msdk.playercommon.exoplayer2.C;
import g9.b0;

/* JADX INFO: loaded from: classes4.dex */
interface g extends b0 {

    public static class a extends b0.b implements g {
        public a() {
            super(C.TIME_UNSET);
        }

        @Override // n9.g
        public long a() {
            return -1L;
        }

        @Override // n9.g
        public long getTimeUs(long j11) {
            return 0L;
        }
    }

    long a();

    long getTimeUs(long j11);
}
