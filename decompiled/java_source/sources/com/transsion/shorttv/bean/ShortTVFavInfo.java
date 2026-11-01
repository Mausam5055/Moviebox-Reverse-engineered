package com.transsion.shorttv.bean;

import androidx.annotation.Keep;
import androidx.compose.foundation.e;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import uy.c;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0015\b\u0087\b\u0018\u00002\u00020\u0001B)\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0007\u0010\bJ\u001a\u0010\u000b\u001a\u00020\u00042\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0096\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\u000e\u001a\u00020\rH\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ\u0017\u0010\u0013\u001a\u00020\u00122\b\u0010\u0011\u001a\u0004\u0018\u00010\u0010¢\u0006\u0004\b\u0013\u0010\u0014J\u0012\u0010\u0015\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\u0015\u0010\u0016J\u0010\u0010\u0017\u001a\u00020\u0004HÆ\u0003¢\u0006\u0004\b\u0017\u0010\u0018J\u0012\u0010\u0019\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\u0019\u0010\u0016J2\u0010\u001a\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00022\b\b\u0002\u0010\u0005\u001a\u00020\u00042\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0002HÆ\u0001¢\u0006\u0004\b\u001a\u0010\u001bJ\u0010\u0010\u001c\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\u001c\u0010\u0016R$\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u001d\u001a\u0004\b\u001e\u0010\u0016\"\u0004\b\u001f\u0010 R\"\u0010\u0005\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0005\u0010!\u001a\u0004\b\"\u0010\u0018\"\u0004\b#\u0010$R$\u0010\u0006\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0006\u0010\u001d\u001a\u0004\b%\u0010\u0016\"\u0004\b&\u0010 ¨\u0006'"}, d2 = {"Lcom/transsion/shorttv/bean/ShortTVFavInfo;", "Ljava/io/Serializable;", "", "favoriteNum", "", "hasFavorite", "favoriteTime", "<init>", "(Ljava/lang/String;ZLjava/lang/String;)V", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "equals", "(Ljava/lang/Object;)Z", "", "hashCode", "()I", "Luy/c;", "favoriteEvent", "", "update", "(Luy/c;)V", "component1", "()Ljava/lang/String;", "component2", "()Z", "component3", "copy", "(Ljava/lang/String;ZLjava/lang/String;)Lcom/transsion/shorttv/bean/ShortTVFavInfo;", "toString", "Ljava/lang/String;", "getFavoriteNum", "setFavoriteNum", "(Ljava/lang/String;)V", "Z", "getHasFavorite", "setHasFavorite", "(Z)V", "getFavoriteTime", "setFavoriteTime", "shortTvLib_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class ShortTVFavInfo implements Serializable {
    private String favoriteNum;
    private String favoriteTime;
    private boolean hasFavorite;

    public ShortTVFavInfo() {
        this(null, false, null, 7, null);
    }

    public ShortTVFavInfo(String str, boolean z10, String str2) {
        this.favoriteNum = str;
        this.hasFavorite = z10;
        this.favoriteTime = str2;
    }

    public /* synthetic */ ShortTVFavInfo(String str, boolean z10, String str2, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? null : str, (i11 & 2) != 0 ? false : z10, (i11 & 4) != 0 ? null : str2);
    }

    public static /* synthetic */ ShortTVFavInfo copy$default(ShortTVFavInfo shortTVFavInfo, String str, boolean z10, String str2, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = shortTVFavInfo.favoriteNum;
        }
        if ((i11 & 2) != 0) {
            z10 = shortTVFavInfo.hasFavorite;
        }
        if ((i11 & 4) != 0) {
            str2 = shortTVFavInfo.favoriteTime;
        }
        return shortTVFavInfo.copy(str, z10, str2);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getFavoriteNum() {
        return this.favoriteNum;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final boolean getHasFavorite() {
        return this.hasFavorite;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getFavoriteTime() {
        return this.favoriteTime;
    }

    public final ShortTVFavInfo copy(String favoriteNum, boolean hasFavorite, String favoriteTime) {
        return new ShortTVFavInfo(favoriteNum, hasFavorite, favoriteTime);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!Intrinsics.c(ShortTVFavInfo.class, other != null ? other.getClass() : null)) {
            return false;
        }
        Intrinsics.f(other, "null cannot be cast to non-null type com.transsion.shorttv.bean.ShortTVFavInfo");
        ShortTVFavInfo shortTVFavInfo = (ShortTVFavInfo) other;
        return Intrinsics.c(this.favoriteNum, shortTVFavInfo.favoriteNum) && this.hasFavorite == shortTVFavInfo.hasFavorite && Intrinsics.c(this.favoriteTime, shortTVFavInfo.favoriteTime);
    }

    public final String getFavoriteNum() {
        return this.favoriteNum;
    }

    public final String getFavoriteTime() {
        return this.favoriteTime;
    }

    public final boolean getHasFavorite() {
        return this.hasFavorite;
    }

    public int hashCode() {
        String str = this.favoriteNum;
        int iHashCode = (((str != null ? str.hashCode() : 0) * 31) + e.a(this.hasFavorite)) * 31;
        String str2 = this.favoriteTime;
        return iHashCode + (str2 != null ? str2.hashCode() : 0);
    }

    public final void setFavoriteNum(String str) {
        this.favoriteNum = str;
    }

    public final void setFavoriteTime(String str) {
        this.favoriteTime = str;
    }

    public final void setHasFavorite(boolean z10) {
        this.hasFavorite = z10;
    }

    public String toString() {
        return "ShortTVFavInfo(favoriteNum=" + this.favoriteNum + ", hasFavorite=" + this.hasFavorite + ", favoriteTime=" + this.favoriteTime + ")";
    }

    public final void update(c favoriteEvent) {
        int i11;
        if (favoriteEvent == null) {
            return;
        }
        String strB = favoriteEvent.b();
        try {
            String str = this.favoriteNum;
            i11 = str != null ? Integer.parseInt(str) : 0;
        } catch (Exception unused) {
        }
        if (strB == null) {
            if (!favoriteEvent.a() || this.hasFavorite) {
                strB = (favoriteEvent.a() || !this.hasFavorite) ? this.favoriteNum : String.valueOf(Math.max(0, i11 - 1));
            } else {
                strB = String.valueOf(i11 + 1);
            }
        }
        this.favoriteNum = strB;
        this.hasFavorite = favoriteEvent.a();
    }
}
