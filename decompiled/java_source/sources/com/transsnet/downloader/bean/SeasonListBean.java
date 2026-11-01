package com.transsnet.downloader.bean;

import androidx.compose.foundation.e;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u000e\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\u0011\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u0012\u001a\u00020\u00052\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014HÖ\u0003J\t\u0010\u0015\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0016\u001a\u00020\u0017HÖ\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0004\u0010\f\"\u0004\b\r\u0010\u000e¨\u0006\u0018"}, d2 = {"Lcom/transsnet/downloader/bean/SeasonListBean;", "Ljava/io/Serializable;", "season", "", "isSelected", "", "<init>", "(IZ)V", "getSeason", "()I", "setSeason", "(I)V", "()Z", "setSelected", "(Z)V", "component1", "component2", "copy", "equals", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "", "Downloader_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class SeasonListBean implements Serializable {
    private boolean isSelected;
    private int season;

    public SeasonListBean(int i11, boolean z10) {
        this.season = i11;
        this.isSelected = z10;
    }

    public static /* synthetic */ SeasonListBean copy$default(SeasonListBean seasonListBean, int i11, boolean z10, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            i11 = seasonListBean.season;
        }
        if ((i12 & 2) != 0) {
            z10 = seasonListBean.isSelected;
        }
        return seasonListBean.copy(i11, z10);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final int getSeason() {
        return this.season;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final boolean getIsSelected() {
        return this.isSelected;
    }

    public final SeasonListBean copy(int season, boolean isSelected) {
        return new SeasonListBean(season, isSelected);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof SeasonListBean)) {
            return false;
        }
        SeasonListBean seasonListBean = (SeasonListBean) other;
        return this.season == seasonListBean.season && this.isSelected == seasonListBean.isSelected;
    }

    public final int getSeason() {
        return this.season;
    }

    public int hashCode() {
        return (this.season * 31) + e.a(this.isSelected);
    }

    public final boolean isSelected() {
        return this.isSelected;
    }

    public final void setSeason(int i11) {
        this.season = i11;
    }

    public final void setSelected(boolean z10) {
        this.isSelected = z10;
    }

    public String toString() {
        return "SeasonListBean(season=" + this.season + ", isSelected=" + this.isSelected + ")";
    }
}
