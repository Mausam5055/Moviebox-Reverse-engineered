package com.transsion.usercenter.message.bean;

import androidx.core.app.NotificationCompat;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.google.gson.annotations.SerializedName;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.transsion.moviedetailapi.bean.Cover;
import com.transsion.moviedetailapi.bean.Image;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b,\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u000b\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003R \u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR \u0010\n\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\u0007\"\u0004\b\f\u0010\tR \u0010\r\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u0007\"\u0004\b\u000f\u0010\tR \u0010\u0010\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0007\"\u0004\b\u0012\u0010\tR\u001e\u0010\u0013\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0007\"\u0004\b\u0015\u0010\tR\u001e\u0010\u0016\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0007\"\u0004\b\u0018\u0010\tR\u001e\u0010\u0019\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u0007\"\u0004\b\u001b\u0010\tR\u001e\u0010\u001c\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001d\u0010\u0007\"\u0004\b\u001e\u0010\tR\u001e\u0010\u001f\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b \u0010\u0007\"\u0004\b!\u0010\tR\u001e\u0010\"\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b#\u0010\u0007\"\u0004\b$\u0010\tR\u001e\u0010%\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b&\u0010\u0007\"\u0004\b'\u0010\tR\u001e\u0010(\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b)\u0010\u0007\"\u0004\b*\u0010\tR\u001e\u0010+\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b,\u0010\u0007\"\u0004\b-\u0010\tR\u001e\u0010.\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b/\u0010\u0007\"\u0004\b0\u0010\tR \u00101\u001a\u0004\u0018\u0001028\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b3\u00104\"\u0004\b5\u00106R&\u00107\u001a\n\u0012\u0004\u0012\u000209\u0018\u0001088\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b:\u0010;\"\u0004\b<\u0010=R\u001e\u0010>\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b?\u0010\u0007\"\u0004\b@\u0010\tR \u0010A\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bB\u0010\u0007\"\u0004\bC\u0010\t¨\u0006D"}, d2 = {"Lcom/transsion/usercenter/message/bean/MessageEntity;", "Ljava/io/Serializable;", "<init>", "()V", "messageId", "", "getMessageId", "()Ljava/lang/String;", "setMessageId", "(Ljava/lang/String;)V", CampaignEx.JSON_KEY_TITLE, "getTitle", "setTitle", "content", "getContent", "setContent", "deeplink", "getDeeplink", "setDeeplink", "createdAt", "getCreatedAt", "setCreatedAt", NativeComponentConstants.KEY_COMPONENT_TYPE, "getType", "setType", "avator", "getAvator", "setAvator", "picture", "getPicture", "setPicture", "url", "getUrl", "setUrl", "nickname", "getNickname", "setNickname", NotificationCompat.CATEGORY_STATUS, "getStatus", "setStatus", "sendUid", "getSendUid", "setSendUid", "topicId", "getTopicId", "setTopicId", "commentId", "getCommentId", "setCommentId", "image", "Lcom/transsion/moviedetailapi/bean/Cover;", "getImage", "()Lcom/transsion/moviedetailapi/bean/Cover;", "setImage", "(Lcom/transsion/moviedetailapi/bean/Cover;)V", "commentImages", "", "Lcom/transsion/moviedetailapi/bean/Image;", "getCommentImages", "()Ljava/util/List;", "setCommentImages", "(Ljava/util/List;)V", "commentStatus", "getCommentStatus", "setCommentStatus", "topicType", "getTopicType", "setTopicType", "UserCenter_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class MessageEntity implements Serializable {

    @SerializedName("commentImages")
    private List<Image> commentImages;

    @SerializedName("content")
    private String content;

    @SerializedName("deeplink")
    private String deeplink;

    @SerializedName("image")
    private Cover image;

    @SerializedName("id")
    private String messageId;

    @SerializedName(CampaignEx.JSON_KEY_TITLE)
    private String title;

    @SerializedName("topicType")
    private String topicType;

    @SerializedName("createdAt")
    private String createdAt = "";

    @SerializedName(NativeComponentConstants.KEY_COMPONENT_TYPE)
    private String type = "";

    @SerializedName("avator")
    private String avator = "";

    @SerializedName("picture")
    private String picture = "";

    @SerializedName("url")
    private String url = "";

    @SerializedName("nickname")
    private String nickname = "";

    @SerializedName(NotificationCompat.CATEGORY_STATUS)
    private String status = "";

    @SerializedName("sendUid")
    private String sendUid = "";

    @SerializedName("topicId")
    private String topicId = "";

    @SerializedName("commentId")
    private String commentId = "";

    @SerializedName("commentStatus")
    private String commentStatus = "";

    public final String getAvator() {
        return this.avator;
    }

    public final String getCommentId() {
        return this.commentId;
    }

    public final List<Image> getCommentImages() {
        return this.commentImages;
    }

    public final String getCommentStatus() {
        return this.commentStatus;
    }

    public final String getContent() {
        return this.content;
    }

    public final String getCreatedAt() {
        return this.createdAt;
    }

    public final String getDeeplink() {
        return this.deeplink;
    }

    public final Cover getImage() {
        return this.image;
    }

    public final String getMessageId() {
        return this.messageId;
    }

    public final String getNickname() {
        return this.nickname;
    }

    public final String getPicture() {
        return this.picture;
    }

    public final String getSendUid() {
        return this.sendUid;
    }

    public final String getStatus() {
        return this.status;
    }

    public final String getTitle() {
        return this.title;
    }

    public final String getTopicId() {
        return this.topicId;
    }

    public final String getTopicType() {
        return this.topicType;
    }

    public final String getType() {
        return this.type;
    }

    public final String getUrl() {
        return this.url;
    }

    public final void setAvator(String str) {
        Intrinsics.h(str, "<set-?>");
        this.avator = str;
    }

    public final void setCommentId(String str) {
        Intrinsics.h(str, "<set-?>");
        this.commentId = str;
    }

    public final void setCommentImages(List<Image> list) {
        this.commentImages = list;
    }

    public final void setCommentStatus(String str) {
        Intrinsics.h(str, "<set-?>");
        this.commentStatus = str;
    }

    public final void setContent(String str) {
        this.content = str;
    }

    public final void setCreatedAt(String str) {
        Intrinsics.h(str, "<set-?>");
        this.createdAt = str;
    }

    public final void setDeeplink(String str) {
        this.deeplink = str;
    }

    public final void setImage(Cover cover) {
        this.image = cover;
    }

    public final void setMessageId(String str) {
        this.messageId = str;
    }

    public final void setNickname(String str) {
        Intrinsics.h(str, "<set-?>");
        this.nickname = str;
    }

    public final void setPicture(String str) {
        Intrinsics.h(str, "<set-?>");
        this.picture = str;
    }

    public final void setSendUid(String str) {
        Intrinsics.h(str, "<set-?>");
        this.sendUid = str;
    }

    public final void setStatus(String str) {
        Intrinsics.h(str, "<set-?>");
        this.status = str;
    }

    public final void setTitle(String str) {
        this.title = str;
    }

    public final void setTopicId(String str) {
        Intrinsics.h(str, "<set-?>");
        this.topicId = str;
    }

    public final void setTopicType(String str) {
        this.topicType = str;
    }

    public final void setType(String str) {
        Intrinsics.h(str, "<set-?>");
        this.type = str;
    }

    public final void setUrl(String str) {
        Intrinsics.h(str, "<set-?>");
        this.url = str;
    }
}
