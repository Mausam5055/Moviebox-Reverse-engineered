package com.transsion.push.utils;

import com.tencent.mmkv.MMKV;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class t {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final t f50944a = new t();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Lazy f50945b = LazyKt.b(new Function0() { // from class: com.transsion.push.utils.s
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return t.c();
        }
    });

    private t() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final MMKV c() {
        MMKV mmkvI = MMKV.I("notification");
        Intrinsics.g(mmkvI, "mmkvWithID(...)");
        return mmkvI;
    }

    public final MMKV b() {
        return (MMKV) f50945b.getValue();
    }
}
