package com.google.android.exoplayer2;

import androidx.annotation.Nullable;
import java.io.IOException;

/* JADX INFO: loaded from: classes3.dex */
public class ParserException extends IOException {
    public final boolean contentIsMalformed;
    public final int dataType;

    protected ParserException(@Nullable String str, @Nullable Throwable th2, boolean z10, int i11) {
        super(str, th2);
        this.contentIsMalformed = z10;
        this.dataType = i11;
    }

    public static ParserException createForMalformedContainer(@Nullable String str, @Nullable Throwable th2) {
        return new ParserException(str, th2, true, 1);
    }

    public static ParserException createForMalformedDataOfUnknownType(@Nullable String str, @Nullable Throwable th2) {
        return new ParserException(str, th2, true, 0);
    }

    public static ParserException createForMalformedManifest(@Nullable String str, @Nullable Throwable th2) {
        return new ParserException(str, th2, true, 4);
    }

    public static ParserException createForManifestWithUnsupportedFeature(@Nullable String str, @Nullable Throwable th2) {
        return new ParserException(str, th2, false, 4);
    }

    public static ParserException createForUnsupportedContainerFeature(@Nullable String str) {
        return new ParserException(str, null, false, 1);
    }
}
