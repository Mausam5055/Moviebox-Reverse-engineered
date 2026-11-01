package com.mbridge.msdk.tracker;

import android.util.Log;

/* JADX INFO: loaded from: classes5.dex */
class q implements l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final g f38710a;

    public q(g gVar) {
        this.f38710a = gVar;
    }

    @Override // com.mbridge.msdk.tracker.l
    public void a(e eVar) {
        if (y.b(this.f38710a)) {
            return;
        }
        this.f38710a.a(eVar);
    }

    @Override // com.mbridge.msdk.tracker.l
    public long[] a() {
        return y.b(this.f38710a) ? new long[]{0, 0} : this.f38710a.a();
    }

    @Override // com.mbridge.msdk.tracker.l
    public void b(e eVar) {
        if (y.b(this.f38710a)) {
            return;
        }
        try {
            h hVarE = eVar.e();
            if (y.a(hVarE)) {
                eVar.a(hVarE.a(eVar));
            }
            this.f38710a.b(eVar);
        } catch (Exception e11) {
            if (a.f38496a) {
                Log.e("TrackManager", "process event error", e11);
            }
        }
    }
}
