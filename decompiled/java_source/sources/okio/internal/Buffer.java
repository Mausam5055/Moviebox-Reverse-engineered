package okio.internal;

import android.support.v4.media.session.PlaybackStateCompat;
import com.cloud.tmc.integration.event.EventConstants;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.ts.PsExtractor;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.EOFException;
import java.io.IOException;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.jvm.JvmName;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.internal.connection.RealConnection;
import okio.ByteString;
import okio.C1083SegmentedByteString;
import okio.Options;
import okio.Segment;
import okio.SegmentPool;
import okio.SegmentedByteString;
import okio.Sink;
import okio.Source;
import okio.Utf8;
import okio._JvmPlatformKt;

/* JADX INFO: renamed from: okio.internal.-Buffer, reason: invalid class name */
/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000\u0080\u0001\n\u0000\n\u0002\u0010\u0012\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0005\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\n\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0015\n\u0002\u0018\u0002\n\u0002\b\u0004\u001a0\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\u00012\u0006\u0010\u0011\u001a\u00020\n2\u0006\u0010\u0012\u001a\u00020\nH\u0000\u001a\r\u0010\u0013\u001a\u00020\u0014*\u00020\u0015H\u0080\b\u001a\r\u0010\u0016\u001a\u00020\u0014*\u00020\u0017H\u0080\b\u001a\r\u0010\u0018\u001a\u00020\u0007*\u00020\u0015H\u0080\b\u001a\r\u0010\u0019\u001a\u00020\u0015*\u00020\u0015H\u0080\b\u001a%\u0010\u001a\u001a\u00020\u0015*\u00020\u00152\u0006\u0010\u001b\u001a\u00020\u00152\u0006\u0010\u001c\u001a\u00020\u00072\u0006\u0010\u001d\u001a\u00020\u0007H\u0080\b\u001a\u0017\u0010\u001e\u001a\u00020\f*\u00020\u00152\b\u0010\u001f\u001a\u0004\u0018\u00010 H\u0080\b\u001a\u0015\u0010!\u001a\u00020\u0007*\u00020\u00172\u0006\u0010\"\u001a\u00020\nH\u0080\b\u001a\u0015\u0010#\u001a\u00020$*\u00020\u00152\u0006\u0010%\u001a\u00020\u0007H\u0080\b\u001a\r\u0010&\u001a\u00020\n*\u00020\u0015H\u0080\b\u001a%\u0010'\u001a\u00020\u0007*\u00020\u00152\u0006\u0010(\u001a\u00020$2\u0006\u0010)\u001a\u00020\u00072\u0006\u0010*\u001a\u00020\u0007H\u0080\b\u001a\u001d\u0010'\u001a\u00020\u0007*\u00020\u00152\u0006\u0010\u0010\u001a\u00020+2\u0006\u0010)\u001a\u00020\u0007H\u0080\b\u001a\u001d\u0010,\u001a\u00020\u0007*\u00020\u00152\u0006\u0010-\u001a\u00020+2\u0006\u0010)\u001a\u00020\u0007H\u0080\b\u001a\r\u0010.\u001a\u00020\n*\u00020\u0017H\u0080\b\u001a-\u0010/\u001a\u00020\f*\u00020\u00152\u0006\u0010\u001c\u001a\u00020\u00072\u0006\u0010\u0010\u001a\u00020+2\u0006\u0010\u0011\u001a\u00020\n2\u0006\u0010\u001d\u001a\u00020\nH\u0080\b\u001a\u0015\u00100\u001a\u00020\n*\u00020\u00152\u0006\u00101\u001a\u00020\u0001H\u0080\b\u001a%\u00100\u001a\u00020\n*\u00020\u00152\u0006\u00101\u001a\u00020\u00012\u0006\u0010\u001c\u001a\u00020\n2\u0006\u0010\u001d\u001a\u00020\nH\u0080\b\u001a\u001d\u00100\u001a\u00020\u0007*\u00020\u00152\u0006\u00101\u001a\u00020\u00152\u0006\u0010\u001d\u001a\u00020\u0007H\u0080\b\u001a\u0015\u00102\u001a\u00020\u0007*\u00020\u00152\u0006\u00101\u001a\u000203H\u0080\b\u001a\u0014\u00104\u001a\u00020\u0017*\u00020\u00152\u0006\u00105\u001a\u00020\u0017H\u0000\u001a\r\u00106\u001a\u00020$*\u00020\u0015H\u0080\b\u001a\r\u00107\u001a\u00020\u0001*\u00020\u0015H\u0080\b\u001a\u0015\u00107\u001a\u00020\u0001*\u00020\u00152\u0006\u0010\u001d\u001a\u00020\u0007H\u0080\b\u001a\r\u00108\u001a\u00020+*\u00020\u0015H\u0080\b\u001a\u0015\u00108\u001a\u00020+*\u00020\u00152\u0006\u0010\u001d\u001a\u00020\u0007H\u0080\b\u001a\r\u00109\u001a\u00020\u0007*\u00020\u0015H\u0080\b\u001a\u0015\u0010:\u001a\u00020\u0014*\u00020\u00152\u0006\u00101\u001a\u00020\u0001H\u0080\b\u001a\u001d\u0010:\u001a\u00020\u0014*\u00020\u00152\u0006\u00101\u001a\u00020\u00152\u0006\u0010\u001d\u001a\u00020\u0007H\u0080\b\u001a\r\u0010;\u001a\u00020\u0007*\u00020\u0015H\u0080\b\u001a\r\u0010<\u001a\u00020\n*\u00020\u0015H\u0080\b\u001a\r\u0010=\u001a\u00020\u0007*\u00020\u0015H\u0080\b\u001a\r\u0010>\u001a\u00020?*\u00020\u0015H\u0080\b\u001a\u0014\u0010@\u001a\u00020\u0017*\u00020\u00152\u0006\u00105\u001a\u00020\u0017H\u0000\u001a\u0015\u0010A\u001a\u00020B*\u00020\u00152\u0006\u0010\u001d\u001a\u00020\u0007H\u0080\b\u001a\r\u0010C\u001a\u00020\n*\u00020\u0015H\u0080\b\u001a\u000f\u0010D\u001a\u0004\u0018\u00010B*\u00020\u0015H\u0080\b\u001a\u0015\u0010E\u001a\u00020B*\u00020\u00152\u0006\u0010F\u001a\u00020\u0007H\u0080\b\u001a\u0015\u0010G\u001a\u00020\u0007*\u00020\u00172\u0006\u0010H\u001a\u00020\u0007H\u0080\b\u001a\u0015\u0010I\u001a\u00020\n*\u00020\u00172\u0006\u0010\u001c\u001a\u00020\u0007H\u0080\b\u001a\u0015\u0010J\u001a\u00020\n*\u00020\u00152\u0006\u0010K\u001a\u00020LH\u0080\b\u001a\u0015\u0010M\u001a\u00020\u0014*\u00020\u00152\u0006\u0010\u001d\u001a\u00020\u0007H\u0080\b\u001a\r\u0010N\u001a\u00020+*\u00020\u0015H\u0080\b\u001a\u0015\u0010N\u001a\u00020+*\u00020\u00152\u0006\u0010\u001d\u001a\u00020\nH\u0080\b\u001a\u0015\u0010O\u001a\u00020\u000e*\u00020\u00152\u0006\u0010P\u001a\u00020\nH\u0080\b\u001a\u0015\u0010Q\u001a\u00020\u0015*\u00020\u00152\u0006\u0010R\u001a\u00020\u0001H\u0080\b\u001a%\u0010Q\u001a\u00020\u0015*\u00020\u00152\u0006\u0010R\u001a\u00020\u00012\u0006\u0010\u001c\u001a\u00020\n2\u0006\u0010\u001d\u001a\u00020\nH\u0080\b\u001a\u001d\u0010Q\u001a\u00020\u0014*\u00020\u00152\u0006\u0010R\u001a\u00020\u00152\u0006\u0010\u001d\u001a\u00020\u0007H\u0080\b\u001a)\u0010Q\u001a\u00020\u0015*\u00020\u00152\u0006\u0010S\u001a\u00020+2\b\b\u0002\u0010\u001c\u001a\u00020\n2\b\b\u0002\u0010\u001d\u001a\u00020\nH\u0080\b\u001a\u001d\u0010Q\u001a\u00020\u0015*\u00020\u00152\u0006\u0010R\u001a\u00020T2\u0006\u0010\u001d\u001a\u00020\u0007H\u0080\b\u001a\u0015\u0010U\u001a\u00020\u0007*\u00020\u00152\u0006\u0010R\u001a\u00020TH\u0080\b\u001a\u0015\u0010V\u001a\u00020\u0015*\u00020\u00152\u0006\u0010(\u001a\u00020\nH\u0080\b\u001a\u0015\u0010W\u001a\u00020\u0015*\u00020\u00152\u0006\u0010X\u001a\u00020\u0007H\u0080\b\u001a\u0015\u0010Y\u001a\u00020\u0015*\u00020\u00152\u0006\u0010X\u001a\u00020\u0007H\u0080\b\u001a\u0015\u0010Z\u001a\u00020\u0015*\u00020\u00152\u0006\u0010[\u001a\u00020\nH\u0080\b\u001a\u0015\u0010\\\u001a\u00020\u0015*\u00020\u00152\u0006\u0010X\u001a\u00020\u0007H\u0080\b\u001a\u0015\u0010]\u001a\u00020\u0015*\u00020\u00152\u0006\u0010^\u001a\u00020\nH\u0080\b\u001a%\u0010_\u001a\u00020\u0015*\u00020\u00152\u0006\u0010`\u001a\u00020B2\u0006\u0010a\u001a\u00020\n2\u0006\u0010b\u001a\u00020\nH\u0080\b\u001a\u0015\u0010c\u001a\u00020\u0015*\u00020\u00152\u0006\u0010d\u001a\u00020\nH\u0080\b\u001a\u0014\u0010e\u001a\u00020B*\u00020\u00152\u0006\u0010f\u001a\u00020\u0007H\u0000\u001a?\u0010g\u001a\u0002Hh\"\u0004\b\u0000\u0010h*\u00020\u00152\u0006\u0010)\u001a\u00020\u00072\u001a\u0010i\u001a\u0016\u0012\u0006\u0012\u0004\u0018\u00010\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u0002Hh0jH\u0080\bø\u0001\u0000¢\u0006\u0002\u0010k\u001a\u001e\u0010l\u001a\u00020\n*\u00020\u00152\u0006\u0010K\u001a\u00020L2\b\b\u0002\u0010m\u001a\u00020\fH\u0000\"\u001c\u0010\u0000\u001a\u00020\u00018\u0000X\u0081\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0002\u0010\u0003\u001a\u0004\b\u0004\u0010\u0005\"\u000e\u0010\u0006\u001a\u00020\u0007X\u0080T¢\u0006\u0002\n\u0000\"\u000e\u0010\b\u001a\u00020\u0007X\u0080T¢\u0006\u0002\n\u0000\"\u000e\u0010\t\u001a\u00020\nX\u0080T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006n"}, d2 = {"HEX_DIGIT_BYTES", "", "getHEX_DIGIT_BYTES$annotations", "()V", "getHEX_DIGIT_BYTES", "()[B", "OVERFLOW_DIGIT_START", "", "OVERFLOW_ZONE", "SEGMENTING_THRESHOLD", "", "rangeEquals", "", "segment", "Lokio/Segment;", "segmentPos", "bytes", "bytesOffset", "bytesLimit", "commonClear", "", "Lokio/Buffer;", "commonClose", "Lokio/Buffer$UnsafeCursor;", "commonCompleteSegmentByteCount", "commonCopy", "commonCopyTo", "out", "offset", "byteCount", "commonEquals", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "commonExpandBuffer", "minByteCount", "commonGet", "", "pos", "commonHashCode", "commonIndexOf", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "fromIndex", "toIndex", "Lokio/ByteString;", "commonIndexOfElement", "targetBytes", "commonNext", "commonRangeEquals", "commonRead", "sink", "commonReadAll", "Lokio/Sink;", "commonReadAndWriteUnsafe", "unsafeCursor", "commonReadByte", "commonReadByteArray", "commonReadByteString", "commonReadDecimalLong", "commonReadFully", "commonReadHexadecimalUnsignedLong", "commonReadInt", "commonReadLong", "commonReadShort", "", "commonReadUnsafe", "commonReadUtf8", "", "commonReadUtf8CodePoint", "commonReadUtf8Line", "commonReadUtf8LineStrict", "limit", "commonResizeBuffer", "newSize", "commonSeek", "commonSelect", "options", "Lokio/Options;", "commonSkip", "commonSnapshot", "commonWritableSegment", "minimumCapacity", "commonWrite", EventConstants.KEY_SOURCE, "byteString", "Lokio/Source;", "commonWriteAll", "commonWriteByte", "commonWriteDecimalLong", "v", "commonWriteHexadecimalUnsignedLong", "commonWriteInt", "i", "commonWriteLong", "commonWriteShort", "s", "commonWriteUtf8", "string", "beginIndex", "endIndex", "commonWriteUtf8CodePoint", "codePoint", "readUtf8Line", "newline", "seek", "T", "lambda", "Lkotlin/Function2;", "(Lokio/Buffer;JLkotlin/jvm/functions/Function2;)Ljava/lang/Object;", "selectPrefix", "selectTruncated", "okio"}, k = 2, mv = {1, 9, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@JvmName
@SourceDebugExtension
public final class Buffer {
    private static final byte[] HEX_DIGIT_BYTES = _JvmPlatformKt.asUtf8ToByteArray("0123456789abcdef");
    public static final long OVERFLOW_DIGIT_START = -7;
    public static final long OVERFLOW_ZONE = -922337203685477580L;
    public static final int SEGMENTING_THRESHOLD = 4096;

    public static final void commonClear(okio.Buffer buffer) throws EOFException {
        Intrinsics.h(buffer, "<this>");
        buffer.skip(buffer.size());
    }

    public static final void commonClose(okio.Buffer.UnsafeCursor unsafeCursor) {
        Intrinsics.h(unsafeCursor, "<this>");
        if (unsafeCursor.buffer == null) {
            throw new IllegalStateException("not attached to a buffer");
        }
        unsafeCursor.buffer = null;
        unsafeCursor.setSegment$okio(null);
        unsafeCursor.offset = -1L;
        unsafeCursor.data = null;
        unsafeCursor.start = -1;
        unsafeCursor.end = -1;
    }

    public static final long commonCompleteSegmentByteCount(okio.Buffer buffer) {
        Intrinsics.h(buffer, "<this>");
        long size = buffer.size();
        if (size == 0) {
            return 0L;
        }
        Segment segment = buffer.head;
        Intrinsics.e(segment);
        Segment segment2 = segment.prev;
        Intrinsics.e(segment2);
        int i11 = segment2.limit;
        return (i11 >= 8192 || !segment2.owner) ? size : size - ((long) (i11 - segment2.pos));
    }

    public static final okio.Buffer commonCopy(okio.Buffer buffer) {
        Intrinsics.h(buffer, "<this>");
        okio.Buffer buffer2 = new okio.Buffer();
        if (buffer.size() == 0) {
            return buffer2;
        }
        Segment segment = buffer.head;
        Intrinsics.e(segment);
        Segment segmentSharedCopy = segment.sharedCopy();
        buffer2.head = segmentSharedCopy;
        segmentSharedCopy.prev = segmentSharedCopy;
        segmentSharedCopy.next = segmentSharedCopy;
        for (Segment segment2 = segment.next; segment2 != segment; segment2 = segment2.next) {
            Segment segment3 = segmentSharedCopy.prev;
            Intrinsics.e(segment3);
            Intrinsics.e(segment2);
            segment3.push(segment2.sharedCopy());
        }
        buffer2.setSize$okio(buffer.size());
        return buffer2;
    }

    public static final okio.Buffer commonCopyTo(okio.Buffer buffer, okio.Buffer out, long j11, long j12) {
        Intrinsics.h(buffer, "<this>");
        Intrinsics.h(out, "out");
        SegmentedByteString.checkOffsetAndCount(buffer.size(), j11, j12);
        if (j12 == 0) {
            return buffer;
        }
        out.setSize$okio(out.size() + j12);
        Segment segment = buffer.head;
        while (true) {
            Intrinsics.e(segment);
            int i11 = segment.limit;
            int i12 = segment.pos;
            if (j11 < i11 - i12) {
                break;
            }
            j11 -= (long) (i11 - i12);
            segment = segment.next;
        }
        while (j12 > 0) {
            Intrinsics.e(segment);
            Segment segmentSharedCopy = segment.sharedCopy();
            int i13 = segmentSharedCopy.pos + ((int) j11);
            segmentSharedCopy.pos = i13;
            segmentSharedCopy.limit = Math.min(i13 + ((int) j12), segmentSharedCopy.limit);
            Segment segment2 = out.head;
            if (segment2 == null) {
                segmentSharedCopy.prev = segmentSharedCopy;
                segmentSharedCopy.next = segmentSharedCopy;
                out.head = segmentSharedCopy;
            } else {
                Intrinsics.e(segment2);
                Segment segment3 = segment2.prev;
                Intrinsics.e(segment3);
                segment3.push(segmentSharedCopy);
            }
            j12 -= (long) (segmentSharedCopy.limit - segmentSharedCopy.pos);
            segment = segment.next;
            j11 = 0;
        }
        return buffer;
    }

    public static final boolean commonEquals(okio.Buffer buffer, Object obj) {
        Intrinsics.h(buffer, "<this>");
        if (buffer == obj) {
            return true;
        }
        if (!(obj instanceof okio.Buffer)) {
            return false;
        }
        okio.Buffer buffer2 = (okio.Buffer) obj;
        if (buffer.size() != buffer2.size()) {
            return false;
        }
        if (buffer.size() == 0) {
            return true;
        }
        Segment segment = buffer.head;
        Intrinsics.e(segment);
        Segment segment2 = buffer2.head;
        Intrinsics.e(segment2);
        int i11 = segment.pos;
        int i12 = segment2.pos;
        long j11 = 0;
        while (j11 < buffer.size()) {
            long jMin = Math.min(segment.limit - i11, segment2.limit - i12);
            long j12 = 0;
            while (j12 < jMin) {
                int i13 = i11 + 1;
                int i14 = i12 + 1;
                if (segment.data[i11] != segment2.data[i12]) {
                    return false;
                }
                j12++;
                i11 = i13;
                i12 = i14;
            }
            if (i11 == segment.limit) {
                segment = segment.next;
                Intrinsics.e(segment);
                i11 = segment.pos;
            }
            if (i12 == segment2.limit) {
                segment2 = segment2.next;
                Intrinsics.e(segment2);
                i12 = segment2.pos;
            }
            j11 += jMin;
        }
        return true;
    }

    public static final long commonExpandBuffer(okio.Buffer.UnsafeCursor unsafeCursor, int i11) {
        Intrinsics.h(unsafeCursor, "<this>");
        if (i11 <= 0) {
            throw new IllegalArgumentException(("minByteCount <= 0: " + i11).toString());
        }
        if (i11 > 8192) {
            throw new IllegalArgumentException(("minByteCount > Segment.SIZE: " + i11).toString());
        }
        okio.Buffer buffer = unsafeCursor.buffer;
        if (buffer == null) {
            throw new IllegalStateException("not attached to a buffer");
        }
        if (!unsafeCursor.readWrite) {
            throw new IllegalStateException("expandBuffer() only permitted for read/write buffers");
        }
        long size = buffer.size();
        Segment segmentWritableSegment$okio = buffer.writableSegment$okio(i11);
        int i12 = 8192 - segmentWritableSegment$okio.limit;
        segmentWritableSegment$okio.limit = 8192;
        long j11 = i12;
        buffer.setSize$okio(size + j11);
        unsafeCursor.setSegment$okio(segmentWritableSegment$okio);
        unsafeCursor.offset = size;
        unsafeCursor.data = segmentWritableSegment$okio.data;
        unsafeCursor.start = 8192 - i12;
        unsafeCursor.end = 8192;
        return j11;
    }

    public static final byte commonGet(okio.Buffer buffer, long j11) {
        Intrinsics.h(buffer, "<this>");
        SegmentedByteString.checkOffsetAndCount(buffer.size(), j11, 1L);
        Segment segment = buffer.head;
        if (segment == null) {
            Intrinsics.e(null);
            throw null;
        }
        if (buffer.size() - j11 < j11) {
            long size = buffer.size();
            while (size > j11) {
                segment = segment.prev;
                Intrinsics.e(segment);
                size -= (long) (segment.limit - segment.pos);
            }
            Intrinsics.e(segment);
            return segment.data[(int) ((((long) segment.pos) + j11) - size)];
        }
        long j12 = 0;
        while (true) {
            long j13 = ((long) (segment.limit - segment.pos)) + j12;
            if (j13 > j11) {
                Intrinsics.e(segment);
                return segment.data[(int) ((((long) segment.pos) + j11) - j12)];
            }
            segment = segment.next;
            Intrinsics.e(segment);
            j12 = j13;
        }
    }

    public static final int commonHashCode(okio.Buffer buffer) {
        Intrinsics.h(buffer, "<this>");
        Segment segment = buffer.head;
        if (segment == null) {
            return 0;
        }
        int i11 = 1;
        do {
            int i12 = segment.limit;
            for (int i13 = segment.pos; i13 < i12; i13++) {
                i11 = (i11 * 31) + segment.data[i13];
            }
            segment = segment.next;
            Intrinsics.e(segment);
        } while (segment != buffer.head);
        return i11;
    }

    public static final long commonIndexOf(okio.Buffer buffer, byte b11, long j11, long j12) {
        Segment segment;
        int i11;
        Intrinsics.h(buffer, "<this>");
        long size = 0;
        if (0 > j11 || j11 > j12) {
            throw new IllegalArgumentException(("size=" + buffer.size() + " fromIndex=" + j11 + " toIndex=" + j12).toString());
        }
        if (j12 > buffer.size()) {
            j12 = buffer.size();
        }
        if (j11 == j12 || (segment = buffer.head) == null) {
            return -1L;
        }
        if (buffer.size() - j11 < j11) {
            size = buffer.size();
            while (size > j11) {
                segment = segment.prev;
                Intrinsics.e(segment);
                size -= (long) (segment.limit - segment.pos);
            }
            while (size < j12) {
                byte[] bArr = segment.data;
                int iMin = (int) Math.min(segment.limit, (((long) segment.pos) + j12) - size);
                i11 = (int) ((((long) segment.pos) + j11) - size);
                while (i11 < iMin) {
                    if (bArr[i11] != b11) {
                        i11++;
                    }
                }
                size += (long) (segment.limit - segment.pos);
                segment = segment.next;
                Intrinsics.e(segment);
                j11 = size;
            }
            return -1L;
        }
        while (true) {
            long j13 = ((long) (segment.limit - segment.pos)) + size;
            if (j13 > j11) {
                break;
            }
            segment = segment.next;
            Intrinsics.e(segment);
            size = j13;
        }
        while (size < j12) {
            byte[] bArr2 = segment.data;
            int iMin2 = (int) Math.min(segment.limit, (((long) segment.pos) + j12) - size);
            i11 = (int) ((((long) segment.pos) + j11) - size);
            while (i11 < iMin2) {
                if (bArr2[i11] != b11) {
                    i11++;
                }
            }
            size += (long) (segment.limit - segment.pos);
            segment = segment.next;
            Intrinsics.e(segment);
            j11 = size;
        }
        return -1L;
        return ((long) (i11 - segment.pos)) + size;
    }

    public static final long commonIndexOf(okio.Buffer buffer, ByteString bytes, long j11) {
        long size;
        int i11;
        long j12 = j11;
        Intrinsics.h(buffer, "<this>");
        Intrinsics.h(bytes, "bytes");
        if (bytes.size() <= 0) {
            throw new IllegalArgumentException("bytes is empty");
        }
        long j13 = 0;
        if (j12 < 0) {
            throw new IllegalArgumentException(("fromIndex < 0: " + j12).toString());
        }
        Segment segment = buffer.head;
        if (segment == null) {
            return -1L;
        }
        if (buffer.size() - j12 < j12) {
            size = buffer.size();
            while (size > j12) {
                segment = segment.prev;
                Intrinsics.e(segment);
                size -= (long) (segment.limit - segment.pos);
            }
            byte[] bArrInternalArray$okio = bytes.internalArray$okio();
            byte b11 = bArrInternalArray$okio[0];
            int size2 = bytes.size();
            long size3 = (buffer.size() - ((long) size2)) + 1;
            while (size < size3) {
                byte[] bArr = segment.data;
                int iMin = (int) Math.min(segment.limit, (((long) segment.pos) + size3) - size);
                i11 = (int) ((((long) segment.pos) + j12) - size);
                while (i11 < iMin) {
                    if (bArr[i11] != b11 || !rangeEquals(segment, i11 + 1, bArrInternalArray$okio, 1, size2)) {
                        i11++;
                    }
                }
                size += (long) (segment.limit - segment.pos);
                segment = segment.next;
                Intrinsics.e(segment);
                j12 = size;
            }
            return -1L;
        }
        while (true) {
            long j14 = ((long) (segment.limit - segment.pos)) + j13;
            if (j14 > j12) {
                break;
            }
            segment = segment.next;
            Intrinsics.e(segment);
            j13 = j14;
        }
        byte[] bArrInternalArray$okio2 = bytes.internalArray$okio();
        byte b12 = bArrInternalArray$okio2[0];
        int size4 = bytes.size();
        long size5 = (buffer.size() - ((long) size4)) + 1;
        size = j13;
        while (size < size5) {
            byte[] bArr2 = segment.data;
            long j15 = size5;
            int iMin2 = (int) Math.min(segment.limit, (((long) segment.pos) + size5) - size);
            i11 = (int) ((((long) segment.pos) + j12) - size);
            while (i11 < iMin2) {
                if (bArr2[i11] == b12 && rangeEquals(segment, i11 + 1, bArrInternalArray$okio2, 1, size4)) {
                }
                i11++;
            }
            size += (long) (segment.limit - segment.pos);
            segment = segment.next;
            Intrinsics.e(segment);
            size5 = j15;
            j12 = size;
        }
        return -1L;
        return ((long) (i11 - segment.pos)) + size;
    }

    public static final long commonIndexOfElement(okio.Buffer buffer, ByteString targetBytes, long j11) {
        int i11;
        int i12;
        Intrinsics.h(buffer, "<this>");
        Intrinsics.h(targetBytes, "targetBytes");
        long size = 0;
        if (j11 < 0) {
            throw new IllegalArgumentException(("fromIndex < 0: " + j11).toString());
        }
        Segment segment = buffer.head;
        if (segment == null) {
            return -1L;
        }
        if (buffer.size() - j11 < j11) {
            size = buffer.size();
            while (size > j11) {
                segment = segment.prev;
                Intrinsics.e(segment);
                size -= (long) (segment.limit - segment.pos);
            }
            if (targetBytes.size() == 2) {
                byte b11 = targetBytes.getByte(0);
                byte b12 = targetBytes.getByte(1);
                while (size < buffer.size()) {
                    byte[] bArr = segment.data;
                    i11 = (int) ((((long) segment.pos) + j11) - size);
                    int i13 = segment.limit;
                    while (true) {
                        if (i11 >= i13) {
                            size += (long) (segment.limit - segment.pos);
                            segment = segment.next;
                            Intrinsics.e(segment);
                            j11 = size;
                        } else {
                            byte b13 = bArr[i11];
                            if (b13 == b11 || b13 == b12) {
                                i12 = segment.pos;
                            } else {
                                i11++;
                            }
                        }
                    }
                }
            } else {
                byte[] bArrInternalArray$okio = targetBytes.internalArray$okio();
                while (size < buffer.size()) {
                    byte[] bArr2 = segment.data;
                    i11 = (int) ((((long) segment.pos) + j11) - size);
                    int i14 = segment.limit;
                    while (true) {
                        if (i11 < i14) {
                            byte b14 = bArr2[i11];
                            int length = bArrInternalArray$okio.length;
                            int i15 = 0;
                            while (true) {
                                if (i15 >= length) {
                                    i11++;
                                } else if (b14 == bArrInternalArray$okio[i15]) {
                                    i12 = segment.pos;
                                } else {
                                    i15++;
                                }
                            }
                        } else {
                            size += (long) (segment.limit - segment.pos);
                            segment = segment.next;
                            Intrinsics.e(segment);
                            j11 = size;
                        }
                    }
                }
            }
            return -1L;
        }
        while (true) {
            long j12 = ((long) (segment.limit - segment.pos)) + size;
            if (j12 > j11) {
                break;
            }
            segment = segment.next;
            Intrinsics.e(segment);
            size = j12;
        }
        if (targetBytes.size() == 2) {
            byte b15 = targetBytes.getByte(0);
            byte b16 = targetBytes.getByte(1);
            while (size < buffer.size()) {
                byte[] bArr3 = segment.data;
                i11 = (int) ((((long) segment.pos) + j11) - size);
                int i16 = segment.limit;
                while (true) {
                    if (i11 >= i16) {
                        size += (long) (segment.limit - segment.pos);
                        segment = segment.next;
                        Intrinsics.e(segment);
                        j11 = size;
                    } else {
                        byte b17 = bArr3[i11];
                        if (b17 == b15 || b17 == b16) {
                            i12 = segment.pos;
                        } else {
                            i11++;
                        }
                    }
                }
            }
        } else {
            byte[] bArrInternalArray$okio2 = targetBytes.internalArray$okio();
            while (size < buffer.size()) {
                byte[] bArr4 = segment.data;
                i11 = (int) ((((long) segment.pos) + j11) - size);
                int i17 = segment.limit;
                while (true) {
                    if (i11 < i17) {
                        byte b18 = bArr4[i11];
                        int length2 = bArrInternalArray$okio2.length;
                        int i18 = 0;
                        while (true) {
                            if (i18 >= length2) {
                                i11++;
                            } else if (b18 == bArrInternalArray$okio2[i18]) {
                                i12 = segment.pos;
                            } else {
                                i18++;
                            }
                        }
                    } else {
                        size += (long) (segment.limit - segment.pos);
                        segment = segment.next;
                        Intrinsics.e(segment);
                        j11 = size;
                    }
                }
            }
        }
        return -1L;
        return ((long) (i11 - i12)) + size;
    }

    public static final int commonNext(okio.Buffer.UnsafeCursor unsafeCursor) {
        Intrinsics.h(unsafeCursor, "<this>");
        long j11 = unsafeCursor.offset;
        okio.Buffer buffer = unsafeCursor.buffer;
        Intrinsics.e(buffer);
        if (j11 == buffer.size()) {
            throw new IllegalStateException("no more bytes");
        }
        long j12 = unsafeCursor.offset;
        return unsafeCursor.seek(j12 == -1 ? 0L : j12 + ((long) (unsafeCursor.end - unsafeCursor.start)));
    }

    public static final boolean commonRangeEquals(okio.Buffer buffer, long j11, ByteString bytes, int i11, int i12) {
        Intrinsics.h(buffer, "<this>");
        Intrinsics.h(bytes, "bytes");
        if (j11 < 0 || i11 < 0 || i12 < 0 || buffer.size() - j11 < i12 || bytes.size() - i11 < i12) {
            return false;
        }
        for (int i13 = 0; i13 < i12; i13++) {
            if (buffer.getByte(((long) i13) + j11) != bytes.getByte(i11 + i13)) {
                return false;
            }
        }
        return true;
    }

    public static final int commonRead(okio.Buffer buffer, byte[] sink) {
        Intrinsics.h(buffer, "<this>");
        Intrinsics.h(sink, "sink");
        return buffer.read(sink, 0, sink.length);
    }

    public static final int commonRead(okio.Buffer buffer, byte[] sink, int i11, int i12) {
        Intrinsics.h(buffer, "<this>");
        Intrinsics.h(sink, "sink");
        SegmentedByteString.checkOffsetAndCount(sink.length, i11, i12);
        Segment segment = buffer.head;
        if (segment == null) {
            return -1;
        }
        int iMin = Math.min(i12, segment.limit - segment.pos);
        byte[] bArr = segment.data;
        int i13 = segment.pos;
        ArraysKt.j(bArr, sink, i11, i13, i13 + iMin);
        segment.pos += iMin;
        buffer.setSize$okio(buffer.size() - ((long) iMin));
        if (segment.pos == segment.limit) {
            buffer.head = segment.pop();
            SegmentPool.recycle(segment);
        }
        return iMin;
    }

    public static final long commonRead(okio.Buffer buffer, okio.Buffer sink, long j11) {
        Intrinsics.h(buffer, "<this>");
        Intrinsics.h(sink, "sink");
        if (j11 < 0) {
            throw new IllegalArgumentException(("byteCount < 0: " + j11).toString());
        }
        if (buffer.size() == 0) {
            return -1L;
        }
        if (j11 > buffer.size()) {
            j11 = buffer.size();
        }
        sink.write(buffer, j11);
        return j11;
    }

    public static final long commonReadAll(okio.Buffer buffer, Sink sink) throws IOException {
        Intrinsics.h(buffer, "<this>");
        Intrinsics.h(sink, "sink");
        long size = buffer.size();
        if (size > 0) {
            sink.write(buffer, size);
        }
        return size;
    }

    public static final okio.Buffer.UnsafeCursor commonReadAndWriteUnsafe(okio.Buffer buffer, okio.Buffer.UnsafeCursor unsafeCursor) {
        Intrinsics.h(buffer, "<this>");
        Intrinsics.h(unsafeCursor, "unsafeCursor");
        okio.Buffer.UnsafeCursor unsafeCursorResolveDefaultParameter = SegmentedByteString.resolveDefaultParameter(unsafeCursor);
        if (unsafeCursorResolveDefaultParameter.buffer != null) {
            throw new IllegalStateException("already attached to a buffer");
        }
        unsafeCursorResolveDefaultParameter.buffer = buffer;
        unsafeCursorResolveDefaultParameter.readWrite = true;
        return unsafeCursorResolveDefaultParameter;
    }

    public static final byte commonReadByte(okio.Buffer buffer) throws EOFException {
        Intrinsics.h(buffer, "<this>");
        if (buffer.size() == 0) {
            throw new EOFException();
        }
        Segment segment = buffer.head;
        Intrinsics.e(segment);
        int i11 = segment.pos;
        int i12 = segment.limit;
        int i13 = i11 + 1;
        byte b11 = segment.data[i11];
        buffer.setSize$okio(buffer.size() - 1);
        if (i13 == i12) {
            buffer.head = segment.pop();
            SegmentPool.recycle(segment);
        } else {
            segment.pos = i13;
        }
        return b11;
    }

    public static final byte[] commonReadByteArray(okio.Buffer buffer) {
        Intrinsics.h(buffer, "<this>");
        return buffer.readByteArray(buffer.size());
    }

    public static final byte[] commonReadByteArray(okio.Buffer buffer, long j11) throws EOFException {
        Intrinsics.h(buffer, "<this>");
        if (j11 < 0 || j11 > 2147483647L) {
            throw new IllegalArgumentException(("byteCount: " + j11).toString());
        }
        if (buffer.size() < j11) {
            throw new EOFException();
        }
        byte[] bArr = new byte[(int) j11];
        buffer.readFully(bArr);
        return bArr;
    }

    public static final ByteString commonReadByteString(okio.Buffer buffer) {
        Intrinsics.h(buffer, "<this>");
        return buffer.readByteString(buffer.size());
    }

    public static final ByteString commonReadByteString(okio.Buffer buffer, long j11) throws EOFException {
        Intrinsics.h(buffer, "<this>");
        if (j11 < 0 || j11 > 2147483647L) {
            throw new IllegalArgumentException(("byteCount: " + j11).toString());
        }
        if (buffer.size() < j11) {
            throw new EOFException();
        }
        if (j11 < PlaybackStateCompat.ACTION_SKIP_TO_QUEUE_ITEM) {
            return new ByteString(buffer.readByteArray(j11));
        }
        ByteString byteStringSnapshot = buffer.snapshot((int) j11);
        buffer.skip(j11);
        return byteStringSnapshot;
    }

    public static final long commonReadDecimalLong(okio.Buffer buffer) throws EOFException {
        Intrinsics.h(buffer, "<this>");
        if (buffer.size() == 0) {
            throw new EOFException();
        }
        int i11 = 0;
        boolean z10 = false;
        long j11 = 0;
        long j12 = -7;
        boolean z11 = false;
        do {
            Segment segment = buffer.head;
            Intrinsics.e(segment);
            byte[] bArr = segment.data;
            int i12 = segment.pos;
            int i13 = segment.limit;
            while (i12 < i13) {
                byte b11 = bArr[i12];
                if (b11 >= 48 && b11 <= 57) {
                    int i14 = 48 - b11;
                    if (j11 < OVERFLOW_ZONE || (j11 == OVERFLOW_ZONE && i14 < j12)) {
                        okio.Buffer bufferWriteByte = new okio.Buffer().writeDecimalLong(j11).writeByte((int) b11);
                        if (!z10) {
                            bufferWriteByte.readByte();
                        }
                        throw new NumberFormatException("Number too large: " + bufferWriteByte.readUtf8());
                    }
                    j11 = (j11 * 10) + ((long) i14);
                } else {
                    if (b11 != 45 || i11 != 0) {
                        z11 = true;
                        break;
                    }
                    j12--;
                    z10 = true;
                }
                i12++;
                i11++;
            }
            if (i12 == i13) {
                buffer.head = segment.pop();
                SegmentPool.recycle(segment);
            } else {
                segment.pos = i12;
            }
            if (z11) {
                break;
            }
        } while (buffer.head != null);
        buffer.setSize$okio(buffer.size() - ((long) i11));
        if (i11 >= (z10 ? 2 : 1)) {
            return z10 ? j11 : -j11;
        }
        if (buffer.size() == 0) {
            throw new EOFException();
        }
        throw new NumberFormatException((z10 ? "Expected a digit" : "Expected a digit or '-'") + " but was 0x" + SegmentedByteString.toHexString(buffer.getByte(0L)));
    }

    public static final void commonReadFully(okio.Buffer buffer, okio.Buffer sink, long j11) throws EOFException {
        Intrinsics.h(buffer, "<this>");
        Intrinsics.h(sink, "sink");
        if (buffer.size() >= j11) {
            sink.write(buffer, j11);
        } else {
            sink.write(buffer, buffer.size());
            throw new EOFException();
        }
    }

    public static final void commonReadFully(okio.Buffer buffer, byte[] sink) throws EOFException {
        Intrinsics.h(buffer, "<this>");
        Intrinsics.h(sink, "sink");
        int i11 = 0;
        while (i11 < sink.length) {
            int i12 = buffer.read(sink, i11, sink.length - i11);
            if (i12 == -1) {
                throw new EOFException();
            }
            i11 += i12;
        }
    }

    public static final long commonReadHexadecimalUnsignedLong(okio.Buffer buffer) throws EOFException {
        int i11;
        Intrinsics.h(buffer, "<this>");
        if (buffer.size() == 0) {
            throw new EOFException();
        }
        int i12 = 0;
        boolean z10 = false;
        long j11 = 0;
        do {
            Segment segment = buffer.head;
            Intrinsics.e(segment);
            byte[] bArr = segment.data;
            int i13 = segment.pos;
            int i14 = segment.limit;
            while (i13 < i14) {
                byte b11 = bArr[i13];
                if (b11 >= 48 && b11 <= 57) {
                    i11 = b11 - 48;
                } else if (b11 >= 97 && b11 <= 102) {
                    i11 = b11 - 87;
                } else {
                    if (b11 < 65 || b11 > 70) {
                        if (i12 != 0) {
                            z10 = true;
                            break;
                        }
                        throw new NumberFormatException("Expected leading [0-9a-fA-F] character but was 0x" + SegmentedByteString.toHexString(b11));
                    }
                    i11 = b11 - 55;
                }
                if (((-1152921504606846976L) & j11) != 0) {
                    throw new NumberFormatException("Number too large: " + new okio.Buffer().writeHexadecimalUnsignedLong(j11).writeByte((int) b11).readUtf8());
                }
                j11 = (j11 << 4) | ((long) i11);
                i13++;
                i12++;
            }
            if (i13 == i14) {
                buffer.head = segment.pop();
                SegmentPool.recycle(segment);
            } else {
                segment.pos = i13;
            }
            if (z10) {
                break;
            }
        } while (buffer.head != null);
        buffer.setSize$okio(buffer.size() - ((long) i12));
        return j11;
    }

    public static final int commonReadInt(okio.Buffer buffer) throws EOFException {
        Intrinsics.h(buffer, "<this>");
        if (buffer.size() < 4) {
            throw new EOFException();
        }
        Segment segment = buffer.head;
        Intrinsics.e(segment);
        int i11 = segment.pos;
        int i12 = segment.limit;
        if (i12 - i11 < 4) {
            return (buffer.readByte() & 255) | ((buffer.readByte() & 255) << 24) | ((buffer.readByte() & 255) << 16) | ((buffer.readByte() & 255) << 8);
        }
        byte[] bArr = segment.data;
        int i13 = i11 + 3;
        int i14 = ((bArr[i11 + 1] & 255) << 16) | ((bArr[i11] & 255) << 24) | ((bArr[i11 + 2] & 255) << 8);
        int i15 = i11 + 4;
        int i16 = (bArr[i13] & 255) | i14;
        buffer.setSize$okio(buffer.size() - 4);
        if (i15 == i12) {
            buffer.head = segment.pop();
            SegmentPool.recycle(segment);
        } else {
            segment.pos = i15;
        }
        return i16;
    }

    public static final long commonReadLong(okio.Buffer buffer) throws EOFException {
        Intrinsics.h(buffer, "<this>");
        if (buffer.size() < 8) {
            throw new EOFException();
        }
        Segment segment = buffer.head;
        Intrinsics.e(segment);
        int i11 = segment.pos;
        int i12 = segment.limit;
        if (i12 - i11 < 8) {
            return ((((long) buffer.readInt()) & 4294967295L) << 32) | (4294967295L & ((long) buffer.readInt()));
        }
        byte[] bArr = segment.data;
        int i13 = i11 + 7;
        long j11 = ((((long) bArr[i11]) & 255) << 56) | ((((long) bArr[i11 + 1]) & 255) << 48) | ((((long) bArr[i11 + 2]) & 255) << 40) | ((((long) bArr[i11 + 3]) & 255) << 32) | ((((long) bArr[i11 + 4]) & 255) << 24) | ((((long) bArr[i11 + 5]) & 255) << 16) | ((((long) bArr[i11 + 6]) & 255) << 8);
        int i14 = i11 + 8;
        long j12 = j11 | (((long) bArr[i13]) & 255);
        buffer.setSize$okio(buffer.size() - 8);
        if (i14 == i12) {
            buffer.head = segment.pop();
            SegmentPool.recycle(segment);
        } else {
            segment.pos = i14;
        }
        return j12;
    }

    public static final short commonReadShort(okio.Buffer buffer) throws EOFException {
        Intrinsics.h(buffer, "<this>");
        if (buffer.size() < 2) {
            throw new EOFException();
        }
        Segment segment = buffer.head;
        Intrinsics.e(segment);
        int i11 = segment.pos;
        int i12 = segment.limit;
        if (i12 - i11 < 2) {
            return (short) ((buffer.readByte() & 255) | ((buffer.readByte() & 255) << 8));
        }
        byte[] bArr = segment.data;
        int i13 = i11 + 1;
        int i14 = (bArr[i11] & 255) << 8;
        int i15 = i11 + 2;
        int i16 = (bArr[i13] & 255) | i14;
        buffer.setSize$okio(buffer.size() - 2);
        if (i15 == i12) {
            buffer.head = segment.pop();
            SegmentPool.recycle(segment);
        } else {
            segment.pos = i15;
        }
        return (short) i16;
    }

    public static final okio.Buffer.UnsafeCursor commonReadUnsafe(okio.Buffer buffer, okio.Buffer.UnsafeCursor unsafeCursor) {
        Intrinsics.h(buffer, "<this>");
        Intrinsics.h(unsafeCursor, "unsafeCursor");
        okio.Buffer.UnsafeCursor unsafeCursorResolveDefaultParameter = SegmentedByteString.resolveDefaultParameter(unsafeCursor);
        if (unsafeCursorResolveDefaultParameter.buffer != null) {
            throw new IllegalStateException("already attached to a buffer");
        }
        unsafeCursorResolveDefaultParameter.buffer = buffer;
        unsafeCursorResolveDefaultParameter.readWrite = false;
        return unsafeCursorResolveDefaultParameter;
    }

    public static final String commonReadUtf8(okio.Buffer buffer, long j11) throws EOFException {
        Intrinsics.h(buffer, "<this>");
        if (j11 < 0 || j11 > 2147483647L) {
            throw new IllegalArgumentException(("byteCount: " + j11).toString());
        }
        if (buffer.size() < j11) {
            throw new EOFException();
        }
        if (j11 == 0) {
            return "";
        }
        Segment segment = buffer.head;
        Intrinsics.e(segment);
        int i11 = segment.pos;
        if (((long) i11) + j11 > segment.limit) {
            return _Utf8Kt.commonToUtf8String$default(buffer.readByteArray(j11), 0, 0, 3, null);
        }
        int i12 = (int) j11;
        String strCommonToUtf8String = _Utf8Kt.commonToUtf8String(segment.data, i11, i11 + i12);
        segment.pos += i12;
        buffer.setSize$okio(buffer.size() - j11);
        if (segment.pos == segment.limit) {
            buffer.head = segment.pop();
            SegmentPool.recycle(segment);
        }
        return strCommonToUtf8String;
    }

    public static final int commonReadUtf8CodePoint(okio.Buffer buffer) throws EOFException {
        int i11;
        int i12;
        int i13;
        Intrinsics.h(buffer, "<this>");
        if (buffer.size() == 0) {
            throw new EOFException();
        }
        byte b11 = buffer.getByte(0L);
        if ((b11 & 128) == 0) {
            i11 = b11 & 127;
            i13 = 0;
            i12 = 1;
        } else if ((b11 & 224) == 192) {
            i11 = b11 & 31;
            i12 = 2;
            i13 = 128;
        } else if ((b11 & 240) == 224) {
            i11 = b11 & 15;
            i12 = 3;
            i13 = 2048;
        } else {
            if ((b11 & 248) != 240) {
                buffer.skip(1L);
                return Utf8.REPLACEMENT_CODE_POINT;
            }
            i11 = b11 & 7;
            i12 = 4;
            i13 = 65536;
        }
        long j11 = i12;
        if (buffer.size() < j11) {
            throw new EOFException("size < " + i12 + ": " + buffer.size() + " (to read code point prefixed 0x" + SegmentedByteString.toHexString(b11) + ')');
        }
        for (int i14 = 1; i14 < i12; i14++) {
            long j12 = i14;
            byte b12 = buffer.getByte(j12);
            if ((b12 & 192) != 128) {
                buffer.skip(j12);
                return Utf8.REPLACEMENT_CODE_POINT;
            }
            i11 = (i11 << 6) | (b12 & Utf8.REPLACEMENT_BYTE);
        }
        buffer.skip(j11);
        if (i11 > 1114111) {
            return Utf8.REPLACEMENT_CODE_POINT;
        }
        return ((55296 > i11 || i11 >= 57344) && i11 >= i13) ? i11 : Utf8.REPLACEMENT_CODE_POINT;
    }

    public static final String commonReadUtf8Line(okio.Buffer buffer) {
        Intrinsics.h(buffer, "<this>");
        long jIndexOf = buffer.indexOf((byte) 10);
        if (jIndexOf != -1) {
            return readUtf8Line(buffer, jIndexOf);
        }
        if (buffer.size() != 0) {
            return buffer.readUtf8(buffer.size());
        }
        return null;
    }

    public static final String commonReadUtf8LineStrict(okio.Buffer buffer, long j11) throws EOFException {
        Intrinsics.h(buffer, "<this>");
        if (j11 < 0) {
            throw new IllegalArgumentException(("limit < 0: " + j11).toString());
        }
        long j12 = j11 != Long.MAX_VALUE ? j11 + 1 : Long.MAX_VALUE;
        long jIndexOf = buffer.indexOf((byte) 10, 0L, j12);
        if (jIndexOf != -1) {
            return readUtf8Line(buffer, jIndexOf);
        }
        if (j12 < buffer.size() && buffer.getByte(j12 - 1) == 13 && buffer.getByte(j12) == 10) {
            return readUtf8Line(buffer, j12);
        }
        okio.Buffer buffer2 = new okio.Buffer();
        buffer.copyTo(buffer2, 0L, Math.min(32, buffer.size()));
        throw new EOFException("\\n not found: limit=" + Math.min(buffer.size(), j11) + " content=" + buffer2.readByteString().hex() + (char) 8230);
    }

    public static final long commonResizeBuffer(okio.Buffer.UnsafeCursor unsafeCursor, long j11) {
        Intrinsics.h(unsafeCursor, "<this>");
        okio.Buffer buffer = unsafeCursor.buffer;
        if (buffer == null) {
            throw new IllegalStateException("not attached to a buffer");
        }
        if (!unsafeCursor.readWrite) {
            throw new IllegalStateException("resizeBuffer() only permitted for read/write buffers");
        }
        long size = buffer.size();
        if (j11 <= size) {
            if (j11 < 0) {
                throw new IllegalArgumentException(("newSize < 0: " + j11).toString());
            }
            long j12 = size - j11;
            while (j12 > 0) {
                Segment segment = buffer.head;
                Intrinsics.e(segment);
                Segment segment2 = segment.prev;
                Intrinsics.e(segment2);
                int i11 = segment2.limit;
                long j13 = i11 - segment2.pos;
                if (j13 > j12) {
                    segment2.limit = i11 - ((int) j12);
                    break;
                }
                buffer.head = segment2.pop();
                SegmentPool.recycle(segment2);
                j12 -= j13;
            }
            unsafeCursor.setSegment$okio(null);
            unsafeCursor.offset = j11;
            unsafeCursor.data = null;
            unsafeCursor.start = -1;
            unsafeCursor.end = -1;
        } else if (j11 > size) {
            long j14 = j11 - size;
            boolean z10 = true;
            while (j14 > 0) {
                Segment segmentWritableSegment$okio = buffer.writableSegment$okio(1);
                int iMin = (int) Math.min(j14, 8192 - segmentWritableSegment$okio.limit);
                segmentWritableSegment$okio.limit += iMin;
                j14 -= (long) iMin;
                if (z10) {
                    unsafeCursor.setSegment$okio(segmentWritableSegment$okio);
                    unsafeCursor.offset = size;
                    unsafeCursor.data = segmentWritableSegment$okio.data;
                    int i12 = segmentWritableSegment$okio.limit;
                    unsafeCursor.start = i12 - iMin;
                    unsafeCursor.end = i12;
                    z10 = false;
                }
            }
        }
        buffer.setSize$okio(j11);
        return size;
    }

    public static final int commonSeek(okio.Buffer.UnsafeCursor unsafeCursor, long j11) {
        Segment segmentPush;
        Intrinsics.h(unsafeCursor, "<this>");
        okio.Buffer buffer = unsafeCursor.buffer;
        if (buffer == null) {
            throw new IllegalStateException("not attached to a buffer");
        }
        if (j11 < -1 || j11 > buffer.size()) {
            throw new ArrayIndexOutOfBoundsException("offset=" + j11 + " > size=" + buffer.size());
        }
        if (j11 == -1 || j11 == buffer.size()) {
            unsafeCursor.setSegment$okio(null);
            unsafeCursor.offset = j11;
            unsafeCursor.data = null;
            unsafeCursor.start = -1;
            unsafeCursor.end = -1;
            return -1;
        }
        long size = buffer.size();
        Segment segment = buffer.head;
        long j12 = 0;
        if (unsafeCursor.getSegment() != null) {
            long j13 = unsafeCursor.offset;
            int i11 = unsafeCursor.start;
            Segment segment2 = unsafeCursor.getSegment();
            Intrinsics.e(segment2);
            long j14 = j13 - ((long) (i11 - segment2.pos));
            if (j14 > j11) {
                segmentPush = segment;
                segment = unsafeCursor.getSegment();
                size = j14;
            } else {
                segmentPush = unsafeCursor.getSegment();
                j12 = j14;
            }
        } else {
            segmentPush = segment;
        }
        if (size - j11 > j11 - j12) {
            while (true) {
                Intrinsics.e(segmentPush);
                int i12 = segmentPush.limit;
                int i13 = segmentPush.pos;
                if (j11 < ((long) (i12 - i13)) + j12) {
                    break;
                }
                j12 += (long) (i12 - i13);
                segmentPush = segmentPush.next;
            }
        } else {
            while (size > j11) {
                Intrinsics.e(segment);
                segment = segment.prev;
                Intrinsics.e(segment);
                size -= (long) (segment.limit - segment.pos);
            }
            j12 = size;
            segmentPush = segment;
        }
        if (unsafeCursor.readWrite) {
            Intrinsics.e(segmentPush);
            if (segmentPush.shared) {
                Segment segmentUnsharedCopy = segmentPush.unsharedCopy();
                if (buffer.head == segmentPush) {
                    buffer.head = segmentUnsharedCopy;
                }
                segmentPush = segmentPush.push(segmentUnsharedCopy);
                Segment segment3 = segmentPush.prev;
                Intrinsics.e(segment3);
                segment3.pop();
            }
        }
        unsafeCursor.setSegment$okio(segmentPush);
        unsafeCursor.offset = j11;
        Intrinsics.e(segmentPush);
        unsafeCursor.data = segmentPush.data;
        int i14 = segmentPush.pos + ((int) (j11 - j12));
        unsafeCursor.start = i14;
        int i15 = segmentPush.limit;
        unsafeCursor.end = i15;
        return i15 - i14;
    }

    public static final int commonSelect(okio.Buffer buffer, Options options) throws EOFException {
        Intrinsics.h(buffer, "<this>");
        Intrinsics.h(options, "options");
        int iSelectPrefix$default = selectPrefix$default(buffer, options, false, 2, null);
        if (iSelectPrefix$default == -1) {
            return -1;
        }
        buffer.skip(options.getByteStrings()[iSelectPrefix$default].size());
        return iSelectPrefix$default;
    }

    public static final void commonSkip(okio.Buffer buffer, long j11) throws EOFException {
        Intrinsics.h(buffer, "<this>");
        while (j11 > 0) {
            Segment segment = buffer.head;
            if (segment == null) {
                throw new EOFException();
            }
            int iMin = (int) Math.min(j11, segment.limit - segment.pos);
            long j12 = iMin;
            buffer.setSize$okio(buffer.size() - j12);
            j11 -= j12;
            int i11 = segment.pos + iMin;
            segment.pos = i11;
            if (i11 == segment.limit) {
                buffer.head = segment.pop();
                SegmentPool.recycle(segment);
            }
        }
    }

    public static final ByteString commonSnapshot(okio.Buffer buffer) {
        Intrinsics.h(buffer, "<this>");
        if (buffer.size() <= 2147483647L) {
            return buffer.snapshot((int) buffer.size());
        }
        throw new IllegalStateException(("size > Int.MAX_VALUE: " + buffer.size()).toString());
    }

    public static final ByteString commonSnapshot(okio.Buffer buffer, int i11) {
        Intrinsics.h(buffer, "<this>");
        if (i11 == 0) {
            return ByteString.EMPTY;
        }
        SegmentedByteString.checkOffsetAndCount(buffer.size(), 0L, i11);
        Segment segment = buffer.head;
        int i12 = 0;
        int i13 = 0;
        int i14 = 0;
        while (i13 < i11) {
            Intrinsics.e(segment);
            int i15 = segment.limit;
            int i16 = segment.pos;
            if (i15 == i16) {
                throw new AssertionError("s.limit == s.pos");
            }
            i13 += i15 - i16;
            i14++;
            segment = segment.next;
        }
        byte[][] bArr = new byte[i14][];
        int[] iArr = new int[i14 * 2];
        Segment segment2 = buffer.head;
        int i17 = 0;
        while (i12 < i11) {
            Intrinsics.e(segment2);
            bArr[i17] = segment2.data;
            i12 += segment2.limit - segment2.pos;
            iArr[i17] = Math.min(i12, i11);
            iArr[i17 + i14] = segment2.pos;
            segment2.shared = true;
            i17++;
            segment2 = segment2.next;
        }
        return new C1083SegmentedByteString(bArr, iArr);
    }

    public static final Segment commonWritableSegment(okio.Buffer buffer, int i11) {
        Intrinsics.h(buffer, "<this>");
        if (i11 < 1 || i11 > 8192) {
            throw new IllegalArgumentException("unexpected capacity");
        }
        Segment segment = buffer.head;
        if (segment != null) {
            Intrinsics.e(segment);
            Segment segment2 = segment.prev;
            Intrinsics.e(segment2);
            return (segment2.limit + i11 > 8192 || !segment2.owner) ? segment2.push(SegmentPool.take()) : segment2;
        }
        Segment segmentTake = SegmentPool.take();
        buffer.head = segmentTake;
        segmentTake.prev = segmentTake;
        segmentTake.next = segmentTake;
        return segmentTake;
    }

    public static final okio.Buffer commonWrite(okio.Buffer buffer, ByteString byteString, int i11, int i12) {
        Intrinsics.h(buffer, "<this>");
        Intrinsics.h(byteString, "byteString");
        byteString.write$okio(buffer, i11, i12);
        return buffer;
    }

    public static final okio.Buffer commonWrite(okio.Buffer buffer, Source source, long j11) throws IOException {
        Intrinsics.h(buffer, "<this>");
        Intrinsics.h(source, "source");
        while (j11 > 0) {
            long j12 = source.read(buffer, j11);
            if (j12 == -1) {
                throw new EOFException();
            }
            j11 -= j12;
        }
        return buffer;
    }

    public static final okio.Buffer commonWrite(okio.Buffer buffer, byte[] source) {
        Intrinsics.h(buffer, "<this>");
        Intrinsics.h(source, "source");
        return buffer.write(source, 0, source.length);
    }

    public static final okio.Buffer commonWrite(okio.Buffer buffer, byte[] source, int i11, int i12) {
        Intrinsics.h(buffer, "<this>");
        Intrinsics.h(source, "source");
        long j11 = i12;
        SegmentedByteString.checkOffsetAndCount(source.length, i11, j11);
        int i13 = i12 + i11;
        while (i11 < i13) {
            Segment segmentWritableSegment$okio = buffer.writableSegment$okio(1);
            int iMin = Math.min(i13 - i11, 8192 - segmentWritableSegment$okio.limit);
            int i14 = i11 + iMin;
            ArraysKt.j(source, segmentWritableSegment$okio.data, segmentWritableSegment$okio.limit, i11, i14);
            segmentWritableSegment$okio.limit += iMin;
            i11 = i14;
        }
        buffer.setSize$okio(buffer.size() + j11);
        return buffer;
    }

    public static final void commonWrite(okio.Buffer buffer, okio.Buffer source, long j11) {
        Segment segment;
        Intrinsics.h(buffer, "<this>");
        Intrinsics.h(source, "source");
        if (source == buffer) {
            throw new IllegalArgumentException("source == this");
        }
        SegmentedByteString.checkOffsetAndCount(source.size(), 0L, j11);
        while (j11 > 0) {
            Segment segment2 = source.head;
            Intrinsics.e(segment2);
            int i11 = segment2.limit;
            Segment segment3 = source.head;
            Intrinsics.e(segment3);
            if (j11 < i11 - segment3.pos) {
                Segment segment4 = buffer.head;
                if (segment4 != null) {
                    Intrinsics.e(segment4);
                    segment = segment4.prev;
                } else {
                    segment = null;
                }
                if (segment != null && segment.owner) {
                    if ((((long) segment.limit) + j11) - ((long) (segment.shared ? 0 : segment.pos)) <= PlaybackStateCompat.ACTION_PLAY_FROM_URI) {
                        Segment segment5 = source.head;
                        Intrinsics.e(segment5);
                        segment5.writeTo(segment, (int) j11);
                        source.setSize$okio(source.size() - j11);
                        buffer.setSize$okio(buffer.size() + j11);
                        return;
                    }
                }
                Segment segment6 = source.head;
                Intrinsics.e(segment6);
                source.head = segment6.split((int) j11);
            }
            Segment segment7 = source.head;
            Intrinsics.e(segment7);
            long j12 = segment7.limit - segment7.pos;
            source.head = segment7.pop();
            Segment segment8 = buffer.head;
            if (segment8 == null) {
                buffer.head = segment7;
                segment7.prev = segment7;
                segment7.next = segment7;
            } else {
                Intrinsics.e(segment8);
                Segment segment9 = segment8.prev;
                Intrinsics.e(segment9);
                segment9.push(segment7).compact();
            }
            source.setSize$okio(source.size() - j12);
            buffer.setSize$okio(buffer.size() + j12);
            j11 -= j12;
        }
    }

    public static /* synthetic */ okio.Buffer commonWrite$default(okio.Buffer buffer, ByteString byteString, int i11, int i12, int i13, Object obj) {
        if ((i13 & 2) != 0) {
            i11 = 0;
        }
        if ((i13 & 4) != 0) {
            i12 = byteString.size();
        }
        Intrinsics.h(buffer, "<this>");
        Intrinsics.h(byteString, "byteString");
        byteString.write$okio(buffer, i11, i12);
        return buffer;
    }

    public static final long commonWriteAll(okio.Buffer buffer, Source source) throws IOException {
        Intrinsics.h(buffer, "<this>");
        Intrinsics.h(source, "source");
        long j11 = 0;
        while (true) {
            long j12 = source.read(buffer, PlaybackStateCompat.ACTION_PLAY_FROM_URI);
            if (j12 == -1) {
                return j11;
            }
            j11 += j12;
        }
    }

    public static final okio.Buffer commonWriteByte(okio.Buffer buffer, int i11) {
        Intrinsics.h(buffer, "<this>");
        Segment segmentWritableSegment$okio = buffer.writableSegment$okio(1);
        byte[] bArr = segmentWritableSegment$okio.data;
        int i12 = segmentWritableSegment$okio.limit;
        segmentWritableSegment$okio.limit = i12 + 1;
        bArr[i12] = (byte) i11;
        buffer.setSize$okio(buffer.size() + 1);
        return buffer;
    }

    public static final okio.Buffer commonWriteDecimalLong(okio.Buffer buffer, long j11) {
        boolean z10;
        Intrinsics.h(buffer, "<this>");
        if (j11 == 0) {
            return buffer.writeByte(48);
        }
        int i11 = 1;
        if (j11 < 0) {
            j11 = -j11;
            if (j11 < 0) {
                return buffer.writeUtf8("-9223372036854775808");
            }
            z10 = true;
        } else {
            z10 = false;
        }
        if (j11 < 100000000) {
            if (j11 < 10000) {
                if (j11 >= 100) {
                    i11 = j11 < 1000 ? 3 : 4;
                } else if (j11 >= 10) {
                    i11 = 2;
                }
            } else if (j11 < 1000000) {
                i11 = j11 < 100000 ? 5 : 6;
            } else {
                i11 = j11 < 10000000 ? 7 : 8;
            }
        } else if (j11 < 1000000000000L) {
            if (j11 < RealConnection.IDLE_CONNECTION_HEALTHY_NS) {
                i11 = j11 < C.NANOS_PER_SECOND ? 9 : 10;
            } else {
                i11 = j11 < 100000000000L ? 11 : 12;
            }
        } else if (j11 < 1000000000000000L) {
            if (j11 < 10000000000000L) {
                i11 = 13;
            } else {
                i11 = j11 < 100000000000000L ? 14 : 15;
            }
        } else if (j11 < 100000000000000000L) {
            i11 = j11 < 10000000000000000L ? 16 : 17;
        } else {
            i11 = j11 < 1000000000000000000L ? 18 : 19;
        }
        if (z10) {
            i11++;
        }
        Segment segmentWritableSegment$okio = buffer.writableSegment$okio(i11);
        byte[] bArr = segmentWritableSegment$okio.data;
        int i12 = segmentWritableSegment$okio.limit + i11;
        while (j11 != 0) {
            long j12 = 10;
            i12--;
            bArr[i12] = getHEX_DIGIT_BYTES()[(int) (j11 % j12)];
            j11 /= j12;
        }
        if (z10) {
            bArr[i12 - 1] = 45;
        }
        segmentWritableSegment$okio.limit += i11;
        buffer.setSize$okio(buffer.size() + ((long) i11));
        return buffer;
    }

    public static final okio.Buffer commonWriteHexadecimalUnsignedLong(okio.Buffer buffer, long j11) {
        Intrinsics.h(buffer, "<this>");
        if (j11 == 0) {
            return buffer.writeByte(48);
        }
        long j12 = (j11 >>> 1) | j11;
        long j13 = j12 | (j12 >>> 2);
        long j14 = j13 | (j13 >>> 4);
        long j15 = j14 | (j14 >>> 8);
        long j16 = j15 | (j15 >>> 16);
        long j17 = j16 | (j16 >>> 32);
        long j18 = j17 - ((j17 >>> 1) & 6148914691236517205L);
        long j19 = ((j18 >>> 2) & 3689348814741910323L) + (j18 & 3689348814741910323L);
        long j20 = ((j19 >>> 4) + j19) & 1085102592571150095L;
        long j21 = j20 + (j20 >>> 8);
        long j22 = j21 + (j21 >>> 16);
        int i11 = (int) ((((j22 & 63) + ((j22 >>> 32) & 63)) + ((long) 3)) / ((long) 4));
        Segment segmentWritableSegment$okio = buffer.writableSegment$okio(i11);
        byte[] bArr = segmentWritableSegment$okio.data;
        int i12 = segmentWritableSegment$okio.limit;
        for (int i13 = (i12 + i11) - 1; i13 >= i12; i13--) {
            bArr[i13] = getHEX_DIGIT_BYTES()[(int) (15 & j11)];
            j11 >>>= 4;
        }
        segmentWritableSegment$okio.limit += i11;
        buffer.setSize$okio(buffer.size() + ((long) i11));
        return buffer;
    }

    public static final okio.Buffer commonWriteInt(okio.Buffer buffer, int i11) {
        Intrinsics.h(buffer, "<this>");
        Segment segmentWritableSegment$okio = buffer.writableSegment$okio(4);
        byte[] bArr = segmentWritableSegment$okio.data;
        int i12 = segmentWritableSegment$okio.limit;
        bArr[i12] = (byte) ((i11 >>> 24) & 255);
        bArr[i12 + 1] = (byte) ((i11 >>> 16) & 255);
        bArr[i12 + 2] = (byte) ((i11 >>> 8) & 255);
        bArr[i12 + 3] = (byte) (i11 & 255);
        segmentWritableSegment$okio.limit = i12 + 4;
        buffer.setSize$okio(buffer.size() + 4);
        return buffer;
    }

    public static final okio.Buffer commonWriteLong(okio.Buffer buffer, long j11) {
        Intrinsics.h(buffer, "<this>");
        Segment segmentWritableSegment$okio = buffer.writableSegment$okio(8);
        byte[] bArr = segmentWritableSegment$okio.data;
        int i11 = segmentWritableSegment$okio.limit;
        bArr[i11] = (byte) ((j11 >>> 56) & 255);
        bArr[i11 + 1] = (byte) ((j11 >>> 48) & 255);
        bArr[i11 + 2] = (byte) ((j11 >>> 40) & 255);
        bArr[i11 + 3] = (byte) ((j11 >>> 32) & 255);
        bArr[i11 + 4] = (byte) ((j11 >>> 24) & 255);
        bArr[i11 + 5] = (byte) ((j11 >>> 16) & 255);
        bArr[i11 + 6] = (byte) ((j11 >>> 8) & 255);
        bArr[i11 + 7] = (byte) (j11 & 255);
        segmentWritableSegment$okio.limit = i11 + 8;
        buffer.setSize$okio(buffer.size() + 8);
        return buffer;
    }

    public static final okio.Buffer commonWriteShort(okio.Buffer buffer, int i11) {
        Intrinsics.h(buffer, "<this>");
        Segment segmentWritableSegment$okio = buffer.writableSegment$okio(2);
        byte[] bArr = segmentWritableSegment$okio.data;
        int i12 = segmentWritableSegment$okio.limit;
        bArr[i12] = (byte) ((i11 >>> 8) & 255);
        bArr[i12 + 1] = (byte) (i11 & 255);
        segmentWritableSegment$okio.limit = i12 + 2;
        buffer.setSize$okio(buffer.size() + 2);
        return buffer;
    }

    public static final okio.Buffer commonWriteUtf8(okio.Buffer buffer, String string, int i11, int i12) {
        char cCharAt;
        Intrinsics.h(buffer, "<this>");
        Intrinsics.h(string, "string");
        if (i11 < 0) {
            throw new IllegalArgumentException(("beginIndex < 0: " + i11).toString());
        }
        if (i12 < i11) {
            throw new IllegalArgumentException(("endIndex < beginIndex: " + i12 + " < " + i11).toString());
        }
        if (i12 > string.length()) {
            throw new IllegalArgumentException(("endIndex > string.length: " + i12 + " > " + string.length()).toString());
        }
        while (i11 < i12) {
            char cCharAt2 = string.charAt(i11);
            if (cCharAt2 < 128) {
                Segment segmentWritableSegment$okio = buffer.writableSegment$okio(1);
                byte[] bArr = segmentWritableSegment$okio.data;
                int i13 = segmentWritableSegment$okio.limit - i11;
                int iMin = Math.min(i12, 8192 - i13);
                int i14 = i11 + 1;
                bArr[i11 + i13] = (byte) cCharAt2;
                while (true) {
                    i11 = i14;
                    if (i11 >= iMin || (cCharAt = string.charAt(i11)) >= 128) {
                        break;
                    }
                    i14 = i11 + 1;
                    bArr[i11 + i13] = (byte) cCharAt;
                }
                int i15 = segmentWritableSegment$okio.limit;
                int i16 = (i13 + i11) - i15;
                segmentWritableSegment$okio.limit = i15 + i16;
                buffer.setSize$okio(buffer.size() + ((long) i16));
            } else {
                if (cCharAt2 < 2048) {
                    Segment segmentWritableSegment$okio2 = buffer.writableSegment$okio(2);
                    byte[] bArr2 = segmentWritableSegment$okio2.data;
                    int i17 = segmentWritableSegment$okio2.limit;
                    bArr2[i17] = (byte) ((cCharAt2 >> 6) | PsExtractor.AUDIO_STREAM);
                    bArr2[i17 + 1] = (byte) ((cCharAt2 & '?') | 128);
                    segmentWritableSegment$okio2.limit = i17 + 2;
                    buffer.setSize$okio(buffer.size() + 2);
                } else if (cCharAt2 < 55296 || cCharAt2 > 57343) {
                    Segment segmentWritableSegment$okio3 = buffer.writableSegment$okio(3);
                    byte[] bArr3 = segmentWritableSegment$okio3.data;
                    int i18 = segmentWritableSegment$okio3.limit;
                    bArr3[i18] = (byte) ((cCharAt2 >> '\f') | 224);
                    bArr3[i18 + 1] = (byte) ((63 & (cCharAt2 >> 6)) | 128);
                    bArr3[i18 + 2] = (byte) ((cCharAt2 & '?') | 128);
                    segmentWritableSegment$okio3.limit = i18 + 3;
                    buffer.setSize$okio(buffer.size() + 3);
                } else {
                    int i19 = i11 + 1;
                    char cCharAt3 = i19 < i12 ? string.charAt(i19) : (char) 0;
                    if (cCharAt2 > 56319 || 56320 > cCharAt3 || cCharAt3 >= 57344) {
                        buffer.writeByte(63);
                        i11 = i19;
                    } else {
                        int i20 = (((cCharAt2 & 1023) << 10) | (cCharAt3 & 1023)) + 65536;
                        Segment segmentWritableSegment$okio4 = buffer.writableSegment$okio(4);
                        byte[] bArr4 = segmentWritableSegment$okio4.data;
                        int i21 = segmentWritableSegment$okio4.limit;
                        bArr4[i21] = (byte) ((i20 >> 18) | 240);
                        bArr4[i21 + 1] = (byte) (((i20 >> 12) & 63) | 128);
                        bArr4[i21 + 2] = (byte) (((i20 >> 6) & 63) | 128);
                        bArr4[i21 + 3] = (byte) ((i20 & 63) | 128);
                        segmentWritableSegment$okio4.limit = i21 + 4;
                        buffer.setSize$okio(buffer.size() + 4);
                        i11 += 2;
                    }
                }
                i11++;
            }
        }
        return buffer;
    }

    public static final okio.Buffer commonWriteUtf8CodePoint(okio.Buffer buffer, int i11) {
        Intrinsics.h(buffer, "<this>");
        if (i11 < 128) {
            buffer.writeByte(i11);
        } else if (i11 < 2048) {
            Segment segmentWritableSegment$okio = buffer.writableSegment$okio(2);
            byte[] bArr = segmentWritableSegment$okio.data;
            int i12 = segmentWritableSegment$okio.limit;
            bArr[i12] = (byte) ((i11 >> 6) | PsExtractor.AUDIO_STREAM);
            bArr[i12 + 1] = (byte) ((i11 & 63) | 128);
            segmentWritableSegment$okio.limit = i12 + 2;
            buffer.setSize$okio(buffer.size() + 2);
        } else if (55296 <= i11 && i11 < 57344) {
            buffer.writeByte(63);
        } else if (i11 < 65536) {
            Segment segmentWritableSegment$okio2 = buffer.writableSegment$okio(3);
            byte[] bArr2 = segmentWritableSegment$okio2.data;
            int i13 = segmentWritableSegment$okio2.limit;
            bArr2[i13] = (byte) ((i11 >> 12) | 224);
            bArr2[i13 + 1] = (byte) (((i11 >> 6) & 63) | 128);
            bArr2[i13 + 2] = (byte) ((i11 & 63) | 128);
            segmentWritableSegment$okio2.limit = i13 + 3;
            buffer.setSize$okio(buffer.size() + 3);
        } else {
            if (i11 > 1114111) {
                throw new IllegalArgumentException("Unexpected code point: 0x" + SegmentedByteString.toHexString(i11));
            }
            Segment segmentWritableSegment$okio3 = buffer.writableSegment$okio(4);
            byte[] bArr3 = segmentWritableSegment$okio3.data;
            int i14 = segmentWritableSegment$okio3.limit;
            bArr3[i14] = (byte) ((i11 >> 18) | 240);
            bArr3[i14 + 1] = (byte) (((i11 >> 12) & 63) | 128);
            bArr3[i14 + 2] = (byte) (((i11 >> 6) & 63) | 128);
            bArr3[i14 + 3] = (byte) ((i11 & 63) | 128);
            segmentWritableSegment$okio3.limit = i14 + 4;
            buffer.setSize$okio(buffer.size() + 4);
        }
        return buffer;
    }

    public static final byte[] getHEX_DIGIT_BYTES() {
        return HEX_DIGIT_BYTES;
    }

    public static /* synthetic */ void getHEX_DIGIT_BYTES$annotations() {
    }

    public static final boolean rangeEquals(Segment segment, int i11, byte[] bytes, int i12, int i13) {
        Intrinsics.h(segment, "segment");
        Intrinsics.h(bytes, "bytes");
        int i14 = segment.limit;
        byte[] bArr = segment.data;
        while (i12 < i13) {
            if (i11 == i14) {
                segment = segment.next;
                Intrinsics.e(segment);
                byte[] bArr2 = segment.data;
                bArr = bArr2;
                i11 = segment.pos;
                i14 = segment.limit;
            }
            if (bArr[i11] != bytes[i12]) {
                return false;
            }
            i11++;
            i12++;
        }
        return true;
    }

    public static final String readUtf8Line(okio.Buffer buffer, long j11) throws EOFException {
        Intrinsics.h(buffer, "<this>");
        if (j11 > 0) {
            long j12 = j11 - 1;
            if (buffer.getByte(j12) == 13) {
                String utf8 = buffer.readUtf8(j12);
                buffer.skip(2L);
                return utf8;
            }
        }
        String utf9 = buffer.readUtf8(j11);
        buffer.skip(1L);
        return utf9;
    }

    public static final <T> T seek(okio.Buffer buffer, long j11, Function2<? super Segment, ? super Long, ? extends T> lambda) {
        Intrinsics.h(buffer, "<this>");
        Intrinsics.h(lambda, "lambda");
        Segment segment = buffer.head;
        if (segment == null) {
            return (T) lambda.invoke(null, -1L);
        }
        if (buffer.size() - j11 < j11) {
            long size = buffer.size();
            while (size > j11) {
                segment = segment.prev;
                Intrinsics.e(segment);
                size -= (long) (segment.limit - segment.pos);
            }
            return (T) lambda.invoke(segment, Long.valueOf(size));
        }
        long j12 = 0;
        while (true) {
            long j13 = ((long) (segment.limit - segment.pos)) + j12;
            if (j13 > j11) {
                return (T) lambda.invoke(segment, Long.valueOf(j12));
            }
            segment = segment.next;
            Intrinsics.e(segment);
            j12 = j13;
        }
    }

    public static final int selectPrefix(okio.Buffer buffer, Options options, boolean z10) {
        int i11;
        int i12;
        Segment segment;
        int i13;
        int i14;
        Intrinsics.h(buffer, "<this>");
        Intrinsics.h(options, "options");
        Segment segment2 = buffer.head;
        if (segment2 == null) {
            return z10 ? -2 : -1;
        }
        byte[] bArr = segment2.data;
        int i15 = segment2.pos;
        int i16 = segment2.limit;
        int[] trie$okio = options.getTrie();
        Segment segment3 = segment2;
        int i17 = -1;
        int i18 = 0;
        loop0: while (true) {
            int i19 = i18 + 1;
            int i20 = trie$okio[i18];
            int i21 = i18 + 2;
            int i22 = trie$okio[i19];
            if (i22 != -1) {
                i17 = i22;
            }
            if (segment3 == null) {
                break;
            }
            if (i20 >= 0) {
                i11 = i15 + 1;
                int i23 = bArr[i15] & 255;
                int i24 = i21 + i20;
                while (i21 != i24) {
                    if (i23 == trie$okio[i21]) {
                        i12 = trie$okio[i21 + i20];
                        if (i11 == i16) {
                            segment3 = segment3.next;
                            Intrinsics.e(segment3);
                            i11 = segment3.pos;
                            bArr = segment3.data;
                            i16 = segment3.limit;
                            if (segment3 == segment2) {
                                segment3 = null;
                            }
                        }
                    } else {
                        i21++;
                    }
                }
                return i17;
            }
            int i25 = i21 + (i20 * (-1));
            while (true) {
                int i26 = i15 + 1;
                int i27 = i21 + 1;
                if ((bArr[i15] & 255) != trie$okio[i21]) {
                    return i17;
                }
                boolean z11 = i27 == i25;
                if (i26 == i16) {
                    Intrinsics.e(segment3);
                    Segment segment4 = segment3.next;
                    Intrinsics.e(segment4);
                    i14 = segment4.pos;
                    byte[] bArr2 = segment4.data;
                    i13 = segment4.limit;
                    if (segment4 != segment2) {
                        segment = segment4;
                        bArr = bArr2;
                    } else {
                        if (!z11) {
                            break loop0;
                        }
                        bArr = bArr2;
                        segment = null;
                    }
                } else {
                    segment = segment3;
                    i13 = i16;
                    i14 = i26;
                }
                if (z11) {
                    i12 = trie$okio[i27];
                    i11 = i14;
                    i16 = i13;
                    segment3 = segment;
                    break;
                }
                i15 = i14;
                i16 = i13;
                segment3 = segment;
                i21 = i27;
            }
            if (i12 >= 0) {
                return i12;
            }
            i18 = -i12;
            i15 = i11;
        }
        if (z10) {
            return -2;
        }
        return i17;
    }

    public static /* synthetic */ int selectPrefix$default(okio.Buffer buffer, Options options, boolean z10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            z10 = false;
        }
        return selectPrefix(buffer, options, z10);
    }
}
