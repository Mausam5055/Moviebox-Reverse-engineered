package com.transsion.home.bean;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import androidx.compose.foundation.e;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.transsion.moviedetailapi.bean.Cover;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Keep
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0019\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B9\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b\u0012\b\b\u0002\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000bJ\u000b\u0010\u001b\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u001c\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u001d\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\t\u0010\u001e\u001a\u00020\bHÆ\u0003J\t\u0010\u001f\u001a\u00020\bHÆ\u0003JA\u0010 \u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\b\b\u0002\u0010\u0007\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\bHÆ\u0001J\u0006\u0010!\u001a\u00020\"J\u0013\u0010#\u001a\u00020\b2\b\u0010$\u001a\u0004\u0018\u00010%HÖ\u0003J\t\u0010&\u001a\u00020\"HÖ\u0001J\t\u0010'\u001a\u00020\u0003HÖ\u0001J\u0016\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020+2\u0006\u0010,\u001a\u00020\"R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\r\"\u0004\b\u0011\u0010\u000fR\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R\u001a\u0010\u0007\u001a\u00020\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\u0016\"\u0004\b\u0017\u0010\u0018R\u001a\u0010\t\u001a\u00020\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\u0016\"\u0004\b\u001a\u0010\u0018¨\u0006-"}, d2 = {"Lcom/transsion/home/bean/FilterItem;", "Landroid/os/Parcelable;", CampaignEx.JSON_KEY_TITLE, "", "deepLink", "image", "Lcom/transsion/moviedetailapi/bean/Cover;", "isAll", "", "builtIn", "<init>", "(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/Cover;ZZ)V", "getTitle", "()Ljava/lang/String;", "setTitle", "(Ljava/lang/String;)V", "getDeepLink", "setDeepLink", "getImage", "()Lcom/transsion/moviedetailapi/bean/Cover;", "setImage", "(Lcom/transsion/moviedetailapi/bean/Cover;)V", "()Z", "setAll", "(Z)V", "getBuiltIn", "setBuiltIn", "component1", "component2", "component3", "component4", "component5", "copy", "describeContents", "", "equals", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "Home_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class FilterItem implements Parcelable {
    private boolean builtIn;
    private String deepLink;
    private Cover image;
    private boolean isAll;
    private String title;
    public static final Parcelable.Creator<FilterItem> CREATOR = new a();
    public static final int $stable = 8;

    public static final class a implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final FilterItem createFromParcel(Parcel parcel) {
            Intrinsics.h(parcel, "parcel");
            return new FilterItem(parcel.readString(), parcel.readString(), (Cover) parcel.readSerializable(), parcel.readInt() != 0, parcel.readInt() != 0);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final FilterItem[] newArray(int i11) {
            return new FilterItem[i11];
        }
    }

    public FilterItem(String str, String str2, Cover cover, boolean z10, boolean z11) {
        this.title = str;
        this.deepLink = str2;
        this.image = cover;
        this.isAll = z10;
        this.builtIn = z11;
    }

    public /* synthetic */ FilterItem(String str, String str2, Cover cover, boolean z10, boolean z11, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, cover, (i11 & 8) != 0 ? false : z10, (i11 & 16) != 0 ? false : z11);
    }

    public static /* synthetic */ FilterItem copy$default(FilterItem filterItem, String str, String str2, Cover cover, boolean z10, boolean z11, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = filterItem.title;
        }
        if ((i11 & 2) != 0) {
            str2 = filterItem.deepLink;
        }
        String str3 = str2;
        if ((i11 & 4) != 0) {
            cover = filterItem.image;
        }
        Cover cover2 = cover;
        if ((i11 & 8) != 0) {
            z10 = filterItem.isAll;
        }
        boolean z12 = z10;
        if ((i11 & 16) != 0) {
            z11 = filterItem.builtIn;
        }
        return filterItem.copy(str, str3, cover2, z12, z11);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getTitle() {
        return this.title;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getDeepLink() {
        return this.deepLink;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final Cover getImage() {
        return this.image;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final boolean getIsAll() {
        return this.isAll;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final boolean getBuiltIn() {
        return this.builtIn;
    }

    public final FilterItem copy(String title, String deepLink, Cover image, boolean isAll, boolean builtIn) {
        return new FilterItem(title, deepLink, image, isAll, builtIn);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof FilterItem)) {
            return false;
        }
        FilterItem filterItem = (FilterItem) other;
        return Intrinsics.c(this.title, filterItem.title) && Intrinsics.c(this.deepLink, filterItem.deepLink) && Intrinsics.c(this.image, filterItem.image) && this.isAll == filterItem.isAll && this.builtIn == filterItem.builtIn;
    }

    public final boolean getBuiltIn() {
        return this.builtIn;
    }

    public final String getDeepLink() {
        return this.deepLink;
    }

    public final Cover getImage() {
        return this.image;
    }

    public final String getTitle() {
        return this.title;
    }

    public int hashCode() {
        String str = this.title;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.deepLink;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        Cover cover = this.image;
        return ((((iHashCode2 + (cover != null ? cover.hashCode() : 0)) * 31) + e.a(this.isAll)) * 31) + e.a(this.builtIn);
    }

    public final boolean isAll() {
        return this.isAll;
    }

    public final void setAll(boolean z10) {
        this.isAll = z10;
    }

    public final void setBuiltIn(boolean z10) {
        this.builtIn = z10;
    }

    public final void setDeepLink(String str) {
        this.deepLink = str;
    }

    public final void setImage(Cover cover) {
        this.image = cover;
    }

    public final void setTitle(String str) {
        this.title = str;
    }

    public String toString() {
        return "FilterItem(title=" + this.title + ", deepLink=" + this.deepLink + ", image=" + this.image + ", isAll=" + this.isAll + ", builtIn=" + this.builtIn + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel dest, int flags) {
        Intrinsics.h(dest, "dest");
        dest.writeString(this.title);
        dest.writeString(this.deepLink);
        dest.writeSerializable(this.image);
        dest.writeInt(this.isAll ? 1 : 0);
        dest.writeInt(this.builtIn ? 1 : 0);
    }
}
