package com.vungle.ads;

import android.content.Context;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public final class n extends BaseFullscreenAd {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public n(Context context, String placementId, b adConfig) {
        super(context, placementId, adConfig);
        Intrinsics.h(context, "context");
        Intrinsics.h(placementId, "placementId");
        Intrinsics.h(adConfig, "adConfig");
    }

    public /* synthetic */ n(Context context, String str, b bVar, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, str, (i11 & 4) != 0 ? new b() : bVar);
    }

    @Override // com.vungle.ads.BaseAd
    public com.vungle.ads.internal.e constructAdInternal$vungle_ads_release(Context context) {
        Intrinsics.h(context, "context");
        return new com.vungle.ads.internal.e(context);
    }
}
