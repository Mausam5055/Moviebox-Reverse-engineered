package com.cloud.hisavana.sdk.common.bean;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.cloud.hisavana.sdk.data.bean.response.AdsProtocolBean;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.hisavana.common.tracking.TrackingKey;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.entity.RewardPlus;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000j\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\bP\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001Bç\u0001\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e\u0012\u0010\b\u0002\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0010\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0014\u0012\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0016\u0012\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0018\u0012\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u0014\u0012\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u0016\u0012\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u0016\u0012\u000e\b\u0002\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u001e0\u0010¢\u0006\u0002\u0010\u001fJ\u0006\u0010W\u001a\u00020\u0016J\u000b\u0010X\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010Y\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010Z\u001a\u0004\u0018\u00010\u0014HÆ\u0003¢\u0006\u0002\u0010+J\u0010\u0010[\u001a\u0004\u0018\u00010\u0016HÆ\u0003¢\u0006\u0002\u00107J\u000b\u0010\\\u001a\u0004\u0018\u00010\u0018HÆ\u0003J\u0010\u0010]\u001a\u0004\u0018\u00010\u0014HÆ\u0003¢\u0006\u0002\u0010+J\u000b\u0010^\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010_\u001a\u0004\u0018\u00010\u0016HÆ\u0003¢\u0006\u0002\u00107J\u0010\u0010`\u001a\u0004\u0018\u00010\u0016HÆ\u0003¢\u0006\u0002\u00107J\u000f\u0010a\u001a\b\u0012\u0004\u0012\u00020\u001e0\u0010HÆ\u0003J\u000b\u0010b\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010c\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u000b\u0010d\u001a\u0004\u0018\u00010\bHÆ\u0003J\u000b\u0010e\u001a\u0004\u0018\u00010\nHÆ\u0003J\u000b\u0010f\u001a\u0004\u0018\u00010\fHÆ\u0003J\u000b\u0010g\u001a\u0004\u0018\u00010\u000eHÆ\u0003J\u0011\u0010h\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0010HÆ\u0003J\u000b\u0010i\u001a\u0004\u0018\u00010\u0003HÆ\u0003Jð\u0001\u0010j\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e2\u0010\b\u0002\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00102\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00142\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u00162\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u00182\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u00142\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u00162\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u00162\u000e\b\u0002\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u001e0\u0010HÆ\u0001¢\u0006\u0002\u0010kJ\t\u0010l\u001a\u00020\u0014HÖ\u0001J\u0013\u0010m\u001a\u00020\u00162\b\u0010n\u001a\u0004\u0018\u00010oHÖ\u0003J\t\u0010p\u001a\u00020\u0014HÖ\u0001J\t\u0010q\u001a\u00020\u0003HÖ\u0001J\u0019\u0010r\u001a\u00020s2\u0006\u0010t\u001a\u00020u2\u0006\u0010v\u001a\u00020\u0014HÖ\u0001R \u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u001e0\u0010X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b \u0010!\"\u0004\b\"\u0010#R\u001c\u0010\u001a\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b$\u0010%\"\u0004\b&\u0010'R\u001c\u0010\u0012\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b(\u0010%\"\u0004\b)\u0010'R\u001e\u0010\u0013\u001a\u0004\u0018\u00010\u0014X\u0086\u000e¢\u0006\u0010\n\u0002\u0010.\u001a\u0004\b*\u0010+\"\u0004\b,\u0010-R\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b/\u00100\"\u0004\b1\u00102R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b3\u0010%\"\u0004\b4\u0010'R\"\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0010X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b5\u0010!\"\u0004\b6\u0010#R\u001e\u0010\u0015\u001a\u0004\u0018\u00010\u0016X\u0086\u000e¢\u0006\u0010\n\u0002\u0010:\u001a\u0004\b\u0015\u00107\"\u0004\b8\u00109R\u001e\u0010\u001c\u001a\u0004\u0018\u00010\u0016X\u0086\u000e¢\u0006\u0010\n\u0002\u0010:\u001a\u0004\b\u001c\u00107\"\u0004\b;\u00109R\u001e\u0010\u001b\u001a\u0004\u0018\u00010\u0016X\u0086\u000e¢\u0006\u0010\n\u0002\u0010:\u001a\u0004\b\u001b\u00107\"\u0004\b<\u00109R\u001c\u0010\u000b\u001a\u0004\u0018\u00010\fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b=\u0010>\"\u0004\b?\u0010@R\u001c\u0010\u0017\u001a\u0004\u0018\u00010\u0018X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bA\u0010B\"\u0004\bC\u0010DR\u001e\u0010\u0019\u001a\u0004\u0018\u00010\u0014X\u0086\u000e¢\u0006\u0010\n\u0002\u0010.\u001a\u0004\bE\u0010+\"\u0004\bF\u0010-R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bG\u0010%\"\u0004\bH\u0010'R\u001c\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bI\u0010J\"\u0004\bK\u0010LR\u001c\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bM\u0010N\"\u0004\bO\u0010PR\u001c\u0010\u0011\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bQ\u0010%\"\u0004\bR\u0010'R\u001c\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bS\u0010T\"\u0004\bU\u0010V¨\u0006w"}, d2 = {"Lcom/cloud/hisavana/sdk/common/bean/VastData;", "Landroid/os/Parcelable;", "id", "", CampaignEx.JSON_KEY_TITLE, RewardPlus.ICON, "Lcom/cloud/hisavana/sdk/common/bean/VastIcon;", "vastTrack", "Lcom/cloud/hisavana/sdk/common/bean/VastTracking;", "vastClick", "Lcom/cloud/hisavana/sdk/common/bean/VastClick;", "mainAd", "Lcom/cloud/hisavana/sdk/common/bean/VastMedia;", "videoMask", "Lcom/cloud/hisavana/sdk/common/bean/VideoMask;", "impression", "", "version", TrackingKey.DESCRIPTION, "duration", "", "isCached", "", "progressData", "Lcom/cloud/hisavana/sdk/common/bean/ProgressData;", "skipOffSet", "buttonTxt", "isVideoType", "isVideoCached", "adVerifications", "Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$OmIdData;", "(Ljava/lang/String;Ljava/lang/String;Lcom/cloud/hisavana/sdk/common/bean/VastIcon;Lcom/cloud/hisavana/sdk/common/bean/VastTracking;Lcom/cloud/hisavana/sdk/common/bean/VastClick;Lcom/cloud/hisavana/sdk/common/bean/VastMedia;Lcom/cloud/hisavana/sdk/common/bean/VideoMask;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;Lcom/cloud/hisavana/sdk/common/bean/ProgressData;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/List;)V", "getAdVerifications", "()Ljava/util/List;", "setAdVerifications", "(Ljava/util/List;)V", "getButtonTxt", "()Ljava/lang/String;", "setButtonTxt", "(Ljava/lang/String;)V", "getDescription", "setDescription", "getDuration", "()Ljava/lang/Integer;", "setDuration", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "getIcon", "()Lcom/cloud/hisavana/sdk/common/bean/VastIcon;", "setIcon", "(Lcom/cloud/hisavana/sdk/common/bean/VastIcon;)V", "getId", "setId", "getImpression", "setImpression", "()Ljava/lang/Boolean;", "setCached", "(Ljava/lang/Boolean;)V", "Ljava/lang/Boolean;", "setVideoCached", "setVideoType", "getMainAd", "()Lcom/cloud/hisavana/sdk/common/bean/VastMedia;", "setMainAd", "(Lcom/cloud/hisavana/sdk/common/bean/VastMedia;)V", "getProgressData", "()Lcom/cloud/hisavana/sdk/common/bean/ProgressData;", "setProgressData", "(Lcom/cloud/hisavana/sdk/common/bean/ProgressData;)V", "getSkipOffSet", "setSkipOffSet", "getTitle", "setTitle", "getVastClick", "()Lcom/cloud/hisavana/sdk/common/bean/VastClick;", "setVastClick", "(Lcom/cloud/hisavana/sdk/common/bean/VastClick;)V", "getVastTrack", "()Lcom/cloud/hisavana/sdk/common/bean/VastTracking;", "setVastTrack", "(Lcom/cloud/hisavana/sdk/common/bean/VastTracking;)V", "getVersion", "setVersion", "getVideoMask", "()Lcom/cloud/hisavana/sdk/common/bean/VideoMask;", "setVideoMask", "(Lcom/cloud/hisavana/sdk/common/bean/VideoMask;)V", "checkVast", "component1", "component10", "component11", "component12", "component13", "component14", "component15", "component16", "component17", "component18", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "(Ljava/lang/String;Ljava/lang/String;Lcom/cloud/hisavana/sdk/common/bean/VastIcon;Lcom/cloud/hisavana/sdk/common/bean/VastTracking;Lcom/cloud/hisavana/sdk/common/bean/VastClick;Lcom/cloud/hisavana/sdk/common/bean/VastMedia;Lcom/cloud/hisavana/sdk/common/bean/VideoMask;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;Lcom/cloud/hisavana/sdk/common/bean/ProgressData;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/List;)Lcom/cloud/hisavana/sdk/common/bean/VastData;", "describeContents", "equals", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "writeToParcel", "", "parcel", "Landroid/os/Parcel;", "flags", "api_release"}, k = 1, mv = {1, 9, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class VastData implements Parcelable {
    public static final Parcelable.Creator<VastData> CREATOR = new Creator();
    private List<AdsProtocolBean.OmIdData> adVerifications;
    private String buttonTxt;
    private String description;
    private Integer duration;
    private VastIcon icon;
    private String id;
    private List<String> impression;
    private Boolean isCached;
    private Boolean isVideoCached;
    private Boolean isVideoType;
    private VastMedia mainAd;
    private ProgressData progressData;
    private Integer skipOffSet;
    private String title;
    private VastClick vastClick;
    private VastTracking vastTrack;
    private String version;
    private VideoMask videoMask;

    @Metadata(k = 3, mv = {1, 9, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final class Creator implements Parcelable.Creator<VastData> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final VastData createFromParcel(Parcel parcel) {
            Boolean boolValueOf;
            Boolean boolValueOf2;
            Boolean boolValueOf3;
            Intrinsics.h(parcel, "parcel");
            String string = parcel.readString();
            String string2 = parcel.readString();
            VastIcon vastIconCreateFromParcel = parcel.readInt() == 0 ? null : VastIcon.CREATOR.createFromParcel(parcel);
            VastTracking vastTrackingCreateFromParcel = parcel.readInt() == 0 ? null : VastTracking.CREATOR.createFromParcel(parcel);
            VastClick vastClickCreateFromParcel = parcel.readInt() == 0 ? null : VastClick.CREATOR.createFromParcel(parcel);
            VastMedia vastMediaCreateFromParcel = parcel.readInt() == 0 ? null : VastMedia.CREATOR.createFromParcel(parcel);
            VideoMask videoMaskCreateFromParcel = parcel.readInt() == 0 ? null : VideoMask.CREATOR.createFromParcel(parcel);
            ArrayList<String> arrayListCreateStringArrayList = parcel.createStringArrayList();
            String string3 = parcel.readString();
            String string4 = parcel.readString();
            Integer numValueOf = parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt());
            int i11 = 0;
            if (parcel.readInt() == 0) {
                boolValueOf = null;
            } else {
                boolValueOf = Boolean.valueOf(parcel.readInt() != 0);
            }
            ProgressData progressDataCreateFromParcel = parcel.readInt() == 0 ? null : ProgressData.CREATOR.createFromParcel(parcel);
            Integer numValueOf2 = parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt());
            String string5 = parcel.readString();
            if (parcel.readInt() == 0) {
                boolValueOf2 = null;
            } else {
                boolValueOf2 = Boolean.valueOf(parcel.readInt() != 0);
            }
            if (parcel.readInt() == 0) {
                boolValueOf3 = null;
            } else {
                boolValueOf3 = Boolean.valueOf(parcel.readInt() != 0);
            }
            int i12 = parcel.readInt();
            ArrayList arrayList = new ArrayList(i12);
            while (i11 != i12) {
                arrayList.add(parcel.readParcelable(VastData.class.getClassLoader()));
                i11++;
                i12 = i12;
            }
            return new VastData(string, string2, vastIconCreateFromParcel, vastTrackingCreateFromParcel, vastClickCreateFromParcel, vastMediaCreateFromParcel, videoMaskCreateFromParcel, arrayListCreateStringArrayList, string3, string4, numValueOf, boolValueOf, progressDataCreateFromParcel, numValueOf2, string5, boolValueOf2, boolValueOf3, arrayList);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final VastData[] newArray(int i11) {
            return new VastData[i11];
        }
    }

    public VastData() {
        this(null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 262143, null);
    }

    public VastData(String str, String str2, VastIcon vastIcon, VastTracking vastTracking, VastClick vastClick, VastMedia vastMedia, VideoMask videoMask, List<String> list, String str3, String str4, Integer num, Boolean bool, ProgressData progressData, Integer num2, String str5, Boolean bool2, Boolean bool3, List<AdsProtocolBean.OmIdData> adVerifications) {
        Intrinsics.h(adVerifications, "adVerifications");
        this.id = str;
        this.title = str2;
        this.icon = vastIcon;
        this.vastTrack = vastTracking;
        this.vastClick = vastClick;
        this.mainAd = vastMedia;
        this.videoMask = videoMask;
        this.impression = list;
        this.version = str3;
        this.description = str4;
        this.duration = num;
        this.isCached = bool;
        this.progressData = progressData;
        this.skipOffSet = num2;
        this.buttonTxt = str5;
        this.isVideoType = bool2;
        this.isVideoCached = bool3;
        this.adVerifications = adVerifications;
    }

    public /* synthetic */ VastData(String str, String str2, VastIcon vastIcon, VastTracking vastTracking, VastClick vastClick, VastMedia vastMedia, VideoMask videoMask, List list, String str3, String str4, Integer num, Boolean bool, ProgressData progressData, Integer num2, String str5, Boolean bool2, Boolean bool3, List list2, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? null : str, (i11 & 2) != 0 ? null : str2, (i11 & 4) != 0 ? null : vastIcon, (i11 & 8) != 0 ? null : vastTracking, (i11 & 16) != 0 ? null : vastClick, (i11 & 32) != 0 ? null : vastMedia, (i11 & 64) != 0 ? null : videoMask, (i11 & 128) != 0 ? new ArrayList() : list, (i11 & 256) != 0 ? null : str3, (i11 & 512) != 0 ? null : str4, (i11 & 1024) != 0 ? null : num, (i11 & 2048) != 0 ? Boolean.FALSE : bool, (i11 & 4096) != 0 ? null : progressData, (i11 & 8192) != 0 ? 0 : num2, (i11 & 16384) != 0 ? null : str5, (i11 & 32768) != 0 ? Boolean.TRUE : bool2, (i11 & 65536) != 0 ? Boolean.FALSE : bool3, (i11 & 131072) != 0 ? new ArrayList() : list2);
    }

    public final boolean checkVast() {
        VastMedia vastMedia = this.mainAd;
        return !TextUtils.isEmpty(vastMedia != null ? vastMedia.getMediaResource() : null);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getId() {
        return this.id;
    }

    /* JADX INFO: renamed from: component10, reason: from getter */
    public final String getDescription() {
        return this.description;
    }

    /* JADX INFO: renamed from: component11, reason: from getter */
    public final Integer getDuration() {
        return this.duration;
    }

    /* JADX INFO: renamed from: component12, reason: from getter */
    public final Boolean getIsCached() {
        return this.isCached;
    }

    /* JADX INFO: renamed from: component13, reason: from getter */
    public final ProgressData getProgressData() {
        return this.progressData;
    }

    /* JADX INFO: renamed from: component14, reason: from getter */
    public final Integer getSkipOffSet() {
        return this.skipOffSet;
    }

    /* JADX INFO: renamed from: component15, reason: from getter */
    public final String getButtonTxt() {
        return this.buttonTxt;
    }

    /* JADX INFO: renamed from: component16, reason: from getter */
    public final Boolean getIsVideoType() {
        return this.isVideoType;
    }

    /* JADX INFO: renamed from: component17, reason: from getter */
    public final Boolean getIsVideoCached() {
        return this.isVideoCached;
    }

    public final List<AdsProtocolBean.OmIdData> component18() {
        return this.adVerifications;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getTitle() {
        return this.title;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final VastIcon getIcon() {
        return this.icon;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final VastTracking getVastTrack() {
        return this.vastTrack;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final VastClick getVastClick() {
        return this.vastClick;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final VastMedia getMainAd() {
        return this.mainAd;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final VideoMask getVideoMask() {
        return this.videoMask;
    }

    public final List<String> component8() {
        return this.impression;
    }

    /* JADX INFO: renamed from: component9, reason: from getter */
    public final String getVersion() {
        return this.version;
    }

    public final VastData copy(String id2, String title, VastIcon icon, VastTracking vastTrack, VastClick vastClick, VastMedia mainAd, VideoMask videoMask, List<String> impression, String version, String description, Integer duration, Boolean isCached, ProgressData progressData, Integer skipOffSet, String buttonTxt, Boolean isVideoType, Boolean isVideoCached, List<AdsProtocolBean.OmIdData> adVerifications) {
        Intrinsics.h(adVerifications, "adVerifications");
        return new VastData(id2, title, icon, vastTrack, vastClick, mainAd, videoMask, impression, version, description, duration, isCached, progressData, skipOffSet, buttonTxt, isVideoType, isVideoCached, adVerifications);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof VastData)) {
            return false;
        }
        VastData vastData = (VastData) other;
        return Intrinsics.c(this.id, vastData.id) && Intrinsics.c(this.title, vastData.title) && Intrinsics.c(this.icon, vastData.icon) && Intrinsics.c(this.vastTrack, vastData.vastTrack) && Intrinsics.c(this.vastClick, vastData.vastClick) && Intrinsics.c(this.mainAd, vastData.mainAd) && Intrinsics.c(this.videoMask, vastData.videoMask) && Intrinsics.c(this.impression, vastData.impression) && Intrinsics.c(this.version, vastData.version) && Intrinsics.c(this.description, vastData.description) && Intrinsics.c(this.duration, vastData.duration) && Intrinsics.c(this.isCached, vastData.isCached) && Intrinsics.c(this.progressData, vastData.progressData) && Intrinsics.c(this.skipOffSet, vastData.skipOffSet) && Intrinsics.c(this.buttonTxt, vastData.buttonTxt) && Intrinsics.c(this.isVideoType, vastData.isVideoType) && Intrinsics.c(this.isVideoCached, vastData.isVideoCached) && Intrinsics.c(this.adVerifications, vastData.adVerifications);
    }

    public final List<AdsProtocolBean.OmIdData> getAdVerifications() {
        return this.adVerifications;
    }

    public final String getButtonTxt() {
        return this.buttonTxt;
    }

    public final String getDescription() {
        return this.description;
    }

    public final Integer getDuration() {
        return this.duration;
    }

    public final VastIcon getIcon() {
        return this.icon;
    }

    public final String getId() {
        return this.id;
    }

    public final List<String> getImpression() {
        return this.impression;
    }

    public final VastMedia getMainAd() {
        return this.mainAd;
    }

    public final ProgressData getProgressData() {
        return this.progressData;
    }

    public final Integer getSkipOffSet() {
        return this.skipOffSet;
    }

    public final String getTitle() {
        return this.title;
    }

    public final VastClick getVastClick() {
        return this.vastClick;
    }

    public final VastTracking getVastTrack() {
        return this.vastTrack;
    }

    public final String getVersion() {
        return this.version;
    }

    public final VideoMask getVideoMask() {
        return this.videoMask;
    }

    public int hashCode() {
        String str = this.id;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.title;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        VastIcon vastIcon = this.icon;
        int iHashCode3 = (iHashCode2 + (vastIcon == null ? 0 : vastIcon.hashCode())) * 31;
        VastTracking vastTracking = this.vastTrack;
        int iHashCode4 = (iHashCode3 + (vastTracking == null ? 0 : vastTracking.hashCode())) * 31;
        VastClick vastClick = this.vastClick;
        int iHashCode5 = (iHashCode4 + (vastClick == null ? 0 : vastClick.hashCode())) * 31;
        VastMedia vastMedia = this.mainAd;
        int iHashCode6 = (iHashCode5 + (vastMedia == null ? 0 : vastMedia.hashCode())) * 31;
        VideoMask videoMask = this.videoMask;
        int iHashCode7 = (iHashCode6 + (videoMask == null ? 0 : videoMask.hashCode())) * 31;
        List<String> list = this.impression;
        int iHashCode8 = (iHashCode7 + (list == null ? 0 : list.hashCode())) * 31;
        String str3 = this.version;
        int iHashCode9 = (iHashCode8 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.description;
        int iHashCode10 = (iHashCode9 + (str4 == null ? 0 : str4.hashCode())) * 31;
        Integer num = this.duration;
        int iHashCode11 = (iHashCode10 + (num == null ? 0 : num.hashCode())) * 31;
        Boolean bool = this.isCached;
        int iHashCode12 = (iHashCode11 + (bool == null ? 0 : bool.hashCode())) * 31;
        ProgressData progressData = this.progressData;
        int iHashCode13 = (iHashCode12 + (progressData == null ? 0 : progressData.hashCode())) * 31;
        Integer num2 = this.skipOffSet;
        int iHashCode14 = (iHashCode13 + (num2 == null ? 0 : num2.hashCode())) * 31;
        String str5 = this.buttonTxt;
        int iHashCode15 = (iHashCode14 + (str5 == null ? 0 : str5.hashCode())) * 31;
        Boolean bool2 = this.isVideoType;
        int iHashCode16 = (iHashCode15 + (bool2 == null ? 0 : bool2.hashCode())) * 31;
        Boolean bool3 = this.isVideoCached;
        return ((iHashCode16 + (bool3 != null ? bool3.hashCode() : 0)) * 31) + this.adVerifications.hashCode();
    }

    public final Boolean isCached() {
        return this.isCached;
    }

    public final Boolean isVideoCached() {
        return this.isVideoCached;
    }

    public final Boolean isVideoType() {
        return this.isVideoType;
    }

    public final void setAdVerifications(List<AdsProtocolBean.OmIdData> list) {
        Intrinsics.h(list, "<set-?>");
        this.adVerifications = list;
    }

    public final void setButtonTxt(String str) {
        this.buttonTxt = str;
    }

    public final void setCached(Boolean bool) {
        this.isCached = bool;
    }

    public final void setDescription(String str) {
        this.description = str;
    }

    public final void setDuration(Integer num) {
        this.duration = num;
    }

    public final void setIcon(VastIcon vastIcon) {
        this.icon = vastIcon;
    }

    public final void setId(String str) {
        this.id = str;
    }

    public final void setImpression(List<String> list) {
        this.impression = list;
    }

    public final void setMainAd(VastMedia vastMedia) {
        this.mainAd = vastMedia;
    }

    public final void setProgressData(ProgressData progressData) {
        this.progressData = progressData;
    }

    public final void setSkipOffSet(Integer num) {
        this.skipOffSet = num;
    }

    public final void setTitle(String str) {
        this.title = str;
    }

    public final void setVastClick(VastClick vastClick) {
        this.vastClick = vastClick;
    }

    public final void setVastTrack(VastTracking vastTracking) {
        this.vastTrack = vastTracking;
    }

    public final void setVersion(String str) {
        this.version = str;
    }

    public final void setVideoCached(Boolean bool) {
        this.isVideoCached = bool;
    }

    public final void setVideoMask(VideoMask videoMask) {
        this.videoMask = videoMask;
    }

    public final void setVideoType(Boolean bool) {
        this.isVideoType = bool;
    }

    public String toString() {
        return "VastData(id=" + this.id + ", title=" + this.title + ", icon=" + this.icon + ", vastTrack=" + this.vastTrack + ", vastClick=" + this.vastClick + ", mainAd=" + this.mainAd + ", videoMask=" + this.videoMask + ", impression=" + this.impression + ", version=" + this.version + ", description=" + this.description + ", duration=" + this.duration + ", isCached=" + this.isCached + ", progressData=" + this.progressData + ", skipOffSet=" + this.skipOffSet + ", buttonTxt=" + this.buttonTxt + ", isVideoType=" + this.isVideoType + ", isVideoCached=" + this.isVideoCached + ", adVerifications=" + this.adVerifications + ')';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int flags) {
        Intrinsics.h(parcel, "out");
        parcel.writeString(this.id);
        parcel.writeString(this.title);
        VastIcon vastIcon = this.icon;
        if (vastIcon == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            vastIcon.writeToParcel(parcel, flags);
        }
        VastTracking vastTracking = this.vastTrack;
        if (vastTracking == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            vastTracking.writeToParcel(parcel, flags);
        }
        VastClick vastClick = this.vastClick;
        if (vastClick == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            vastClick.writeToParcel(parcel, flags);
        }
        VastMedia vastMedia = this.mainAd;
        if (vastMedia == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            vastMedia.writeToParcel(parcel, flags);
        }
        VideoMask videoMask = this.videoMask;
        if (videoMask == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            videoMask.writeToParcel(parcel, flags);
        }
        parcel.writeStringList(this.impression);
        parcel.writeString(this.version);
        parcel.writeString(this.description);
        Integer num = this.duration;
        if (num == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            parcel.writeInt(num.intValue());
        }
        Boolean bool = this.isCached;
        if (bool == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            parcel.writeInt(bool.booleanValue() ? 1 : 0);
        }
        ProgressData progressData = this.progressData;
        if (progressData == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            progressData.writeToParcel(parcel, flags);
        }
        Integer num2 = this.skipOffSet;
        if (num2 == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            parcel.writeInt(num2.intValue());
        }
        parcel.writeString(this.buttonTxt);
        Boolean bool2 = this.isVideoType;
        if (bool2 == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            parcel.writeInt(bool2.booleanValue() ? 1 : 0);
        }
        Boolean bool3 = this.isVideoCached;
        if (bool3 == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            parcel.writeInt(bool3.booleanValue() ? 1 : 0);
        }
        List<AdsProtocolBean.OmIdData> list = this.adVerifications;
        parcel.writeInt(list.size());
        Iterator<AdsProtocolBean.OmIdData> it = list.iterator();
        while (it.hasNext()) {
            parcel.writeParcelable(it.next(), flags);
        }
    }
}
