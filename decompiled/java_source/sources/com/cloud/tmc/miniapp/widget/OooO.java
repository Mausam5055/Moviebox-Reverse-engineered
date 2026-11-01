package com.cloud.tmc.miniapp.widget;

import com.cloud.tmc.miniapp.utils.toast.ToastUtils;
import java.util.LinkedHashMap;
import kotlin.Deprecated;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Deprecated
public final class OooO {
    static {
        new LinkedHashMap();
    }

    @Deprecated
    @JvmStatic
    public static final void OooO00o(CharSequence message) {
        if (message != null) {
            Intrinsics.h(message, "message");
            Intrinsics.h(message, "message");
            ToastUtils.showToast$default(message, 1, 0L, false, null, 28, null);
        }
    }

    @Deprecated
    @JvmStatic
    public static final void OooO0O0(CharSequence message) {
        Intrinsics.h(message, "message");
        Intrinsics.h(message, "message");
        Intrinsics.h(message, "message");
        ToastUtils.showToast$default(message, 1, 0L, false, null, 28, null);
    }
}
