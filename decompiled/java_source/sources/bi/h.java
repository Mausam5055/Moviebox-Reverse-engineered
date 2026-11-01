package bi;

import kotlin.jvm.internal.Intrinsics;
import okhttp3.Call;
import okhttp3.Interceptor;
import okhttp3.Request;

/* JADX INFO: loaded from: classes5.dex */
public final class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final h f16533a = new h();

    private h() {
    }

    private final i b(Interceptor.Chain chain) {
        m mVar = m.f16543a;
        Call call = chain.call();
        Intrinsics.g(call, "chain.call()");
        Object objA = mVar.a(call, "eventListener");
        if (objA instanceof i) {
            return (i) objA;
        }
        return null;
    }

    public final void a(Interceptor.Chain chain, Request buildRequest, int i11) {
        Intrinsics.h(chain, "chain");
        Intrinsics.h(buildRequest, "buildRequest");
        i iVarB = b(chain);
        if (iVarB != null) {
            iVarB.a(buildRequest, i11);
        }
    }
}
