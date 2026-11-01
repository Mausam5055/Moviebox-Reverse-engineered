package com.google.android.exoplayer2.ui;

import android.graphics.Typeface;
import android.view.accessibility.CaptioningManager;
import androidx.core.view.ViewCompat;

/* JADX INFO: loaded from: classes3.dex */
public final class c {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final c f27110g = new c(-1, ViewCompat.MEASURED_STATE_MASK, 0, 0, -1, null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f27111a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f27112b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f27113c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f27114d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f27115e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Typeface f27116f;

    public c(int i11, int i12, int i13, int i14, int i15, Typeface typeface) {
        this.f27111a = i11;
        this.f27112b = i12;
        this.f27113c = i13;
        this.f27114d = i14;
        this.f27115e = i15;
        this.f27116f = typeface;
    }

    public static c a(CaptioningManager.CaptionStyle captionStyle) {
        return com.google.android.exoplayer2.util.p0.f27626a >= 21 ? c(captionStyle) : b(captionStyle);
    }

    private static c b(CaptioningManager.CaptionStyle captionStyle) {
        return new c(captionStyle.foregroundColor, captionStyle.backgroundColor, 0, captionStyle.edgeType, captionStyle.edgeColor, captionStyle.getTypeface());
    }

    private static c c(CaptioningManager.CaptionStyle captionStyle) {
        return new c(captionStyle.hasForegroundColor() ? captionStyle.foregroundColor : f27110g.f27111a, captionStyle.hasBackgroundColor() ? captionStyle.backgroundColor : f27110g.f27112b, captionStyle.hasWindowColor() ? captionStyle.windowColor : f27110g.f27113c, captionStyle.hasEdgeType() ? captionStyle.edgeType : f27110g.f27114d, captionStyle.hasEdgeColor() ? captionStyle.edgeColor : f27110g.f27115e, captionStyle.getTypeface());
    }
}
