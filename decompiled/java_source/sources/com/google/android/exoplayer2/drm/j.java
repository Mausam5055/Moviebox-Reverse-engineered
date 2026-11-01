package com.google.android.exoplayer2.drm;

import android.net.Uri;
import com.google.android.exoplayer2.util.p0;
import com.google.android.exoplayer2.v1;
import com.google.common.collect.r4;
import com.google.common.primitives.Ints;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public final class j implements x {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Object f24993a = new Object();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private v1.f f24994b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private u f24995c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private com.google.android.exoplayer2.upstream.k.a f24996d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f24997e;

    private u b(v1.f fVar) {
        com.google.android.exoplayer2.upstream.k.a aVarB = this.f24996d;
        if (aVarB == null) {
            aVarB = new com.google.android.exoplayer2.upstream.s.b().b(this.f24997e);
        }
        Uri uri = fVar.f27743c;
        i0 i0Var = new i0(uri == null ? null : uri.toString(), fVar.f27748h, aVarB);
        r4 it = fVar.f27745e.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            i0Var.e((String) entry.getKey(), (String) entry.getValue());
        }
        DefaultDrmSessionManager defaultDrmSessionManagerA = new DefaultDrmSessionManager.b().e(fVar.f27741a, h0.f24984d).b(fVar.f27746f).c(fVar.f27747g).d(Ints.o(fVar.f27750j)).a(i0Var);
        defaultDrmSessionManagerA.E(0, fVar.c());
        return defaultDrmSessionManagerA;
    }

    @Override // com.google.android.exoplayer2.drm.x
    public u a(v1 v1Var) {
        u uVar;
        com.google.android.exoplayer2.util.a.e(v1Var.f27709b);
        v1.f fVar = v1Var.f27709b.f27774c;
        if (fVar == null || p0.f27626a < 18) {
            return u.f25017a;
        }
        synchronized (this.f24993a) {
            try {
                if (!p0.c(fVar, this.f24994b)) {
                    this.f24994b = fVar;
                    this.f24995c = b(fVar);
                }
                uVar = (u) com.google.android.exoplayer2.util.a.e(this.f24995c);
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return uVar;
    }
}
