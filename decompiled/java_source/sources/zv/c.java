package zv;

import android.util.Log;
import bw.l;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import retrofit2.j0;

/* JADX INFO: loaded from: classes7.dex */
public final class c implements retrofit2.f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ d f79470a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Function1 f79471b;

    public c(d dVar, com.transsion.upgradesdk.manager.h hVar) {
        this.f79470a = dVar;
        this.f79471b = hVar;
    }

    @Override // retrofit2.f
    public final void a(retrofit2.d call, Throwable t11) {
        Intrinsics.h(call, "call");
        Intrinsics.h(t11, "t");
        String msg = "升级信息 - request failure: " + t11;
        Intrinsics.h("UpgradeSdkManager", "tag");
        Intrinsics.h(msg, "msg");
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (!bw.g.f16939a && jCurrentTimeMillis - bw.g.f16940b >= 5000) {
            bw.g.f16940b = jCurrentTimeMillis;
            if (Log.isLoggable("upgradeSdkLog", 3)) {
                bw.g.f16939a = true;
            }
            boolean z10 = bw.g.f16939a;
        }
        boolean z11 = yv.f.f79067o.a().f79072d;
        this.f79470a.f79475c = 6;
        l.c(2, 3, t11.getMessage(), "2", null, null, null, 112);
        this.f79471b.invoke(null);
    }

    @Override // retrofit2.f
    public final void b(retrofit2.d call, j0 response) {
        Intrinsics.h(call, "call");
        Intrinsics.h(response, "response");
        if (response.e()) {
            this.f79470a.f79475c = 5;
            this.f79471b.invoke(response.a());
            return;
        }
        this.f79470a.f79475c = 6;
        l.a(2, 3, response.b() + '-' + response.f(), "2", 16);
        this.f79471b.invoke(null);
    }
}
