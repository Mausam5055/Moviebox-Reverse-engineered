package com.tn.lib.net.cons;

import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Keep
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010!\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B\u0015\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0003J\u0019\u0010\u000b\u001a\u00020\u00002\u000e\b\u0002\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0001J\u0013\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001J\t\u0010\u0011\u001a\u00020\u0004HÖ\u0001R \u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\u0006¨\u0006\u0012"}, d2 = {"Lcom/tn/lib/net/cons/PrefetchDnsUrls;", "", "hosts", "", "", "<init>", "(Ljava/util/List;)V", "getHosts", "()Ljava/util/List;", "setHosts", "component1", "copy", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "hashCode", "", "toString", "lib_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class PrefetchDnsUrls {
    private List<String> hosts;

    public PrefetchDnsUrls(List<String> hosts) {
        Intrinsics.h(hosts, "hosts");
        this.hosts = hosts;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ PrefetchDnsUrls copy$default(PrefetchDnsUrls prefetchDnsUrls, List list, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            list = prefetchDnsUrls.hosts;
        }
        return prefetchDnsUrls.copy(list);
    }

    public final List<String> component1() {
        return this.hosts;
    }

    public final PrefetchDnsUrls copy(List<String> hosts) {
        Intrinsics.h(hosts, "hosts");
        return new PrefetchDnsUrls(hosts);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof PrefetchDnsUrls) && Intrinsics.c(this.hosts, ((PrefetchDnsUrls) other).hosts);
    }

    public final List<String> getHosts() {
        return this.hosts;
    }

    public int hashCode() {
        return this.hosts.hashCode();
    }

    public final void setHosts(List<String> list) {
        Intrinsics.h(list, "<set-?>");
        this.hosts = list;
    }

    public String toString() {
        return "PrefetchDnsUrls(hosts=" + this.hosts + ")";
    }
}
