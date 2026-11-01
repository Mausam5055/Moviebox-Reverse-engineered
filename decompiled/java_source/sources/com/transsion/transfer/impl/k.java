package com.transsion.transfer.impl;

import android.app.Application;
import android.os.Build;
import androidx.p009lifecycle.LiveData;
import java.util.List;
import kotlin.Pair;
import kotlin.Triple;
import kotlin.Unit;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class k extends androidx.p009lifecycle.b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final androidx.p009lifecycle.b0 f55756b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final androidx.p009lifecycle.b0 f55757c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final jv.b f55758d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final jv.b f55759e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final androidx.p009lifecycle.b0 f55760f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private g f55761g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final g f55762h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final Function4 f55763i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final c f55764j;

    public static final class a implements Function4 {
        a() {
        }

        public void a(String clientIp, String transferId, boolean z10, String str) {
            Intrinsics.h(clientIp, "clientIp");
            Intrinsics.h(transferId, "transferId");
            StringBuilder sb2 = new StringBuilder();
            sb2.append("invoke: clientIp:");
            sb2.append(clientIp);
            sb2.append(", transferId:");
            sb2.append(transferId);
            sb2.append(", isConnect:");
            sb2.append(z10);
            k.this.f55756b.n(new Pair(clientIp, Boolean.valueOf(z10)));
            if (z10) {
                return;
            }
            kv.b.f68395a.s(str, k.this.t());
        }

        @Override // kotlin.jvm.functions.Function4
        public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2, Object obj3, Object obj4) {
            a((String) obj, (String) obj2, ((Boolean) obj3).booleanValue(), (String) obj4);
            return Unit.f67061a;
        }
    }

    public static final class b implements g {
        b() {
        }

        @Override // com.transsion.transfer.impl.g
        public void a(String clientIp, String clientDeviceName) {
            Intrinsics.h(clientIp, "clientIp");
            Intrinsics.h(clientDeviceName, "clientDeviceName");
            k.this.f55757c.n(clientDeviceName);
            g gVar = k.this.f55761g;
            if (gVar != null) {
                gVar.a(clientIp, clientDeviceName);
            }
        }

        @Override // com.transsion.transfer.impl.g
        public String b() {
            return k.this.q();
        }
    }

    public static final class c implements i {
        c() {
        }

        @Override // com.transsion.transfer.impl.i
        public void K(String clientIp, String remoteFilePath, TaskState state, long j11, long j12) {
            Intrinsics.h(clientIp, "clientIp");
            Intrinsics.h(remoteFilePath, "remoteFilePath");
            Intrinsics.h(state, "state");
            k.this.f55758d.n(new Triple(clientIp, remoteFilePath, new Triple(state, Long.valueOf(j11), Long.valueOf(j12))));
        }

        @Override // com.transsion.transfer.impl.i
        public void d(String clientIp) {
            Intrinsics.h(clientIp, "clientIp");
            k.this.f55760f.n(clientIp);
        }

        @Override // com.transsion.transfer.impl.i
        public void h(String clientIp, String remoteFilePath, long j11, long j12) {
            Intrinsics.h(clientIp, "clientIp");
            Intrinsics.h(remoteFilePath, "remoteFilePath");
            k.this.f55758d.n(new Triple(clientIp, remoteFilePath, new Triple(TaskState.TRANSFERRING, Long.valueOf(j11), Long.valueOf(j12))));
        }

        @Override // com.transsion.transfer.impl.i
        public void m(String clientIp) {
            Intrinsics.h(clientIp, "clientIp");
        }

        @Override // com.transsion.transfer.impl.i
        public void n(String clientIp, List files) {
            Intrinsics.h(clientIp, "clientIp");
            Intrinsics.h(files, "files");
            k.this.f55759e.n(new Pair(clientIp, files));
        }

        @Override // com.transsion.transfer.impl.i
        public void p(String clientIp) {
            Intrinsics.h(clientIp, "clientIp");
            k.this.f55756b.n(new Pair(clientIp, Boolean.FALSE));
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public k(Application application) {
        super(application);
        Intrinsics.h(application, "application");
        this.f55756b = new androidx.p009lifecycle.b0();
        this.f55757c = new androidx.p009lifecycle.b0();
        this.f55758d = new jv.b();
        this.f55759e = new jv.b();
        this.f55760f = new androidx.p009lifecycle.b0();
        this.f55762h = new b();
        this.f55763i = new a();
        this.f55764j = new c();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String q() {
        String MODEL = Build.MODEL;
        Intrinsics.g(MODEL, "MODEL");
        return MODEL;
    }

    public final void A() {
        h hVarB = iv.h.f65636s.b(b());
        hVarB.e(this.f55762h);
        hVarB.a(this.f55764j);
        hVarB.b(this.f55763i);
        hVarB.open();
        kv.b.f68395a.r();
    }

    public final void B(g gVar) {
        this.f55761g = gVar;
    }

    public final void C() {
        h hVarB = iv.h.f65636s.b(b());
        hVarB.e(this.f55762h);
        hVarB.a(this.f55764j);
        hVarB.b(this.f55763i);
        hVarB.d();
    }

    public final boolean j() {
        h hVarB = iv.h.f65636s.b(b());
        hVarB.e(this.f55762h);
        hVarB.a(this.f55764j);
        hVarB.b(this.f55763i);
        return !hVarB.c().isEmpty();
    }

    public final LiveData k() {
        return this.f55757c;
    }

    public final List l() {
        h hVarB = iv.h.f65636s.b(b());
        hVarB.e(this.f55762h);
        hVarB.a(this.f55764j);
        hVarB.b(this.f55763i);
        return hVarB.c();
    }

    public final List m() {
        h hVarB = iv.h.f65636s.b(b());
        hVarB.e(this.f55762h);
        hVarB.a(this.f55764j);
        hVarB.b(this.f55763i);
        return hVarB.i();
    }

    public final LiveData n() {
        return this.f55760f;
    }

    public final LiveData o() {
        return this.f55756b;
    }

    @Override // androidx.p009lifecycle.t0
    protected void onCleared() {
        super.onCleared();
        iv.h.a aVar = iv.h.f65636s;
        aVar.b(b()).g(this.f55764j);
        aVar.b(b()).h(this.f55763i);
        aVar.b(b()).e(null);
    }

    public final String p() {
        h hVarB = iv.h.f65636s.b(b());
        hVarB.e(this.f55762h);
        hVarB.a(this.f55764j);
        hVarB.b(this.f55763i);
        List listI = hVarB.i();
        StringBuilder sb2 = new StringBuilder();
        sb2.append("getCurClientName: getCurClientName:");
        sb2.append(listI);
        if (listI.isEmpty()) {
            return null;
        }
        return (String) listI.get(0);
    }

    public final Function4 r() {
        return this.f55763i;
    }

    public final int s() {
        return mv.b.f70015a.f().size();
    }

    public final String t() {
        h hVarB = iv.h.f65636s.b(b());
        hVarB.e(this.f55762h);
        hVarB.b(this.f55763i);
        return hVarB.j();
    }

    public final LiveData u() {
        return this.f55759e;
    }

    public final LiveData v() {
        return this.f55758d;
    }

    public final int w() {
        mv.b bVar = mv.b.f70015a;
        return bVar.g().size() + bVar.h().size();
    }

    public final void x() {
        h hVarB = iv.h.f65636s.b(b());
        hVarB.e(this.f55762h);
        hVarB.a(this.f55764j);
        hVarB.b(this.f55763i);
    }

    public final boolean y() {
        h hVarB = iv.h.f65636s.b(b());
        hVarB.e(this.f55762h);
        hVarB.b(this.f55763i);
        return hVarB.isRunning();
    }

    public final void z(int i11) {
        iv.h.a aVar = iv.h.f65636s;
        List listC = aVar.b(b()).c();
        StringBuilder sb2 = new StringBuilder();
        sb2.append("notifyClientCMD: clientIps:");
        sb2.append(listC);
        if (listC.isEmpty()) {
            return;
        }
        h hVarB = aVar.b(b());
        hVarB.e(this.f55762h);
        hVarB.a(this.f55764j);
        hVarB.b(this.f55763i);
        hVarB.f((String) listC.get(0), i11);
    }
}
