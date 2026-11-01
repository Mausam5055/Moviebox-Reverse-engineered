package com.vungle.ads.internal;

import android.content.Context;
import com.vungle.ads.internal.model.BidPayload;
import com.vungle.ads.y;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public final class f extends AdInternal implements com.vungle.ads.internal.presenter.k {
    public static final a Companion = new a(null);
    public static final String TOKEN_APP_DESCRIPTION = "APP_DESCRIPTION";
    public static final String TOKEN_APP_ICON = "APP_ICON";
    public static final String TOKEN_APP_NAME = "APP_NAME";
    public static final String TOKEN_APP_RATING_VALUE = "APP_RATING_VALUE";
    public static final String TOKEN_CTA_BUTTON_TEXT = "CTA_BUTTON_TEXT";
    public static final String TOKEN_CTA_BUTTON_URL = "CTA_BUTTON_URL";
    public static final String TOKEN_MAIN_IMAGE = "MAIN_IMAGE";
    public static final String TOKEN_OM_SDK_DATA = "OM_SDK_DATA";
    public static final String TOKEN_SPONSORED_BY = "SPONSORED_BY";
    public static final String TOKEN_VUNGLE_PRIVACY_ICON_URL = "VUNGLE_PRIVACY_ICON_URL";
    public static final String TOKEN_VUNGLE_PRIVACY_URL = "VUNGLE_PRIVACY_URL";

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f(Context context) {
        super(context);
        Intrinsics.h(context, "context");
    }

    @Override // com.vungle.ads.internal.AdInternal
    public y getAdSizeForAdRequest() {
        return null;
    }

    @Override // com.vungle.ads.internal.presenter.k
    public List<String> getImpressionUrls() {
        BidPayload bidPayload = getBidPayload();
        if (bidPayload != null) {
            return bidPayload.getImpression();
        }
        return null;
    }

    @Override // com.vungle.ads.internal.presenter.k
    public String getPlacementRefId() {
        com.vungle.ads.internal.model.g placement = getPlacement();
        if (placement != null) {
            return placement.getReferenceId();
        }
        return null;
    }

    @Override // com.vungle.ads.internal.AdInternal
    public boolean isValidAdSize(y yVar) {
        return true;
    }

    @Override // com.vungle.ads.internal.AdInternal
    public boolean isValidAdTypeForPlacement(com.vungle.ads.internal.model.g placement) {
        Intrinsics.h(placement, "placement");
        return placement.isNative();
    }
}
