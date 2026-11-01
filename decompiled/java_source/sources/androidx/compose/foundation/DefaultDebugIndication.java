package androidx.compose.foundation;

import androidx.compose.ui.graphics.u1;
import com.vungle.ads.internal.protos.Sdk$SDKError;

/* JADX INFO: loaded from: classes.dex */
final class DefaultDebugIndication implements b0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final DefaultDebugIndication f2579a = new DefaultDebugIndication();

    /* JADX INFO: Access modifiers changed from: private */
    static final class DefaultDebugIndicationInstance extends androidx.compose.ui.f.c implements androidx.compose.ui.node.n {

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        private final p.g f2580n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private boolean f2581o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        private boolean f2582p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        private boolean f2583q;

        public DefaultDebugIndicationInstance(p.g gVar) {
            this.f2580n = gVar;
        }

        @Override // androidx.compose.ui.node.n
        public void n(z.c cVar) {
            cVar.Y0();
            if (this.f2581o) {
                z.f.j(cVar, u1.k(u1.f4658b.a(), 0.3f, 0.0f, 0.0f, 0.0f, 14, null), 0L, cVar.i(), 0.0f, null, null, 0, Sdk$SDKError.Reason.INVALID_ADS_ENDPOINT_VALUE, null);
            } else if (this.f2582p || this.f2583q) {
                z.f.j(cVar, u1.k(u1.f4658b.a(), 0.1f, 0.0f, 0.0f, 0.0f, 14, null), 0L, cVar.i(), 0.0f, null, null, 0, Sdk$SDKError.Reason.INVALID_ADS_ENDPOINT_VALUE, null);
            }
        }

        @Override // androidx.compose.ui.f.c
        public void n1() {
            kotlinx.coroutines.k.d(d1(), null, null, new DefaultDebugIndication$DefaultDebugIndicationInstance$onAttach$1(this, null), 3, null);
        }

        @Override // androidx.compose.ui.node.n
        public /* synthetic */ void w0() {
            androidx.compose.ui.node.m.a(this);
        }
    }

    private DefaultDebugIndication() {
    }

    @Override // androidx.compose.foundation.x
    public /* synthetic */ y a(p.g gVar, androidx.compose.runtime.i iVar, int i11) {
        return w.a(this, gVar, iVar, i11);
    }

    @Override // androidx.compose.foundation.b0
    public androidx.compose.ui.node.f b(p.g gVar) {
        return new DefaultDebugIndicationInstance(gVar);
    }

    public boolean equals(Object obj) {
        return obj == this;
    }

    public int hashCode() {
        return -1;
    }
}
