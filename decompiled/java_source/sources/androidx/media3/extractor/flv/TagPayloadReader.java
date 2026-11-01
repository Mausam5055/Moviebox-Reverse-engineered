package androidx.media3.extractor.flv;

import androidx.media3.common.ParserException;
import androidx.media3.common.util.j0;
import l2.s0;

/* JADX INFO: loaded from: classes2.dex */
abstract class TagPayloadReader {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected final s0 f13401a;

    public static final class UnsupportedFormatException extends ParserException {
        public UnsupportedFormatException(String str) {
            super(str, null, false, 1);
        }
    }

    protected TagPayloadReader(s0 s0Var) {
        this.f13401a = s0Var;
    }

    public final boolean a(j0 j0Var, long j11) {
        return b(j0Var) && c(j0Var, j11);
    }

    protected abstract boolean b(j0 j0Var);

    protected abstract boolean c(j0 j0Var, long j11);
}
