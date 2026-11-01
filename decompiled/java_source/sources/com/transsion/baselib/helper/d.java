package com.transsion.baselib.helper;

import com.tencent.mmkv.MMKV;
import com.transsion.player.p007enum.ScaleMode;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final d f43265a = new d();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Lazy f43266b = LazyKt.b(new Function0() { // from class: com.transsion.baselib.helper.c
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return d.e();
        }
    });

    private d() {
    }

    private final MMKV b() {
        return (MMKV) f43266b.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final MMKV e() {
        MMKV mmkvI = MMKV.I("LocalVideoPlayerConfig");
        Intrinsics.g(mmkvI, "mmkvWithID(...)");
        return mmkvI;
    }

    public final ScaleMode c() {
        int i11 = b().getInt("ScaleMode", 0);
        ScaleMode scaleMode = ScaleMode.SCALE_ASPECT_FIT;
        if (scaleMode.getValue() == i11) {
            return scaleMode;
        }
        ScaleMode scaleMode2 = ScaleMode.SCALE_ASPECT_FILL;
        return scaleMode2.getValue() == i11 ? scaleMode2 : ScaleMode.SCALE_TO_FILL;
    }

    public final float d() {
        return b().getFloat("speed", 1.0f);
    }

    public final void f(ScaleMode mode) {
        Intrinsics.h(mode, "mode");
        b().putInt("ScaleMode", mode.getValue());
    }

    public final void g(float f11) {
        b().putFloat("speed", f11);
    }
}
