package com.transsion.room.api;

import androidx.compose.foundation.e;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\b\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\n\u001a\u00020\u00032\b\u0010\u000b\u001a\u0004\u0018\u00010\fHÖ\u0003J\t\u0010\r\u001a\u00020\u000eHÖ\u0001J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0011"}, d2 = {"Lcom/transsion/room/api/RoomHomeCacheEvent;", "Ljava/io/Serializable;", "cached", "", "<init>", "(Z)V", "getCached", "()Z", "component1", "copy", "equals", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "", "toString", "", "RoomApi_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class RoomHomeCacheEvent implements Serializable {
    private final boolean cached;

    public RoomHomeCacheEvent(boolean z10) {
        this.cached = z10;
    }

    public static /* synthetic */ RoomHomeCacheEvent copy$default(RoomHomeCacheEvent roomHomeCacheEvent, boolean z10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            z10 = roomHomeCacheEvent.cached;
        }
        return roomHomeCacheEvent.copy(z10);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final boolean getCached() {
        return this.cached;
    }

    public final RoomHomeCacheEvent copy(boolean cached) {
        return new RoomHomeCacheEvent(cached);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof RoomHomeCacheEvent) && this.cached == ((RoomHomeCacheEvent) other).cached;
    }

    public final boolean getCached() {
        return this.cached;
    }

    public int hashCode() {
        return e.a(this.cached);
    }

    public String toString() {
        return "RoomHomeCacheEvent(cached=" + this.cached + ")";
    }
}
