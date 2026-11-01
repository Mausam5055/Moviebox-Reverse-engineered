package v6;

import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
public class z {
    private String info;
    private long layerId;
    private long requestTime;

    public z() {
        this(0L, 0L, null, 7, null);
    }

    public z(long j11, long j12, String str) {
        this.layerId = j11;
        this.requestTime = j12;
        this.info = str;
    }

    public /* synthetic */ z(long j11, long j12, String str, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? 0L : j11, (i11 & 2) == 0 ? j12 : 0L, (i11 & 4) != 0 ? null : str);
    }

    public final String getInfo() {
        return this.info;
    }

    public final long getLayerId() {
        return this.layerId;
    }

    public final long getRequestTime() {
        return this.requestTime;
    }

    public final void setInfo(String str) {
        this.info = str;
    }

    public final void setLayerId(long j11) {
        this.layerId = j11;
    }

    public final void setRequestTime(long j11) {
        this.requestTime = j11;
    }
}
