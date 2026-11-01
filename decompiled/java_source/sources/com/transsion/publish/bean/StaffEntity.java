package com.transsion.publish.bean;

import androidx.annotation.Keep;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u000f\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001e\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0010\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u001c\u0010\u0011\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u0007\"\u0004\b\u0013\u0010\tR\u001c\u0010\u0014\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0007\"\u0004\b\u0016\u0010\tR\u001c\u0010\u0017\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\u0007\"\u0004\b\u0019\u0010\t¨\u0006\u001a"}, d2 = {"Lcom/transsion/publish/bean/StaffEntity;", "Ljava/io/Serializable;", "<init>", "()V", "releaseDate", "", "getReleaseDate", "()Ljava/lang/String;", "setReleaseDate", "(Ljava/lang/String;)V", "staffType", "", "getStaffType", "()Ljava/lang/Integer;", "setStaffType", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "name", "getName", "setName", "character", "getCharacter", "setCharacter", "avatarUrl", "getAvatarUrl", "setAvatarUrl", "Publish_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class StaffEntity implements Serializable {
    private String avatarUrl;
    private String character;
    private String name;
    private String releaseDate;
    private Integer staffType;

    public final String getAvatarUrl() {
        return this.avatarUrl;
    }

    public final String getCharacter() {
        return this.character;
    }

    public final String getName() {
        return this.name;
    }

    public final String getReleaseDate() {
        return this.releaseDate;
    }

    public final Integer getStaffType() {
        return this.staffType;
    }

    public final void setAvatarUrl(String str) {
        this.avatarUrl = str;
    }

    public final void setCharacter(String str) {
        this.character = str;
    }

    public final void setName(String str) {
        this.name = str;
    }

    public final void setReleaseDate(String str) {
        this.releaseDate = str;
    }

    public final void setStaffType(Integer num) {
        this.staffType = num;
    }
}
