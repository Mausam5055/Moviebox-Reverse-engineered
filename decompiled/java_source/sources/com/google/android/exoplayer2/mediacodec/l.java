package com.google.android.exoplayer2.mediacodec;

import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Bundle;
import android.os.Handler;
import android.view.Surface;
import com.google.android.exoplayer2.o1;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes3.dex */
public interface l {

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final m f25392a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final MediaFormat f25393b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final o1 f25394c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final Surface f25395d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final MediaCrypto f25396e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final int f25397f;

        private a(m mVar, MediaFormat mediaFormat, o1 o1Var, Surface surface, MediaCrypto mediaCrypto, int i11) {
            this.f25392a = mVar;
            this.f25393b = mediaFormat;
            this.f25394c = o1Var;
            this.f25395d = surface;
            this.f25396e = mediaCrypto;
            this.f25397f = i11;
        }

        public static a a(m mVar, MediaFormat mediaFormat, o1 o1Var, MediaCrypto mediaCrypto) {
            return new a(mVar, mediaFormat, o1Var, null, mediaCrypto, 0);
        }

        public static a b(m mVar, MediaFormat mediaFormat, o1 o1Var, Surface surface, MediaCrypto mediaCrypto) {
            return new a(mVar, mediaFormat, o1Var, surface, mediaCrypto, 0);
        }
    }

    public interface b {
        l a(a aVar);
    }

    public interface c {
        void a(l lVar, long j11, long j12);
    }

    void a(int i11, int i12, int i13, long j11, int i14);

    void b(Bundle bundle);

    MediaFormat c();

    ByteBuffer d(int i11);

    void e(Surface surface);

    void f(int i11, int i12, com.google.android.exoplayer2.decoder.c cVar, long j11, int i13);

    void flush();

    boolean g();

    void h(int i11, long j11);

    int i();

    int j(MediaCodec.BufferInfo bufferInfo);

    void k(int i11, boolean z10);

    ByteBuffer l(int i11);

    void m(c cVar, Handler handler);

    void release();

    void setVideoScalingMode(int i11);
}
