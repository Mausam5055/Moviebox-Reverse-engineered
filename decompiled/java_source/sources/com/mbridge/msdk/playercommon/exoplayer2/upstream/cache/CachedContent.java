package com.mbridge.msdk.playercommon.exoplayer2.upstream.cache;

import androidx.annotation.Nullable;
import com.mbridge.msdk.playercommon.exoplayer2.util.Assertions;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.util.TreeSet;

/* JADX INFO: loaded from: classes5.dex */
final class CachedContent {
    private static final int VERSION_MAX = Integer.MAX_VALUE;
    private static final int VERSION_METADATA_INTRODUCED = 2;

    /* JADX INFO: renamed from: id, reason: collision with root package name */
    public final int f36793id;
    public final String key;
    private boolean locked;
    private DefaultContentMetadata metadata = DefaultContentMetadata.EMPTY;
    private final TreeSet<SimpleCacheSpan> cachedSpans = new TreeSet<>();

    public CachedContent(int i11, String str) {
        this.f36793id = i11;
        this.key = str;
    }

    public static CachedContent readFromStream(int i11, DataInputStream dataInputStream) throws IOException {
        CachedContent cachedContent = new CachedContent(dataInputStream.readInt(), dataInputStream.readUTF());
        if (i11 < 2) {
            long j11 = dataInputStream.readLong();
            ContentMetadataMutations contentMetadataMutations = new ContentMetadataMutations();
            ContentMetadataInternal.setContentLength(contentMetadataMutations, j11);
            cachedContent.applyMetadataMutations(contentMetadataMutations);
        } else {
            cachedContent.metadata = DefaultContentMetadata.readFromStream(dataInputStream);
        }
        return cachedContent;
    }

    public void addSpan(SimpleCacheSpan simpleCacheSpan) {
        this.cachedSpans.add(simpleCacheSpan);
    }

    public boolean applyMetadataMutations(ContentMetadataMutations contentMetadataMutations) {
        DefaultContentMetadata defaultContentMetadata = this.metadata;
        DefaultContentMetadata defaultContentMetadataCopyWithMutationsApplied = defaultContentMetadata.copyWithMutationsApplied(contentMetadataMutations);
        this.metadata = defaultContentMetadataCopyWithMutationsApplied;
        return !defaultContentMetadataCopyWithMutationsApplied.equals(defaultContentMetadata);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || CachedContent.class != obj.getClass()) {
            return false;
        }
        CachedContent cachedContent = (CachedContent) obj;
        return this.f36793id == cachedContent.f36793id && this.key.equals(cachedContent.key) && this.cachedSpans.equals(cachedContent.cachedSpans) && this.metadata.equals(cachedContent.metadata);
    }

    public long getCachedBytesLength(long j11, long j12) {
        SimpleCacheSpan span = getSpan(j11);
        if (span.isHoleSpan()) {
            return -Math.min(span.isOpenEnded() ? Long.MAX_VALUE : span.length, j12);
        }
        long j13 = j11 + j12;
        long jMax = span.position + span.length;
        if (jMax < j13) {
            for (SimpleCacheSpan simpleCacheSpan : this.cachedSpans.tailSet(span, false)) {
                long j14 = simpleCacheSpan.position;
                if (j14 > jMax) {
                    break;
                }
                jMax = Math.max(jMax, j14 + simpleCacheSpan.length);
                if (jMax >= j13) {
                    break;
                }
            }
        }
        return Math.min(jMax - j11, j12);
    }

    public ContentMetadata getMetadata() {
        return this.metadata;
    }

    public SimpleCacheSpan getSpan(long j11) {
        SimpleCacheSpan simpleCacheSpanCreateLookup = SimpleCacheSpan.createLookup(this.key, j11);
        SimpleCacheSpan simpleCacheSpanFloor = this.cachedSpans.floor(simpleCacheSpanCreateLookup);
        if (simpleCacheSpanFloor != null && simpleCacheSpanFloor.position + simpleCacheSpanFloor.length > j11) {
            return simpleCacheSpanFloor;
        }
        SimpleCacheSpan simpleCacheSpanCeiling = this.cachedSpans.ceiling(simpleCacheSpanCreateLookup);
        return simpleCacheSpanCeiling == null ? SimpleCacheSpan.createOpenHole(this.key, j11) : SimpleCacheSpan.createClosedHole(this.key, j11, simpleCacheSpanCeiling.position - j11);
    }

    public TreeSet<SimpleCacheSpan> getSpans() {
        return this.cachedSpans;
    }

    public int hashCode() {
        return (headerHashCode(Integer.MAX_VALUE) * 31) + this.cachedSpans.hashCode();
    }

    public int headerHashCode(int i11) {
        int i12;
        int iHashCode;
        int iHashCode2 = (this.f36793id * 31) + this.key.hashCode();
        if (i11 < 2) {
            long contentLength = ContentMetadataInternal.getContentLength(this.metadata);
            i12 = iHashCode2 * 31;
            iHashCode = (int) (contentLength ^ (contentLength >>> 32));
        } else {
            i12 = iHashCode2 * 31;
            iHashCode = this.metadata.hashCode();
        }
        return i12 + iHashCode;
    }

    public boolean isEmpty() {
        return this.cachedSpans.isEmpty();
    }

    public boolean isLocked() {
        return this.locked;
    }

    public boolean removeSpan(CacheSpan cacheSpan) {
        if (!this.cachedSpans.remove(cacheSpan)) {
            return false;
        }
        cacheSpan.file.delete();
        return true;
    }

    public void setLocked(boolean z10) {
        this.locked = z10;
    }

    public SimpleCacheSpan touch(SimpleCacheSpan simpleCacheSpan) throws Cache.CacheException {
        Assertions.checkState(this.cachedSpans.remove(simpleCacheSpan));
        SimpleCacheSpan simpleCacheSpanCopyWithUpdatedLastAccessTime = simpleCacheSpan.copyWithUpdatedLastAccessTime(this.f36793id);
        if (simpleCacheSpan.file.renameTo(simpleCacheSpanCopyWithUpdatedLastAccessTime.file)) {
            this.cachedSpans.add(simpleCacheSpanCopyWithUpdatedLastAccessTime);
            return simpleCacheSpanCopyWithUpdatedLastAccessTime;
        }
        throw new Cache.CacheException("Renaming of " + simpleCacheSpan.file + " to " + simpleCacheSpanCopyWithUpdatedLastAccessTime.file + " failed.");
    }

    public void writeToStream(DataOutputStream dataOutputStream) throws IOException {
        dataOutputStream.writeInt(this.f36793id);
        dataOutputStream.writeUTF(this.key);
        this.metadata.writeToStream(dataOutputStream);
    }
}
