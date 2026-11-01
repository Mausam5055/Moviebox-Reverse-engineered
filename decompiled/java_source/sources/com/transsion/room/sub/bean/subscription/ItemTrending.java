package com.transsion.room.sub.bean.subscription;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B\u001b\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\t\u0010\u0010\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0011\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\u0012\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0006\u0010\u0013\u001a\u00020\u0014J\u0013\u0010\u0015\u001a\u00020\u00162\b\u0010\u0017\u001a\u0004\u0018\u00010\u0018HÖ\u0003J\t\u0010\u0019\u001a\u00020\u0014HÖ\u0001J\t\u0010\u001a\u001a\u00020\u001bHÖ\u0001J\u0016\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u0014R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000f¨\u0006!"}, d2 = {"Lcom/transsion/room/sub/bean/subscription/ItemTrending;", "Landroid/os/Parcelable;", "content", "Lcom/transsion/room/sub/bean/subscription/TopicItemTrending;", "displayMeta", "Lcom/transsion/room/sub/bean/subscription/DisplayMeta;", "<init>", "(Lcom/transsion/room/sub/bean/subscription/TopicItemTrending;Lcom/transsion/room/sub/bean/subscription/DisplayMeta;)V", "getContent", "()Lcom/transsion/room/sub/bean/subscription/TopicItemTrending;", "setContent", "(Lcom/transsion/room/sub/bean/subscription/TopicItemTrending;)V", "getDisplayMeta", "()Lcom/transsion/room/sub/bean/subscription/DisplayMeta;", "setDisplayMeta", "(Lcom/transsion/room/sub/bean/subscription/DisplayMeta;)V", "component1", "component2", "copy", "describeContents", "", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "Room_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class ItemTrending implements Parcelable {
    public static final Parcelable.Creator<ItemTrending> CREATOR = new a();
    private TopicItemTrending content;
    private DisplayMeta displayMeta;

    public static final class a implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ItemTrending createFromParcel(Parcel parcel) {
            Intrinsics.h(parcel, "parcel");
            return new ItemTrending(TopicItemTrending.CREATOR.createFromParcel(parcel), DisplayMeta.CREATOR.createFromParcel(parcel));
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final ItemTrending[] newArray(int i11) {
            return new ItemTrending[i11];
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public ItemTrending() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }

    public ItemTrending(TopicItemTrending content, DisplayMeta displayMeta) {
        Intrinsics.h(content, "content");
        Intrinsics.h(displayMeta, "displayMeta");
        this.content = content;
        this.displayMeta = displayMeta;
    }

    public /* synthetic */ ItemTrending(TopicItemTrending topicItemTrending, DisplayMeta displayMeta, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        if ((i11 & 1) != 0) {
            topicItemTrending = new TopicItemTrending(null, null, null, null, 15, null);
        }
        this(topicItemTrending, (i11 & 2) != 0 ? new DisplayMeta(null, 1, null) : displayMeta);
    }

    public static /* synthetic */ ItemTrending copy$default(ItemTrending itemTrending, TopicItemTrending topicItemTrending, DisplayMeta displayMeta, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            topicItemTrending = itemTrending.content;
        }
        if ((i11 & 2) != 0) {
            displayMeta = itemTrending.displayMeta;
        }
        return itemTrending.copy(topicItemTrending, displayMeta);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final TopicItemTrending getContent() {
        return this.content;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final DisplayMeta getDisplayMeta() {
        return this.displayMeta;
    }

    public final ItemTrending copy(TopicItemTrending content, DisplayMeta displayMeta) {
        Intrinsics.h(content, "content");
        Intrinsics.h(displayMeta, "displayMeta");
        return new ItemTrending(content, displayMeta);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ItemTrending)) {
            return false;
        }
        ItemTrending itemTrending = (ItemTrending) other;
        return Intrinsics.c(this.content, itemTrending.content) && Intrinsics.c(this.displayMeta, itemTrending.displayMeta);
    }

    public final TopicItemTrending getContent() {
        return this.content;
    }

    public final DisplayMeta getDisplayMeta() {
        return this.displayMeta;
    }

    public int hashCode() {
        return (this.content.hashCode() * 31) + this.displayMeta.hashCode();
    }

    public final void setContent(TopicItemTrending topicItemTrending) {
        Intrinsics.h(topicItemTrending, "<set-?>");
        this.content = topicItemTrending;
    }

    public final void setDisplayMeta(DisplayMeta displayMeta) {
        Intrinsics.h(displayMeta, "<set-?>");
        this.displayMeta = displayMeta;
    }

    public String toString() {
        return "ItemTrending(content=" + this.content + ", displayMeta=" + this.displayMeta + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel dest, int flags) {
        Intrinsics.h(dest, "dest");
        this.content.writeToParcel(dest, flags);
        this.displayMeta.writeToParcel(dest, flags);
    }
}
