package com.transsion.publish.api.bean;

import androidx.annotation.Keep;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0006\n\u0002\b\f\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\b\u00104\u001a\u00020\u0005H\u0016R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001a\u0010\n\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\u0007\"\u0004\b\f\u0010\tR\u001a\u0010\r\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u0007\"\u0004\b\u000f\u0010\tR\u001a\u0010\u0010\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0007\"\u0004\b\u0012\u0010\tR\u001a\u0010\u0013\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0007\"\u0004\b\u0015\u0010\tR\u001c\u0010\u0016\u001a\u0004\u0018\u00010\u0017X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001bR\u001c\u0010\u001c\u001a\u0004\u0018\u00010\u001dX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001e\u0010\u001f\"\u0004\b \u0010!R\u001a\u0010\"\u001a\u00020#X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b$\u0010%\"\u0004\b&\u0010'R\u001a\u0010(\u001a\u00020)X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b*\u0010+\"\u0004\b,\u0010-R\u001a\u0010.\u001a\u00020)X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b/\u0010+\"\u0004\b0\u0010-R\u001a\u00101\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b2\u0010\u0007\"\u0004\b3\u0010\t¨\u00065"}, d2 = {"Lcom/transsion/publish/api/bean/RequestPostEntity;", "Ljava/io/Serializable;", "<init>", "()V", CampaignEx.JSON_KEY_TITLE, "", "getTitle", "()Ljava/lang/String;", "setTitle", "(Ljava/lang/String;)V", "content", "getContent", "setContent", "groupId", "getGroupId", "setGroupId", "subjectId", "getSubjectId", "setSubjectId", "score", "getScore", "setScore", "link", "Lcom/transsion/publish/api/bean/MediaLinkEntity;", "getLink", "()Lcom/transsion/publish/api/bean/MediaLinkEntity;", "setLink", "(Lcom/transsion/publish/api/bean/MediaLinkEntity;)V", "media", "Lcom/transsion/publish/api/bean/RequestPostMediaEntity;", "getMedia", "()Lcom/transsion/publish/api/bean/RequestPostMediaEntity;", "setMedia", "(Lcom/transsion/publish/api/bean/RequestPostMediaEntity;)V", "publishType", "", "getPublishType", "()I", "setPublishType", "(I)V", "lon", "", "getLon", "()D", "setLon", "(D)V", "lat", "getLat", "setLat", "poiName", "getPoiName", "setPoiName", "toString", "PublishApi_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class RequestPostEntity implements Serializable {
    private double lat;
    private MediaLinkEntity link;
    private double lon;
    private RequestPostMediaEntity media;
    private int publishType;
    private String title = "";
    private String content = "";
    private String groupId = "";
    private String subjectId = "0";
    private String score = "0";
    private String poiName = "";

    public final String getContent() {
        return this.content;
    }

    public final String getGroupId() {
        return this.groupId;
    }

    public final double getLat() {
        return this.lat;
    }

    public final MediaLinkEntity getLink() {
        return this.link;
    }

    public final double getLon() {
        return this.lon;
    }

    public final RequestPostMediaEntity getMedia() {
        return this.media;
    }

    public final String getPoiName() {
        return this.poiName;
    }

    public final int getPublishType() {
        return this.publishType;
    }

    public final String getScore() {
        return this.score;
    }

    public final String getSubjectId() {
        return this.subjectId;
    }

    public final String getTitle() {
        return this.title;
    }

    public final void setContent(String str) {
        Intrinsics.h(str, "<set-?>");
        this.content = str;
    }

    public final void setGroupId(String str) {
        Intrinsics.h(str, "<set-?>");
        this.groupId = str;
    }

    public final void setLat(double d11) {
        this.lat = d11;
    }

    public final void setLink(MediaLinkEntity mediaLinkEntity) {
        this.link = mediaLinkEntity;
    }

    public final void setLon(double d11) {
        this.lon = d11;
    }

    public final void setMedia(RequestPostMediaEntity requestPostMediaEntity) {
        this.media = requestPostMediaEntity;
    }

    public final void setPoiName(String str) {
        Intrinsics.h(str, "<set-?>");
        this.poiName = str;
    }

    public final void setPublishType(int i11) {
        this.publishType = i11;
    }

    public final void setScore(String str) {
        Intrinsics.h(str, "<set-?>");
        this.score = str;
    }

    public final void setSubjectId(String str) {
        Intrinsics.h(str, "<set-?>");
        this.subjectId = str;
    }

    public final void setTitle(String str) {
        Intrinsics.h(str, "<set-?>");
        this.title = str;
    }

    public String toString() {
        return "RequestPostEntity(title='" + this.title + "', content='" + this.content + "', groupId='" + this.groupId + "', subjectId='" + this.subjectId + "', score='" + this.score + "', link=" + this.link + ", media=" + this.media + ", publishType=" + this.publishType + ",lon=" + this.lon + ",lat=" + this.lat + ",poiName=" + this.poiName + ")";
    }
}
