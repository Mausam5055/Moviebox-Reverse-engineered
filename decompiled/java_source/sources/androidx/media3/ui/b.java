package androidx.media3.ui;

import android.graphics.Typeface;
import android.view.accessibility.CaptioningManager;
import androidx.core.view.ViewCompat;

/* JADX INFO: loaded from: classes2.dex */
public final class b {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final b f13631g = new b(-1, ViewCompat.MEASURED_STATE_MASK, 0, 0, -1, null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f13632a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f13633b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f13634c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f13635d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f13636e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Typeface f13637f;

    public b(int i11, int i12, int i13, int i14, int i15, Typeface typeface) {
        this.f13632a = i11;
        this.f13633b = i12;
        this.f13634c = i13;
        this.f13635d = i14;
        this.f13636e = i15;
        this.f13637f = typeface;
    }

    public static b a(CaptioningManager.CaptionStyle captionStyle) {
        return new b(captionStyle.hasForegroundColor() ? captionStyle.foregroundColor : f13631g.f13632a, captionStyle.hasBackgroundColor() ? captionStyle.backgroundColor : f13631g.f13633b, captionStyle.hasWindowColor() ? captionStyle.windowColor : f13631g.f13634c, captionStyle.hasEdgeType() ? captionStyle.edgeType : f13631g.f13635d, captionStyle.hasEdgeColor() ? captionStyle.edgeColor : f13631g.f13636e, captionStyle.getTypeface());
    }
}
