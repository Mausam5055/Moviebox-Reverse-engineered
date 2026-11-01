package com.cloud.tmc.miniapp.utils;

import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes3.dex */
public final class OooO {
    public static final OooO OooO00o = new OooO();
    public static final Lazy OooO0O0 = LazyKt.b(OooO00o.OooO00o);

    public static final class OooO00o extends Lambda implements Function0<com.cloud.tmc.miniapp.task.OooO0O0> {
        public static final OooO00o OooO00o = new OooO00o();

        public OooO00o() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public Object invoke() {
            return new com.cloud.tmc.miniapp.task.OooO0O0();
        }
    }

    public final com.cloud.tmc.miniapp.task.OooO0O0 OooO00o() {
        return (com.cloud.tmc.miniapp.task.OooO0O0) OooO0O0.getValue();
    }
}
