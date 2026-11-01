package com.squareup.okhttp.internal.framed;

import java.io.Closeable;
import java.io.IOException;
import java.util.List;
import okio.Buffer;

/* JADX INFO: loaded from: classes5.dex */
public interface FrameWriter extends Closeable {
    void ackSettings(h hVar) throws IOException;

    void connectionPreface() throws IOException;

    void data(boolean z10, int i11, Buffer buffer, int i12) throws IOException;

    void flush() throws IOException;

    void goAway(int i11, ErrorCode errorCode, byte[] bArr) throws IOException;

    void headers(int i11, List<b> list) throws IOException;

    int maxDataLength();

    void ping(boolean z10, int i11, int i12) throws IOException;

    void pushPromise(int i11, int i12, List<b> list) throws IOException;

    void rstStream(int i11, ErrorCode errorCode) throws IOException;

    void settings(h hVar) throws IOException;

    void synReply(boolean z10, int i11, List<b> list) throws IOException;

    void synStream(boolean z10, boolean z11, int i11, int i12, List<b> list) throws IOException;

    void windowUpdate(int i11, long j11) throws IOException;
}
