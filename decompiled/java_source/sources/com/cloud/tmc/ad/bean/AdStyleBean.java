package com.cloud.tmc.ad.bean;

import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0010\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003¢\u0006\u0002\u0010\u0007J\t\u0010\r\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000e\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0003HÆ\u0003J1\u0010\u0011\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u0012\u001a\u00020\u00032\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014HÖ\u0003J\t\u0010\u0015\u001a\u00020\u0016HÖ\u0001J\t\u0010\u0017\u001a\u00020\u0018HÖ\u0001R\u0011\u0010\u0006\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\tR\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\tR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\t¨\u0006\u0019"}, d2 = {"Lcom/cloud/tmc/ad/bean/AdStyleBean;", "Ljava/io/Serializable;", "showTitle", "", "showDescript", "showLogo", "showButton", "(ZZZZ)V", "getShowButton", "()Z", "getShowDescript", "getShowLogo", "getShowTitle", "component1", "component2", "component3", "component4", "copy", "equals", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "", "toString", "", "com.cloud.tmc.miniad"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class AdStyleBean implements Serializable {
    private final boolean showButton;
    private final boolean showDescript;
    private final boolean showLogo;
    private final boolean showTitle;

    public AdStyleBean(boolean z10, boolean z11, boolean z12, boolean z13) {
        this.showTitle = z10;
        this.showDescript = z11;
        this.showLogo = z12;
        this.showButton = z13;
    }

    public static /* synthetic */ AdStyleBean copy$default(AdStyleBean adStyleBean, boolean z10, boolean z11, boolean z12, boolean z13, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            z10 = adStyleBean.showTitle;
        }
        if ((i11 & 2) != 0) {
            z11 = adStyleBean.showDescript;
        }
        if ((i11 & 4) != 0) {
            z12 = adStyleBean.showLogo;
        }
        if ((i11 & 8) != 0) {
            z13 = adStyleBean.showButton;
        }
        return adStyleBean.copy(z10, z11, z12, z13);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final boolean getShowTitle() {
        return this.showTitle;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final boolean getShowDescript() {
        return this.showDescript;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final boolean getShowLogo() {
        return this.showLogo;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final boolean getShowButton() {
        return this.showButton;
    }

    public final AdStyleBean copy(boolean showTitle, boolean showDescript, boolean showLogo, boolean showButton) {
        return new AdStyleBean(showTitle, showDescript, showLogo, showButton);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof AdStyleBean)) {
            return false;
        }
        AdStyleBean adStyleBean = (AdStyleBean) other;
        return this.showTitle == adStyleBean.showTitle && this.showDescript == adStyleBean.showDescript && this.showLogo == adStyleBean.showLogo && this.showButton == adStyleBean.showButton;
    }

    public final boolean getShowButton() {
        return this.showButton;
    }

    public final boolean getShowDescript() {
        return this.showDescript;
    }

    public final boolean getShowLogo() {
        return this.showLogo;
    }

    public final boolean getShowTitle() {
        return this.showTitle;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [int] */
    /* JADX WARN: Type inference failed for: r0v3, types: [int] */
    /* JADX WARN: Type inference failed for: r0v5, types: [int] */
    /* JADX WARN: Type inference failed for: r0v7, types: [int] */
    /* JADX WARN: Type inference failed for: r0v8 */
    /* JADX WARN: Type inference failed for: r0v9 */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r1v1, types: [int] */
    /* JADX WARN: Type inference failed for: r1v2 */
    /* JADX WARN: Type inference failed for: r2v1, types: [int] */
    /* JADX WARN: Type inference failed for: r2v3, types: [int] */
    /* JADX WARN: Type inference failed for: r2v5 */
    /* JADX WARN: Type inference failed for: r2v6 */
    /* JADX WARN: Type inference failed for: r2v7 */
    /* JADX WARN: Type inference failed for: r2v8 */
    public int hashCode() {
        boolean z10 = this.showTitle;
        ?? r11 = z10;
        if (z10) {
            r11 = 1;
        }
        int i11 = r11 * 31;
        boolean z11 = this.showDescript;
        ?? r12 = z11;
        if (z11) {
            r12 = 1;
        }
        int i12 = (i11 + r12) * 31;
        boolean z12 = this.showLogo;
        ?? r13 = z12;
        if (z12) {
            r13 = 1;
        }
        int i13 = (i12 + r13) * 31;
        boolean z13 = this.showButton;
        return i13 + (z13 ? 1 : z13);
    }

    public String toString() {
        return "AdStyleBean(showTitle=" + this.showTitle + ", showDescript=" + this.showDescript + ", showLogo=" + this.showLogo + ", showButton=" + this.showButton + ")";
    }
}
