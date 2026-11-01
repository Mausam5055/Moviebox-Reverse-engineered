package com.transsion.usercenter.profile;

import com.tencent.mmkv.MMKV;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes6.dex */
public final class e0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final e0 f57130a = new e0();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Lazy f57131b = LazyKt.b(new Function0() { // from class: com.transsion.usercenter.profile.d0
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return e0.c();
        }
    });

    private e0() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final MMKV c() {
        return MMKV.I("profile_kv");
    }

    public final MMKV b() {
        return (MMKV) f57131b.getValue();
    }
}
