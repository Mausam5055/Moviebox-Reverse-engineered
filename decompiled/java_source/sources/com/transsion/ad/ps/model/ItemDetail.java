package com.transsion.ad.ps.model;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Keep
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\bR\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001Bñ\u0001\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\r\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\u0003\u0012\u0010\u0010\u0010\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0012\u0018\u00010\u0011\u0012\u0010\u0010\u0013\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0014\u0018\u00010\u0011\u0012\b\u0010\u0015\u001a\u0004\u0018\u00010\u000b\u0012\b\u0010\u0016\u001a\u0004\u0018\u00010\u0003\u0012\u0010\u0010\u0017\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u000b\u0018\u00010\u0011\u0012\b\u0010\u0018\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0019\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u001a\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u001b\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u001c\u0010\u001dJ\u000b\u0010N\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010O\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010P\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010Q\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010R\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010S\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010T\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010U\u001a\u0004\u0018\u00010\u000bHÆ\u0003¢\u0006\u0002\u0010.J\u000b\u0010V\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010W\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010X\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010Y\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0013\u0010Z\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0012\u0018\u00010\u0011HÆ\u0003J\u0013\u0010[\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0014\u0018\u00010\u0011HÆ\u0003J\u0010\u0010\\\u001a\u0004\u0018\u00010\u000bHÆ\u0003¢\u0006\u0002\u0010.J\u000b\u0010]\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0013\u0010^\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u000b\u0018\u00010\u0011HÆ\u0003J\u000b\u0010_\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010`\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010a\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010b\u001a\u0004\u0018\u00010\u0003HÆ\u0003J¢\u0002\u0010c\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00032\u0012\b\u0002\u0010\u0010\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0012\u0018\u00010\u00112\u0012\b\u0002\u0010\u0013\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0014\u0018\u00010\u00112\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u00032\u0012\b\u0002\u0010\u0017\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u000b\u0018\u00010\u00112\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u0003HÆ\u0001¢\u0006\u0002\u0010dJ\u0006\u0010e\u001a\u00020\u000bJ\u0013\u0010f\u001a\u00020g2\b\u0010h\u001a\u0004\u0018\u00010iHÖ\u0003J\t\u0010j\u001a\u00020\u000bHÖ\u0001J\t\u0010k\u001a\u00020\u0003HÖ\u0001J\u0016\u0010l\u001a\u00020m2\u0006\u0010n\u001a\u00020o2\u0006\u0010p\u001a\u00020\u000bR\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001e\u0010\u001f\"\u0004\b \u0010!R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\"\u0010\u001f\"\u0004\b#\u0010!R\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b$\u0010\u001f\"\u0004\b%\u0010!R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b&\u0010\u001f\"\u0004\b'\u0010!R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b(\u0010\u001f\"\u0004\b)\u0010!R\u001c\u0010\b\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b*\u0010\u001f\"\u0004\b+\u0010!R\u001c\u0010\t\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b,\u0010\u001f\"\u0004\b-\u0010!R\u001e\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0086\u000e¢\u0006\u0010\n\u0002\u00101\u001a\u0004\b\n\u0010.\"\u0004\b/\u00100R\u001c\u0010\f\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b2\u0010\u001f\"\u0004\b3\u0010!R\u001c\u0010\r\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b4\u0010\u001f\"\u0004\b5\u0010!R\u001c\u0010\u000e\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b6\u0010\u001f\"\u0004\b7\u0010!R\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b8\u0010\u001f\"\u0004\b9\u0010!R$\u0010\u0010\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0012\u0018\u00010\u0011X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b:\u0010;\"\u0004\b<\u0010=R$\u0010\u0013\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0014\u0018\u00010\u0011X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b>\u0010;\"\u0004\b?\u0010=R\u001e\u0010\u0015\u001a\u0004\u0018\u00010\u000bX\u0086\u000e¢\u0006\u0010\n\u0002\u00101\u001a\u0004\b@\u0010.\"\u0004\bA\u00100R\u001c\u0010\u0016\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bB\u0010\u001f\"\u0004\bC\u0010!R$\u0010\u0017\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u000b\u0018\u00010\u0011X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bD\u0010;\"\u0004\bE\u0010=R\u001c\u0010\u0018\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bF\u0010\u001f\"\u0004\bG\u0010!R\u001c\u0010\u0019\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bH\u0010\u001f\"\u0004\bI\u0010!R\u001c\u0010\u001a\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bJ\u0010\u001f\"\u0004\bK\u0010!R\u001c\u0010\u001b\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bL\u0010\u001f\"\u0004\bM\u0010!¨\u0006q"}, d2 = {"Lcom/transsion/ad/ps/model/ItemDetail;", "Landroid/os/Parcelable;", "downloadCount", "", "iconUrl", "img0", "img1", "img2", "img3", "img4", "isOffer", "", "itemID", "lan", "name", "packageName", "safeTagList", "", "Lcom/transsion/ad/ps/model/SafeTag;", "tagList", "Lcom/transsion/ad/ps/model/Tag;", "safetyStyle", "score", "screenshotMode", "simpleDescription", "sourceSize", "star", "versionCode", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getDownloadCount", "()Ljava/lang/String;", "setDownloadCount", "(Ljava/lang/String;)V", "getIconUrl", "setIconUrl", "getImg0", "setImg0", "getImg1", "setImg1", "getImg2", "setImg2", "getImg3", "setImg3", "getImg4", "setImg4", "()Ljava/lang/Integer;", "setOffer", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "getItemID", "setItemID", "getLan", "setLan", "getName", "setName", "getPackageName", "setPackageName", "getSafeTagList", "()Ljava/util/List;", "setSafeTagList", "(Ljava/util/List;)V", "getTagList", "setTagList", "getSafetyStyle", "setSafetyStyle", "getScore", "setScore", "getScreenshotMode", "setScreenshotMode", "getSimpleDescription", "setSimpleDescription", "getSourceSize", "setSourceSize", "getStar", "setStar", "getVersionCode", "setVersionCode", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "component10", "component11", "component12", "component13", "component14", "component15", "component16", "component17", "component18", "component19", "component20", "component21", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/ad/ps/model/ItemDetail;", "describeContents", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "lib_ad_gpRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class ItemDetail implements Parcelable {
    public static final Parcelable.Creator<ItemDetail> CREATOR = new a();
    private String downloadCount;
    private String iconUrl;
    private String img0;
    private String img1;
    private String img2;
    private String img3;
    private String img4;
    private Integer isOffer;
    private String itemID;
    private String lan;
    private String name;
    private String packageName;
    private List<SafeTag> safeTagList;
    private Integer safetyStyle;
    private String score;
    private List<Integer> screenshotMode;
    private String simpleDescription;
    private String sourceSize;
    private String star;
    private List<Tag> tagList;
    private String versionCode;

    public static final class a implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ItemDetail createFromParcel(Parcel parcel) {
            ArrayList arrayList;
            ArrayList arrayList2;
            ArrayList arrayList3;
            Intrinsics.h(parcel, "parcel");
            String string = parcel.readString();
            String string2 = parcel.readString();
            String string3 = parcel.readString();
            String string4 = parcel.readString();
            String string5 = parcel.readString();
            String string6 = parcel.readString();
            String string7 = parcel.readString();
            Integer numValueOf = parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt());
            String string8 = parcel.readString();
            String string9 = parcel.readString();
            String string10 = parcel.readString();
            String string11 = parcel.readString();
            if (parcel.readInt() == 0) {
                arrayList = null;
            } else {
                int i11 = parcel.readInt();
                ArrayList arrayList4 = new ArrayList(i11);
                int i12 = 0;
                while (i12 != i11) {
                    arrayList4.add(parcel.readInt() == 0 ? null : SafeTag.CREATOR.createFromParcel(parcel));
                    i12++;
                    i11 = i11;
                }
                arrayList = arrayList4;
            }
            if (parcel.readInt() == 0) {
                arrayList2 = null;
            } else {
                int i13 = parcel.readInt();
                ArrayList arrayList5 = new ArrayList(i13);
                int i14 = 0;
                while (i14 != i13) {
                    arrayList5.add(parcel.readInt() == 0 ? null : Tag.CREATOR.createFromParcel(parcel));
                    i14++;
                    i13 = i13;
                }
                arrayList2 = arrayList5;
            }
            Integer numValueOf2 = parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt());
            String string12 = parcel.readString();
            if (parcel.readInt() == 0) {
                arrayList3 = null;
            } else {
                int i15 = parcel.readInt();
                ArrayList arrayList6 = new ArrayList(i15);
                int i16 = 0;
                while (i16 != i15) {
                    arrayList6.add(parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt()));
                    i16++;
                    i15 = i15;
                }
                arrayList3 = arrayList6;
            }
            return new ItemDetail(string, string2, string3, string4, string5, string6, string7, numValueOf, string8, string9, string10, string11, arrayList, arrayList2, numValueOf2, string12, arrayList3, parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final ItemDetail[] newArray(int i11) {
            return new ItemDetail[i11];
        }
    }

    public ItemDetail(String str, String str2, String str3, String str4, String str5, String str6, String str7, Integer num, String str8, String str9, String str10, String str11, List<SafeTag> list, List<Tag> list2, Integer num2, String str12, List<Integer> list3, String str13, String str14, String str15, String str16) {
        this.downloadCount = str;
        this.iconUrl = str2;
        this.img0 = str3;
        this.img1 = str4;
        this.img2 = str5;
        this.img3 = str6;
        this.img4 = str7;
        this.isOffer = num;
        this.itemID = str8;
        this.lan = str9;
        this.name = str10;
        this.packageName = str11;
        this.safeTagList = list;
        this.tagList = list2;
        this.safetyStyle = num2;
        this.score = str12;
        this.screenshotMode = list3;
        this.simpleDescription = str13;
        this.sourceSize = str14;
        this.star = str15;
        this.versionCode = str16;
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getDownloadCount() {
        return this.downloadCount;
    }

    /* JADX INFO: renamed from: component10, reason: from getter */
    public final String getLan() {
        return this.lan;
    }

    /* JADX INFO: renamed from: component11, reason: from getter */
    public final String getName() {
        return this.name;
    }

    /* JADX INFO: renamed from: component12, reason: from getter */
    public final String getPackageName() {
        return this.packageName;
    }

    public final List<SafeTag> component13() {
        return this.safeTagList;
    }

    public final List<Tag> component14() {
        return this.tagList;
    }

    /* JADX INFO: renamed from: component15, reason: from getter */
    public final Integer getSafetyStyle() {
        return this.safetyStyle;
    }

    /* JADX INFO: renamed from: component16, reason: from getter */
    public final String getScore() {
        return this.score;
    }

    public final List<Integer> component17() {
        return this.screenshotMode;
    }

    /* JADX INFO: renamed from: component18, reason: from getter */
    public final String getSimpleDescription() {
        return this.simpleDescription;
    }

    /* JADX INFO: renamed from: component19, reason: from getter */
    public final String getSourceSize() {
        return this.sourceSize;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getIconUrl() {
        return this.iconUrl;
    }

    /* JADX INFO: renamed from: component20, reason: from getter */
    public final String getStar() {
        return this.star;
    }

    /* JADX INFO: renamed from: component21, reason: from getter */
    public final String getVersionCode() {
        return this.versionCode;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getImg0() {
        return this.img0;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getImg1() {
        return this.img1;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getImg2() {
        return this.img2;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final String getImg3() {
        return this.img3;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final String getImg4() {
        return this.img4;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final Integer getIsOffer() {
        return this.isOffer;
    }

    /* JADX INFO: renamed from: component9, reason: from getter */
    public final String getItemID() {
        return this.itemID;
    }

    public final ItemDetail copy(String downloadCount, String iconUrl, String img0, String img1, String img2, String img3, String img4, Integer isOffer, String itemID, String lan, String name, String packageName, List<SafeTag> safeTagList, List<Tag> tagList, Integer safetyStyle, String score, List<Integer> screenshotMode, String simpleDescription, String sourceSize, String star, String versionCode) {
        return new ItemDetail(downloadCount, iconUrl, img0, img1, img2, img3, img4, isOffer, itemID, lan, name, packageName, safeTagList, tagList, safetyStyle, score, screenshotMode, simpleDescription, sourceSize, star, versionCode);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ItemDetail)) {
            return false;
        }
        ItemDetail itemDetail = (ItemDetail) other;
        return Intrinsics.c(this.downloadCount, itemDetail.downloadCount) && Intrinsics.c(this.iconUrl, itemDetail.iconUrl) && Intrinsics.c(this.img0, itemDetail.img0) && Intrinsics.c(this.img1, itemDetail.img1) && Intrinsics.c(this.img2, itemDetail.img2) && Intrinsics.c(this.img3, itemDetail.img3) && Intrinsics.c(this.img4, itemDetail.img4) && Intrinsics.c(this.isOffer, itemDetail.isOffer) && Intrinsics.c(this.itemID, itemDetail.itemID) && Intrinsics.c(this.lan, itemDetail.lan) && Intrinsics.c(this.name, itemDetail.name) && Intrinsics.c(this.packageName, itemDetail.packageName) && Intrinsics.c(this.safeTagList, itemDetail.safeTagList) && Intrinsics.c(this.tagList, itemDetail.tagList) && Intrinsics.c(this.safetyStyle, itemDetail.safetyStyle) && Intrinsics.c(this.score, itemDetail.score) && Intrinsics.c(this.screenshotMode, itemDetail.screenshotMode) && Intrinsics.c(this.simpleDescription, itemDetail.simpleDescription) && Intrinsics.c(this.sourceSize, itemDetail.sourceSize) && Intrinsics.c(this.star, itemDetail.star) && Intrinsics.c(this.versionCode, itemDetail.versionCode);
    }

    public final String getDownloadCount() {
        return this.downloadCount;
    }

    public final String getIconUrl() {
        return this.iconUrl;
    }

    public final String getImg0() {
        return this.img0;
    }

    public final String getImg1() {
        return this.img1;
    }

    public final String getImg2() {
        return this.img2;
    }

    public final String getImg3() {
        return this.img3;
    }

    public final String getImg4() {
        return this.img4;
    }

    public final String getItemID() {
        return this.itemID;
    }

    public final String getLan() {
        return this.lan;
    }

    public final String getName() {
        return this.name;
    }

    public final String getPackageName() {
        return this.packageName;
    }

    public final List<SafeTag> getSafeTagList() {
        return this.safeTagList;
    }

    public final Integer getSafetyStyle() {
        return this.safetyStyle;
    }

    public final String getScore() {
        return this.score;
    }

    public final List<Integer> getScreenshotMode() {
        return this.screenshotMode;
    }

    public final String getSimpleDescription() {
        return this.simpleDescription;
    }

    public final String getSourceSize() {
        return this.sourceSize;
    }

    public final String getStar() {
        return this.star;
    }

    public final List<Tag> getTagList() {
        return this.tagList;
    }

    public final String getVersionCode() {
        return this.versionCode;
    }

    public int hashCode() {
        String str = this.downloadCount;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.iconUrl;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.img0;
        int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.img1;
        int iHashCode4 = (iHashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.img2;
        int iHashCode5 = (iHashCode4 + (str5 == null ? 0 : str5.hashCode())) * 31;
        String str6 = this.img3;
        int iHashCode6 = (iHashCode5 + (str6 == null ? 0 : str6.hashCode())) * 31;
        String str7 = this.img4;
        int iHashCode7 = (iHashCode6 + (str7 == null ? 0 : str7.hashCode())) * 31;
        Integer num = this.isOffer;
        int iHashCode8 = (iHashCode7 + (num == null ? 0 : num.hashCode())) * 31;
        String str8 = this.itemID;
        int iHashCode9 = (iHashCode8 + (str8 == null ? 0 : str8.hashCode())) * 31;
        String str9 = this.lan;
        int iHashCode10 = (iHashCode9 + (str9 == null ? 0 : str9.hashCode())) * 31;
        String str10 = this.name;
        int iHashCode11 = (iHashCode10 + (str10 == null ? 0 : str10.hashCode())) * 31;
        String str11 = this.packageName;
        int iHashCode12 = (iHashCode11 + (str11 == null ? 0 : str11.hashCode())) * 31;
        List<SafeTag> list = this.safeTagList;
        int iHashCode13 = (iHashCode12 + (list == null ? 0 : list.hashCode())) * 31;
        List<Tag> list2 = this.tagList;
        int iHashCode14 = (iHashCode13 + (list2 == null ? 0 : list2.hashCode())) * 31;
        Integer num2 = this.safetyStyle;
        int iHashCode15 = (iHashCode14 + (num2 == null ? 0 : num2.hashCode())) * 31;
        String str12 = this.score;
        int iHashCode16 = (iHashCode15 + (str12 == null ? 0 : str12.hashCode())) * 31;
        List<Integer> list3 = this.screenshotMode;
        int iHashCode17 = (iHashCode16 + (list3 == null ? 0 : list3.hashCode())) * 31;
        String str13 = this.simpleDescription;
        int iHashCode18 = (iHashCode17 + (str13 == null ? 0 : str13.hashCode())) * 31;
        String str14 = this.sourceSize;
        int iHashCode19 = (iHashCode18 + (str14 == null ? 0 : str14.hashCode())) * 31;
        String str15 = this.star;
        int iHashCode20 = (iHashCode19 + (str15 == null ? 0 : str15.hashCode())) * 31;
        String str16 = this.versionCode;
        return iHashCode20 + (str16 != null ? str16.hashCode() : 0);
    }

    public final Integer isOffer() {
        return this.isOffer;
    }

    public final void setDownloadCount(String str) {
        this.downloadCount = str;
    }

    public final void setIconUrl(String str) {
        this.iconUrl = str;
    }

    public final void setImg0(String str) {
        this.img0 = str;
    }

    public final void setImg1(String str) {
        this.img1 = str;
    }

    public final void setImg2(String str) {
        this.img2 = str;
    }

    public final void setImg3(String str) {
        this.img3 = str;
    }

    public final void setImg4(String str) {
        this.img4 = str;
    }

    public final void setItemID(String str) {
        this.itemID = str;
    }

    public final void setLan(String str) {
        this.lan = str;
    }

    public final void setName(String str) {
        this.name = str;
    }

    public final void setOffer(Integer num) {
        this.isOffer = num;
    }

    public final void setPackageName(String str) {
        this.packageName = str;
    }

    public final void setSafeTagList(List<SafeTag> list) {
        this.safeTagList = list;
    }

    public final void setSafetyStyle(Integer num) {
        this.safetyStyle = num;
    }

    public final void setScore(String str) {
        this.score = str;
    }

    public final void setScreenshotMode(List<Integer> list) {
        this.screenshotMode = list;
    }

    public final void setSimpleDescription(String str) {
        this.simpleDescription = str;
    }

    public final void setSourceSize(String str) {
        this.sourceSize = str;
    }

    public final void setStar(String str) {
        this.star = str;
    }

    public final void setTagList(List<Tag> list) {
        this.tagList = list;
    }

    public final void setVersionCode(String str) {
        this.versionCode = str;
    }

    public String toString() {
        return "ItemDetail(downloadCount=" + this.downloadCount + ", iconUrl=" + this.iconUrl + ", img0=" + this.img0 + ", img1=" + this.img1 + ", img2=" + this.img2 + ", img3=" + this.img3 + ", img4=" + this.img4 + ", isOffer=" + this.isOffer + ", itemID=" + this.itemID + ", lan=" + this.lan + ", name=" + this.name + ", packageName=" + this.packageName + ", safeTagList=" + this.safeTagList + ", tagList=" + this.tagList + ", safetyStyle=" + this.safetyStyle + ", score=" + this.score + ", screenshotMode=" + this.screenshotMode + ", simpleDescription=" + this.simpleDescription + ", sourceSize=" + this.sourceSize + ", star=" + this.star + ", versionCode=" + this.versionCode + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel dest, int flags) {
        Intrinsics.h(dest, "dest");
        dest.writeString(this.downloadCount);
        dest.writeString(this.iconUrl);
        dest.writeString(this.img0);
        dest.writeString(this.img1);
        dest.writeString(this.img2);
        dest.writeString(this.img3);
        dest.writeString(this.img4);
        Integer num = this.isOffer;
        if (num == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            dest.writeInt(num.intValue());
        }
        dest.writeString(this.itemID);
        dest.writeString(this.lan);
        dest.writeString(this.name);
        dest.writeString(this.packageName);
        List<SafeTag> list = this.safeTagList;
        if (list == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            dest.writeInt(list.size());
            for (SafeTag safeTag : list) {
                if (safeTag == null) {
                    dest.writeInt(0);
                } else {
                    dest.writeInt(1);
                    safeTag.writeToParcel(dest, flags);
                }
            }
        }
        List<Tag> list2 = this.tagList;
        if (list2 == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            dest.writeInt(list2.size());
            for (Tag tag : list2) {
                if (tag == null) {
                    dest.writeInt(0);
                } else {
                    dest.writeInt(1);
                    tag.writeToParcel(dest, flags);
                }
            }
        }
        Integer num2 = this.safetyStyle;
        if (num2 == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            dest.writeInt(num2.intValue());
        }
        dest.writeString(this.score);
        List<Integer> list3 = this.screenshotMode;
        if (list3 == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            dest.writeInt(list3.size());
            for (Integer num3 : list3) {
                if (num3 == null) {
                    dest.writeInt(0);
                } else {
                    dest.writeInt(1);
                    dest.writeInt(num3.intValue());
                }
            }
        }
        dest.writeString(this.simpleDescription);
        dest.writeString(this.sourceSize);
        dest.writeString(this.star);
        dest.writeString(this.versionCode);
    }
}
