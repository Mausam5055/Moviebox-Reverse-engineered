package com.transsion.shorttv.utils;

import androidx.p009lifecycle.b0;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.tencent.mmkv.MMKV;
import java.util.concurrent.CopyOnWriteArrayList;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final h f53653a = new h();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Lazy f53654b = LazyKt.b(new Function0() { // from class: com.transsion.shorttv.utils.f
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return h.g();
        }
    });

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Lazy f53655c = LazyKt.b(new Function0() { // from class: com.transsion.shorttv.utils.g
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return h.h();
        }
    });

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final int f53656d = 20;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final int f53657e = 3;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static CopyOnWriteArrayList f53658f = new CopyOnWriteArrayList();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final b0 f53659g = new b0();

    private h() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final MMKV g() {
        MMKV mmkvI = MMKV.I("short_tv");
        Intrinsics.g(mmkvI, "mmkvWithID(...)");
        return mmkvI;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final MMKV h() {
        MMKV mmkvI = MMKV.I("kv_app");
        Intrinsics.g(mmkvI, "mmkvWithID(...)");
        return mmkvI;
    }

    public final boolean c() {
        return System.currentTimeMillis() - d().getLong("k_download_guide_bubble_last_show_time", 0L) >= TmcConstants.MINIAPP_TIME_DIFF;
    }

    public final MMKV d() {
        return (MMKV) f53654b.getValue();
    }

    public final MMKV e() {
        return (MMKV) f53655c.getValue();
    }

    public final void f() {
        d().putLong("k_download_guide_bubble_last_show_time", System.currentTimeMillis());
    }
}
