package com.google.android.exoplayer2.mediacodec;

import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public interface o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final o f25409a = new o() { // from class: com.google.android.exoplayer2.mediacodec.n
        @Override // com.google.android.exoplayer2.mediacodec.o
        public final List a(String str, boolean z10, boolean z11) {
            return MediaCodecUtil.s(str, z10, z11);
        }
    };

    List a(String str, boolean z10, boolean z11);
}
