package com.vungle.ads.internal;

import android.content.Context;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public final class e extends c {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public e(Context context) {
        super(context);
        Intrinsics.h(context, "context");
    }

    @Override // com.vungle.ads.internal.AdInternal
    public boolean isValidAdTypeForPlacement(com.vungle.ads.internal.model.g placement) {
        Intrinsics.h(placement, "placement");
        return placement.isInterstitial() || placement.isAppOpen();
    }
}
