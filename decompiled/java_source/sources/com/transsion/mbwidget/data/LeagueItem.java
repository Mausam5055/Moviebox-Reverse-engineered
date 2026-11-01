package com.transsion.mbwidget.data;

import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010$\n\u0002\b\u0012\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B[\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\u0016\b\u0002\u0010\b\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0003\u0018\u00010\t¢\u0006\u0004\b\n\u0010\u000bJ\u000b\u0010\u0014\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0015\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0016\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0017\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0018\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0017\u0010\u0019\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0003\u0018\u00010\tHÆ\u0003J]\u0010\u001a\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00032\u0016\b\u0002\u0010\b\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0003\u0018\u00010\tHÆ\u0001J\u0013\u0010\u001b\u001a\u00020\u001c2\b\u0010\u001d\u001a\u0004\u0018\u00010\u001eHÖ\u0003J\t\u0010\u001f\u001a\u00020 HÖ\u0001J\t\u0010!\u001a\u00020\u0003HÖ\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\rR\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\rR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\rR\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\rR\u001f\u0010\b\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0003\u0018\u00010\t¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013¨\u0006\""}, d2 = {"Lcom/transsion/mbwidget/data/LeagueItem;", "Ljava/io/Serializable;", "id", "", "name", "nameTag", NativeComponentConstants.KEY_COMPONENT_TYPE, "avatar", "nameI18n", "", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V", "getId", "()Ljava/lang/String;", "getName", "getNameTag", "getType", "getAvatar", "getNameI18n", "()Ljava/util/Map;", "component1", "component2", "component3", "component4", "component5", "component6", "copy", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "", "toString", "DeskWidget_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class LeagueItem implements Serializable {
    private final String avatar;
    private final String id;
    private final String name;
    private final Map<String, String> nameI18n;
    private final String nameTag;
    private final String type;

    public LeagueItem() {
        this(null, null, null, null, null, null, 63, null);
    }

    public LeagueItem(String str, String str2, String str3, String str4, String str5, Map<String, String> map) {
        this.id = str;
        this.name = str2;
        this.nameTag = str3;
        this.type = str4;
        this.avatar = str5;
        this.nameI18n = map;
    }

    public /* synthetic */ LeagueItem(String str, String str2, String str3, String str4, String str5, Map map, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? null : str, (i11 & 2) != 0 ? null : str2, (i11 & 4) != 0 ? null : str3, (i11 & 8) != 0 ? null : str4, (i11 & 16) != 0 ? null : str5, (i11 & 32) != 0 ? null : map);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ LeagueItem copy$default(LeagueItem leagueItem, String str, String str2, String str3, String str4, String str5, Map map, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = leagueItem.id;
        }
        if ((i11 & 2) != 0) {
            str2 = leagueItem.name;
        }
        String str6 = str2;
        if ((i11 & 4) != 0) {
            str3 = leagueItem.nameTag;
        }
        String str7 = str3;
        if ((i11 & 8) != 0) {
            str4 = leagueItem.type;
        }
        String str8 = str4;
        if ((i11 & 16) != 0) {
            str5 = leagueItem.avatar;
        }
        String str9 = str5;
        if ((i11 & 32) != 0) {
            map = leagueItem.nameI18n;
        }
        return leagueItem.copy(str, str6, str7, str8, str9, map);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getId() {
        return this.id;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getName() {
        return this.name;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getNameTag() {
        return this.nameTag;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getType() {
        return this.type;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getAvatar() {
        return this.avatar;
    }

    public final Map<String, String> component6() {
        return this.nameI18n;
    }

    public final LeagueItem copy(String id2, String name, String nameTag, String type, String avatar, Map<String, String> nameI18n) {
        return new LeagueItem(id2, name, nameTag, type, avatar, nameI18n);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof LeagueItem)) {
            return false;
        }
        LeagueItem leagueItem = (LeagueItem) other;
        return Intrinsics.c(this.id, leagueItem.id) && Intrinsics.c(this.name, leagueItem.name) && Intrinsics.c(this.nameTag, leagueItem.nameTag) && Intrinsics.c(this.type, leagueItem.type) && Intrinsics.c(this.avatar, leagueItem.avatar) && Intrinsics.c(this.nameI18n, leagueItem.nameI18n);
    }

    public final String getAvatar() {
        return this.avatar;
    }

    public final String getId() {
        return this.id;
    }

    public final String getName() {
        return this.name;
    }

    public final Map<String, String> getNameI18n() {
        return this.nameI18n;
    }

    public final String getNameTag() {
        return this.nameTag;
    }

    public final String getType() {
        return this.type;
    }

    public int hashCode() {
        String str = this.id;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.name;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.nameTag;
        int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.type;
        int iHashCode4 = (iHashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.avatar;
        int iHashCode5 = (iHashCode4 + (str5 == null ? 0 : str5.hashCode())) * 31;
        Map<String, String> map = this.nameI18n;
        return iHashCode5 + (map != null ? map.hashCode() : 0);
    }

    public String toString() {
        return "LeagueItem(id=" + this.id + ", name=" + this.name + ", nameTag=" + this.nameTag + ", type=" + this.type + ", avatar=" + this.avatar + ", nameI18n=" + this.nameI18n + ")";
    }
}
