package okio;

import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Closeable;
import kotlin.ExceptionsKt;
import kotlin.Metadata;
import kotlin.jvm.JvmName;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.InlineMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000,\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\r\u0010\u0000\u001a\u00020\u0001H\u0007¢\u0006\u0002\b\u0002\u001a\n\u0010\u0003\u001a\u00020\u0004*\u00020\u0001\u001a\n\u0010\u0003\u001a\u00020\u0005*\u00020\u0006\u001aA\u0010\u0007\u001a\u0002H\b\"\u0010\b\u0000\u0010\t*\n\u0018\u00010\nj\u0004\u0018\u0001`\u000b\"\u0004\b\u0001\u0010\b*\u0002H\t2\u0012\u0010\f\u001a\u000e\u0012\u0004\u0012\u0002H\t\u0012\u0004\u0012\u0002H\b0\rH\u0086\bø\u0001\u0000¢\u0006\u0002\u0010\u000e\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000f"}, d2 = {"blackholeSink", "Lokio/Sink;", "blackhole", "buffer", "Lokio/BufferedSink;", "Lokio/BufferedSource;", "Lokio/Source;", "use", "R", "T", "Ljava/io/Closeable;", "Lokio/Closeable;", "block", "Lkotlin/Function1;", "(Ljava/io/Closeable;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;", "okio"}, k = 5, mv = {1, 9, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE, xs = "okio/Okio")
final /* synthetic */ class Okio__OkioKt {
    @JvmName
    public static final Sink blackhole() {
        return new BlackholeSink();
    }

    public static final BufferedSink buffer(Sink sink) {
        Intrinsics.h(sink, "<this>");
        return new buffer(sink);
    }

    public static final BufferedSource buffer(Source source) {
        Intrinsics.h(source, "<this>");
        return new buffer(source);
    }

    public static final <T extends Closeable, R> R use(T t11, Function1<? super T, ? extends R> block) throws Throwable {
        R r11;
        Intrinsics.h(block, "block");
        Throwable th2 = null;
        try {
            r11 = (R) block.invoke(t11);
            InlineMarker.b(1);
            if (t11 != null) {
                try {
                    t11.close();
                } catch (Throwable th3) {
                    th2 = th3;
                }
            }
            InlineMarker.a(1);
        } catch (Throwable th4) {
            InlineMarker.b(1);
            if (t11 != null) {
                try {
                    t11.close();
                } catch (Throwable th5) {
                    ExceptionsKt.a(th4, th5);
                }
            }
            InlineMarker.a(1);
            th2 = th4;
            r11 = null;
        }
        if (th2 != null) {
            throw th2;
        }
        Intrinsics.e(r11);
        return r11;
    }
}
