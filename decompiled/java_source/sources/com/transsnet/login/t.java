package com.transsnet.login;

import com.transsnet.loginapi.ILoginApi;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes7.dex */
public abstract class t {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Lazy f60567a = LazyKt.a(LazyThreadSafetyMode.SYNCHRONIZED, new Function0() { // from class: com.transsnet.login.s
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return t.c();
        }
    });

    private static final ILoginApi b() {
        return (ILoginApi) f60567a.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final r c() {
        return new r();
    }

    public static final ILoginApi d() {
        ILoginApi iLoginApiB = b();
        lg.a.f68839a.c("LoginProvider", "provide instance=" + System.identityHashCode(iLoginApiB) + ", thread=" + Thread.currentThread().getName(), true);
        return iLoginApiB;
    }
}
