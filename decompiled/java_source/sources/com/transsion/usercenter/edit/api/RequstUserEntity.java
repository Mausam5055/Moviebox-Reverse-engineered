package com.transsion.usercenter.edit.api;

import com.google.android.libraries.places.api.model.PlaceTypes;
import com.google.gson.annotations.SerializedName;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0017\n\u0002\u0010\b\n\u0002\b\u000f\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001c\u0010\n\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\u0007\"\u0004\b\f\u0010\tR \u0010\r\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u0007\"\u0004\b\u000f\u0010\tR\u001c\u0010\u0010\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0007\"\u0004\b\u0012\u0010\tR\u001c\u0010\u0013\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0007\"\u0004\b\u0015\u0010\tR \u0010\u0016\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0007\"\u0004\b\u0018\u0010\tR \u0010\u0019\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u0007\"\u0004\b\u001b\u0010\tR\"\u0010\u001c\u001a\u0004\u0018\u00010\u001d8\u0006@\u0006X\u0087\u000e¢\u0006\u0010\n\u0002\u0010\"\u001a\u0004\b\u001e\u0010\u001f\"\u0004\b \u0010!R \u0010#\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b$\u0010\u0007\"\u0004\b%\u0010\tR\u001c\u0010&\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b'\u0010\u0007\"\u0004\b(\u0010\tR\u001c\u0010)\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b*\u0010\u0007\"\u0004\b+\u0010\t¨\u0006,"}, d2 = {"Lcom/transsion/usercenter/edit/api/RequstUserEntity;", "Ljava/io/Serializable;", "<init>", "()V", "userId", "", "getUserId", "()Ljava/lang/String;", "setUserId", "(Ljava/lang/String;)V", "id", "getId", "setId", "avatar", "getAvatar", "setAvatar", "newAvatarPath", "getNewAvatarPath", "setNewAvatarPath", "userBio", "getUserBio", "setUserBio", "birthday", "getBirthday", "setBirthday", "nickname", "getNickname", "setNickname", "gender", "", "getGender", "()Ljava/lang/Integer;", "setGender", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", PlaceTypes.COUNTRY, "getCountry", "setCountry", "city", "getCity", "setCity", "tempBucket", "getTempBucket", "setTempBucket", "UserCenter_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class RequstUserEntity implements Serializable {

    @SerializedName("avatar")
    private String avatar;

    @SerializedName("birthday")
    private String birthday;
    private String city;

    @SerializedName(PlaceTypes.COUNTRY)
    private String country;

    @SerializedName("gender")
    private Integer gender;
    private String id;
    private String newAvatarPath;

    @SerializedName("nickname")
    private String nickname;
    private String tempBucket;
    private String userBio;
    private String userId;

    public final String getAvatar() {
        return this.avatar;
    }

    public final String getBirthday() {
        return this.birthday;
    }

    public final String getCity() {
        return this.city;
    }

    public final String getCountry() {
        return this.country;
    }

    public final Integer getGender() {
        return this.gender;
    }

    public final String getId() {
        return this.id;
    }

    public final String getNewAvatarPath() {
        return this.newAvatarPath;
    }

    public final String getNickname() {
        return this.nickname;
    }

    public final String getTempBucket() {
        return this.tempBucket;
    }

    public final String getUserBio() {
        return this.userBio;
    }

    public final String getUserId() {
        return this.userId;
    }

    public final void setAvatar(String str) {
        this.avatar = str;
    }

    public final void setBirthday(String str) {
        this.birthday = str;
    }

    public final void setCity(String str) {
        this.city = str;
    }

    public final void setCountry(String str) {
        this.country = str;
    }

    public final void setGender(Integer num) {
        this.gender = num;
    }

    public final void setId(String str) {
        this.id = str;
    }

    public final void setNewAvatarPath(String str) {
        this.newAvatarPath = str;
    }

    public final void setNickname(String str) {
        this.nickname = str;
    }

    public final void setTempBucket(String str) {
        this.tempBucket = str;
    }

    public final void setUserBio(String str) {
        this.userBio = str;
    }

    public final void setUserId(String str) {
        this.userId = str;
    }
}
