package com.google.android.exoplayer2.extractor.flv;

import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.util.d0;
import g9.e0;

/* JADX INFO: loaded from: classes3.dex */
abstract class TagPayloadReader {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected final e0 f25041a;

    public static final class UnsupportedFormatException extends ParserException {
        public UnsupportedFormatException(String str) {
            super(str, null, false, 1);
        }
    }

    protected TagPayloadReader(e0 e0Var) {
        this.f25041a = e0Var;
    }

    public final boolean a(d0 d0Var, long j11) {
        return b(d0Var) && c(d0Var, j11);
    }

    protected abstract boolean b(d0 d0Var);

    protected abstract boolean c(d0 d0Var, long j11);
}
