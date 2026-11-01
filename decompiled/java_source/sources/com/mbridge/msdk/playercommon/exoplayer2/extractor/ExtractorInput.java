package com.mbridge.msdk.playercommon.exoplayer2.extractor;

import java.io.IOException;

/* JADX INFO: loaded from: classes5.dex */
public interface ExtractorInput {
    void advancePeekPosition(int i11) throws InterruptedException, IOException;

    boolean advancePeekPosition(int i11, boolean z10) throws InterruptedException, IOException;

    long getLength();

    long getPeekPosition();

    long getPosition();

    void peekFully(byte[] bArr, int i11, int i12) throws InterruptedException, IOException;

    boolean peekFully(byte[] bArr, int i11, int i12, boolean z10) throws InterruptedException, IOException;

    int read(byte[] bArr, int i11, int i12) throws InterruptedException, IOException;

    void readFully(byte[] bArr, int i11, int i12) throws InterruptedException, IOException;

    boolean readFully(byte[] bArr, int i11, int i12, boolean z10) throws InterruptedException, IOException;

    void resetPeekPosition();

    <E extends Throwable> void setRetryPosition(long j11, E e11) throws Throwable;

    int skip(int i11) throws InterruptedException, IOException;

    void skipFully(int i11) throws InterruptedException, IOException;

    boolean skipFully(int i11, boolean z10) throws InterruptedException, IOException;
}
