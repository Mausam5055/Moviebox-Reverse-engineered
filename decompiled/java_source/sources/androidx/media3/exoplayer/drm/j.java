package androidx.media3.exoplayer.drm;

import android.net.Uri;
import com.google.common.collect.r4;
import com.google.common.primitives.Ints;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class j implements w {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Object f11579a = new Object();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private androidx.media3.common.t.f f11580b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private t f11581c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private androidx.media3.datasource.a.InterfaceC0091a f11582d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f11583e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private androidx.media3.exoplayer.upstream.m f11584f;

    private t b(androidx.media3.common.t.f fVar) {
        androidx.media3.datasource.a.InterfaceC0091a interfaceC0091aD = this.f11582d;
        if (interfaceC0091aD == null) {
            interfaceC0091aD = new androidx.media3.datasource.c.b().d(this.f11583e);
        }
        Uri uri = fVar.f10262c;
        l0 l0Var = new l0(uri == null ? null : uri.toString(), fVar.f10267h, interfaceC0091aD);
        r4 it = fVar.f10264e.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            l0Var.c((String) entry.getKey(), (String) entry.getValue());
        }
        DefaultDrmSessionManager.b bVarE = new DefaultDrmSessionManager.b().f(fVar.f10260a, k0.f11585d).c(fVar.f10265f).d(fVar.f10266g).e(Ints.o(fVar.f10269j));
        androidx.media3.exoplayer.upstream.m mVar = this.f11584f;
        if (mVar != null) {
            bVarE.b(mVar);
        }
        DefaultDrmSessionManager defaultDrmSessionManagerA = bVarE.a(l0Var);
        defaultDrmSessionManagerA.E(0, fVar.c());
        return defaultDrmSessionManagerA;
    }

    @Override // androidx.media3.exoplayer.drm.w
    public t a(androidx.media3.common.t tVar) {
        t tVar2;
        androidx.media3.common.util.a.e(tVar.f10211b);
        androidx.media3.common.t.f fVar = tVar.f10211b.f10305c;
        if (fVar == null) {
            return t.f11612a;
        }
        synchronized (this.f11579a) {
            try {
                if (!fVar.equals(this.f11580b)) {
                    this.f11580b = fVar;
                    this.f11581c = b(fVar);
                }
                tVar2 = (t) androidx.media3.common.util.a.e(this.f11581c);
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return tVar2;
    }
}
