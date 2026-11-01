package com.mbridge.msdk.tracker;

import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.tools.o0;
import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: loaded from: classes5.dex */
class g implements l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final c f38512a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final s f38513b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final AtomicLong f38514c = new AtomicLong(0);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final long[] f38515d = new long[2];

    public g(c cVar, s sVar) {
        this.f38512a = cVar;
        this.f38513b = sVar;
    }

    @Override // com.mbridge.msdk.tracker.l
    public void a(e eVar) {
        try {
            long jIncrementAndGet = this.f38514c.incrementAndGet();
            this.f38515d[0] = System.currentTimeMillis();
            this.f38515d[1] = jIncrementAndGet;
        } catch (Exception e11) {
            if (MBridgeConstans.DEBUG) {
                o0.b("TrackManager", "notice error", e11);
            }
        }
    }

    @Override // com.mbridge.msdk.tracker.l
    public long[] a() {
        long[] jArr = this.f38515d;
        return jArr.length == 0 ? new long[]{0, 0} : jArr;
    }

    @Override // com.mbridge.msdk.tracker.l
    public void b(e eVar) {
        try {
            i iVar = new i(eVar);
            iVar.a(1);
            iVar.b(0);
            iVar.a(System.currentTimeMillis() + eVar.f());
            this.f38512a.a(iVar);
            this.f38513b.k();
            this.f38513b.e();
            this.f38513b.a(eVar);
        } catch (Exception e11) {
            if (MBridgeConstans.DEBUG) {
                o0.b("TrackManager", "process error", e11);
            }
        }
    }
}
