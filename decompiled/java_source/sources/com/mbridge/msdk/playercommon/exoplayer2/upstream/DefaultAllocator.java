package com.mbridge.msdk.playercommon.exoplayer2.upstream;

import com.mbridge.msdk.playercommon.exoplayer2.util.Assertions;
import com.mbridge.msdk.playercommon.exoplayer2.util.Util;
import java.util.Arrays;

/* JADX INFO: loaded from: classes5.dex */
public final class DefaultAllocator implements Allocator {
    private static final int AVAILABLE_EXTRA_CAPACITY = 100;
    private int allocatedCount;
    private Allocation[] availableAllocations;
    private int availableCount;
    private final int individualAllocationSize;
    private final byte[] initialAllocationBlock;
    private final Allocation[] singleAllocationReleaseHolder;
    private int targetBufferSize;
    private final boolean trimOnReset;

    public DefaultAllocator(boolean z10, int i11) {
        this(z10, i11, 0);
    }

    public DefaultAllocator(boolean z10, int i11, int i12) {
        Assertions.checkArgument(i11 > 0);
        Assertions.checkArgument(i12 >= 0);
        this.trimOnReset = z10;
        this.individualAllocationSize = i11;
        this.availableCount = i12;
        this.availableAllocations = new Allocation[i12 + 100];
        if (i12 > 0) {
            this.initialAllocationBlock = new byte[i12 * i11];
            for (int i13 = 0; i13 < i12; i13++) {
                this.availableAllocations[i13] = new Allocation(this.initialAllocationBlock, i13 * i11);
            }
        } else {
            this.initialAllocationBlock = null;
        }
        this.singleAllocationReleaseHolder = new Allocation[1];
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.upstream.Allocator
    public synchronized Allocation allocate() {
        Allocation allocation;
        try {
            this.allocatedCount++;
            int i11 = this.availableCount;
            if (i11 > 0) {
                Allocation[] allocationArr = this.availableAllocations;
                int i12 = i11 - 1;
                this.availableCount = i12;
                allocation = allocationArr[i12];
                allocationArr[i12] = null;
            } else {
                allocation = new Allocation(new byte[this.individualAllocationSize], 0);
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return allocation;
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.upstream.Allocator
    public int getIndividualAllocationLength() {
        return this.individualAllocationSize;
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.upstream.Allocator
    public synchronized int getTotalBytesAllocated() {
        return this.allocatedCount * this.individualAllocationSize;
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.upstream.Allocator
    public synchronized void release(Allocation allocation) {
        Allocation[] allocationArr = this.singleAllocationReleaseHolder;
        allocationArr[0] = allocation;
        release(allocationArr);
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.upstream.Allocator
    public synchronized void release(Allocation[] allocationArr) {
        try {
            int i11 = this.availableCount;
            int length = allocationArr.length + i11;
            Allocation[] allocationArr2 = this.availableAllocations;
            if (length >= allocationArr2.length) {
                this.availableAllocations = (Allocation[]) Arrays.copyOf(allocationArr2, Math.max(allocationArr2.length * 2, i11 + allocationArr.length));
            }
            for (Allocation allocation : allocationArr) {
                byte[] bArr = allocation.data;
                if (bArr != this.initialAllocationBlock && bArr.length != this.individualAllocationSize) {
                    throw new IllegalArgumentException("Unexpected allocation: " + System.identityHashCode(allocation.data) + ", " + System.identityHashCode(this.initialAllocationBlock) + ", " + allocation.data.length + ", " + this.individualAllocationSize);
                }
                Allocation[] allocationArr3 = this.availableAllocations;
                int i12 = this.availableCount;
                this.availableCount = i12 + 1;
                allocationArr3[i12] = allocation;
            }
            this.allocatedCount -= allocationArr.length;
            notifyAll();
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public synchronized void reset() {
        if (this.trimOnReset) {
            setTargetBufferSize(0);
        }
    }

    public synchronized void setTargetBufferSize(int i11) {
        boolean z10 = i11 < this.targetBufferSize;
        this.targetBufferSize = i11;
        if (z10) {
            trim();
        }
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.upstream.Allocator
    public synchronized void trim() {
        try {
            int i11 = 0;
            int iMax = Math.max(0, Util.ceilDivide(this.targetBufferSize, this.individualAllocationSize) - this.allocatedCount);
            int i12 = this.availableCount;
            if (iMax >= i12) {
                return;
            }
            if (this.initialAllocationBlock != null) {
                int i13 = i12 - 1;
                while (i11 <= i13) {
                    Allocation[] allocationArr = this.availableAllocations;
                    Allocation allocation = allocationArr[i11];
                    byte[] bArr = allocation.data;
                    byte[] bArr2 = this.initialAllocationBlock;
                    if (bArr == bArr2) {
                        i11++;
                    } else {
                        Allocation allocation2 = allocationArr[i13];
                        if (allocation2.data != bArr2) {
                            i13--;
                        } else {
                            allocationArr[i11] = allocation2;
                            allocationArr[i13] = allocation;
                            i13--;
                            i11++;
                        }
                    }
                }
                iMax = Math.max(iMax, i11);
                if (iMax >= this.availableCount) {
                    return;
                }
            }
            Arrays.fill(this.availableAllocations, iMax, this.availableCount, (Object) null);
            this.availableCount = iMax;
        } catch (Throwable th2) {
            throw th2;
        }
    }
}
