package com.transsion.baselib.db.notification;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import com.cloud.tmc.integration.event.EventConstants;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.internal.http2.Settings;

/* JADX INFO: loaded from: classes5.dex */
@Keep
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\bY\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B»\u0001\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e\u0012\b\b\u0002\u0010\u000f\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u000e\u0012\b\b\u0002\u0010\u0011\u001a\u00020\u0012\u0012\b\b\u0002\u0010\u0013\u001a\u00020\u0012\u0012\b\b\u0002\u0010\u0014\u001a\u00020\u0012\u0012\b\b\u0002\u0010\u0015\u001a\u00020\u0003¢\u0006\u0004\b\u0016\u0010\u0017J\t\u0010W\u001a\u00020\u0003HÆ\u0003J\u000b\u0010X\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010Y\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010Z\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010[\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010\\\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010]\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010^\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010_\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u0010\u0010`\u001a\u0004\u0018\u00010\u000eHÆ\u0003¢\u0006\u0002\u0010/J\t\u0010a\u001a\u00020\u0003HÆ\u0003J\u0010\u0010b\u001a\u0004\u0018\u00010\u000eHÆ\u0003¢\u0006\u0002\u0010/J\t\u0010c\u001a\u00020\u0012HÆ\u0003J\t\u0010d\u001a\u00020\u0012HÆ\u0003J\t\u0010e\u001a\u00020\u0012HÆ\u0003J\t\u0010f\u001a\u00020\u0003HÆ\u0003JÂ\u0001\u0010g\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e2\b\b\u0002\u0010\u000f\u001a\u00020\u00032\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u000e2\b\b\u0002\u0010\u0011\u001a\u00020\u00122\b\b\u0002\u0010\u0013\u001a\u00020\u00122\b\b\u0002\u0010\u0014\u001a\u00020\u00122\b\b\u0002\u0010\u0015\u001a\u00020\u0003HÆ\u0001¢\u0006\u0002\u0010hJ\u0006\u0010i\u001a\u00020\u0003J\u0013\u0010j\u001a\u00020\u00122\b\u0010k\u001a\u0004\u0018\u00010lHÖ\u0003J\t\u0010m\u001a\u00020\u0003HÖ\u0001J\t\u0010n\u001a\u00020\u0005HÖ\u0001J\u0016\u0010o\u001a\u00020p2\u0006\u0010q\u001a\u00020r2\u0006\u0010s\u001a\u00020\u0003R\u001e\u0010\u0002\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001bR \u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\u001d\"\u0004\b\u001e\u0010\u001fR \u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b \u0010\u001d\"\u0004\b!\u0010\u001fR \u0010\u0007\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\"\u0010\u001d\"\u0004\b#\u0010\u001fR \u0010\b\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b$\u0010\u001d\"\u0004\b%\u0010\u001fR \u0010\t\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b&\u0010\u001d\"\u0004\b'\u0010\u001fR \u0010\n\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b(\u0010\u001d\"\u0004\b)\u0010\u001fR \u0010\u000b\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b*\u0010\u001d\"\u0004\b+\u0010\u001fR \u0010\f\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b,\u0010\u001d\"\u0004\b-\u0010\u001fR\"\u0010\r\u001a\u0004\u0018\u00010\u000e8\u0006@\u0006X\u0087\u000e¢\u0006\u0010\n\u0002\u00102\u001a\u0004\b.\u0010/\"\u0004\b0\u00101R\u001e\u0010\u000f\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b3\u0010\u0019\"\u0004\b4\u0010\u001bR\"\u0010\u0010\u001a\u0004\u0018\u00010\u000e8\u0006@\u0006X\u0087\u000e¢\u0006\u0010\n\u0002\u00102\u001a\u0004\b5\u0010/\"\u0004\b6\u00101R\u001e\u0010\u0011\u001a\u00020\u00128\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b7\u00108\"\u0004\b9\u0010:R\u001e\u0010\u0013\u001a\u00020\u00128\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b;\u00108\"\u0004\b<\u0010:R\u001e\u0010\u0014\u001a\u00020\u00128\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b=\u00108\"\u0004\b>\u0010:R\u001e\u0010\u0015\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b?\u0010\u0019\"\u0004\b@\u0010\u001bR$\u0010A\u001a\u00020\u00128\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\bB\u0010C\u001a\u0004\bA\u00108\"\u0004\bD\u0010:R$\u0010E\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\bF\u0010C\u001a\u0004\bG\u0010\u0019\"\u0004\bH\u0010\u001bR$\u0010I\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\bJ\u0010C\u001a\u0004\bK\u0010\u0019\"\u0004\bL\u0010\u001bR$\u0010M\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\bN\u0010C\u001a\u0004\bO\u0010\u0019\"\u0004\bP\u0010\u001bR$\u0010Q\u001a\u00020\u00128\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\bR\u0010C\u001a\u0004\bQ\u00108\"\u0004\bS\u0010:R$\u0010T\u001a\u00020\u00128\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\bU\u0010C\u001a\u0004\bT\u00108\"\u0004\bV\u0010:¨\u0006t"}, d2 = {"Lcom/transsion/baselib/db/notification/MsgBean;", "Landroid/os/Parcelable;", "id", "", "deeplink", "", CampaignEx.JSON_KEY_DESC, "imageList", "messageId", EventConstants.KEY_SOURCE, TtmlNode.TAG_STYLE, CampaignEx.JSON_KEY_TITLE, NativeComponentConstants.KEY_COMPONENT_TYPE, "receiveTime", "", "msgStatus", "showTime", "forceShow", "", "hasScreenOn", "builtIn", "permanentMsgStatus", "<init>", "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ILjava/lang/Long;ZZZI)V", "getId", "()I", "setId", "(I)V", "getDeeplink", "()Ljava/lang/String;", "setDeeplink", "(Ljava/lang/String;)V", "getDesc", "setDesc", "getImageList", "setImageList", "getMessageId", "setMessageId", "getSource", "setSource", "getStyle", "setStyle", "getTitle", "setTitle", "getType", "setType", "getReceiveTime", "()Ljava/lang/Long;", "setReceiveTime", "(Ljava/lang/Long;)V", "Ljava/lang/Long;", "getMsgStatus", "setMsgStatus", "getShowTime", "setShowTime", "getForceShow", "()Z", "setForceShow", "(Z)V", "getHasScreenOn", "setHasScreenOn", "getBuiltIn", "setBuiltIn", "getPermanentMsgStatus", "setPermanentMsgStatus", "isPermanent", "isPermanent$annotations", "()V", "setPermanent", "triggerSource", "getTriggerSource$annotations", "getTriggerSource", "setTriggerSource", "permanentMsgPosition", "getPermanentMsgPosition$annotations", "getPermanentMsgPosition", "setPermanentMsgPosition", "permanentMsgSize", "getPermanentMsgSize$annotations", "getPermanentMsgSize", "setPermanentMsgSize", "isRefresh", "isRefresh$annotations", "setRefresh", "isFloat", "isFloat$annotations", "setFloat", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "component10", "component11", "component12", "component13", "component14", "component15", "component16", "copy", "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ILjava/lang/Long;ZZZI)Lcom/transsion/baselib/db/notification/MsgBean;", "describeContents", "equals", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "BaseLib_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class MsgBean implements Parcelable {
    public static final Parcelable.Creator<MsgBean> CREATOR = new a();
    private boolean builtIn;
    private String deeplink;
    private String desc;
    private boolean forceShow;
    private boolean hasScreenOn;
    private int id;
    private String imageList;
    private boolean isFloat;
    private boolean isPermanent;
    private boolean isRefresh;
    private String messageId;
    private int msgStatus;
    private int permanentMsgPosition;
    private int permanentMsgSize;
    private int permanentMsgStatus;
    private Long receiveTime;
    private Long showTime;
    private String source;
    private String style;
    private String title;
    private int triggerSource;
    private String type;

    public static final class a implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final MsgBean createFromParcel(Parcel parcel) {
            Intrinsics.h(parcel, "parcel");
            return new MsgBean(parcel.readInt(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readInt() == 0 ? null : Long.valueOf(parcel.readLong()), parcel.readInt(), parcel.readInt() != 0 ? Long.valueOf(parcel.readLong()) : null, parcel.readInt() != 0, parcel.readInt() != 0, parcel.readInt() != 0, parcel.readInt());
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final MsgBean[] newArray(int i11) {
            return new MsgBean[i11];
        }
    }

    public MsgBean() {
        this(0, null, null, null, null, null, null, null, null, null, 0, null, false, false, false, 0, Settings.DEFAULT_INITIAL_WINDOW_SIZE, null);
    }

    public MsgBean(int i11, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, Long l11, int i12, Long l12, boolean z10, boolean z11, boolean z12, int i13) {
        this.id = i11;
        this.deeplink = str;
        this.desc = str2;
        this.imageList = str3;
        this.messageId = str4;
        this.source = str5;
        this.style = str6;
        this.title = str7;
        this.type = str8;
        this.receiveTime = l11;
        this.msgStatus = i12;
        this.showTime = l12;
        this.forceShow = z10;
        this.hasScreenOn = z11;
        this.builtIn = z12;
        this.permanentMsgStatus = i13;
        this.permanentMsgPosition = 1;
        this.permanentMsgSize = 1;
    }

    public /* synthetic */ MsgBean(int i11, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, Long l11, int i12, Long l12, boolean z10, boolean z11, boolean z12, int i13, int i14, DefaultConstructorMarker defaultConstructorMarker) {
        this((i14 & 1) != 0 ? 0 : i11, (i14 & 2) != 0 ? null : str, (i14 & 4) != 0 ? null : str2, (i14 & 8) != 0 ? null : str3, (i14 & 16) != 0 ? null : str4, (i14 & 32) != 0 ? null : str5, (i14 & 64) != 0 ? null : str6, (i14 & 128) != 0 ? null : str7, (i14 & 256) == 0 ? str8 : null, (i14 & 512) != 0 ? 0L : l11, (i14 & 1024) != 0 ? 0 : i12, (i14 & 2048) != 0 ? 0L : l12, (i14 & 4096) != 0 ? false : z10, (i14 & 8192) != 0 ? false : z11, (i14 & 16384) != 0 ? false : z12, (i14 & 32768) != 0 ? 0 : i13);
    }

    public static /* synthetic */ void getPermanentMsgPosition$annotations() {
    }

    public static /* synthetic */ void getPermanentMsgSize$annotations() {
    }

    public static /* synthetic */ void getTriggerSource$annotations() {
    }

    public static /* synthetic */ void isFloat$annotations() {
    }

    public static /* synthetic */ void isPermanent$annotations() {
    }

    public static /* synthetic */ void isRefresh$annotations() {
    }

    public final native int component1();

    public final native Long component10();

    public final native int component11();

    public final native Long component12();

    public final native boolean component13();

    public final native boolean component14();

    public final native boolean component15();

    public final native int component16();

    public final native String component2();

    public final native String component3();

    public final native String component4();

    public final native String component5();

    public final native String component6();

    public final native String component7();

    public final native String component8();

    public final native String component9();

    public final MsgBean copy(int id2, String deeplink, String desc, String imageList, String messageId, String source, String style, String title, String type, Long receiveTime, int msgStatus, Long showTime, boolean forceShow, boolean hasScreenOn, boolean builtIn, int permanentMsgStatus) {
        return new MsgBean(id2, deeplink, desc, imageList, messageId, source, style, title, type, receiveTime, msgStatus, showTime, forceShow, hasScreenOn, builtIn, permanentMsgStatus);
    }

    @Override // android.os.Parcelable
    public final native int describeContents();

    public native boolean equals(Object other);

    public final native boolean getBuiltIn();

    public final native String getDeeplink();

    public final native String getDesc();

    public final native boolean getForceShow();

    public final native boolean getHasScreenOn();

    public final native int getId();

    public final native String getImageList();

    public final native String getMessageId();

    public final native int getMsgStatus();

    public final native int getPermanentMsgPosition();

    public final native int getPermanentMsgSize();

    public final native int getPermanentMsgStatus();

    public final native Long getReceiveTime();

    public final native Long getShowTime();

    public final native String getSource();

    public final native String getStyle();

    public final native String getTitle();

    public final native int getTriggerSource();

    public final native String getType();

    public native int hashCode();

    public final native boolean isFloat();

    public final native boolean isPermanent();

    public final native boolean isRefresh();

    public final native void setBuiltIn(boolean z10);

    public final native void setDeeplink(String str);

    public final native void setDesc(String str);

    public final native void setFloat(boolean z10);

    public final native void setForceShow(boolean z10);

    public final native void setHasScreenOn(boolean z10);

    public final native void setId(int i11);

    public final native void setImageList(String str);

    public final native void setMessageId(String str);

    public final native void setMsgStatus(int i11);

    public final native void setPermanent(boolean z10);

    public final native void setPermanentMsgPosition(int i11);

    public final native void setPermanentMsgSize(int i11);

    public final native void setPermanentMsgStatus(int i11);

    public final native void setReceiveTime(Long l11);

    public final native void setRefresh(boolean z10);

    public final native void setShowTime(Long l11);

    public final native void setSource(String str);

    public final native void setStyle(String str);

    public final native void setTitle(String str);

    public final native void setTriggerSource(int i11);

    public final native void setType(String str);

    public native String toString();

    @Override // android.os.Parcelable
    public final native void writeToParcel(Parcel dest, int flags);
}
