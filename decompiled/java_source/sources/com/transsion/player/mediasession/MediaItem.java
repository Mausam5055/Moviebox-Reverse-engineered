package com.transsion.player.mediasession;

import android.app.PendingIntent;
import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.google.android.gms.common.internal.BaseGmsClient;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u001b\n\u0002\u0010\u0000\n\u0002\b+\b\u0087\b\u0018\u0000 `2\u00020\u0001:\u0001aB¯\u0001\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\f\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0010\u0012\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0010\u0012\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0015\u0010\u0016J\u001d\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u001a\u001a\u00020\u0019¢\u0006\u0004\b\u001c\u0010\u001dJ\r\u0010\u001e\u001a\u00020\u0019¢\u0006\u0004\b\u001e\u0010\u001fJ\u0012\u0010 \u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b \u0010!J\u0012\u0010\"\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\"\u0010!J\u0012\u0010#\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b#\u0010!J\u0012\u0010$\u001a\u0004\u0018\u00010\u0006HÆ\u0003¢\u0006\u0004\b$\u0010%J\u0012\u0010&\u001a\u0004\u0018\u00010\u0006HÆ\u0003¢\u0006\u0004\b&\u0010%J\u0012\u0010'\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b'\u0010!J\u0012\u0010(\u001a\u0004\u0018\u00010\nHÆ\u0003¢\u0006\u0004\b(\u0010)J\u0012\u0010*\u001a\u0004\u0018\u00010\fHÆ\u0003¢\u0006\u0004\b*\u0010+J\u0012\u0010,\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b,\u0010!J\u0012\u0010-\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b-\u0010!J\u0012\u0010.\u001a\u0004\u0018\u00010\u0010HÆ\u0003¢\u0006\u0004\b.\u0010/J\u0012\u00100\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b0\u0010!J\u0012\u00101\u001a\u0004\u0018\u00010\u0010HÆ\u0003¢\u0006\u0004\b1\u0010/J\u0012\u00102\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b2\u0010!J¸\u0001\u00103\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00102\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00102\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0002HÆ\u0001¢\u0006\u0004\b3\u00104J\u0010\u00105\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b5\u0010!J\u0010\u00106\u001a\u00020\u0019HÖ\u0001¢\u0006\u0004\b6\u0010\u001fJ\u001a\u00109\u001a\u00020\u00102\b\u00108\u001a\u0004\u0018\u000107HÖ\u0003¢\u0006\u0004\b9\u0010:R$\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010;\u001a\u0004\b<\u0010!\"\u0004\b=\u0010>R$\u0010\u0004\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0004\u0010;\u001a\u0004\b?\u0010!\"\u0004\b@\u0010>R$\u0010\u0005\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0005\u0010;\u001a\u0004\bA\u0010!\"\u0004\bB\u0010>R$\u0010\u0007\u001a\u0004\u0018\u00010\u00068\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0007\u0010C\u001a\u0004\bD\u0010%\"\u0004\bE\u0010FR$\u0010\b\u001a\u0004\u0018\u00010\u00068\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\b\u0010C\u001a\u0004\bG\u0010%\"\u0004\bH\u0010FR$\u0010\t\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\t\u0010;\u001a\u0004\bI\u0010!\"\u0004\bJ\u0010>R$\u0010\u000b\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000b\u0010K\u001a\u0004\bL\u0010)\"\u0004\bM\u0010NR$\u0010\r\u001a\u0004\u0018\u00010\f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\r\u0010O\u001a\u0004\bP\u0010+\"\u0004\bQ\u0010RR$\u0010\u000e\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000e\u0010;\u001a\u0004\bS\u0010!\"\u0004\bT\u0010>R$\u0010\u000f\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000f\u0010;\u001a\u0004\bU\u0010!\"\u0004\bV\u0010>R$\u0010\u0011\u001a\u0004\u0018\u00010\u00108\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0011\u0010W\u001a\u0004\b\u0011\u0010/\"\u0004\bX\u0010YR$\u0010\u0012\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0012\u0010;\u001a\u0004\bZ\u0010!\"\u0004\b[\u0010>R$\u0010\u0013\u001a\u0004\u0018\u00010\u00108\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0013\u0010W\u001a\u0004\b\\\u0010/\"\u0004\b]\u0010YR$\u0010\u0014\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0014\u0010;\u001a\u0004\b^\u0010!\"\u0004\b_\u0010>¨\u0006b"}, d2 = {"Lcom/transsion/player/mediasession/MediaItem;", "Landroid/os/Parcelable;", "", CampaignEx.JSON_KEY_TITLE, "subTitle", "coverUrl", "", "duration", RequestParameters.POSITION, "state", "Landroid/app/PendingIntent;", BaseGmsClient.KEY_PENDING_INTENT, "Landroid/content/Intent;", "clickIntent", "subjectId", "mediaId", "", "isMusic", "pageName", "inBackground", "ops", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V", "Landroid/os/Parcel;", "dest", "", "flags", "", "writeToParcel", "(Landroid/os/Parcel;I)V", "describeContents", "()I", "component1", "()Ljava/lang/String;", "component2", "component3", "component4", "()Ljava/lang/Long;", "component5", "component6", "component7", "()Landroid/app/PendingIntent;", "component8", "()Landroid/content/Intent;", "component9", "component10", "component11", "()Ljava/lang/Boolean;", "component12", "component13", "component14", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)Lcom/transsion/player/mediasession/MediaItem;", "toString", "hashCode", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "equals", "(Ljava/lang/Object;)Z", "Ljava/lang/String;", "getTitle", "setTitle", "(Ljava/lang/String;)V", "getSubTitle", "setSubTitle", "getCoverUrl", "setCoverUrl", "Ljava/lang/Long;", "getDuration", "setDuration", "(Ljava/lang/Long;)V", "getPosition", "setPosition", "getState", "setState", "Landroid/app/PendingIntent;", "getPendingIntent", "setPendingIntent", "(Landroid/app/PendingIntent;)V", "Landroid/content/Intent;", "getClickIntent", "setClickIntent", "(Landroid/content/Intent;)V", "getSubjectId", "setSubjectId", "getMediaId", "setMediaId", "Ljava/lang/Boolean;", "setMusic", "(Ljava/lang/Boolean;)V", "getPageName", "setPageName", "getInBackground", "setInBackground", "getOps", "setOps", "Companion", "a", "LibPlayer_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class MediaItem implements Parcelable {
    public static final String MUSIC_FLOAT_STATE_COMPLETION = "completion";
    public static final String MUSIC_FLOAT_STATE_ERROR = "error";
    public static final String MUSIC_FLOAT_STATE_IDEA = "idea";
    public static final String MUSIC_FLOAT_STATE_PAUSE = "pause";
    public static final String MUSIC_FLOAT_STATE_PLAY = "play";
    private Intent clickIntent;
    private String coverUrl;
    private Long duration;
    private Boolean inBackground;
    private Boolean isMusic;
    private String mediaId;
    private String ops;
    private String pageName;
    private PendingIntent pendingIntent;
    private Long position;
    private String state;
    private String subTitle;
    private String subjectId;
    private String title;
    public static final Parcelable.Creator<MediaItem> CREATOR = new b();

    public static final class b implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final MediaItem createFromParcel(Parcel parcel) {
            Boolean boolValueOf;
            Boolean boolValueOf2;
            Intrinsics.h(parcel, "parcel");
            String string = parcel.readString();
            String string2 = parcel.readString();
            String string3 = parcel.readString();
            Long lValueOf = parcel.readInt() == 0 ? null : Long.valueOf(parcel.readLong());
            Long lValueOf2 = parcel.readInt() == 0 ? null : Long.valueOf(parcel.readLong());
            String string4 = parcel.readString();
            PendingIntent pendingIntent = (PendingIntent) parcel.readParcelable(MediaItem.class.getClassLoader());
            Intent intent = (Intent) parcel.readParcelable(MediaItem.class.getClassLoader());
            String string5 = parcel.readString();
            String string6 = parcel.readString();
            if (parcel.readInt() == 0) {
                boolValueOf = null;
            } else {
                boolValueOf = Boolean.valueOf(parcel.readInt() != 0);
            }
            String string7 = parcel.readString();
            if (parcel.readInt() == 0) {
                boolValueOf2 = null;
            } else {
                boolValueOf2 = Boolean.valueOf(parcel.readInt() != 0);
            }
            return new MediaItem(string, string2, string3, lValueOf, lValueOf2, string4, pendingIntent, intent, string5, string6, boolValueOf, string7, boolValueOf2, parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final MediaItem[] newArray(int i11) {
            return new MediaItem[i11];
        }
    }

    public MediaItem() {
        this(null, null, null, null, null, null, null, null, null, null, null, null, null, null, 16383, null);
    }

    public MediaItem(String str, String str2, String str3, Long l11, Long l12, String str4, PendingIntent pendingIntent, Intent intent, String str5, String str6, Boolean bool, String str7, Boolean bool2, String str8) {
        this.title = str;
        this.subTitle = str2;
        this.coverUrl = str3;
        this.duration = l11;
        this.position = l12;
        this.state = str4;
        this.pendingIntent = pendingIntent;
        this.clickIntent = intent;
        this.subjectId = str5;
        this.mediaId = str6;
        this.isMusic = bool;
        this.pageName = str7;
        this.inBackground = bool2;
        this.ops = str8;
    }

    public /* synthetic */ MediaItem(String str, String str2, String str3, Long l11, Long l12, String str4, PendingIntent pendingIntent, Intent intent, String str5, String str6, Boolean bool, String str7, Boolean bool2, String str8, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? null : str, (i11 & 2) != 0 ? null : str2, (i11 & 4) != 0 ? null : str3, (i11 & 8) != 0 ? null : l11, (i11 & 16) != 0 ? null : l12, (i11 & 32) != 0 ? MUSIC_FLOAT_STATE_IDEA : str4, (i11 & 64) != 0 ? null : pendingIntent, (i11 & 128) != 0 ? null : intent, (i11 & 256) != 0 ? null : str5, (i11 & 512) != 0 ? null : str6, (i11 & 1024) != 0 ? null : bool, (i11 & 2048) != 0 ? "" : str7, (i11 & 4096) != 0 ? Boolean.FALSE : bool2, (i11 & 8192) == 0 ? str8 : null);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getTitle() {
        return this.title;
    }

    /* JADX INFO: renamed from: component10, reason: from getter */
    public final String getMediaId() {
        return this.mediaId;
    }

    /* JADX INFO: renamed from: component11, reason: from getter */
    public final Boolean getIsMusic() {
        return this.isMusic;
    }

    /* JADX INFO: renamed from: component12, reason: from getter */
    public final String getPageName() {
        return this.pageName;
    }

    /* JADX INFO: renamed from: component13, reason: from getter */
    public final Boolean getInBackground() {
        return this.inBackground;
    }

    /* JADX INFO: renamed from: component14, reason: from getter */
    public final String getOps() {
        return this.ops;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getSubTitle() {
        return this.subTitle;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getCoverUrl() {
        return this.coverUrl;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final Long getDuration() {
        return this.duration;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final Long getPosition() {
        return this.position;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final String getState() {
        return this.state;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final PendingIntent getPendingIntent() {
        return this.pendingIntent;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final Intent getClickIntent() {
        return this.clickIntent;
    }

    /* JADX INFO: renamed from: component9, reason: from getter */
    public final String getSubjectId() {
        return this.subjectId;
    }

    public final MediaItem copy(String title, String subTitle, String coverUrl, Long duration, Long position, String state, PendingIntent pendingIntent, Intent clickIntent, String subjectId, String mediaId, Boolean isMusic, String pageName, Boolean inBackground, String ops) {
        return new MediaItem(title, subTitle, coverUrl, duration, position, state, pendingIntent, clickIntent, subjectId, mediaId, isMusic, pageName, inBackground, ops);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof MediaItem)) {
            return false;
        }
        MediaItem mediaItem = (MediaItem) other;
        return Intrinsics.c(this.title, mediaItem.title) && Intrinsics.c(this.subTitle, mediaItem.subTitle) && Intrinsics.c(this.coverUrl, mediaItem.coverUrl) && Intrinsics.c(this.duration, mediaItem.duration) && Intrinsics.c(this.position, mediaItem.position) && Intrinsics.c(this.state, mediaItem.state) && Intrinsics.c(this.pendingIntent, mediaItem.pendingIntent) && Intrinsics.c(this.clickIntent, mediaItem.clickIntent) && Intrinsics.c(this.subjectId, mediaItem.subjectId) && Intrinsics.c(this.mediaId, mediaItem.mediaId) && Intrinsics.c(this.isMusic, mediaItem.isMusic) && Intrinsics.c(this.pageName, mediaItem.pageName) && Intrinsics.c(this.inBackground, mediaItem.inBackground) && Intrinsics.c(this.ops, mediaItem.ops);
    }

    public final Intent getClickIntent() {
        return this.clickIntent;
    }

    public final String getCoverUrl() {
        return this.coverUrl;
    }

    public final Long getDuration() {
        return this.duration;
    }

    public final Boolean getInBackground() {
        return this.inBackground;
    }

    public final String getMediaId() {
        return this.mediaId;
    }

    public final String getOps() {
        return this.ops;
    }

    public final String getPageName() {
        return this.pageName;
    }

    public final PendingIntent getPendingIntent() {
        return this.pendingIntent;
    }

    public final Long getPosition() {
        return this.position;
    }

    public final String getState() {
        return this.state;
    }

    public final String getSubTitle() {
        return this.subTitle;
    }

    public final String getSubjectId() {
        return this.subjectId;
    }

    public final String getTitle() {
        return this.title;
    }

    public int hashCode() {
        String str = this.title;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.subTitle;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.coverUrl;
        int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        Long l11 = this.duration;
        int iHashCode4 = (iHashCode3 + (l11 == null ? 0 : l11.hashCode())) * 31;
        Long l12 = this.position;
        int iHashCode5 = (iHashCode4 + (l12 == null ? 0 : l12.hashCode())) * 31;
        String str4 = this.state;
        int iHashCode6 = (iHashCode5 + (str4 == null ? 0 : str4.hashCode())) * 31;
        PendingIntent pendingIntent = this.pendingIntent;
        int iHashCode7 = (iHashCode6 + (pendingIntent == null ? 0 : pendingIntent.hashCode())) * 31;
        Intent intent = this.clickIntent;
        int iHashCode8 = (iHashCode7 + (intent == null ? 0 : intent.hashCode())) * 31;
        String str5 = this.subjectId;
        int iHashCode9 = (iHashCode8 + (str5 == null ? 0 : str5.hashCode())) * 31;
        String str6 = this.mediaId;
        int iHashCode10 = (iHashCode9 + (str6 == null ? 0 : str6.hashCode())) * 31;
        Boolean bool = this.isMusic;
        int iHashCode11 = (iHashCode10 + (bool == null ? 0 : bool.hashCode())) * 31;
        String str7 = this.pageName;
        int iHashCode12 = (iHashCode11 + (str7 == null ? 0 : str7.hashCode())) * 31;
        Boolean bool2 = this.inBackground;
        int iHashCode13 = (iHashCode12 + (bool2 == null ? 0 : bool2.hashCode())) * 31;
        String str8 = this.ops;
        return iHashCode13 + (str8 != null ? str8.hashCode() : 0);
    }

    public final Boolean isMusic() {
        return this.isMusic;
    }

    public final void setClickIntent(Intent intent) {
        this.clickIntent = intent;
    }

    public final void setCoverUrl(String str) {
        this.coverUrl = str;
    }

    public final void setDuration(Long l11) {
        this.duration = l11;
    }

    public final void setInBackground(Boolean bool) {
        this.inBackground = bool;
    }

    public final void setMediaId(String str) {
        this.mediaId = str;
    }

    public final void setMusic(Boolean bool) {
        this.isMusic = bool;
    }

    public final void setOps(String str) {
        this.ops = str;
    }

    public final void setPageName(String str) {
        this.pageName = str;
    }

    public final void setPendingIntent(PendingIntent pendingIntent) {
        this.pendingIntent = pendingIntent;
    }

    public final void setPosition(Long l11) {
        this.position = l11;
    }

    public final void setState(String str) {
        this.state = str;
    }

    public final void setSubTitle(String str) {
        this.subTitle = str;
    }

    public final void setSubjectId(String str) {
        this.subjectId = str;
    }

    public final void setTitle(String str) {
        this.title = str;
    }

    public String toString() {
        return "MediaItem(title=" + this.title + ", subTitle=" + this.subTitle + ", coverUrl=" + this.coverUrl + ", duration=" + this.duration + ", position=" + this.position + ", state=" + this.state + ", pendingIntent=" + this.pendingIntent + ", clickIntent=" + this.clickIntent + ", subjectId=" + this.subjectId + ", mediaId=" + this.mediaId + ", isMusic=" + this.isMusic + ", pageName=" + this.pageName + ", inBackground=" + this.inBackground + ", ops=" + this.ops + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel dest, int flags) {
        Intrinsics.h(dest, "dest");
        dest.writeString(this.title);
        dest.writeString(this.subTitle);
        dest.writeString(this.coverUrl);
        Long l11 = this.duration;
        if (l11 == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            dest.writeLong(l11.longValue());
        }
        Long l12 = this.position;
        if (l12 == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            dest.writeLong(l12.longValue());
        }
        dest.writeString(this.state);
        dest.writeParcelable(this.pendingIntent, flags);
        dest.writeParcelable(this.clickIntent, flags);
        dest.writeString(this.subjectId);
        dest.writeString(this.mediaId);
        Boolean bool = this.isMusic;
        if (bool == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            dest.writeInt(bool.booleanValue() ? 1 : 0);
        }
        dest.writeString(this.pageName);
        Boolean bool2 = this.inBackground;
        if (bool2 == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            dest.writeInt(bool2.booleanValue() ? 1 : 0);
        }
        dest.writeString(this.ops);
    }
}
