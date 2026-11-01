package com.google.accompanist.systemuicontroller;

import androidx.compose.ui.graphics.w1;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public abstract /* synthetic */ class b {
    public static void a(c cVar, long j11, boolean z10, boolean z11, Function1 transformColorForLightContent) {
        Intrinsics.h(transformColorForLightContent, "transformColorForLightContent");
        cVar.a(j11, z10, transformColorForLightContent);
        cVar.b(j11, z10, z11, transformColorForLightContent);
    }

    public static /* synthetic */ void b(c cVar, long j11, boolean z10, boolean z11, Function1 function1, int i11, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: setSystemBarsColor-Iv8Zu3U");
        }
        if ((i11 & 2) != 0) {
            z10 = w1.i(j11) > 0.5f;
        }
        boolean z12 = z10;
        boolean z13 = (i11 & 4) != 0 ? true : z11;
        if ((i11 & 8) != 0) {
            function1 = SystemUiControllerKt.f24175b;
        }
        cVar.c(j11, z12, z13, function1);
    }
}
