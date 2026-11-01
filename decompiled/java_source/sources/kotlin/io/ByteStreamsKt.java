package kotlin.io;

import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import kotlin.Metadata;
import kotlin.jvm.JvmName;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0002\b\u0003\u001a#\u0010\u0006\u001a\u00020\u0005*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u00012\b\b\u0002\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Ljava/io/InputStream;", "Ljava/io/OutputStream;", "out", "", "bufferSize", "", "a", "(Ljava/io/InputStream;Ljava/io/OutputStream;I)J", "kotlin-stdlib"}, k = 2, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@JvmName
public final class ByteStreamsKt {
    public static final long a(InputStream inputStream, OutputStream out, int i11) throws IOException {
        Intrinsics.h(inputStream, "<this>");
        Intrinsics.h(out, "out");
        byte[] bArr = new byte[i11];
        int i12 = inputStream.read(bArr);
        long j11 = 0;
        while (i12 >= 0) {
            out.write(bArr, 0, i12);
            j11 += (long) i12;
            i12 = inputStream.read(bArr);
        }
        return j11;
    }

    public static /* synthetic */ long b(InputStream inputStream, OutputStream outputStream, int i11, int i12, Object obj) {
        if ((i12 & 2) != 0) {
            i11 = 8192;
        }
        return a(inputStream, outputStream, i11);
    }
}
