package com.amazonaws.mobileconnectors.s3.transferutility;

import java.io.Serializable;

/* JADX INFO: loaded from: classes2.dex */
public class TransferUtilityOptions implements Serializable {
    private static final int MILLIS_IN_MINUTE = 60000;
    private static final long serialVersionUID = 1;
    private TransferNetworkConnectionType transferNetworkConnectionType;

    @Deprecated
    private long transferServiceCheckTimeInterval;
    private int transferThreadPoolSize;

    public TransferUtilityOptions() {
        this.transferServiceCheckTimeInterval = getDefaultCheckTimeInterval();
        this.transferThreadPoolSize = getDefaultThreadPoolSize();
        this.transferNetworkConnectionType = getDefaultTransferNetworkConnectionType();
    }

    public TransferUtilityOptions(int i11, TransferNetworkConnectionType transferNetworkConnectionType) {
        this.transferServiceCheckTimeInterval = getDefaultCheckTimeInterval();
        this.transferThreadPoolSize = i11;
        this.transferNetworkConnectionType = transferNetworkConnectionType;
    }

    @Deprecated
    static long getDefaultCheckTimeInterval() {
        return 60000L;
    }

    static int getDefaultThreadPoolSize() {
        return (Runtime.getRuntime().availableProcessors() + 1) * 2;
    }

    static TransferNetworkConnectionType getDefaultTransferNetworkConnectionType() {
        return TransferNetworkConnectionType.ANY;
    }

    public TransferNetworkConnectionType getTransferNetworkConnectionType() {
        return this.transferNetworkConnectionType;
    }

    @Deprecated
    public long getTransferServiceCheckTimeInterval() {
        return this.transferServiceCheckTimeInterval;
    }

    public int getTransferThreadPoolSize() {
        return this.transferThreadPoolSize;
    }

    @Deprecated
    public void setTransferServiceCheckTimeInterval(long j11) {
    }

    public void setTransferThreadPoolSize(int i11) {
        if (i11 < 0) {
            this.transferThreadPoolSize = getDefaultThreadPoolSize();
        } else {
            this.transferThreadPoolSize = i11;
        }
    }
}
