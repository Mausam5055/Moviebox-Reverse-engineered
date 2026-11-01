package org.apache.commons.compress.archivers.zip;

import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.nio.charset.CharsetDecoder;
import java.nio.charset.CodingErrorAction;
import okio.Utf8;

/* JADX INFO: loaded from: classes7.dex */
class e implements r {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final byte[] f71142c = {Utf8.REPLACEMENT_BYTE};

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final String f71143d = String.valueOf('?');

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final char[] f71144e = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Charset f71145a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final boolean f71146b;

    e(Charset charset, boolean z10) {
        this.f71145a = charset;
        this.f71146b = z10;
    }

    private CharsetDecoder b() {
        if (this.f71146b) {
            CharsetDecoder charsetDecoderNewDecoder = this.f71145a.newDecoder();
            CodingErrorAction codingErrorAction = CodingErrorAction.REPLACE;
            return charsetDecoderNewDecoder.onMalformedInput(codingErrorAction).onUnmappableCharacter(codingErrorAction).replaceWith(f71143d);
        }
        CharsetDecoder charsetDecoderNewDecoder2 = this.f71145a.newDecoder();
        CodingErrorAction codingErrorAction2 = CodingErrorAction.REPORT;
        return charsetDecoderNewDecoder2.onMalformedInput(codingErrorAction2).onUnmappableCharacter(codingErrorAction2);
    }

    @Override // org.apache.commons.compress.archivers.zip.r
    public String a(byte[] bArr) {
        return b().decode(ByteBuffer.wrap(bArr)).toString();
    }
}
