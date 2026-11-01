package androidx.media3.exoplayer.mediacodec;

import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public interface h0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final h0 f12211a = new h0() { // from class: androidx.media3.exoplayer.mediacodec.e0
        @Override // androidx.media3.exoplayer.mediacodec.h0
        public final List a(String str, boolean z10, boolean z11) {
            return MediaCodecUtil.k(str, z10, z11);
        }
    };

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final h0 f12212b = new h0() { // from class: androidx.media3.exoplayer.mediacodec.f0
        @Override // androidx.media3.exoplayer.mediacodec.h0
        public final List a(String str, boolean z10, boolean z11) {
            return MediaCodecUtil.o(h0.f12211a.a(str, z10, z11));
        }
    };

    List a(String str, boolean z10, boolean z11);
}
