package kotlin.io;

import com.cloud.tmc.integration.event.EventConstants;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.Reader;
import java.io.StringWriter;
import java.io.Writer;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.JvmName;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0002\b\u0003\u001a%\u0010\u0005\u001a\u00020\u0003*\u00020\u00002\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001¢\u0006\u0004\b\u0005\u0010\u0006\u001a\u0017\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00020\b*\u00020\u0007¢\u0006\u0004\b\t\u0010\n\u001a\u0011\u0010\u000b\u001a\u00020\u0002*\u00020\u0000¢\u0006\u0004\b\u000b\u0010\f\u001a#\u0010\u0012\u001a\u00020\u0011*\u00020\u00002\u0006\u0010\u000e\u001a\u00020\r2\b\b\u0002\u0010\u0010\u001a\u00020\u000f¢\u0006\u0004\b\u0012\u0010\u0013¨\u0006\u0014"}, d2 = {"Ljava/io/Reader;", "Lkotlin/Function1;", "", "", EventConstants.KEY_ACTION, "c", "(Ljava/io/Reader;Lkotlin/jvm/functions/Function1;)V", "Ljava/io/BufferedReader;", "Lkotlin/sequences/Sequence;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "(Ljava/io/BufferedReader;)Lkotlin/sequences/Sequence;", "e", "(Ljava/io/Reader;)Ljava/lang/String;", "Ljava/io/Writer;", "out", "", "bufferSize", "", "a", "(Ljava/io/Reader;Ljava/io/Writer;I)J", "kotlin-stdlib"}, k = 2, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@JvmName
@SourceDebugExtension
public final class TextStreamsKt {
    public static final long a(Reader reader, Writer out, int i11) throws IOException {
        Intrinsics.h(reader, "<this>");
        Intrinsics.h(out, "out");
        char[] cArr = new char[i11];
        int i12 = reader.read(cArr);
        long j11 = 0;
        while (i12 >= 0) {
            out.write(cArr, 0, i12);
            j11 += (long) i12;
            i12 = reader.read(cArr);
        }
        return j11;
    }

    public static /* synthetic */ long b(Reader reader, Writer writer, int i11, int i12, Object obj) {
        if ((i12 & 2) != 0) {
            i11 = 8192;
        }
        return a(reader, writer, i11);
    }

    public static final void c(Reader reader, Function1 action) {
        Intrinsics.h(reader, "<this>");
        Intrinsics.h(action, "action");
        BufferedReader bufferedReader = reader instanceof BufferedReader ? (BufferedReader) reader : new BufferedReader(reader, 8192);
        try {
            Iterator f67431a = d(bufferedReader).getF67431a();
            while (f67431a.hasNext()) {
                action.invoke(f67431a.next());
            }
            Unit unit = Unit.f67061a;
            CloseableKt.a(bufferedReader, null);
        } catch (Throwable th2) {
            try {
                throw th2;
            } catch (Throwable th3) {
                CloseableKt.a(bufferedReader, th2);
                throw th3;
            }
        }
    }

    public static final Sequence d(BufferedReader bufferedReader) {
        Intrinsics.h(bufferedReader, "<this>");
        return SequencesKt.f(new LinesSequence(bufferedReader));
    }

    public static final String e(Reader reader) {
        Intrinsics.h(reader, "<this>");
        StringWriter stringWriter = new StringWriter();
        b(reader, stringWriter, 0, 2, null);
        String string = stringWriter.toString();
        Intrinsics.g(string, "toString(...)");
        return string;
    }
}
