package com.transsion.room.sub.bean.subscription;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import androidx.compose.foundation.e;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\r\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B+\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u000e\b\u0002\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b¢\u0006\u0004\b\t\u0010\nJ\t\u0010\u0011\u001a\u00020\u0003HÆ\u0003J\u000f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005HÆ\u0003J\t\u0010\u0013\u001a\u00020\bHÆ\u0003J-\u0010\u0014\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\u000e\b\u0002\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u00052\b\b\u0002\u0010\u0007\u001a\u00020\bHÆ\u0001J\u0006\u0010\u0015\u001a\u00020\u0016J\u0013\u0010\u0017\u001a\u00020\b2\b\u0010\u0018\u001a\u0004\u0018\u00010\u0019HÖ\u0003J\t\u0010\u001a\u001a\u00020\u0016HÖ\u0001J\t\u0010\u001b\u001a\u00020\u0003HÖ\u0001J\u0016\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u0016R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0017\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0011\u0010\u0007\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010¨\u0006!"}, d2 = {"Lcom/transsion/room/sub/bean/subscription/SubscriptionUserFeedData;", "Landroid/os/Parcelable;", "nextCursor", "", "feedItems", "", "Lcom/transsion/room/sub/bean/subscription/FeedItem;", "hasMore", "", "<init>", "(Ljava/lang/String;Ljava/util/List;Z)V", "getNextCursor", "()Ljava/lang/String;", "getFeedItems", "()Ljava/util/List;", "getHasMore", "()Z", "component1", "component2", "component3", "copy", "describeContents", "", "equals", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "Room_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class SubscriptionUserFeedData implements Parcelable {
    public static final Parcelable.Creator<SubscriptionUserFeedData> CREATOR = new a();
    private final List<FeedItem> feedItems;
    private final boolean hasMore;
    private final String nextCursor;

    public static final class a implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final SubscriptionUserFeedData createFromParcel(Parcel parcel) {
            Intrinsics.h(parcel, "parcel");
            String string = parcel.readString();
            int i11 = parcel.readInt();
            ArrayList arrayList = new ArrayList(i11);
            for (int i12 = 0; i12 != i11; i12++) {
                arrayList.add(FeedItem.CREATOR.createFromParcel(parcel));
            }
            return new SubscriptionUserFeedData(string, arrayList, parcel.readInt() != 0);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final SubscriptionUserFeedData[] newArray(int i11) {
            return new SubscriptionUserFeedData[i11];
        }
    }

    public SubscriptionUserFeedData() {
        this(null, null, false, 7, null);
    }

    public SubscriptionUserFeedData(String nextCursor, List<FeedItem> feedItems, boolean z10) {
        Intrinsics.h(nextCursor, "nextCursor");
        Intrinsics.h(feedItems, "feedItems");
        this.nextCursor = nextCursor;
        this.feedItems = feedItems;
        this.hasMore = z10;
    }

    public /* synthetic */ SubscriptionUserFeedData(String str, List list, boolean z10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? "" : str, (i11 & 2) != 0 ? CollectionsKt.l() : list, (i11 & 4) != 0 ? false : z10);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ SubscriptionUserFeedData copy$default(SubscriptionUserFeedData subscriptionUserFeedData, String str, List list, boolean z10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = subscriptionUserFeedData.nextCursor;
        }
        if ((i11 & 2) != 0) {
            list = subscriptionUserFeedData.feedItems;
        }
        if ((i11 & 4) != 0) {
            z10 = subscriptionUserFeedData.hasMore;
        }
        return subscriptionUserFeedData.copy(str, list, z10);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getNextCursor() {
        return this.nextCursor;
    }

    public final List<FeedItem> component2() {
        return this.feedItems;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final boolean getHasMore() {
        return this.hasMore;
    }

    public final SubscriptionUserFeedData copy(String nextCursor, List<FeedItem> feedItems, boolean hasMore) {
        Intrinsics.h(nextCursor, "nextCursor");
        Intrinsics.h(feedItems, "feedItems");
        return new SubscriptionUserFeedData(nextCursor, feedItems, hasMore);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof SubscriptionUserFeedData)) {
            return false;
        }
        SubscriptionUserFeedData subscriptionUserFeedData = (SubscriptionUserFeedData) other;
        return Intrinsics.c(this.nextCursor, subscriptionUserFeedData.nextCursor) && Intrinsics.c(this.feedItems, subscriptionUserFeedData.feedItems) && this.hasMore == subscriptionUserFeedData.hasMore;
    }

    public final List<FeedItem> getFeedItems() {
        return this.feedItems;
    }

    public final boolean getHasMore() {
        return this.hasMore;
    }

    public final String getNextCursor() {
        return this.nextCursor;
    }

    public int hashCode() {
        return (((this.nextCursor.hashCode() * 31) + this.feedItems.hashCode()) * 31) + e.a(this.hasMore);
    }

    public String toString() {
        return "SubscriptionUserFeedData(nextCursor=" + this.nextCursor + ", feedItems=" + this.feedItems + ", hasMore=" + this.hasMore + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel dest, int flags) {
        Intrinsics.h(dest, "dest");
        dest.writeString(this.nextCursor);
        List<FeedItem> list = this.feedItems;
        dest.writeInt(list.size());
        Iterator<FeedItem> it = list.iterator();
        while (it.hasNext()) {
            it.next().writeToParcel(dest, flags);
        }
        dest.writeInt(this.hasMore ? 1 : 0);
    }
}
