package com.cloud.tmc.miniapp.prepare.steps;

import com.cloud.tmc.integration.utils.AppUtils;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes3.dex */
public final class Oooo0 {
    public static final Oooo0 OooO00o = new Oooo0();
    public static final Lazy OooO0O0 = LazyKt.b(OooO00o.OooO00o);

    public static final class OooO00o extends Lambda implements Function0<Boolean> {
        public static final OooO00o OooO00o = new OooO00o();

        public OooO00o() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public Object invoke() {
            return Boolean.valueOf(AppUtils.subpackageIsEnable());
        }
    }

    @JvmStatic
    public static final o0OoOo0 OooO00o() {
        if (!OooO00o.OooO0Oo()) {
            return new com.cloud.tmc.miniapp.prepare.steps.singlepackage.OooO0O0();
        }
        StepType STEP_TYPE = com.cloud.tmc.miniapp.prepare.steps.structure.OooO00o.OooO0oo;
        Intrinsics.g(STEP_TYPE, "STEP_TYPE");
        return new com.cloud.tmc.miniapp.prepare.steps.subpackage.OooO(STEP_TYPE);
    }

    @JvmStatic
    public static final o0OoOo0 OooO0O0() {
        if (!OooO00o.OooO0Oo()) {
            return new com.cloud.tmc.miniapp.prepare.steps.singlepackage.OooO00o();
        }
        StepType STEP_TYPE = com.cloud.tmc.miniapp.prepare.steps.structure.OooO0O0.OooO0oo;
        Intrinsics.g(STEP_TYPE, "STEP_TYPE");
        return new com.cloud.tmc.miniapp.prepare.steps.subpackage.OooO(STEP_TYPE);
    }

    @JvmStatic
    public static final o0OoOo0 OooO0OO() {
        if (!OooO00o.OooO0Oo()) {
            return new com.cloud.tmc.miniapp.prepare.steps.singlepackage.OooO0OO();
        }
        StepType STEP_TYPE = com.cloud.tmc.miniapp.prepare.steps.structure.OooO0OO.OooO0oo;
        Intrinsics.g(STEP_TYPE, "STEP_TYPE");
        return new com.cloud.tmc.miniapp.prepare.steps.subpackage.OooO(STEP_TYPE);
    }

    public final boolean OooO0Oo() {
        return ((Boolean) OooO0O0.getValue()).booleanValue();
    }
}
