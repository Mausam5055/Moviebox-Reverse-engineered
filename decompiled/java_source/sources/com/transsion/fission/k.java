package com.transsion.fission;

import com.therouter.TheRouter;
import com.transsnet.loginapi.ILoginApi;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes.dex */
public final class k {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static FissionConfig f44147c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final k f44145a = new k();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f44146b = "FissionManager";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final n0 f44148d = o0.a(y0.b());

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final Lazy f44149e = LazyKt.b(new Function0() { // from class: com.transsion.fission.g
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return k.f();
        }
    });

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final Lazy f44150f = LazyKt.b(new Function0() { // from class: com.transsion.fission.h
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return k.e();
        }
    });

    private k() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ILoginApi e() {
        return (ILoginApi) TheRouter.d(ILoginApi.class, new Object[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final xk.a f() {
        return (xk.a) zg.c.f79414e.a().h(xk.a.class);
    }

    public final String c() {
        return l.f44151a.b();
    }

    public final FissionConfig d() {
        return f44147c;
    }
}
