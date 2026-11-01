package com.transsion.mpush.api;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import com.cloud.tmc.integration.event.EventConstants;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.google.gson.annotations.SerializedName;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.transsion.ninegridview.preview.GifImagePreviewActivity;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b;\n\u0002\u0010 \n\u0002\b\u0016\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0087\b\u0018\u0000 n2\u00020\u0001:\u0001nBÏ\u0001\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0005\u0012\b\b\u0002\u0010\u000e\u001a\u00020\u000f\u0012\b\b\u0002\u0010\u0010\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0011\u001a\u00020\u000f\u0012\b\b\u0002\u0010\u0012\u001a\u00020\u0013\u0012\b\b\u0002\u0010\u0014\u001a\u00020\u0013\u0012\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0005\u0012\b\b\u0002\u0010\u0016\u001a\u00020\u0013\u0012\b\b\u0002\u0010\u0017\u001a\u00020\u0003¢\u0006\u0004\b\u0018\u0010\u0019J\f\u0010N\u001a\b\u0012\u0004\u0012\u00020\u00050OJ\t\u0010P\u001a\u00020\u0003HÆ\u0003J\u000b\u0010Q\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010R\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010S\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010T\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010U\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010V\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010W\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010X\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010Y\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\t\u0010Z\u001a\u00020\u000fHÆ\u0003J\t\u0010[\u001a\u00020\u0003HÆ\u0003J\t\u0010\\\u001a\u00020\u000fHÆ\u0003J\t\u0010]\u001a\u00020\u0013HÆ\u0003J\t\u0010^\u001a\u00020\u0013HÆ\u0003J\u000b\u0010_\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\t\u0010`\u001a\u00020\u0013HÆ\u0003J\t\u0010a\u001a\u00020\u0003HÆ\u0003JÑ\u0001\u0010b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u00052\b\b\u0002\u0010\u000e\u001a\u00020\u000f2\b\b\u0002\u0010\u0010\u001a\u00020\u00032\b\b\u0002\u0010\u0011\u001a\u00020\u000f2\b\b\u0002\u0010\u0012\u001a\u00020\u00132\b\b\u0002\u0010\u0014\u001a\u00020\u00132\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u00052\b\b\u0002\u0010\u0016\u001a\u00020\u00132\b\b\u0002\u0010\u0017\u001a\u00020\u0003HÆ\u0001J\u0006\u0010c\u001a\u00020\u0003J\u0013\u0010d\u001a\u00020\u00132\b\u0010e\u001a\u0004\u0018\u00010fHÖ\u0003J\t\u0010g\u001a\u00020\u0003HÖ\u0001J\t\u0010h\u001a\u00020\u0005HÖ\u0001J\u0016\u0010i\u001a\u00020j2\u0006\u0010k\u001a\u00020l2\u0006\u0010m\u001a\u00020\u0003R\u001e\u0010\u0002\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR \u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001e\u0010\u001f\"\u0004\b \u0010!R \u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\"\u0010\u001f\"\u0004\b#\u0010!R \u0010\u0007\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b$\u0010\u001f\"\u0004\b%\u0010!R \u0010\b\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b&\u0010\u001f\"\u0004\b'\u0010!R \u0010\t\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b(\u0010\u001f\"\u0004\b)\u0010!R \u0010\n\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b*\u0010\u001f\"\u0004\b+\u0010!R \u0010\u000b\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b,\u0010\u001f\"\u0004\b-\u0010!R \u0010\f\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b.\u0010\u001f\"\u0004\b/\u0010!R \u0010\r\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b0\u0010\u001f\"\u0004\b1\u0010!R\u001e\u0010\u000e\u001a\u00020\u000f8\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b2\u00103\"\u0004\b4\u00105R\u001e\u0010\u0010\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b6\u0010\u001b\"\u0004\b7\u0010\u001dR\u001e\u0010\u0011\u001a\u00020\u000f8\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b8\u00103\"\u0004\b9\u00105R\u001e\u0010\u0012\u001a\u00020\u00138\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b:\u0010;\"\u0004\b<\u0010=R\u001e\u0010\u0014\u001a\u00020\u00138\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b>\u0010;\"\u0004\b?\u0010=R \u0010\u0015\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b@\u0010\u001f\"\u0004\bA\u0010!R\u001e\u0010\u0016\u001a\u00020\u00138\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bB\u0010;\"\u0004\bC\u0010=R\u001e\u0010\u0017\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bD\u0010\u001b\"\u0004\bE\u0010\u001dR$\u0010F\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\bG\u0010H\u001a\u0004\bI\u0010\u001b\"\u0004\bJ\u0010\u001dR$\u0010K\u001a\u00020\u00138\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\bL\u0010H\u001a\u0004\bK\u0010;\"\u0004\bM\u0010=¨\u0006o"}, d2 = {"Lcom/transsion/mpush/api/LocalPushMessage;", "Landroid/os/Parcelable;", "id", "", "messageId", "", CampaignEx.JSON_KEY_TITLE, CampaignEx.JSON_KEY_DESC, "deeplink", "imageList", "pushTime", EventConstants.KEY_SOURCE, TtmlNode.TAG_STYLE, NativeComponentConstants.KEY_COMPONENT_TYPE, "receiveTime", "", "msgStatus", "showTime", "forceShow", "", "hasScreenOn", "extraMap", "builtIn", "permanentMsgStatus", "<init>", "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIJZZLjava/lang/String;ZI)V", "getId", "()I", "setId", "(I)V", "getMessageId", "()Ljava/lang/String;", "setMessageId", "(Ljava/lang/String;)V", "getTitle", "setTitle", "getDesc", "setDesc", "getDeeplink", "setDeeplink", "getImageList", "setImageList", "getPushTime", "setPushTime", "getSource", "setSource", "getStyle", "setStyle", "getType", "setType", "getReceiveTime", "()J", "setReceiveTime", "(J)V", "getMsgStatus", "setMsgStatus", "getShowTime", "setShowTime", "getForceShow", "()Z", "setForceShow", "(Z)V", "getHasScreenOn", "setHasScreenOn", "getExtraMap", "setExtraMap", "getBuiltIn", "setBuiltIn", "getPermanentMsgStatus", "setPermanentMsgStatus", "triggerSource", "getTriggerSource$annotations", "()V", "getTriggerSource", "setTriggerSource", "isRefresh", "isRefresh$annotations", "setRefresh", "getImageArray", "", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "component10", "component11", "component12", "component13", "component14", "component15", "component16", "component17", "component18", "copy", "describeContents", "equals", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "Companion", "MBPush_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final /* data */ class LocalPushMessage implements Parcelable {
    public static final String NATIVE_LOCAL = "3";
    public static final String NATIVE_STANDARD = "3";
    public static final int STATUS_CLICKED = 2;
    public static final int STATUS_SHOWN = 1;
    public static final int STATUS_UNSHOW = 0;
    public static final String STYLE_HOR_TYPE = "101";
    public static final String STYLE_VERTICAL_TYPE = "102";
    private boolean builtIn;

    @SerializedName(alternate = {"deepLink", CampaignEx.JSON_KEY_DEEP_LINK_URL}, value = "deeplink")
    private String deeplink;
    private String desc;
    private String extraMap;
    private boolean forceShow;
    private boolean hasScreenOn;
    private int id;

    @SerializedName(alternate = {"image", GifImagePreviewActivity.IMAGE_LIST}, value = "imageList")
    private String imageList;
    private boolean isRefresh;
    private String messageId;
    private int msgStatus;
    private int permanentMsgStatus;
    private String pushTime;
    private long receiveTime;
    private long showTime;
    private String source;
    private String style;
    private String title;
    private int triggerSource;
    private String type;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public static final Parcelable.Creator<LocalPushMessage> CREATOR = new Creator();

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\tX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\tX\u0086T¢\u0006\u0002\n\u0000R\u0016\u0010\f\u001a\u00020\t8\u0006X\u0087T¢\u0006\b\n\u0000\u0012\u0004\b\r\u0010\u0003¨\u0006\u000e"}, d2 = {"Lcom/transsion/mpush/api/LocalPushMessage$Companion;", "", "<init>", "()V", "STATUS_UNSHOW", "", "STATUS_SHOWN", "STATUS_CLICKED", "STYLE_HOR_TYPE", "", "STYLE_VERTICAL_TYPE", "NATIVE_LOCAL", "NATIVE_STANDARD", "getNATIVE_STANDARD$annotations", "MBPush_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Deprecated
        public static /* synthetic */ void getNATIVE_STANDARD$annotations() {
        }
    }

    @Metadata(k = 3, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final class Creator implements Parcelable.Creator<LocalPushMessage> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final LocalPushMessage createFromParcel(Parcel parcel) {
            Intrinsics.h(parcel, "parcel");
            return new LocalPushMessage(parcel.readInt(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readLong(), parcel.readInt(), parcel.readLong(), parcel.readInt() != 0, parcel.readInt() != 0, parcel.readString(), parcel.readInt() != 0, parcel.readInt());
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final LocalPushMessage[] newArray(int i11) {
            return new LocalPushMessage[i11];
        }
    }

    public LocalPushMessage() {
        this(0, null, null, null, null, null, null, null, null, null, 0L, 0, 0L, false, false, null, false, 0, 262143, null);
    }

    public LocalPushMessage(int i11, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, long j11, int i12, long j12, boolean z10, boolean z11, String str10, boolean z12, int i13) {
        this.id = i11;
        this.messageId = str;
        this.title = str2;
        this.desc = str3;
        this.deeplink = str4;
        this.imageList = str5;
        this.pushTime = str6;
        this.source = str7;
        this.style = str8;
        this.type = str9;
        this.receiveTime = j11;
        this.msgStatus = i12;
        this.showTime = j12;
        this.forceShow = z10;
        this.hasScreenOn = z11;
        this.extraMap = str10;
        this.builtIn = z12;
        this.permanentMsgStatus = i13;
    }

    public /* synthetic */ LocalPushMessage(int i11, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, long j11, int i12, long j12, boolean z10, boolean z11, String str10, boolean z12, int i13, int i14, DefaultConstructorMarker defaultConstructorMarker) {
        this((i14 & 1) != 0 ? 0 : i11, (i14 & 2) != 0 ? null : str, (i14 & 4) != 0 ? null : str2, (i14 & 8) != 0 ? null : str3, (i14 & 16) != 0 ? null : str4, (i14 & 32) != 0 ? null : str5, (i14 & 64) != 0 ? null : str6, (i14 & 128) != 0 ? null : str7, (i14 & 256) != 0 ? null : str8, (i14 & 512) != 0 ? null : str9, (i14 & 1024) != 0 ? 0L : j11, (i14 & 2048) != 0 ? 0 : i12, (i14 & 4096) == 0 ? j12 : 0L, (i14 & 8192) != 0 ? false : z10, (i14 & 16384) != 0 ? false : z11, (i14 & 32768) != 0 ? null : str10, (i14 & 65536) != 0 ? false : z12, (i14 & 131072) != 0 ? 0 : i13);
    }

    public static /* synthetic */ void getTriggerSource$annotations() {
    }

    public static /* synthetic */ void isRefresh$annotations() {
    }

    public final native int component1();

    public final native String component10();

    public final native long component11();

    public final native int component12();

    public final native long component13();

    public final native boolean component14();

    public final native boolean component15();

    public final native String component16();

    public final native boolean component17();

    public final native int component18();

    public final native String component2();

    public final native String component3();

    public final native String component4();

    public final native String component5();

    public final native String component6();

    public final native String component7();

    public final native String component8();

    public final native String component9();

    public final LocalPushMessage copy(int id2, String messageId, String title, String desc, String deeplink, String imageList, String pushTime, String source, String style, String type, long receiveTime, int msgStatus, long showTime, boolean forceShow, boolean hasScreenOn, String extraMap, boolean builtIn, int permanentMsgStatus) {
        return new LocalPushMessage(id2, messageId, title, desc, deeplink, imageList, pushTime, source, style, type, receiveTime, msgStatus, showTime, forceShow, hasScreenOn, extraMap, builtIn, permanentMsgStatus);
    }

    @Override // android.os.Parcelable
    public final native int describeContents();

    public native boolean equals(Object other);

    public final native boolean getBuiltIn();

    public final native String getDeeplink();

    public final native String getDesc();

    public final native String getExtraMap();

    public final native boolean getForceShow();

    public final native boolean getHasScreenOn();

    public final native int getId();

    public final native List getImageArray();

    public final native String getImageList();

    public final native String getMessageId();

    public final native int getMsgStatus();

    public final native int getPermanentMsgStatus();

    public final native String getPushTime();

    public final native long getReceiveTime();

    public final native long getShowTime();

    public final native String getSource();

    public final native String getStyle();

    public final native String getTitle();

    public final native int getTriggerSource();

    public final native String getType();

    public native int hashCode();

    public final native boolean isRefresh();

    public final native void setBuiltIn(boolean z10);

    public final native void setDeeplink(String str);

    public final native void setDesc(String str);

    public final native void setExtraMap(String str);

    public final native void setForceShow(boolean z10);

    public final native void setHasScreenOn(boolean z10);

    public final native void setId(int i11);

    public final native void setImageList(String str);

    public final native void setMessageId(String str);

    public final native void setMsgStatus(int i11);

    public final native void setPermanentMsgStatus(int i11);

    public final native void setPushTime(String str);

    public final native void setReceiveTime(long j11);

    public final native void setRefresh(boolean z10);

    public final native void setShowTime(long j11);

    public final native void setSource(String str);

    public final native void setStyle(String str);

    public final native void setTitle(String str);

    public final native void setTriggerSource(int i11);

    public final native void setType(String str);

    public native String toString();

    @Override // android.os.Parcelable
    public final native void writeToParcel(Parcel dest, int flags);
}
