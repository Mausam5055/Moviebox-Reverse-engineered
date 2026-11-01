package com.transsion.publish.api;

import androidx.annotation.Keep;
import com.hisavana.common.tracking.TrackingKey;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import in.a;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u000f\n\u0002\u0010\u000b\n\u0002\b\"\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002B\u0007¢\u0006\u0004\b\u0003\u0010\u0004R$\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0006\u0010\u0007\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR$\u0010\f\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\f\u0010\u0007\u001a\u0004\b\r\u0010\t\"\u0004\b\u000e\u0010\u000bR$\u0010\u000f\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000f\u0010\u0007\u001a\u0004\b\u0010\u0010\t\"\u0004\b\u0011\u0010\u000bR$\u0010\u0012\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0012\u0010\u0007\u001a\u0004\b\u0013\u0010\t\"\u0004\b\u0014\u0010\u000bR\"\u0010\u0016\u001a\u00020\u00158\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001bR\"\u0010\u001c\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001c\u0010\u0007\u001a\u0004\b\u001d\u0010\t\"\u0004\b\u001e\u0010\u000bR\"\u0010\u001f\u001a\u00020\u00158\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001f\u0010\u0017\u001a\u0004\b \u0010\u0019\"\u0004\b!\u0010\u001bR$\u0010\"\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\"\u0010\u0007\u001a\u0004\b#\u0010\t\"\u0004\b$\u0010\u000bR$\u0010%\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b%\u0010\u0007\u001a\u0004\b&\u0010\t\"\u0004\b'\u0010\u000bR$\u0010(\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b(\u0010\u0007\u001a\u0004\b)\u0010\t\"\u0004\b*\u0010\u000bR$\u0010+\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b+\u0010\u0007\u001a\u0004\b,\u0010\t\"\u0004\b-\u0010\u000bR$\u0010.\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b.\u0010\u0007\u001a\u0004\b/\u0010\t\"\u0004\b0\u0010\u000bR$\u00101\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b1\u0010\u0007\u001a\u0004\b2\u0010\t\"\u0004\b3\u0010\u000bR$\u00104\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b4\u0010\u0007\u001a\u0004\b5\u0010\t\"\u0004\b6\u0010\u000b¨\u00067"}, d2 = {"Lcom/transsion/publish/api/GroupBean;", "Ljava/io/Serializable;", "Lin/a;", "<init>", "()V", "", "groupId", "Ljava/lang/String;", "getGroupId", "()Ljava/lang/String;", "setGroupId", "(Ljava/lang/String;)V", "name", "getName", "setName", "des", "getDes", "setDes", "avatar", "getAvatar", "setAvatar", "", "hasJoin", "Z", "getHasJoin", "()Z", "setHasJoin", "(Z)V", "num", "getNum", "setNum", "select", "getSelect", "setSelect", TrackingKey.DESCRIPTION, "getDescription", "setDescription", "creatorId", "getCreatorId", "setCreatorId", "userCount", "getUserCount", "setUserCount", "postCount", "getPostCount", "setPostCount", "lastPostTime", "getLastPostTime", "setLastPostTime", "newPostCount", "getNewPostCount", "setNewPostCount", "ops", "getOps", "setOps", "PublishApi_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class GroupBean extends a implements Serializable {
    private String avatar;
    private String creatorId;
    private String des;
    private String description;
    private String groupId;
    private boolean hasJoin;
    private String lastPostTime;
    private String name;
    private String newPostCount;
    private String num = "0";
    private String ops;
    private String postCount;
    private boolean select;
    private String userCount;

    public final String getAvatar() {
        return this.avatar;
    }

    public final String getCreatorId() {
        return this.creatorId;
    }

    public final String getDes() {
        return this.des;
    }

    public final String getDescription() {
        return this.description;
    }

    public final String getGroupId() {
        return this.groupId;
    }

    public final boolean getHasJoin() {
        return this.hasJoin;
    }

    public final String getLastPostTime() {
        return this.lastPostTime;
    }

    public final String getName() {
        return this.name;
    }

    public final String getNewPostCount() {
        return this.newPostCount;
    }

    public final String getNum() {
        return this.num;
    }

    public final String getOps() {
        return this.ops;
    }

    public final String getPostCount() {
        return this.postCount;
    }

    public final boolean getSelect() {
        return this.select;
    }

    public final String getUserCount() {
        return this.userCount;
    }

    public final void setAvatar(String str) {
        this.avatar = str;
    }

    public final void setCreatorId(String str) {
        this.creatorId = str;
    }

    public final void setDes(String str) {
        this.des = str;
    }

    public final void setDescription(String str) {
        this.description = str;
    }

    public final void setGroupId(String str) {
        this.groupId = str;
    }

    public final void setHasJoin(boolean z10) {
        this.hasJoin = z10;
    }

    public final void setLastPostTime(String str) {
        this.lastPostTime = str;
    }

    public final void setName(String str) {
        this.name = str;
    }

    public final void setNewPostCount(String str) {
        this.newPostCount = str;
    }

    public final void setNum(String str) {
        Intrinsics.h(str, "<set-?>");
        this.num = str;
    }

    public final void setOps(String str) {
        this.ops = str;
    }

    public final void setPostCount(String str) {
        this.postCount = str;
    }

    public final void setSelect(boolean z10) {
        this.select = z10;
    }

    public final void setUserCount(String str) {
        this.userCount = str;
    }
}
