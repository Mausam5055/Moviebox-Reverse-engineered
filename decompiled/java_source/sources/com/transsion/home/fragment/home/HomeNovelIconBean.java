package com.transsion.home.fragment.home;

import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Keep
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B\u001f\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\u000b\u0010\n\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u000b\u001a\u0004\u0018\u00010\u0003HÆ\u0003J!\u0010\f\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0010\u001a\u00020\u0011HÖ\u0001J\t\u0010\u0012\u001a\u00020\u0003HÖ\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\b¨\u0006\u0013"}, d2 = {"Lcom/transsion/home/fragment/home/HomeNovelIconBean;", "", "icUrl", "", "deeplink", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "getIcUrl", "()Ljava/lang/String;", "getDeeplink", "component1", "component2", "copy", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "hashCode", "", "toString", "Home_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class HomeNovelIconBean {
    public static final int $stable = 0;
    private final String deeplink;
    private final String icUrl;

    /* JADX WARN: Multi-variable type inference failed */
    public HomeNovelIconBean() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }

    public HomeNovelIconBean(String str, String str2) {
        this.icUrl = str;
        this.deeplink = str2;
    }

    public /* synthetic */ HomeNovelIconBean(String str, String str2, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? null : str, (i11 & 2) != 0 ? null : str2);
    }

    public static /* synthetic */ HomeNovelIconBean copy$default(HomeNovelIconBean homeNovelIconBean, String str, String str2, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = homeNovelIconBean.icUrl;
        }
        if ((i11 & 2) != 0) {
            str2 = homeNovelIconBean.deeplink;
        }
        return homeNovelIconBean.copy(str, str2);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getIcUrl() {
        return this.icUrl;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getDeeplink() {
        return this.deeplink;
    }

    public final HomeNovelIconBean copy(String icUrl, String deeplink) {
        return new HomeNovelIconBean(icUrl, deeplink);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof HomeNovelIconBean)) {
            return false;
        }
        HomeNovelIconBean homeNovelIconBean = (HomeNovelIconBean) other;
        return Intrinsics.c(this.icUrl, homeNovelIconBean.icUrl) && Intrinsics.c(this.deeplink, homeNovelIconBean.deeplink);
    }

    public final String getDeeplink() {
        return this.deeplink;
    }

    public final String getIcUrl() {
        return this.icUrl;
    }

    public int hashCode() {
        String str = this.icUrl;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.deeplink;
        return iHashCode + (str2 != null ? str2.hashCode() : 0);
    }

    public String toString() {
        return "HomeNovelIconBean(icUrl=" + this.icUrl + ", deeplink=" + this.deeplink + ")";
    }
}
