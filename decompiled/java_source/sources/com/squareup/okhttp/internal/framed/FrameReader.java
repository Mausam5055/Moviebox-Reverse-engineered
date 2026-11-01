package com.squareup.okhttp.internal.framed;

import java.io.Closeable;
import java.io.IOException;
import java.util.List;
import okio.BufferedSource;
import okio.ByteString;

/* JADX INFO: loaded from: classes5.dex */
public interface FrameReader extends Closeable {

    public interface Handler {
        void ackSettings();

        void alternateService(int i11, String str, ByteString byteString, String str2, int i12, long j11);

        void data(boolean z10, int i11, BufferedSource bufferedSource, int i12) throws IOException;

        void goAway(int i11, ErrorCode errorCode, ByteString byteString);

        void headers(boolean z10, boolean z11, int i11, int i12, List<b> list, HeadersMode headersMode);

        void ping(boolean z10, int i11, int i12);

        void priority(int i11, int i12, int i13, boolean z10);

        void pushPromise(int i11, int i12, List<b> list) throws IOException;

        void rstStream(int i11, ErrorCode errorCode);

        void settings(boolean z10, h hVar);

        void windowUpdate(int i11, long j11);
    }

    boolean nextFrame(Handler handler) throws IOException;

    void readConnectionPreface() throws IOException;
}
