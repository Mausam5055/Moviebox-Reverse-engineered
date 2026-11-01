package l0;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.text.style.ReplacementSpan;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public final class j extends ReplacementSpan {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final a f68428k = new a(null);

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final int f68429l = 8;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final float f68430a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f68431b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final float f68432c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f68433d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final float f68434e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final int f68435f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Paint.FontMetricsInt f68436g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f68437h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f68438i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f68439j;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public final Paint.FontMetricsInt a() {
        Paint.FontMetricsInt fontMetricsInt = this.f68436g;
        if (fontMetricsInt != null) {
            return fontMetricsInt;
        }
        Intrinsics.z("fontMetrics");
        return null;
    }

    public final int b() {
        if (this.f68439j) {
            return this.f68438i;
        }
        throw new IllegalStateException("PlaceholderSpan is not laid out yet.");
    }

    public final int c() {
        return this.f68435f;
    }

    public final int d() {
        if (this.f68439j) {
            return this.f68437h;
        }
        throw new IllegalStateException("PlaceholderSpan is not laid out yet.");
    }

    @Override // android.text.style.ReplacementSpan
    public void draw(Canvas canvas, CharSequence charSequence, int i11, int i12, float f11, int i13, int i14, int i15, Paint paint) {
    }

    @Override // android.text.style.ReplacementSpan
    public int getSize(Paint paint, CharSequence charSequence, int i11, int i12, Paint.FontMetricsInt fontMetricsInt) {
        float f11;
        int iA;
        this.f68439j = true;
        float textSize = paint.getTextSize();
        this.f68436g = paint.getFontMetricsInt();
        if (a().descent <= a().ascent) {
            throw new IllegalArgumentException("Invalid fontMetrics: line height can not be negative.");
        }
        int i13 = this.f68431b;
        if (i13 == 0) {
            f11 = this.f68430a * this.f68434e;
        } else {
            if (i13 != 1) {
                throw new IllegalArgumentException("Unsupported unit.");
            }
            f11 = this.f68430a * textSize;
        }
        this.f68437h = k.a(f11);
        int i14 = this.f68433d;
        if (i14 == 0) {
            iA = k.a(this.f68432c * this.f68434e);
        } else {
            if (i14 != 1) {
                throw new IllegalArgumentException("Unsupported unit.");
            }
            iA = k.a(this.f68432c * textSize);
        }
        this.f68438i = iA;
        if (fontMetricsInt != null) {
            fontMetricsInt.ascent = a().ascent;
            fontMetricsInt.descent = a().descent;
            fontMetricsInt.leading = a().leading;
            switch (this.f68435f) {
                case 0:
                    if (fontMetricsInt.ascent > (-b())) {
                        fontMetricsInt.ascent = -b();
                    }
                    break;
                case 1:
                case 4:
                    if (fontMetricsInt.ascent + b() > fontMetricsInt.descent) {
                        fontMetricsInt.descent = fontMetricsInt.ascent + b();
                    }
                    break;
                case 2:
                case 5:
                    if (fontMetricsInt.ascent > fontMetricsInt.descent - b()) {
                        fontMetricsInt.ascent = fontMetricsInt.descent - b();
                    }
                    break;
                case 3:
                case 6:
                    if (fontMetricsInt.descent - fontMetricsInt.ascent < b()) {
                        int iB = fontMetricsInt.ascent - ((b() - (fontMetricsInt.descent - fontMetricsInt.ascent)) / 2);
                        fontMetricsInt.ascent = iB;
                        fontMetricsInt.descent = iB + b();
                    }
                    break;
                default:
                    throw new IllegalArgumentException("Unknown verticalAlign.");
            }
            fontMetricsInt.top = Math.min(a().top, fontMetricsInt.ascent);
            fontMetricsInt.bottom = Math.max(a().bottom, fontMetricsInt.descent);
        }
        return d();
    }
}
