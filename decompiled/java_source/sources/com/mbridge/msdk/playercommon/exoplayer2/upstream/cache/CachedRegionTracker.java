package com.mbridge.msdk.playercommon.exoplayer2.upstream.cache;

import android.util.Log;
import androidx.annotation.NonNull;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.ChunkIndex;
import java.util.Arrays;
import java.util.Iterator;
import java.util.TreeSet;

/* JADX INFO: loaded from: classes5.dex */
public final class CachedRegionTracker implements Cache.Listener {
    public static final int CACHED_TO_END = -2;
    public static final int NOT_CACHED = -1;
    private static final String TAG = "CachedRegionTracker";
    private final Cache cache;
    private final String cacheKey;
    private final ChunkIndex chunkIndex;
    private final TreeSet<Region> regions = new TreeSet<>();
    private final Region lookupRegion = new Region(0, 0);

    private static class Region implements Comparable<Region> {
        public long endOffset;
        public int endOffsetIndex;
        public long startOffset;

        public Region(long j11, long j12) {
            this.startOffset = j11;
            this.endOffset = j12;
        }

        @Override // java.lang.Comparable
        public int compareTo(@NonNull Region region) {
            long j11 = this.startOffset;
            long j12 = region.startOffset;
            if (j11 < j12) {
                return -1;
            }
            return j11 == j12 ? 0 : 1;
        }
    }

    public CachedRegionTracker(Cache cache, String str, ChunkIndex chunkIndex) {
        this.cache = cache;
        this.cacheKey = str;
        this.chunkIndex = chunkIndex;
        synchronized (this) {
            try {
                Iterator<CacheSpan> itDescendingIterator = cache.addListener(str, this).descendingIterator();
                while (itDescendingIterator.hasNext()) {
                    mergeSpan(itDescendingIterator.next());
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    private void mergeSpan(CacheSpan cacheSpan) {
        long j11 = cacheSpan.position;
        Region region = new Region(j11, cacheSpan.length + j11);
        Region regionFloor = this.regions.floor(region);
        Region regionCeiling = this.regions.ceiling(region);
        boolean zRegionsConnect = regionsConnect(regionFloor, region);
        if (regionsConnect(region, regionCeiling)) {
            if (zRegionsConnect) {
                regionFloor.endOffset = regionCeiling.endOffset;
                regionFloor.endOffsetIndex = regionCeiling.endOffsetIndex;
            } else {
                region.endOffset = regionCeiling.endOffset;
                region.endOffsetIndex = regionCeiling.endOffsetIndex;
                this.regions.add(region);
            }
            this.regions.remove(regionCeiling);
            return;
        }
        if (!zRegionsConnect) {
            int iBinarySearch = Arrays.binarySearch(this.chunkIndex.offsets, region.endOffset);
            if (iBinarySearch < 0) {
                iBinarySearch = (-iBinarySearch) - 2;
            }
            region.endOffsetIndex = iBinarySearch;
            this.regions.add(region);
            return;
        }
        regionFloor.endOffset = region.endOffset;
        int i11 = regionFloor.endOffsetIndex;
        while (true) {
            ChunkIndex chunkIndex = this.chunkIndex;
            if (i11 >= chunkIndex.length - 1) {
                break;
            }
            int i12 = i11 + 1;
            if (chunkIndex.offsets[i12] > regionFloor.endOffset) {
                break;
            } else {
                i11 = i12;
            }
        }
        regionFloor.endOffsetIndex = i11;
    }

    private boolean regionsConnect(Region region, Region region2) {
        return (region == null || region2 == null || region.endOffset != region2.startOffset) ? false : true;
    }

    public synchronized int getRegionEndTimeMs(long j11) {
        int i11;
        Region region = this.lookupRegion;
        region.startOffset = j11;
        Region regionFloor = this.regions.floor(region);
        if (regionFloor != null) {
            long j12 = regionFloor.endOffset;
            if (j11 <= j12 && (i11 = regionFloor.endOffsetIndex) != -1) {
                ChunkIndex chunkIndex = this.chunkIndex;
                if (i11 == chunkIndex.length - 1) {
                    if (j12 == chunkIndex.offsets[i11] + ((long) chunkIndex.sizes[i11])) {
                        return -2;
                    }
                }
                return (int) ((chunkIndex.timesUs[i11] + ((chunkIndex.durationsUs[i11] * (j12 - chunkIndex.offsets[i11])) / ((long) chunkIndex.sizes[i11]))) / 1000);
            }
        }
        return -1;
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.upstream.cache.Cache.Listener
    public synchronized void onSpanAdded(Cache cache, CacheSpan cacheSpan) {
        mergeSpan(cacheSpan);
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.upstream.cache.Cache.Listener
    public synchronized void onSpanRemoved(Cache cache, CacheSpan cacheSpan) {
        long j11 = cacheSpan.position;
        Region region = new Region(j11, cacheSpan.length + j11);
        Region regionFloor = this.regions.floor(region);
        if (regionFloor == null) {
            Log.e(TAG, "Removed a span we were not aware of");
            return;
        }
        this.regions.remove(regionFloor);
        long j12 = regionFloor.startOffset;
        long j13 = region.startOffset;
        if (j12 < j13) {
            Region region2 = new Region(j12, j13);
            int iBinarySearch = Arrays.binarySearch(this.chunkIndex.offsets, region2.endOffset);
            if (iBinarySearch < 0) {
                iBinarySearch = (-iBinarySearch) - 2;
            }
            region2.endOffsetIndex = iBinarySearch;
            this.regions.add(region2);
        }
        long j14 = regionFloor.endOffset;
        long j15 = region.endOffset;
        if (j14 > j15) {
            Region region3 = new Region(j15 + 1, j14);
            region3.endOffsetIndex = regionFloor.endOffsetIndex;
            this.regions.add(region3);
        }
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.upstream.cache.Cache.Listener
    public void onSpanTouched(Cache cache, CacheSpan cacheSpan, CacheSpan cacheSpan2) {
    }

    public void release() {
        this.cache.removeListener(this.cacheKey, this);
    }
}
