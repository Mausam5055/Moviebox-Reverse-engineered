package i3;

import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public abstract class i {
    private static int a(k kVar, long j11) {
        if (j11 == C.TIME_UNSET) {
            return 0;
        }
        int nextEventTimeIndex = kVar.getNextEventTimeIndex(j11);
        if (nextEventTimeIndex == -1) {
            nextEventTimeIndex = kVar.getEventTimeCount();
        }
        return (nextEventTimeIndex <= 0 || kVar.getEventTime(nextEventTimeIndex + (-1)) != j11) ? nextEventTimeIndex : nextEventTimeIndex - 1;
    }

    private static void b(k kVar, int i11, androidx.media3.common.util.m mVar) {
        long eventTime = kVar.getEventTime(i11);
        List cues = kVar.getCues(eventTime);
        if (cues.isEmpty()) {
            return;
        }
        if (i11 == kVar.getEventTimeCount() - 1) {
            throw new IllegalStateException();
        }
        long eventTime2 = kVar.getEventTime(i11 + 1) - kVar.getEventTime(i11);
        if (eventTime2 > 0) {
            mVar.accept(new e(cues, eventTime, eventTime2));
        }
    }

    /* JADX WARN: Code duplicated, block: B:11:0x003b  */
    public static void c(k kVar, s.b bVar, androidx.media3.common.util.m mVar) {
        boolean z10;
        int iA = a(kVar, bVar.f64925a);
        if (bVar.f64925a == C.TIME_UNSET || iA >= kVar.getEventTimeCount()) {
            z10 = false;
        } else {
            List cues = kVar.getCues(bVar.f64925a);
            long eventTime = kVar.getEventTime(iA);
            if (cues.isEmpty()) {
                z10 = false;
            } else {
                long j11 = bVar.f64925a;
                if (j11 < eventTime) {
                    mVar.accept(new e(cues, j11, eventTime - j11));
                    z10 = true;
                } else {
                    z10 = false;
                }
            }
        }
        for (int i11 = iA; i11 < kVar.getEventTimeCount(); i11++) {
            b(kVar, i11, mVar);
        }
        if (bVar.f64926b) {
            if (z10) {
                iA--;
            }
            for (int i12 = 0; i12 < iA; i12++) {
                b(kVar, i12, mVar);
            }
            if (z10) {
                mVar.accept(new e(kVar.getCues(bVar.f64925a), kVar.getEventTime(iA), bVar.f64925a - kVar.getEventTime(iA)));
            }
        }
    }
}
