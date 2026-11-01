package com.transsion.shorttv_pugc.bean;

import androidx.annotation.Keep;
import com.cloud.tmc.integration.permission.PermissionConstant;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.google.gson.annotations.SerializedName;
import com.hisavana.common.tracking.TrackingKey;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import java.util.List;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b:\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B\u008f\u0001\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\r\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011\u0012\u000e\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0013¢\u0006\u0004\b\u0014\u0010\u0015J\u0006\u0010<\u001a\u00020\u000bJ\u000b\u0010=\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010>\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010?\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010@\u001a\u0004\u0018\u00010\u0007HÆ\u0003¢\u0006\u0002\u0010\u001fJ\u0010\u0010A\u001a\u0004\u0018\u00010\u0007HÆ\u0003¢\u0006\u0002\u0010\u001fJ\u000b\u0010B\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010C\u001a\u0004\u0018\u00010\u000bHÆ\u0003¢\u0006\u0002\u0010(J\u000b\u0010D\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010E\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010F\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010G\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010H\u001a\u0004\u0018\u00010\u0011HÆ\u0003J\u0011\u0010I\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0013HÆ\u0003J°\u0001\u0010J\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00112\u0010\b\u0002\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0013HÆ\u0001¢\u0006\u0002\u0010KJ\u0013\u0010L\u001a\u00020\u000b2\b\u0010M\u001a\u0004\u0018\u00010NHÖ\u0003J\t\u0010O\u001a\u00020PHÖ\u0001J\t\u0010Q\u001a\u00020\u0003HÖ\u0001R \u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019R \u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u0017\"\u0004\b\u001b\u0010\u0019R \u0010\u0005\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\u0017\"\u0004\b\u001d\u0010\u0019R\"\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0010\n\u0002\u0010\"\u001a\u0004\b\u001e\u0010\u001f\"\u0004\b \u0010!R\"\u0010\b\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0010\n\u0002\u0010\"\u001a\u0004\b#\u0010\u001f\"\u0004\b$\u0010!R \u0010\t\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b%\u0010\u0017\"\u0004\b&\u0010\u0019R\"\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e¢\u0006\u0010\n\u0002\u0010+\u001a\u0004\b'\u0010(\"\u0004\b)\u0010*R \u0010\f\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b,\u0010\u0017\"\u0004\b-\u0010\u0019R \u0010\r\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b.\u0010\u0017\"\u0004\b/\u0010\u0019R \u0010\u000e\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b0\u0010\u0017\"\u0004\b1\u0010\u0019R \u0010\u000f\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b2\u0010\u0017\"\u0004\b3\u0010\u0019R \u0010\u0010\u001a\u0004\u0018\u00010\u00118\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b4\u00105\"\u0004\b6\u00107R&\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00138\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b8\u00109\"\u0004\b:\u0010;¨\u0006R"}, d2 = {"Lcom/transsion/shorttv_pugc/bean/Group;", "Ljava/io/Serializable;", "avatar", "", "groupId", "name", "userCount", "", "postCount", PermissionConstant.level, "hasJoin", "", CampaignEx.JSON_KEY_DESC, "avatarAverageHueLight", "avatarAverageHueDark", "newPostCount", "cover", "Lcom/transsion/shorttv_pugc/bean/Cover;", "tags", "", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/shorttv_pugc/bean/Cover;Ljava/util/List;)V", "getAvatar", "()Ljava/lang/String;", "setAvatar", "(Ljava/lang/String;)V", "getGroupId", "setGroupId", "getName", "setName", "getUserCount", "()Ljava/lang/Long;", "setUserCount", "(Ljava/lang/Long;)V", "Ljava/lang/Long;", "getPostCount", "setPostCount", "getLevel", "setLevel", "getHasJoin", "()Ljava/lang/Boolean;", "setHasJoin", "(Ljava/lang/Boolean;)V", "Ljava/lang/Boolean;", "getDesc", "setDesc", "getAvatarAverageHueLight", "setAvatarAverageHueLight", "getAvatarAverageHueDark", "setAvatarAverageHueDark", "getNewPostCount", "setNewPostCount", "getCover", "()Lcom/transsion/shorttv_pugc/bean/Cover;", "setCover", "(Lcom/transsion/shorttv_pugc/bean/Cover;)V", "getTags", "()Ljava/util/List;", "setTags", "(Ljava/util/List;)V", "showAdultRestricted", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "component10", "component11", "component12", "component13", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/shorttv_pugc/bean/Cover;Ljava/util/List;)Lcom/transsion/shorttv_pugc/bean/Group;", "equals", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "", "toString", "shortTvLib_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class Group implements Serializable {

    @SerializedName("avatar")
    private String avatar;

    @SerializedName("avatarAverageHueDark")
    private String avatarAverageHueDark;

    @SerializedName("avatarAverageHueLight")
    private String avatarAverageHueLight;

    @SerializedName("cover")
    private Cover cover;

    @SerializedName(TrackingKey.DESCRIPTION)
    private String desc;

    @SerializedName("groupId")
    private String groupId;

    @SerializedName("hasJoin")
    private Boolean hasJoin;

    @SerializedName(PermissionConstant.level)
    private String level;

    @SerializedName("name")
    private String name;

    @SerializedName("newPostCount")
    private String newPostCount;

    @SerializedName("postCount")
    private Long postCount;

    @SerializedName("tags")
    private List<String> tags;

    @SerializedName("userCount")
    private Long userCount;

    public Group(String str, String str2, String str3, Long l11, Long l12, String str4, Boolean bool, String str5, String str6, String str7, String str8, Cover cover, List<String> list) {
        this.avatar = str;
        this.groupId = str2;
        this.name = str3;
        this.userCount = l11;
        this.postCount = l12;
        this.level = str4;
        this.hasJoin = bool;
        this.desc = str5;
        this.avatarAverageHueLight = str6;
        this.avatarAverageHueDark = str7;
        this.newPostCount = str8;
        this.cover = cover;
        this.tags = list;
    }

    public final native String component1();

    public final native String component10();

    public final native String component11();

    public final native Cover component12();

    public final native List component13();

    public final native String component2();

    public final native String component3();

    public final native Long component4();

    public final native Long component5();

    public final native String component6();

    public final native Boolean component7();

    public final native String component8();

    public final native String component9();

    public final Group copy(String avatar, String groupId, String name, Long userCount, Long postCount, String level, Boolean hasJoin, String desc, String avatarAverageHueLight, String avatarAverageHueDark, String newPostCount, Cover cover, List<String> tags) {
        return new Group(avatar, groupId, name, userCount, postCount, level, hasJoin, desc, avatarAverageHueLight, avatarAverageHueDark, newPostCount, cover, tags);
    }

    public native boolean equals(Object other);

    public final native String getAvatar();

    public final native String getAvatarAverageHueDark();

    public final native String getAvatarAverageHueLight();

    public final native Cover getCover();

    public final native String getDesc();

    public final native String getGroupId();

    public final native Boolean getHasJoin();

    public final native String getLevel();

    public final native String getName();

    public final native String getNewPostCount();

    public final native Long getPostCount();

    public final native List getTags();

    public final native Long getUserCount();

    public native int hashCode();

    public final native void setAvatar(String str);

    public final native void setAvatarAverageHueDark(String str);

    public final native void setAvatarAverageHueLight(String str);

    public final native void setCover(Cover cover);

    public final native void setDesc(String str);

    public final native void setGroupId(String str);

    public final native void setHasJoin(Boolean bool);

    public final native void setLevel(String str);

    public final native void setName(String str);

    public final native void setNewPostCount(String str);

    public final native void setPostCount(Long l11);

    public final native void setTags(List list);

    public final native void setUserCount(Long l11);

    public final native boolean showAdultRestricted();

    public native String toString();
}
