package com.transsion.postdetail.bean;

import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.google.gson.annotations.SerializedName;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010!\n\u0002\b\"\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B]\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\u000e\u0010\b\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\t\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\f\u0010\rJ\u000b\u0010\"\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010#\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010$\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010%\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010&\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0011\u0010'\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\tHÆ\u0003J\u000b\u0010(\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010)\u001a\u0004\u0018\u00010\u0003HÆ\u0003Jo\u0010*\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00032\u0010\b\u0002\u0010\b\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010+\u001a\u00020,2\b\u0010-\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010.\u001a\u00020/HÖ\u0001J\t\u00100\u001a\u00020\u0003HÖ\u0001R \u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R \u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u000f\"\u0004\b\u0013\u0010\u0011R \u0010\u0005\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u000f\"\u0004\b\u0015\u0010\u0011R \u0010\u0006\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u000f\"\u0004\b\u0017\u0010\u0011R \u0010\u0007\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\u000f\"\u0004\b\u0019\u0010\u0011R&\u0010\b\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\t8\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR \u0010\n\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001e\u0010\u000f\"\u0004\b\u001f\u0010\u0011R \u0010\u000b\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b \u0010\u000f\"\u0004\b!\u0010\u0011¨\u00061"}, d2 = {"Lcom/transsion/postdetail/bean/CommentBody;", "", "content", "", "rootCommentId", "replyedCommentId", "replyedUid", "topicId", "imageList", "", "bucket", "topicType", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V", "getContent", "()Ljava/lang/String;", "setContent", "(Ljava/lang/String;)V", "getRootCommentId", "setRootCommentId", "getReplyedCommentId", "setReplyedCommentId", "getReplyedUid", "setReplyedUid", "getTopicId", "setTopicId", "getImageList", "()Ljava/util/List;", "setImageList", "(Ljava/util/List;)V", "getBucket", "setBucket", "getTopicType", "setTopicType", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "copy", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "hashCode", "", "toString", "PostDetail_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class CommentBody {

    @SerializedName("bucket")
    private String bucket;

    @SerializedName("content")
    private String content;

    @SerializedName("imageList")
    private List<String> imageList;

    @SerializedName("replyedCommentId")
    private String replyedCommentId;

    @SerializedName("replyedUid")
    private String replyedUid;

    @SerializedName("rootCommentId")
    private String rootCommentId;

    @SerializedName("topicId")
    private String topicId;

    @SerializedName("topicType")
    private String topicType;

    public CommentBody(String str, String str2, String str3, String str4, String str5, List<String> list, String str6, String str7) {
        this.content = str;
        this.rootCommentId = str2;
        this.replyedCommentId = str3;
        this.replyedUid = str4;
        this.topicId = str5;
        this.imageList = list;
        this.bucket = str6;
        this.topicType = str7;
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getContent() {
        return this.content;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getRootCommentId() {
        return this.rootCommentId;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getReplyedCommentId() {
        return this.replyedCommentId;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getReplyedUid() {
        return this.replyedUid;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getTopicId() {
        return this.topicId;
    }

    public final List<String> component6() {
        return this.imageList;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final String getBucket() {
        return this.bucket;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final String getTopicType() {
        return this.topicType;
    }

    public final CommentBody copy(String content, String rootCommentId, String replyedCommentId, String replyedUid, String topicId, List<String> imageList, String bucket, String topicType) {
        return new CommentBody(content, rootCommentId, replyedCommentId, replyedUid, topicId, imageList, bucket, topicType);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof CommentBody)) {
            return false;
        }
        CommentBody commentBody = (CommentBody) other;
        return Intrinsics.c(this.content, commentBody.content) && Intrinsics.c(this.rootCommentId, commentBody.rootCommentId) && Intrinsics.c(this.replyedCommentId, commentBody.replyedCommentId) && Intrinsics.c(this.replyedUid, commentBody.replyedUid) && Intrinsics.c(this.topicId, commentBody.topicId) && Intrinsics.c(this.imageList, commentBody.imageList) && Intrinsics.c(this.bucket, commentBody.bucket) && Intrinsics.c(this.topicType, commentBody.topicType);
    }

    public final String getBucket() {
        return this.bucket;
    }

    public final String getContent() {
        return this.content;
    }

    public final List<String> getImageList() {
        return this.imageList;
    }

    public final String getReplyedCommentId() {
        return this.replyedCommentId;
    }

    public final String getReplyedUid() {
        return this.replyedUid;
    }

    public final String getRootCommentId() {
        return this.rootCommentId;
    }

    public final String getTopicId() {
        return this.topicId;
    }

    public final String getTopicType() {
        return this.topicType;
    }

    public int hashCode() {
        String str = this.content;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.rootCommentId;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.replyedCommentId;
        int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.replyedUid;
        int iHashCode4 = (iHashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.topicId;
        int iHashCode5 = (iHashCode4 + (str5 == null ? 0 : str5.hashCode())) * 31;
        List<String> list = this.imageList;
        int iHashCode6 = (iHashCode5 + (list == null ? 0 : list.hashCode())) * 31;
        String str6 = this.bucket;
        int iHashCode7 = (iHashCode6 + (str6 == null ? 0 : str6.hashCode())) * 31;
        String str7 = this.topicType;
        return iHashCode7 + (str7 != null ? str7.hashCode() : 0);
    }

    public final void setBucket(String str) {
        this.bucket = str;
    }

    public final void setContent(String str) {
        this.content = str;
    }

    public final void setImageList(List<String> list) {
        this.imageList = list;
    }

    public final void setReplyedCommentId(String str) {
        this.replyedCommentId = str;
    }

    public final void setReplyedUid(String str) {
        this.replyedUid = str;
    }

    public final void setRootCommentId(String str) {
        this.rootCommentId = str;
    }

    public final void setTopicId(String str) {
        this.topicId = str;
    }

    public final void setTopicType(String str) {
        this.topicType = str;
    }

    public String toString() {
        return "CommentBody(content=" + this.content + ", rootCommentId=" + this.rootCommentId + ", replyedCommentId=" + this.replyedCommentId + ", replyedUid=" + this.replyedUid + ", topicId=" + this.topicId + ", imageList=" + this.imageList + ", bucket=" + this.bucket + ", topicType=" + this.topicType + ")";
    }
}
