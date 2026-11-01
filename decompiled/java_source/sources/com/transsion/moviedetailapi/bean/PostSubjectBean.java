package com.transsion.moviedetailapi.bean;

import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.google.gson.annotations.SerializedName;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0013\n\u0002\u0010\u000b\n\u0002\b\n\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0087\b\u0018\u00002\u00020\u0001B5\u0012\u000e\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\b\u0010\t\u001a\u0004\u0018\u00010\n¢\u0006\u0004\b\u000b\u0010\fJ\u0011\u0010\"\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010#\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u000b\u0010$\u001a\u0004\u0018\u00010\bHÆ\u0003J\u000b\u0010%\u001a\u0004\u0018\u00010\nHÆ\u0003J?\u0010&\u001a\u00020\u00002\u0010\b\u0002\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\nHÆ\u0001J\u0013\u0010'\u001a\u00020\u001e2\b\u0010(\u001a\u0004\u0018\u00010)HÖ\u0003J\t\u0010*\u001a\u00020+HÖ\u0001J\t\u0010,\u001a\u00020-HÖ\u0001R&\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R \u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R \u0010\u0007\u001a\u0004\u0018\u00010\b8\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R \u0010\t\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001cR\u001a\u0010\u001d\u001a\u00020\u001eX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001d\u0010\u001f\"\u0004\b \u0010!¨\u0006."}, d2 = {"Lcom/transsion/moviedetailapi/bean/PostSubjectBean;", "Ljava/io/Serializable;", "items", "", "Lcom/transsion/moviedetailapi/bean/PostSubjectItem;", "pager", "Lcom/transsion/moviedetailapi/bean/Pager;", "subject", "Lcom/transsion/moviedetailapi/bean/Subject;", "group", "Lcom/transsion/moviedetailapi/bean/Group;", "<init>", "(Ljava/util/List;Lcom/transsion/moviedetailapi/bean/Pager;Lcom/transsion/moviedetailapi/bean/Subject;Lcom/transsion/moviedetailapi/bean/Group;)V", "getItems", "()Ljava/util/List;", "setItems", "(Ljava/util/List;)V", "getPager", "()Lcom/transsion/moviedetailapi/bean/Pager;", "setPager", "(Lcom/transsion/moviedetailapi/bean/Pager;)V", "getSubject", "()Lcom/transsion/moviedetailapi/bean/Subject;", "setSubject", "(Lcom/transsion/moviedetailapi/bean/Subject;)V", "getGroup", "()Lcom/transsion/moviedetailapi/bean/Group;", "setGroup", "(Lcom/transsion/moviedetailapi/bean/Group;)V", "isRefresh", "", "()Z", "setRefresh", "(Z)V", "component1", "component2", "component3", "component4", "copy", "equals", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "", "toString", "", "MovieDetailApi_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class PostSubjectBean implements Serializable {

    @SerializedName("group")
    private Group group;
    private transient boolean isRefresh;

    @SerializedName("items")
    private List<PostSubjectItem> items;

    @SerializedName("pager")
    private Pager pager;

    @SerializedName("subject")
    private Subject subject;

    public PostSubjectBean(List<PostSubjectItem> list, Pager pager, Subject subject, Group group) {
        this.items = list;
        this.pager = pager;
        this.subject = subject;
        this.group = group;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ PostSubjectBean copy$default(PostSubjectBean postSubjectBean, List list, Pager pager, Subject subject, Group group, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            list = postSubjectBean.items;
        }
        if ((i11 & 2) != 0) {
            pager = postSubjectBean.pager;
        }
        if ((i11 & 4) != 0) {
            subject = postSubjectBean.subject;
        }
        if ((i11 & 8) != 0) {
            group = postSubjectBean.group;
        }
        return postSubjectBean.copy(list, pager, subject, group);
    }

    public final List<PostSubjectItem> component1() {
        return this.items;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final Pager getPager() {
        return this.pager;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final Subject getSubject() {
        return this.subject;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final Group getGroup() {
        return this.group;
    }

    public final PostSubjectBean copy(List<PostSubjectItem> items, Pager pager, Subject subject, Group group) {
        return new PostSubjectBean(items, pager, subject, group);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof PostSubjectBean)) {
            return false;
        }
        PostSubjectBean postSubjectBean = (PostSubjectBean) other;
        return Intrinsics.c(this.items, postSubjectBean.items) && Intrinsics.c(this.pager, postSubjectBean.pager) && Intrinsics.c(this.subject, postSubjectBean.subject) && Intrinsics.c(this.group, postSubjectBean.group);
    }

    public final Group getGroup() {
        return this.group;
    }

    public final List<PostSubjectItem> getItems() {
        return this.items;
    }

    public final Pager getPager() {
        return this.pager;
    }

    public final Subject getSubject() {
        return this.subject;
    }

    public int hashCode() {
        List<PostSubjectItem> list = this.items;
        int iHashCode = (list == null ? 0 : list.hashCode()) * 31;
        Pager pager = this.pager;
        int iHashCode2 = (iHashCode + (pager == null ? 0 : pager.hashCode())) * 31;
        Subject subject = this.subject;
        int iHashCode3 = (iHashCode2 + (subject == null ? 0 : subject.hashCode())) * 31;
        Group group = this.group;
        return iHashCode3 + (group != null ? group.hashCode() : 0);
    }

    /* JADX INFO: renamed from: isRefresh, reason: from getter */
    public final boolean getIsRefresh() {
        return this.isRefresh;
    }

    public final void setGroup(Group group) {
        this.group = group;
    }

    public final void setItems(List<PostSubjectItem> list) {
        this.items = list;
    }

    public final void setPager(Pager pager) {
        this.pager = pager;
    }

    public final void setRefresh(boolean z10) {
        this.isRefresh = z10;
    }

    public final void setSubject(Subject subject) {
        this.subject = subject;
    }

    public String toString() {
        return "PostSubjectBean(items=" + this.items + ", pager=" + this.pager + ", subject=" + this.subject + ", group=" + this.group + ")";
    }
}
