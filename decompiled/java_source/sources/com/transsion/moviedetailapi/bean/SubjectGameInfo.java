package com.transsion.moviedetailapi.bean;

import androidx.annotation.Keep;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.transsion.bean.GameInfoType;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B\u001f\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\u000b\u0010\u0011\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0012\u001a\u0004\u0018\u00010\u0003HÆ\u0003J!\u0010\u0013\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\u0014\u001a\u00020\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017HÖ\u0003J\t\u0010\u0018\u001a\u00020\u0019HÖ\u0001J\t\u0010\u001a\u001a\u00020\u0003HÖ\u0001R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\b\"\u0004\b\f\u0010\nR\u0013\u0010\r\u001a\u0004\u0018\u00010\u000e8F¢\u0006\u0006\u001a\u0004\b\u000f\u0010\u0010¨\u0006\u001b"}, d2 = {"Lcom/transsion/moviedetailapi/bean/SubjectGameInfo;", "Ljava/io/Serializable;", "itemId", "", NativeComponentConstants.KEY_COMPONENT_TYPE, "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "getItemId", "()Ljava/lang/String;", "setItemId", "(Ljava/lang/String;)V", "getType", "setType", "gameInfoType", "Lcom/transsion/bean/GameInfoType;", "getGameInfoType", "()Lcom/transsion/bean/GameInfoType;", "component1", "component2", "copy", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "", "toString", "MovieDetailApi_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class SubjectGameInfo implements Serializable {
    private String itemId;
    private String type;

    /* JADX WARN: Multi-variable type inference failed */
    public SubjectGameInfo() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }

    public SubjectGameInfo(String str, String str2) {
        this.itemId = str;
        this.type = str2;
    }

    public /* synthetic */ SubjectGameInfo(String str, String str2, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? null : str, (i11 & 2) != 0 ? null : str2);
    }

    public static /* synthetic */ SubjectGameInfo copy$default(SubjectGameInfo subjectGameInfo, String str, String str2, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = subjectGameInfo.itemId;
        }
        if ((i11 & 2) != 0) {
            str2 = subjectGameInfo.type;
        }
        return subjectGameInfo.copy(str, str2);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getItemId() {
        return this.itemId;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getType() {
        return this.type;
    }

    public final SubjectGameInfo copy(String itemId, String type) {
        return new SubjectGameInfo(itemId, type);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof SubjectGameInfo)) {
            return false;
        }
        SubjectGameInfo subjectGameInfo = (SubjectGameInfo) other;
        return Intrinsics.c(this.itemId, subjectGameInfo.itemId) && Intrinsics.c(this.type, subjectGameInfo.type);
    }

    public final GameInfoType getGameInfoType() {
        String str = this.type;
        if (str == null || str.length() == 0) {
            return null;
        }
        String str2 = this.type;
        GameInfoType gameInfoType = GameInfoType.AHA;
        if (!Intrinsics.c(str2, gameInfoType.getValue())) {
            String str3 = this.type;
            gameInfoType = GameInfoType.PS;
            if (!Intrinsics.c(str3, gameInfoType.getValue())) {
                return null;
            }
        }
        return gameInfoType;
    }

    public final String getItemId() {
        return this.itemId;
    }

    public final String getType() {
        return this.type;
    }

    public int hashCode() {
        String str = this.itemId;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.type;
        return iHashCode + (str2 != null ? str2.hashCode() : 0);
    }

    public final void setItemId(String str) {
        this.itemId = str;
    }

    public final void setType(String str) {
        this.type = str;
    }

    public String toString() {
        return "SubjectGameInfo(itemId=" + this.itemId + ", type=" + this.type + ")";
    }
}
