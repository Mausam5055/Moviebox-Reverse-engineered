package okio.internal;

import android.support.v4.media.session.PlaybackStateCompat;
import com.cloud.tmc.integration.event.EventConstants;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.EOFException;
import java.io.IOException;
import kotlin.Metadata;
import kotlin.jvm.JvmName;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import okio.Buffer;
import okio.BufferedSink;
import okio.ByteString;
import okio.Sink;
import okio.Source;
import okio.Timeout;
import okio.buffer;

/* JADX INFO: renamed from: okio.internal.-RealBufferedSink, reason: invalid class name */
/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000D\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0015\u001a\r\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u0080\b\u001a\r\u0010\u0003\u001a\u00020\u0004*\u00020\u0002H\u0080\b\u001a\r\u0010\u0005\u001a\u00020\u0004*\u00020\u0002H\u0080\b\u001a\r\u0010\u0006\u001a\u00020\u0001*\u00020\u0002H\u0080\b\u001a\r\u0010\u0007\u001a\u00020\b*\u00020\u0002H\u0080\b\u001a\r\u0010\t\u001a\u00020\n*\u00020\u0002H\u0080\b\u001a\u0015\u0010\u000b\u001a\u00020\u0004*\u00020\u00022\u0006\u0010\f\u001a\u00020\rH\u0080\b\u001a%\u0010\u000b\u001a\u00020\u0004*\u00020\u00022\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000fH\u0080\b\u001a\u001d\u0010\u000b\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\f\u001a\u00020\u00112\u0006\u0010\u0010\u001a\u00020\u0012H\u0080\b\u001a\u0015\u0010\u000b\u001a\u00020\u0004*\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u0014H\u0080\b\u001a%\u0010\u000b\u001a\u00020\u0004*\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000fH\u0080\b\u001a\u001d\u0010\u000b\u001a\u00020\u0004*\u00020\u00022\u0006\u0010\f\u001a\u00020\u00152\u0006\u0010\u0010\u001a\u00020\u0012H\u0080\b\u001a\u0015\u0010\u0016\u001a\u00020\u0012*\u00020\u00022\u0006\u0010\f\u001a\u00020\u0015H\u0080\b\u001a\u0015\u0010\u0017\u001a\u00020\u0004*\u00020\u00022\u0006\u0010\u0018\u001a\u00020\u000fH\u0080\b\u001a\u0015\u0010\u0019\u001a\u00020\u0004*\u00020\u00022\u0006\u0010\u001a\u001a\u00020\u0012H\u0080\b\u001a\u0015\u0010\u001b\u001a\u00020\u0004*\u00020\u00022\u0006\u0010\u001a\u001a\u00020\u0012H\u0080\b\u001a\u0015\u0010\u001c\u001a\u00020\u0004*\u00020\u00022\u0006\u0010\u001d\u001a\u00020\u000fH\u0080\b\u001a\u0015\u0010\u001e\u001a\u00020\u0004*\u00020\u00022\u0006\u0010\u001d\u001a\u00020\u000fH\u0080\b\u001a\u0015\u0010\u001f\u001a\u00020\u0004*\u00020\u00022\u0006\u0010\u001a\u001a\u00020\u0012H\u0080\b\u001a\u0015\u0010 \u001a\u00020\u0004*\u00020\u00022\u0006\u0010\u001a\u001a\u00020\u0012H\u0080\b\u001a\u0015\u0010!\u001a\u00020\u0004*\u00020\u00022\u0006\u0010\"\u001a\u00020\u000fH\u0080\b\u001a\u0015\u0010#\u001a\u00020\u0004*\u00020\u00022\u0006\u0010\"\u001a\u00020\u000fH\u0080\b\u001a\u0015\u0010$\u001a\u00020\u0004*\u00020\u00022\u0006\u0010%\u001a\u00020\nH\u0080\b\u001a%\u0010$\u001a\u00020\u0004*\u00020\u00022\u0006\u0010%\u001a\u00020\n2\u0006\u0010&\u001a\u00020\u000f2\u0006\u0010'\u001a\u00020\u000fH\u0080\b\u001a\u0015\u0010(\u001a\u00020\u0004*\u00020\u00022\u0006\u0010)\u001a\u00020\u000fH\u0080\b¨\u0006*"}, d2 = {"commonClose", "", "Lokio/RealBufferedSink;", "commonEmit", "Lokio/BufferedSink;", "commonEmitCompleteSegments", "commonFlush", "commonTimeout", "Lokio/Timeout;", "commonToString", "", "commonWrite", EventConstants.KEY_SOURCE, "", "offset", "", "byteCount", "Lokio/Buffer;", "", "byteString", "Lokio/ByteString;", "Lokio/Source;", "commonWriteAll", "commonWriteByte", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "commonWriteDecimalLong", "v", "commonWriteHexadecimalUnsignedLong", "commonWriteInt", "i", "commonWriteIntLe", "commonWriteLong", "commonWriteLongLe", "commonWriteShort", "s", "commonWriteShortLe", "commonWriteUtf8", "string", "beginIndex", "endIndex", "commonWriteUtf8CodePoint", "codePoint", "okio"}, k = 2, mv = {1, 9, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@JvmName
@SourceDebugExtension
public final class RealBufferedSink {
    public static final void commonClose(buffer bufferVar) throws Throwable {
        Intrinsics.h(bufferVar, "<this>");
        if (bufferVar.closed) {
            return;
        }
        if (bufferVar.bufferField.size() > 0) {
            Sink sink = bufferVar.sink;
            Buffer buffer = bufferVar.bufferField;
            sink.write(buffer, buffer.size());
        }
        th = null;
        try {
            bufferVar.sink.close();
        } catch (Throwable th2) {
            if (th == null) {
                th = th2;
            }
        }
        bufferVar.closed = true;
        if (th != null) {
            throw th;
        }
    }

    public static final BufferedSink commonEmit(buffer bufferVar) throws IOException {
        Intrinsics.h(bufferVar, "<this>");
        if (bufferVar.closed) {
            throw new IllegalStateException("closed");
        }
        long size = bufferVar.bufferField.size();
        if (size > 0) {
            bufferVar.sink.write(bufferVar.bufferField, size);
        }
        return bufferVar;
    }

    public static final BufferedSink commonEmitCompleteSegments(buffer bufferVar) throws IOException {
        Intrinsics.h(bufferVar, "<this>");
        if (bufferVar.closed) {
            throw new IllegalStateException("closed");
        }
        long jCompleteSegmentByteCount = bufferVar.bufferField.completeSegmentByteCount();
        if (jCompleteSegmentByteCount > 0) {
            bufferVar.sink.write(bufferVar.bufferField, jCompleteSegmentByteCount);
        }
        return bufferVar;
    }

    public static final void commonFlush(buffer bufferVar) throws IOException {
        Intrinsics.h(bufferVar, "<this>");
        if (bufferVar.closed) {
            throw new IllegalStateException("closed");
        }
        if (bufferVar.bufferField.size() > 0) {
            Sink sink = bufferVar.sink;
            Buffer buffer = bufferVar.bufferField;
            sink.write(buffer, buffer.size());
        }
        bufferVar.sink.flush();
    }

    public static final Timeout commonTimeout(buffer bufferVar) {
        Intrinsics.h(bufferVar, "<this>");
        return bufferVar.sink.getTimeout();
    }

    public static final String commonToString(buffer bufferVar) {
        Intrinsics.h(bufferVar, "<this>");
        return "buffer(" + bufferVar.sink + ')';
    }

    public static final BufferedSink commonWrite(buffer bufferVar, ByteString byteString) {
        Intrinsics.h(bufferVar, "<this>");
        Intrinsics.h(byteString, "byteString");
        if (bufferVar.closed) {
            throw new IllegalStateException("closed");
        }
        bufferVar.bufferField.write(byteString);
        return bufferVar.emitCompleteSegments();
    }

    public static final BufferedSink commonWrite(buffer bufferVar, ByteString byteString, int i11, int i12) {
        Intrinsics.h(bufferVar, "<this>");
        Intrinsics.h(byteString, "byteString");
        if (bufferVar.closed) {
            throw new IllegalStateException("closed");
        }
        bufferVar.bufferField.write(byteString, i11, i12);
        return bufferVar.emitCompleteSegments();
    }

    public static final BufferedSink commonWrite(buffer bufferVar, Source source, long j11) throws IOException {
        Intrinsics.h(bufferVar, "<this>");
        Intrinsics.h(source, "source");
        while (j11 > 0) {
            long j12 = source.read(bufferVar.bufferField, j11);
            if (j12 == -1) {
                throw new EOFException();
            }
            j11 -= j12;
            bufferVar.emitCompleteSegments();
        }
        return bufferVar;
    }

    public static final BufferedSink commonWrite(buffer bufferVar, byte[] source) {
        Intrinsics.h(bufferVar, "<this>");
        Intrinsics.h(source, "source");
        if (bufferVar.closed) {
            throw new IllegalStateException("closed");
        }
        bufferVar.bufferField.write(source);
        return bufferVar.emitCompleteSegments();
    }

    public static final BufferedSink commonWrite(buffer bufferVar, byte[] source, int i11, int i12) {
        Intrinsics.h(bufferVar, "<this>");
        Intrinsics.h(source, "source");
        if (bufferVar.closed) {
            throw new IllegalStateException("closed");
        }
        bufferVar.bufferField.write(source, i11, i12);
        return bufferVar.emitCompleteSegments();
    }

    public static final void commonWrite(buffer bufferVar, Buffer source, long j11) throws IOException {
        Intrinsics.h(bufferVar, "<this>");
        Intrinsics.h(source, "source");
        if (bufferVar.closed) {
            throw new IllegalStateException("closed");
        }
        bufferVar.bufferField.write(source, j11);
        bufferVar.emitCompleteSegments();
    }

    public static final long commonWriteAll(buffer bufferVar, Source source) throws IOException {
        Intrinsics.h(bufferVar, "<this>");
        Intrinsics.h(source, "source");
        long j11 = 0;
        while (true) {
            long j12 = source.read(bufferVar.bufferField, PlaybackStateCompat.ACTION_PLAY_FROM_URI);
            if (j12 == -1) {
                return j11;
            }
            j11 += j12;
            bufferVar.emitCompleteSegments();
        }
    }

    public static final BufferedSink commonWriteByte(buffer bufferVar, int i11) {
        Intrinsics.h(bufferVar, "<this>");
        if (bufferVar.closed) {
            throw new IllegalStateException("closed");
        }
        bufferVar.bufferField.writeByte(i11);
        return bufferVar.emitCompleteSegments();
    }

    public static final BufferedSink commonWriteDecimalLong(buffer bufferVar, long j11) {
        Intrinsics.h(bufferVar, "<this>");
        if (bufferVar.closed) {
            throw new IllegalStateException("closed");
        }
        bufferVar.bufferField.writeDecimalLong(j11);
        return bufferVar.emitCompleteSegments();
    }

    public static final BufferedSink commonWriteHexadecimalUnsignedLong(buffer bufferVar, long j11) {
        Intrinsics.h(bufferVar, "<this>");
        if (bufferVar.closed) {
            throw new IllegalStateException("closed");
        }
        bufferVar.bufferField.writeHexadecimalUnsignedLong(j11);
        return bufferVar.emitCompleteSegments();
    }

    public static final BufferedSink commonWriteInt(buffer bufferVar, int i11) {
        Intrinsics.h(bufferVar, "<this>");
        if (bufferVar.closed) {
            throw new IllegalStateException("closed");
        }
        bufferVar.bufferField.writeInt(i11);
        return bufferVar.emitCompleteSegments();
    }

    public static final BufferedSink commonWriteIntLe(buffer bufferVar, int i11) {
        Intrinsics.h(bufferVar, "<this>");
        if (bufferVar.closed) {
            throw new IllegalStateException("closed");
        }
        bufferVar.bufferField.writeIntLe(i11);
        return bufferVar.emitCompleteSegments();
    }

    public static final BufferedSink commonWriteLong(buffer bufferVar, long j11) {
        Intrinsics.h(bufferVar, "<this>");
        if (bufferVar.closed) {
            throw new IllegalStateException("closed");
        }
        bufferVar.bufferField.writeLong(j11);
        return bufferVar.emitCompleteSegments();
    }

    public static final BufferedSink commonWriteLongLe(buffer bufferVar, long j11) {
        Intrinsics.h(bufferVar, "<this>");
        if (bufferVar.closed) {
            throw new IllegalStateException("closed");
        }
        bufferVar.bufferField.writeLongLe(j11);
        return bufferVar.emitCompleteSegments();
    }

    public static final BufferedSink commonWriteShort(buffer bufferVar, int i11) {
        Intrinsics.h(bufferVar, "<this>");
        if (bufferVar.closed) {
            throw new IllegalStateException("closed");
        }
        bufferVar.bufferField.writeShort(i11);
        return bufferVar.emitCompleteSegments();
    }

    public static final BufferedSink commonWriteShortLe(buffer bufferVar, int i11) {
        Intrinsics.h(bufferVar, "<this>");
        if (bufferVar.closed) {
            throw new IllegalStateException("closed");
        }
        bufferVar.bufferField.writeShortLe(i11);
        return bufferVar.emitCompleteSegments();
    }

    public static final BufferedSink commonWriteUtf8(buffer bufferVar, String string) {
        Intrinsics.h(bufferVar, "<this>");
        Intrinsics.h(string, "string");
        if (bufferVar.closed) {
            throw new IllegalStateException("closed");
        }
        bufferVar.bufferField.writeUtf8(string);
        return bufferVar.emitCompleteSegments();
    }

    public static final BufferedSink commonWriteUtf8(buffer bufferVar, String string, int i11, int i12) {
        Intrinsics.h(bufferVar, "<this>");
        Intrinsics.h(string, "string");
        if (bufferVar.closed) {
            throw new IllegalStateException("closed");
        }
        bufferVar.bufferField.writeUtf8(string, i11, i12);
        return bufferVar.emitCompleteSegments();
    }

    public static final BufferedSink commonWriteUtf8CodePoint(buffer bufferVar, int i11) {
        Intrinsics.h(bufferVar, "<this>");
        if (bufferVar.closed) {
            throw new IllegalStateException("closed");
        }
        bufferVar.bufferField.writeUtf8CodePoint(i11);
        return bufferVar.emitCompleteSegments();
    }
}
