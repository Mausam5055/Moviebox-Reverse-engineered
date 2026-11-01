package com.transsion.lib_web.download_render.data;

import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.google.gson.annotations.SerializedName;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Keep
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\b\u0013\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B;\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0010\b\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005\u0012\u0014\b\u0002\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00060\b¢\u0006\u0004\b\t\u0010\nJ\u000b\u0010\u0017\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0011\u0010\u0018\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005HÆ\u0003J\u0015\u0010\u0019\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00060\bHÆ\u0003J=\u0010\u001a\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0010\b\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00052\u0014\b\u0002\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00060\bHÆ\u0001J\u0013\u0010\u001b\u001a\u00020\u001c2\b\u0010\u001d\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001e\u001a\u00020\u001fHÖ\u0001J\t\u0010 \u001a\u00020\u0003HÖ\u0001R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR&\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R&\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00060\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016¨\u0006!"}, d2 = {"Lcom/transsion/lib_web/download_render/data/PageListData;", "", "version", "", "h5Pages", "", "Lcom/transsion/lib_web/download_render/data/PageData;", "localH5Pages", "", "<init>", "(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;)V", "getVersion", "()Ljava/lang/String;", "setVersion", "(Ljava/lang/String;)V", "getH5Pages", "()Ljava/util/List;", "setH5Pages", "(Ljava/util/List;)V", "getLocalH5Pages", "()Ljava/util/Map;", "setLocalH5Pages", "(Ljava/util/Map;)V", "component1", "component2", "component3", "copy", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "hashCode", "", "toString", "lib_web_release"}, k = 1, mv = {2, 0, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class PageListData {

    @SerializedName("manifestList")
    private List<PageData> h5Pages;
    private Map<String, PageData> localH5Pages;
    private String version;

    public PageListData() {
        this(null, null, null, 7, null);
    }

    public PageListData(String str, List<PageData> list, Map<String, PageData> localH5Pages) {
        Intrinsics.h(localH5Pages, "localH5Pages");
        this.version = str;
        this.h5Pages = list;
        this.localH5Pages = localH5Pages;
    }

    public /* synthetic */ PageListData(String str, List list, Map map, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? null : str, (i11 & 2) != 0 ? null : list, (i11 & 4) != 0 ? new ConcurrentHashMap() : map);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ PageListData copy$default(PageListData pageListData, String str, List list, Map map, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = pageListData.version;
        }
        if ((i11 & 2) != 0) {
            list = pageListData.h5Pages;
        }
        if ((i11 & 4) != 0) {
            map = pageListData.localH5Pages;
        }
        return pageListData.copy(str, list, map);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getVersion() {
        return this.version;
    }

    public final List<PageData> component2() {
        return this.h5Pages;
    }

    public final Map<String, PageData> component3() {
        return this.localH5Pages;
    }

    public final PageListData copy(String version, List<PageData> h5Pages, Map<String, PageData> localH5Pages) {
        Intrinsics.h(localH5Pages, "localH5Pages");
        return new PageListData(version, h5Pages, localH5Pages);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof PageListData)) {
            return false;
        }
        PageListData pageListData = (PageListData) other;
        return Intrinsics.c(this.version, pageListData.version) && Intrinsics.c(this.h5Pages, pageListData.h5Pages) && Intrinsics.c(this.localH5Pages, pageListData.localH5Pages);
    }

    public final List<PageData> getH5Pages() {
        return this.h5Pages;
    }

    public final Map<String, PageData> getLocalH5Pages() {
        return this.localH5Pages;
    }

    public final String getVersion() {
        return this.version;
    }

    public int hashCode() {
        String str = this.version;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        List<PageData> list = this.h5Pages;
        return ((iHashCode + (list != null ? list.hashCode() : 0)) * 31) + this.localH5Pages.hashCode();
    }

    public final void setH5Pages(List<PageData> list) {
        this.h5Pages = list;
    }

    public final void setLocalH5Pages(Map<String, PageData> map) {
        Intrinsics.h(map, "<set-?>");
        this.localH5Pages = map;
    }

    public final void setVersion(String str) {
        this.version = str;
    }

    public String toString() {
        return "PageListData(version=" + this.version + ", h5Pages=" + this.h5Pages + ", localH5Pages=" + this.localH5Pages + ")";
    }
}
