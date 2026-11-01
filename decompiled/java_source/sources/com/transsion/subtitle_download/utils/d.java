package com.transsion.subtitle_download.utils;

import com.tencent.mmkv.MMKV;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final d f55045a = new d();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Lazy f55046b = LazyKt.b(new Function0() { // from class: com.transsion.subtitle_download.utils.c
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return d.c();
        }
    });

    private d() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final MMKV c() {
        MMKV mmkvI = MMKV.I("kv_subtitle");
        Intrinsics.g(mmkvI, "mmkvWithID(...)");
        return mmkvI;
    }

    public final MMKV b() {
        return (MMKV) f55046b.getValue();
    }
}
