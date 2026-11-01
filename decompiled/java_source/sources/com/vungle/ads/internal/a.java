package com.vungle.ads.internal;

import android.content.Context;
import com.vungle.ads.VungleError;
import com.vungle.ads.internal.model.AdPayload;
import com.vungle.ads.internal.util.w;
import com.vungle.ads.y;
import kotlin.Pair;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public final class a extends AdInternal {
    private final y adSize;
    private y updatedAdSize;

    /* JADX INFO: renamed from: com.vungle.ads.internal.a$a, reason: collision with other inner class name */
    public static final class C0701a extends com.vungle.ads.internal.presenter.c {
        final /* synthetic */ a this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C0701a(com.vungle.ads.internal.presenter.b bVar, a aVar) {
            super(bVar);
            this.this$0 = aVar;
        }

        @Override // com.vungle.ads.internal.presenter.c, com.vungle.ads.internal.presenter.b
        public void onAdEnd(String str) {
            this.this$0.setAdState(AdInternal.AdState.FINISHED);
            super.onAdEnd(str);
        }

        @Override // com.vungle.ads.internal.presenter.c, com.vungle.ads.internal.presenter.b
        public void onAdStart(String str) {
            this.this$0.setAdState(AdInternal.AdState.PLAYING);
            super.onAdStart(str);
        }

        @Override // com.vungle.ads.internal.presenter.c, com.vungle.ads.internal.presenter.b
        public void onFailure(VungleError error) {
            Intrinsics.h(error, "error");
            this.this$0.setAdState(AdInternal.AdState.ERROR);
            super.onFailure(error);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(Context context, y adSize) {
        super(context);
        Intrinsics.h(context, "context");
        Intrinsics.h(adSize, "adSize");
        this.adSize = adSize;
    }

    @Override // com.vungle.ads.internal.AdInternal
    public void adLoadedAndUpdateConfigure$vungle_ads_release(AdPayload advertisement) {
        Intrinsics.h(advertisement, "advertisement");
        super.adLoadedAndUpdateConfigure$vungle_ads_release(advertisement);
        if (this.adSize.isAdaptiveWidth$vungle_ads_release() || this.adSize.isAdaptiveHeight$vungle_ads_release()) {
            Pair<Integer, Integer> deviceWidthAndHeightWithOrientation = w.INSTANCE.getDeviceWidthAndHeightWithOrientation(getContext(), 0);
            int iIntValue = deviceWidthAndHeightWithOrientation.component1().intValue();
            int iIntValue2 = deviceWidthAndHeightWithOrientation.component2().intValue();
            int iAdWidth = this.adSize.isAdaptiveWidth$vungle_ads_release() ? advertisement.adWidth() : this.adSize.getWidth();
            int iAdHeight = this.adSize.isAdaptiveHeight$vungle_ads_release() ? advertisement.adHeight() : this.adSize.getHeight();
            int iMin = Math.min(iIntValue, iAdWidth);
            int iMin2 = Math.min(iIntValue2, iAdHeight);
            if (this.adSize.isAdaptiveHeight$vungle_ads_release() && this.adSize.getHeight() > 0) {
                iMin2 = Math.min(this.adSize.getHeight(), iMin2);
            }
            this.updatedAdSize = new y(iMin, iMin2);
        }
    }

    @Override // com.vungle.ads.internal.AdInternal
    public y getAdSizeForAdRequest() {
        return this.adSize;
    }

    public final y getUpdatedAdSize$vungle_ads_release() {
        return this.updatedAdSize;
    }

    @Override // com.vungle.ads.internal.AdInternal
    public boolean isValidAdSize(y yVar) {
        if (yVar != null) {
            return yVar.isValidSize$vungle_ads_release();
        }
        return false;
    }

    @Override // com.vungle.ads.internal.AdInternal
    public boolean isValidAdTypeForPlacement(com.vungle.ads.internal.model.g placement) {
        Intrinsics.h(placement, "placement");
        return placement.isBanner() || placement.isMREC() || placement.isInline();
    }

    public final void setUpdatedAdSize$vungle_ads_release(y yVar) {
        this.updatedAdSize = yVar;
    }

    public final com.vungle.ads.internal.presenter.c wrapCallback$vungle_ads_release(com.vungle.ads.internal.presenter.b adPlayCallback) {
        Intrinsics.h(adPlayCallback, "adPlayCallback");
        return new C0701a(adPlayCallback, this);
    }
}
