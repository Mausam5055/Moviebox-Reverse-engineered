package com.transsion.shorttv_pugc.bean;

import androidx.annotation.Keep;
import com.google.gson.annotations.SerializedName;
import com.hisavana.common.tracking.TrackingKey;
import com.transsion.ad.bidding.nativead.BiddingNativeManager;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import java.util.List;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u000e\n\u0002\u0010\b\n\u0002\b\u000e\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0017\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003R \u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR \u0010\n\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\u0007\"\u0004\b\f\u0010\tR \u0010\r\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u0007\"\u0004\b\u000f\u0010\tR \u0010\u0010\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0007\"\u0004\b\u0012\u0010\tR\"\u0010\u0013\u001a\u0004\u0018\u00010\u00148\u0006@\u0006X\u0087\u000e¢\u0006\u0010\n\u0002\u0010\u0019\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R \u0010\u001a\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001b\u0010\u0007\"\u0004\b\u001c\u0010\tR\u001e\u0010\u001d\u001a\u00020\u00148\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001e\u0010\u001f\"\u0004\b \u0010!R&\u0010\"\u001a\n\u0012\u0004\u0012\u00020$\u0018\u00010#8\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b%\u0010&\"\u0004\b'\u0010(R \u0010)\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b*\u0010\u0007\"\u0004\b+\u0010\tR\"\u0010,\u001a\u0004\u0018\u00010\u00148\u0006@\u0006X\u0087\u000e¢\u0006\u0010\n\u0002\u0010\u0019\u001a\u0004\b-\u0010\u0016\"\u0004\b.\u0010\u0018R \u0010/\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b0\u0010\u0007\"\u0004\b1\u0010\tR\u001c\u00102\u001a\u0004\u0018\u000103X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b4\u00105\"\u0004\b6\u00107¨\u00068"}, d2 = {"Lcom/transsion/shorttv_pugc/bean/Staff;", "Ljava/io/Serializable;", "<init>", "()V", "avatarUrl", "", "getAvatarUrl", "()Ljava/lang/String;", "setAvatarUrl", "(Ljava/lang/String;)V", "character", "getCharacter", "setCharacter", "name", "getName", "setName", "staffId", "getStaffId", "setStaffId", "staffType", "", "getStaffType", "()Ljava/lang/Integer;", "setStaffType", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", TrackingKey.DESCRIPTION, "getDescription", "setDescription", "seenStatus", "getSeenStatus", "()I", "setSeenStatus", "(I)V", "staffTypes", "", "Lcom/transsion/shorttv_pugc/bean/StaffType;", "getStaffTypes", "()Ljava/util/List;", "setStaffTypes", "(Ljava/util/List;)V", "mySeeTime", "getMySeeTime", "setMySeeTime", "subjectNum", "getSubjectNum", "setSubjectNum", "ops", "getOps", "setOps", "nonAdDelegate", "Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;", "getNonAdDelegate", "()Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;", "setNonAdDelegate", "(Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;)V", "shortTvLib_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public class Staff implements Serializable {

    @SerializedName("avatarUrl")
    private String avatarUrl;

    @SerializedName("character")
    private String character;

    @SerializedName(TrackingKey.DESCRIPTION)
    private String description;

    @SerializedName("mySeeTime")
    private String mySeeTime;

    @SerializedName("name")
    private String name;
    private transient BiddingNativeManager nonAdDelegate;

    @SerializedName("ops")
    private String ops;

    @SerializedName("seenStatus")
    private int seenStatus;

    @SerializedName("staffId")
    private String staffId;

    @SerializedName("staffType")
    private Integer staffType;

    @SerializedName("staffTypes")
    private List<StaffType> staffTypes;

    @SerializedName("subjectNum")
    private Integer subjectNum;

    public final String getAvatarUrl() {
        return this.avatarUrl;
    }

    public final String getCharacter() {
        return this.character;
    }

    public final String getDescription() {
        return this.description;
    }

    public final String getMySeeTime() {
        return this.mySeeTime;
    }

    public final String getName() {
        return this.name;
    }

    public final BiddingNativeManager getNonAdDelegate() {
        return this.nonAdDelegate;
    }

    public final String getOps() {
        return this.ops;
    }

    public final int getSeenStatus() {
        return this.seenStatus;
    }

    public final String getStaffId() {
        return this.staffId;
    }

    public final Integer getStaffType() {
        return this.staffType;
    }

    public final List<StaffType> getStaffTypes() {
        return this.staffTypes;
    }

    public final Integer getSubjectNum() {
        return this.subjectNum;
    }

    public final void setAvatarUrl(String str) {
        this.avatarUrl = str;
    }

    public final void setCharacter(String str) {
        this.character = str;
    }

    public final void setDescription(String str) {
        this.description = str;
    }

    public final void setMySeeTime(String str) {
        this.mySeeTime = str;
    }

    public final void setName(String str) {
        this.name = str;
    }

    public final void setNonAdDelegate(BiddingNativeManager biddingNativeManager) {
        this.nonAdDelegate = biddingNativeManager;
    }

    public final void setOps(String str) {
        this.ops = str;
    }

    public final void setSeenStatus(int i11) {
        this.seenStatus = i11;
    }

    public final void setStaffId(String str) {
        this.staffId = str;
    }

    public final void setStaffType(Integer num) {
        this.staffType = num;
    }

    public final void setStaffTypes(List<StaffType> list) {
        this.staffTypes = list;
    }

    public final void setSubjectNum(Integer num) {
        this.subjectNum = num;
    }
}
