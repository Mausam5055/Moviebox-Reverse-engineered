package com.transsion.baselib.report.launch;

import com.tencent.mmkv.MMKV;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final b f43370a = new b();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Lazy f43371b = LazyKt.b(new Function0() { // from class: com.transsion.baselib.report.launch.a
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return b.c();
        }
    });

    private b() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final MMKV c() {
        MMKV mmkvI = MMKV.I("kv_app");
        Intrinsics.g(mmkvI, "mmkvWithID(...)");
        return mmkvI;
    }

    public final MMKV b() {
        return (MMKV) f43371b.getValue();
    }
}
