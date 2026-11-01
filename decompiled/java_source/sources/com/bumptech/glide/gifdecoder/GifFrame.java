package com.bumptech.glide.gifdecoder;

/* JADX INFO: loaded from: classes2.dex */
class GifFrame {
    static final int DISPOSAL_BACKGROUND = 2;
    static final int DISPOSAL_NONE = 1;
    static final int DISPOSAL_PREVIOUS = 3;
    static final int DISPOSAL_UNSPECIFIED = 0;
    int bufferFrameStart;
    int delay;
    int dispose;

    /* JADX INFO: renamed from: ih, reason: collision with root package name */
    int f20129ih;
    boolean interlace;

    /* JADX INFO: renamed from: iw, reason: collision with root package name */
    int f20130iw;

    /* JADX INFO: renamed from: ix, reason: collision with root package name */
    int f20131ix;

    /* JADX INFO: renamed from: iy, reason: collision with root package name */
    int f20132iy;
    int[] lct;
    int transIndex;
    boolean transparency;

    GifFrame() {
    }
}
