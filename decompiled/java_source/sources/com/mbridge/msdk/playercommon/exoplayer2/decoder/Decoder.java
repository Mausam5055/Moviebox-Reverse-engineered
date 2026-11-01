package com.mbridge.msdk.playercommon.exoplayer2.decoder;

import java.lang.Exception;

/* JADX INFO: loaded from: classes5.dex */
public interface Decoder<I, O, E extends Exception> {
    I dequeueInputBuffer() throws Exception;

    O dequeueOutputBuffer() throws Exception;

    void flush();

    String getName();

    void queueInputBuffer(I i11) throws Exception;

    void release();
}
