package com.transsnet.downloader.util;

import com.tencent.mmkv.MMKV;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public final class f0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final f0 f59935a = new f0();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Lazy f59936b = LazyKt.b(new Function0() { // from class: com.transsnet.downloader.util.e0
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return f0.d();
        }
    });

    private f0() {
    }

    private final MMKV b() {
        return (MMKV) f59936b.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final MMKV d() {
        MMKV mmkvI = MMKV.I("transfer_tips");
        Intrinsics.g(mmkvI, "mmkvWithID(...)");
        return mmkvI;
    }

    public final boolean c() {
        return b().getBoolean("key_transfer_tips_dialog_show", false);
    }

    public final void e(boolean z10) {
        b().putBoolean("key_transfer_tips_dialog_show", z10);
    }
}
