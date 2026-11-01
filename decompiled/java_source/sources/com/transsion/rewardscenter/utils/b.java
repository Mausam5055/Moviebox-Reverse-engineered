package com.transsion.rewardscenter.utils;

import com.tencent.mmkv.MMKV;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final b f51295a = new b();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Lazy f51296b = LazyKt.b(new Function0() { // from class: com.transsion.rewardscenter.utils.a
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return b.f();
        }
    });

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final int f51297c = 8;

    private b() {
    }

    private final MMKV b() {
        return (MMKV) f51296b.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final MMKV f() {
        return MMKV.I("RewardsCenterCache");
    }

    public final String c() {
        String strK = b().k("phone_cc");
        return strK == null ? "" : strK;
    }

    public final String d() {
        String strK = b().k("phone_iso");
        return strK == null ? "" : strK;
    }

    public final String e() {
        String strK = b().k("phone_number");
        return strK == null ? "" : strK;
    }

    public final void g(String cc2, String iso, String number) {
        Intrinsics.h(cc2, "cc");
        Intrinsics.h(iso, "iso");
        Intrinsics.h(number, "number");
        b().putString("phone_cc", cc2);
        b().putString("phone_iso", iso);
        b().putString("phone_number", number);
    }
}
