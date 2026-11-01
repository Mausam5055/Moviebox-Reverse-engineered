package com.transsion.postdetail.shorttv_pugc.factory;

import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes6.dex */
public final class j implements st.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Lazy f49304a = LazyKt.b(new Function0() { // from class: com.transsion.postdetail.shorttv_pugc.factory.i
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return j.d();
        }
    });

    private final yj.c c() {
        return (yj.c) this.f49304a.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final yj.c d() {
        return (yj.c) yj.a.f79022a.a(yj.c.class);
    }

    @Override // st.a
    public void a(long j11) {
        yj.c cVarC = c();
        if (cVarC != null) {
            cVarC.a(j11);
        }
    }
}
