package androidx.media3.exoplayer.source;

import android.net.Uri;
import androidx.media3.common.ParserException;
import com.google.common.collect.ImmutableList;
import java.util.Collection;
import java.util.List;
import l2.q0;

/* JADX INFO: loaded from: classes2.dex */
public class UnrecognizedInputFormatException extends ParserException {
    public final ImmutableList<q0> sniffFailures;
    public final Uri uri;

    @Deprecated
    public UnrecognizedInputFormatException(String str, Uri uri) {
        this(str, uri, ImmutableList.of());
    }

    public UnrecognizedInputFormatException(String str, Uri uri, List<? extends q0> list) {
        super(str, null, false, 1);
        this.uri = uri;
        this.sniffFailures = ImmutableList.copyOf((Collection) list);
    }
}
