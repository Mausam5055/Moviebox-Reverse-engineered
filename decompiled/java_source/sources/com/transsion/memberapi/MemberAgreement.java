package com.transsion.memberapi;

import androidx.annotation.Keep;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Keep
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0011\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003¢\u0006\u0004\b\u0006\u0010\u0007J\t\u0010\u0010\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0011\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0012\u001a\u00020\u0003HÆ\u0003J'\u0010\u0013\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u0014\u001a\u00020\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017HÖ\u0003J\t\u0010\u0018\u001a\u00020\u0019HÖ\u0001J\t\u0010\u001a\u001a\u00020\u0003HÖ\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\t\"\u0004\b\r\u0010\u000bR\u001a\u0010\u0005\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\t\"\u0004\b\u000f\u0010\u000b¨\u0006\u001b"}, d2 = {"Lcom/transsion/memberapi/MemberAgreement;", "Ljava/io/Serializable;", CampaignEx.JSON_KEY_TITLE, "", NativeComponentConstants.KEY_COMPONENT_TYPE, "content", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getTitle", "()Ljava/lang/String;", "setTitle", "(Ljava/lang/String;)V", "getType", "setType", "getContent", "setContent", "component1", "component2", "component3", "copy", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "", "toString", "MemberApi_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class MemberAgreement implements Serializable {
    private String content;
    private String title;
    private String type;

    public MemberAgreement(String title, String type, String content) {
        Intrinsics.h(title, "title");
        Intrinsics.h(type, "type");
        Intrinsics.h(content, "content");
        this.title = title;
        this.type = type;
        this.content = content;
    }

    public static /* synthetic */ MemberAgreement copy$default(MemberAgreement memberAgreement, String str, String str2, String str3, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = memberAgreement.title;
        }
        if ((i11 & 2) != 0) {
            str2 = memberAgreement.type;
        }
        if ((i11 & 4) != 0) {
            str3 = memberAgreement.content;
        }
        return memberAgreement.copy(str, str2, str3);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getTitle() {
        return this.title;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getType() {
        return this.type;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getContent() {
        return this.content;
    }

    public final MemberAgreement copy(String title, String type, String content) {
        Intrinsics.h(title, "title");
        Intrinsics.h(type, "type");
        Intrinsics.h(content, "content");
        return new MemberAgreement(title, type, content);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof MemberAgreement)) {
            return false;
        }
        MemberAgreement memberAgreement = (MemberAgreement) other;
        return Intrinsics.c(this.title, memberAgreement.title) && Intrinsics.c(this.type, memberAgreement.type) && Intrinsics.c(this.content, memberAgreement.content);
    }

    public final String getContent() {
        return this.content;
    }

    public final String getTitle() {
        return this.title;
    }

    public final String getType() {
        return this.type;
    }

    public int hashCode() {
        return (((this.title.hashCode() * 31) + this.type.hashCode()) * 31) + this.content.hashCode();
    }

    public final void setContent(String str) {
        Intrinsics.h(str, "<set-?>");
        this.content = str;
    }

    public final void setTitle(String str) {
        Intrinsics.h(str, "<set-?>");
        this.title = str;
    }

    public final void setType(String str) {
        Intrinsics.h(str, "<set-?>");
        this.type = str;
    }

    public String toString() {
        return "MemberAgreement(title=" + this.title + ", type=" + this.type + ", content=" + this.content + ")";
    }
}
