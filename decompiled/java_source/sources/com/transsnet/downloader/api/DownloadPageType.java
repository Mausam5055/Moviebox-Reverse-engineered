package com.transsnet.downloader.api;

import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\t\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tj\u0002\b\nj\u0002\b\u000b¨\u0006\f"}, d2 = {"Lcom/transsnet/downloader/api/DownloadPageType;", "", "pageName", "", "<init>", "(Ljava/lang/String;ILjava/lang/String;)V", "getPageName", "()Ljava/lang/String;", "setPageName", "(Ljava/lang/String;)V", "DOWNLOAD", "SERIES", "Downloader_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public enum DownloadPageType {
    DOWNLOAD("downloadpage"),
    SERIES("download_series");

    private static final /* synthetic */ EnumEntries $ENTRIES = EnumEntriesKt.a(values());
    private String pageName;

    DownloadPageType(String str) {
        this.pageName = str;
    }

    public static EnumEntries<DownloadPageType> getEntries() {
        return $ENTRIES;
    }

    public final String getPageName() {
        return this.pageName;
    }

    public final void setPageName(String str) {
        Intrinsics.h(str, "<set-?>");
        this.pageName = str;
    }
}
