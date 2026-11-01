package com.mbridge.msdk.playercommon.exoplayer2.text.ttml;

/* JADX INFO: loaded from: classes5.dex */
final class TtmlRegion {

    /* JADX INFO: renamed from: id, reason: collision with root package name */
    public final String f36791id;
    public final float line;
    public final int lineAnchor;
    public final int lineType;
    public final float position;
    public final float textSize;
    public final int textSizeType;
    public final float width;

    public TtmlRegion(String str) {
        this(str, Float.MIN_VALUE, Float.MIN_VALUE, Integer.MIN_VALUE, Integer.MIN_VALUE, Float.MIN_VALUE, Integer.MIN_VALUE, Float.MIN_VALUE);
    }

    public TtmlRegion(String str, float f11, float f12, int i11, int i12, float f13, int i13, float f14) {
        this.f36791id = str;
        this.position = f11;
        this.line = f12;
        this.lineType = i11;
        this.lineAnchor = i12;
        this.width = f13;
        this.textSizeType = i13;
        this.textSize = f14;
    }
}
