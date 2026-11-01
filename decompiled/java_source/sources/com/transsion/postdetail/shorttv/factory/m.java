package com.transsion.postdetail.shorttv.factory;

import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes6.dex */
public final class m implements qs.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Lazy f49218a = LazyKt.b(new Function0() { // from class: com.transsion.postdetail.shorttv.factory.l
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return m.e();
        }
    });

    private final yj.c d() {
        return (yj.c) this.f49218a.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final yj.c e() {
        return (yj.c) yj.a.f79022a.a(yj.c.class);
    }

    @Override // qs.a
    public void a(long j11) {
        yj.c cVarD = d();
        if (cVarD != null) {
            cVarD.a(j11);
        }
    }

    @Override // qs.a
    public void b(long j11) {
        yj.c cVarD = d();
        if (cVarD != null) {
            cVarD.b(j11);
        }
    }
}
