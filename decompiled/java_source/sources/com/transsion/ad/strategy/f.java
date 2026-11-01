package com.transsion.ad.strategy;

import com.tencent.mmkv.MMKV;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final f f42232a = new f();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Lazy f42233b = LazyKt.b(new Function0() { // from class: com.transsion.ad.strategy.e
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return f.d();
        }
    });

    private f() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final MMKV d() {
        MMKV mmkvI = MMKV.I("one_room_advertising");
        Intrinsics.g(mmkvI, "mmkvWithID(...)");
        return mmkvI;
    }

    public final MMKV b() {
        return c();
    }

    public final MMKV c() {
        return (MMKV) f42233b.getValue();
    }
}
