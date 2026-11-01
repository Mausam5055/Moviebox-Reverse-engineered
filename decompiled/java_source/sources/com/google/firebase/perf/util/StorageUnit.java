package com.google.firebase.perf.util;

import android.support.v4.media.session.PlaybackStateCompat;

/* JADX INFO: loaded from: classes4.dex */
public enum StorageUnit {
    TERABYTES(1099511627776L) { // from class: com.google.firebase.perf.util.StorageUnit.1
        @Override // com.google.firebase.perf.util.StorageUnit
        public long convert(long j11, StorageUnit storageUnit) {
            return storageUnit.toTerabytes(j11);
        }
    },
    GIGABYTES(1073741824) { // from class: com.google.firebase.perf.util.StorageUnit.2
        @Override // com.google.firebase.perf.util.StorageUnit
        public long convert(long j11, StorageUnit storageUnit) {
            return storageUnit.toGigabytes(j11);
        }
    },
    MEGABYTES(PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED) { // from class: com.google.firebase.perf.util.StorageUnit.3
        @Override // com.google.firebase.perf.util.StorageUnit
        public long convert(long j11, StorageUnit storageUnit) {
            return storageUnit.toMegabytes(j11);
        }
    },
    KILOBYTES(1024) { // from class: com.google.firebase.perf.util.StorageUnit.4
        @Override // com.google.firebase.perf.util.StorageUnit
        public long convert(long j11, StorageUnit storageUnit) {
            return storageUnit.toKilobytes(j11);
        }
    },
    BYTES(1) { // from class: com.google.firebase.perf.util.StorageUnit.5
        @Override // com.google.firebase.perf.util.StorageUnit
        public long convert(long j11, StorageUnit storageUnit) {
            return storageUnit.toBytes(j11);
        }
    };

    long numBytes;

    StorageUnit(long j11) {
        this.numBytes = j11;
    }

    public abstract long convert(long j11, StorageUnit storageUnit);

    public long toBytes(long j11) {
        return j11 * this.numBytes;
    }

    public long toGigabytes(long j11) {
        return (j11 * this.numBytes) / GIGABYTES.numBytes;
    }

    public long toKilobytes(long j11) {
        return (j11 * this.numBytes) / KILOBYTES.numBytes;
    }

    public long toMegabytes(long j11) {
        return (j11 * this.numBytes) / MEGABYTES.numBytes;
    }

    public long toTerabytes(long j11) {
        return (j11 * this.numBytes) / TERABYTES.numBytes;
    }
}
