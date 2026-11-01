package com.vungle.ads;

import android.content.Context;
import com.vungle.ads.internal.ConfigManager;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import kotlin.jvm.JvmField;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public final class y {
    private final int height;
    private boolean isAdaptiveHeight;
    private boolean isAdaptiveWidth;
    private final int width;
    public static final a Companion = new a(null);

    @JvmField
    public static final y BANNER = new y(Sdk$SDKError.Reason.WEBVIEW_ERROR_VALUE, 50);

    @JvmField
    public static final y BANNER_SHORT = new y(300, 50);

    @JvmField
    public static final y BANNER_LEADERBOARD = new y(728, 90);

    @JvmField
    public static final y MREC = new y(300, 250);

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        public final y getAdSizeWithWidth(Context context, int i11) {
            Intrinsics.h(context, "context");
            int iIntValue = com.vungle.ads.internal.util.w.INSTANCE.getDeviceWidthAndHeightWithOrientation(context, 0).component2().intValue();
            if (i11 < 0) {
                i11 = 0;
            }
            y yVar = new y(i11, iIntValue);
            if (yVar.getWidth() == 0) {
                yVar.setAdaptiveWidth$vungle_ads_release(true);
            }
            yVar.setAdaptiveHeight$vungle_ads_release(true);
            return yVar;
        }

        @JvmStatic
        public final y getAdSizeWithWidthAndHeight(int i11, int i12) {
            if (i11 < 0) {
                i11 = 0;
            }
            if (i12 < 0) {
                i12 = 0;
            }
            y yVar = new y(i11, i12);
            if (yVar.getWidth() == 0) {
                yVar.setAdaptiveWidth$vungle_ads_release(true);
            }
            if (yVar.getHeight() == 0) {
                yVar.setAdaptiveHeight$vungle_ads_release(true);
            }
            return yVar;
        }

        @JvmStatic
        public final y getValidAdSizeFromSize(int i11, int i12, String placementId) {
            Intrinsics.h(placementId, "placementId");
            com.vungle.ads.internal.model.g placement = ConfigManager.INSTANCE.getPlacement(placementId);
            if (placement != null) {
                if (!placement.isInline()) {
                    placement = null;
                }
                if (placement != null) {
                    return y.Companion.getAdSizeWithWidthAndHeight(i11, i12);
                }
            }
            y yVar = y.MREC;
            if (i11 >= yVar.getWidth() && i12 >= yVar.getHeight()) {
                return yVar;
            }
            y yVar2 = y.BANNER_LEADERBOARD;
            if (i11 >= yVar2.getWidth() && i12 >= yVar2.getHeight()) {
                return yVar2;
            }
            y yVar3 = y.BANNER;
            if (i11 >= yVar3.getWidth() && i12 >= yVar3.getHeight()) {
                return yVar3;
            }
            y yVar4 = y.BANNER_SHORT;
            return (i11 < yVar4.getWidth() || i12 < yVar4.getHeight()) ? getAdSizeWithWidthAndHeight(i11, i12) : yVar4;
        }
    }

    public y(int i11, int i12) {
        this.width = i11;
        this.height = i12;
    }

    @JvmStatic
    public static final y getAdSizeWithWidth(Context context, int i11) {
        return Companion.getAdSizeWithWidth(context, i11);
    }

    @JvmStatic
    public static final y getAdSizeWithWidthAndHeight(int i11, int i12) {
        return Companion.getAdSizeWithWidthAndHeight(i11, i12);
    }

    @JvmStatic
    public static final y getValidAdSizeFromSize(int i11, int i12, String str) {
        return Companion.getValidAdSizeFromSize(i11, i12, str);
    }

    public final int getHeight() {
        return this.height;
    }

    public final int getWidth() {
        return this.width;
    }

    public final boolean isAdaptiveHeight$vungle_ads_release() {
        return this.isAdaptiveHeight;
    }

    public final boolean isAdaptiveWidth$vungle_ads_release() {
        return this.isAdaptiveWidth;
    }

    public final boolean isValidSize$vungle_ads_release() {
        return this.width >= 0 && this.height >= 0;
    }

    public final void setAdaptiveHeight$vungle_ads_release(boolean z10) {
        this.isAdaptiveHeight = z10;
    }

    public final void setAdaptiveWidth$vungle_ads_release(boolean z10) {
        this.isAdaptiveWidth = z10;
    }

    public String toString() {
        return "VungleAdSize(width=" + this.width + ", height=" + this.height + ')';
    }
}
