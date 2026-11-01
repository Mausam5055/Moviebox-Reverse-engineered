package com.transsion.moviedetailapi.bean;

import androidx.annotation.Keep;
import com.cloud.config.utils.CommonUtils;
import com.google.gson.annotations.SerializedName;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import in.c;
import java.io.Serializable;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import n6.a;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010!\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\bF\b\u0007\u0018\u0000 `2\u00020\u00012\u00020\u0002:\u0001aBã\u0001\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\n\u001a\u0004\u0018\u00010\t\u0012\b\b\u0002\u0010\u000b\u001a\u00020\t\u0012\b\u0010\r\u001a\u0004\u0018\u00010\f\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0011\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0012\u001a\u0004\u0018\u00010\u0003\u0012\b\b\u0002\u0010\u0013\u001a\u00020\t\u0012\u0010\u0010\u0015\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0000\u0018\u00010\u0014\u0012\b\u0010\u0016\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0017\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0018\u001a\u0004\u0018\u00010\u0003\u0012\u0010\u0010\u001a\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0019\u0018\u00010\u0014\u0012\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\f\u0012\n\b\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u001c¢\u0006\u0004\b\u001e\u0010\u001fJ\r\u0010 \u001a\u00020\f¢\u0006\u0004\b \u0010!R$\u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0004\u0010\"\u001a\u0004\b#\u0010$\"\u0004\b%\u0010&R$\u0010\u0005\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0005\u0010\"\u001a\u0004\b'\u0010$\"\u0004\b(\u0010&R$\u0010\u0006\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0006\u0010\"\u001a\u0004\b)\u0010$\"\u0004\b*\u0010&R$\u0010\b\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\b\u0010+\u001a\u0004\b,\u0010-\"\u0004\b.\u0010/R$\u0010\n\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\n\u00100\u001a\u0004\b1\u00102\"\u0004\b3\u00104R\"\u0010\u000b\u001a\u00020\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u000b\u00105\u001a\u0004\b6\u00107\"\u0004\b8\u00109R$\u0010\r\u001a\u0004\u0018\u00010\f8\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\r\u0010:\u001a\u0004\b;\u0010<\"\u0004\b=\u0010>R$\u0010\u000e\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u000e\u0010\"\u001a\u0004\b?\u0010$\"\u0004\b@\u0010&R$\u0010\u000f\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u000f\u0010\"\u001a\u0004\bA\u0010$\"\u0004\bB\u0010&R$\u0010\u0010\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0010\u0010\"\u001a\u0004\bC\u0010$\"\u0004\bD\u0010&R$\u0010\u0011\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0011\u0010\"\u001a\u0004\bE\u0010$\"\u0004\bF\u0010&R$\u0010\u0012\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0012\u0010\"\u001a\u0004\bG\u0010$\"\u0004\bH\u0010&R\"\u0010\u0013\u001a\u00020\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0013\u00105\u001a\u0004\bI\u00107\"\u0004\bJ\u00109R,\u0010\u0015\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0000\u0018\u00010\u00148\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0015\u0010K\u001a\u0004\bL\u0010M\"\u0004\bN\u0010OR$\u0010\u0016\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0016\u0010\"\u001a\u0004\bP\u0010$\"\u0004\bQ\u0010&R$\u0010\u0017\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0017\u0010\"\u001a\u0004\bR\u0010$\"\u0004\bS\u0010&R$\u0010\u0018\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0018\u0010\"\u001a\u0004\bT\u0010$\"\u0004\bU\u0010&R,\u0010\u001a\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0019\u0018\u00010\u00148\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u001a\u0010K\u001a\u0004\bV\u0010M\"\u0004\bW\u0010OR$\u0010\u001b\u001a\u0004\u0018\u00010\f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001b\u0010:\u001a\u0004\b\u001b\u0010<\"\u0004\bX\u0010>R$\u0010\u001d\u001a\u0004\u0018\u00010\u001c8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001d\u0010Y\u001a\u0004\bZ\u0010[\"\u0004\b\\\u0010]R\u0014\u0010_\u001a\u00020\t8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b^\u00107¨\u0006b"}, d2 = {"Lcom/transsion/moviedetailapi/bean/CommentBean;", "Ljava/io/Serializable;", "Ln6/a;", "", "avatarUrl", "commentId", "content", "", "createdAt", "", "gender", "likeCnt", "", "likeStatu", "nickName", "replyedCommentId", "replyedNickName", "replyedUid", "rootCommentId", "subCommentCnt", "", "subComments", "topicId", "topicType", CommonUtils.PARAM_UID, "Lcom/transsion/moviedetailapi/bean/Cover;", "imageList", "isHot", "Lin/c;", "localParam", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;ILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Boolean;Lin/c;)V", "isSubComment", "()Z", "Ljava/lang/String;", "getAvatarUrl", "()Ljava/lang/String;", "setAvatarUrl", "(Ljava/lang/String;)V", "getCommentId", "setCommentId", "getContent", "setContent", "Ljava/lang/Long;", "getCreatedAt", "()Ljava/lang/Long;", "setCreatedAt", "(Ljava/lang/Long;)V", "Ljava/lang/Integer;", "getGender", "()Ljava/lang/Integer;", "setGender", "(Ljava/lang/Integer;)V", "I", "getLikeCnt", "()I", "setLikeCnt", "(I)V", "Ljava/lang/Boolean;", "getLikeStatu", "()Ljava/lang/Boolean;", "setLikeStatu", "(Ljava/lang/Boolean;)V", "getNickName", "setNickName", "getReplyedCommentId", "setReplyedCommentId", "getReplyedNickName", "setReplyedNickName", "getReplyedUid", "setReplyedUid", "getRootCommentId", "setRootCommentId", "getSubCommentCnt", "setSubCommentCnt", "Ljava/util/List;", "getSubComments", "()Ljava/util/List;", "setSubComments", "(Ljava/util/List;)V", "getTopicId", "setTopicId", "getTopicType", "setTopicType", "getUid", "setUid", "getImageList", "setImageList", "setHot", "Lin/c;", "getLocalParam", "()Lin/c;", "setLocalParam", "(Lin/c;)V", "getItemType", "itemType", "Companion", "a", "MovieDetailApi_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class CommentBean implements Serializable, a {
    public static final int VIEW_TYPE_COMMENT = 0;
    public static final int VIEW_TYPE_COMMENT_HOT = 4;
    public static final int VIEW_TYPE_COMMENT_SUB = 1;
    public static final int VIEW_TYPE_COMMENT_SUB_MORE = 2;
    public static final int VIEW_TYPE_UNKNOWN = 3;

    @SerializedName("avatarUrl")
    private String avatarUrl;

    @SerializedName("commentId")
    private String commentId;

    @SerializedName("content")
    private String content;

    @SerializedName("createdAt")
    private Long createdAt;

    @SerializedName("gender")
    private Integer gender;

    @SerializedName("imageList")
    private List<Cover> imageList;
    private Boolean isHot;

    @SerializedName("likeCnt")
    private int likeCnt;

    @SerializedName("likeStatu")
    private Boolean likeStatu;
    private c localParam;

    @SerializedName("nickName")
    private String nickName;

    @SerializedName("replyedCommentId")
    private String replyedCommentId;

    @SerializedName("replyedNickName")
    private String replyedNickName;

    @SerializedName("replyedUid")
    private String replyedUid;

    @SerializedName("rootCommentId")
    private String rootCommentId;

    @SerializedName("subCommentCnt")
    private int subCommentCnt;

    @SerializedName("subComments")
    private List<CommentBean> subComments;

    @SerializedName("topicId")
    private String topicId;

    @SerializedName("topicType")
    private String topicType;

    @SerializedName(CommonUtils.PARAM_UID)
    private String uid;

    public CommentBean(String str, String str2, String str3, Long l11, Integer num, int i11, Boolean bool, String str4, String str5, String str6, String str7, String str8, int i12, List<CommentBean> list, String str9, String str10, String str11, List<Cover> list2, Boolean bool2, c cVar) {
        this.avatarUrl = str;
        this.commentId = str2;
        this.content = str3;
        this.createdAt = l11;
        this.gender = num;
        this.likeCnt = i11;
        this.likeStatu = bool;
        this.nickName = str4;
        this.replyedCommentId = str5;
        this.replyedNickName = str6;
        this.replyedUid = str7;
        this.rootCommentId = str8;
        this.subCommentCnt = i12;
        this.subComments = list;
        this.topicId = str9;
        this.topicType = str10;
        this.uid = str11;
        this.imageList = list2;
        this.isHot = bool2;
        this.localParam = cVar;
    }

    public /* synthetic */ CommentBean(String str, String str2, String str3, Long l11, Integer num, int i11, Boolean bool, String str4, String str5, String str6, String str7, String str8, int i12, List list, String str9, String str10, String str11, List list2, Boolean bool2, c cVar, int i13, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, str3, l11, num, (i13 & 32) != 0 ? 0 : i11, bool, str4, str5, str6, str7, str8, (i13 & 4096) != 0 ? 0 : i12, list, str9, str10, str11, list2, (262144 & i13) != 0 ? Boolean.FALSE : bool2, (i13 & 524288) != 0 ? null : cVar);
    }

    public final String getAvatarUrl() {
        return this.avatarUrl;
    }

    public final String getCommentId() {
        return this.commentId;
    }

    public final String getContent() {
        return this.content;
    }

    public final Long getCreatedAt() {
        return this.createdAt;
    }

    public final Integer getGender() {
        return this.gender;
    }

    public final List<Cover> getImageList() {
        return this.imageList;
    }

    @Override // n6.a
    public int getItemType() {
        if (Intrinsics.c(this.isHot, Boolean.TRUE)) {
            return 4;
        }
        return isSubComment() ? 1 : 0;
    }

    public final int getLikeCnt() {
        return this.likeCnt;
    }

    public final Boolean getLikeStatu() {
        return this.likeStatu;
    }

    public final c getLocalParam() {
        return this.localParam;
    }

    public final String getNickName() {
        return this.nickName;
    }

    public final String getReplyedCommentId() {
        return this.replyedCommentId;
    }

    public final String getReplyedNickName() {
        return this.replyedNickName;
    }

    public final String getReplyedUid() {
        return this.replyedUid;
    }

    public final String getRootCommentId() {
        return this.rootCommentId;
    }

    public final int getSubCommentCnt() {
        return this.subCommentCnt;
    }

    public final List<CommentBean> getSubComments() {
        return this.subComments;
    }

    public final String getTopicId() {
        return this.topicId;
    }

    public final String getTopicType() {
        return this.topicType;
    }

    public final String getUid() {
        return this.uid;
    }

    /* JADX INFO: renamed from: isHot, reason: from getter */
    public final Boolean getIsHot() {
        return this.isHot;
    }

    public final boolean isSubComment() {
        c cVar;
        return !Intrinsics.c(this.rootCommentId, "0") && ((cVar = this.localParam) == null || !(cVar == null || cVar.a()));
    }

    public final void setAvatarUrl(String str) {
        this.avatarUrl = str;
    }

    public final void setCommentId(String str) {
        this.commentId = str;
    }

    public final void setContent(String str) {
        this.content = str;
    }

    public final void setCreatedAt(Long l11) {
        this.createdAt = l11;
    }

    public final void setGender(Integer num) {
        this.gender = num;
    }

    public final void setHot(Boolean bool) {
        this.isHot = bool;
    }

    public final void setImageList(List<Cover> list) {
        this.imageList = list;
    }

    public final void setLikeCnt(int i11) {
        this.likeCnt = i11;
    }

    public final void setLikeStatu(Boolean bool) {
        this.likeStatu = bool;
    }

    public final void setLocalParam(c cVar) {
        this.localParam = cVar;
    }

    public final void setNickName(String str) {
        this.nickName = str;
    }

    public final void setReplyedCommentId(String str) {
        this.replyedCommentId = str;
    }

    public final void setReplyedNickName(String str) {
        this.replyedNickName = str;
    }

    public final void setReplyedUid(String str) {
        this.replyedUid = str;
    }

    public final void setRootCommentId(String str) {
        this.rootCommentId = str;
    }

    public final void setSubCommentCnt(int i11) {
        this.subCommentCnt = i11;
    }

    public final void setSubComments(List<CommentBean> list) {
        this.subComments = list;
    }

    public final void setTopicId(String str) {
        this.topicId = str;
    }

    public final void setTopicType(String str) {
        this.topicType = str;
    }

    public final void setUid(String str) {
        this.uid = str;
    }
}
