package com.google.android.material.internal;

import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextDirectionHeuristics;
import android.text.TextPaint;
import android.text.TextUtils;

/* JADX INFO: loaded from: classes4.dex */
final class StaticLayoutBuilderCompat {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    static final int f29120n = 1;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private CharSequence f29121a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final TextPaint f29122b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f29123c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f29125e;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private boolean f29132l;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f29124d = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Layout.Alignment f29126f = Layout.Alignment.ALIGN_NORMAL;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f29127g = Integer.MAX_VALUE;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private float f29128h = 0.0f;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private float f29129i = 1.0f;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f29130j = f29120n;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f29131k = true;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private TextUtils.TruncateAt f29133m = null;

    static class StaticLayoutBuilderCompatException extends Exception {
        StaticLayoutBuilderCompatException(Throwable th2) {
            super("Error thrown initializing StaticLayout " + th2.getMessage(), th2);
        }
    }

    private StaticLayoutBuilderCompat(CharSequence charSequence, TextPaint textPaint, int i11) {
        this.f29121a = charSequence;
        this.f29122b = textPaint;
        this.f29123c = i11;
        this.f29125e = charSequence.length();
    }

    public static StaticLayoutBuilderCompat b(CharSequence charSequence, TextPaint textPaint, int i11) {
        return new StaticLayoutBuilderCompat(charSequence, textPaint, i11);
    }

    public StaticLayout a() {
        if (this.f29121a == null) {
            this.f29121a = "";
        }
        int iMax = Math.max(0, this.f29123c);
        CharSequence charSequenceEllipsize = this.f29121a;
        if (this.f29127g == 1) {
            charSequenceEllipsize = TextUtils.ellipsize(charSequenceEllipsize, this.f29122b, iMax, this.f29133m);
        }
        int iMin = Math.min(charSequenceEllipsize.length(), this.f29125e);
        this.f29125e = iMin;
        if (this.f29132l && this.f29127g == 1) {
            this.f29126f = Layout.Alignment.ALIGN_OPPOSITE;
        }
        StaticLayout.Builder builderObtain = StaticLayout.Builder.obtain(charSequenceEllipsize, this.f29124d, iMin, this.f29122b, iMax);
        builderObtain.setAlignment(this.f29126f);
        builderObtain.setIncludePad(this.f29131k);
        builderObtain.setTextDirection(this.f29132l ? TextDirectionHeuristics.RTL : TextDirectionHeuristics.LTR);
        TextUtils.TruncateAt truncateAt = this.f29133m;
        if (truncateAt != null) {
            builderObtain.setEllipsize(truncateAt);
        }
        builderObtain.setMaxLines(this.f29127g);
        float f11 = this.f29128h;
        if (f11 != 0.0f || this.f29129i != 1.0f) {
            builderObtain.setLineSpacing(f11, this.f29129i);
        }
        if (this.f29127g > 1) {
            builderObtain.setHyphenationFrequency(this.f29130j);
        }
        return builderObtain.build();
    }

    public StaticLayoutBuilderCompat c(Layout.Alignment alignment) {
        this.f29126f = alignment;
        return this;
    }

    public StaticLayoutBuilderCompat d(TextUtils.TruncateAt truncateAt) {
        this.f29133m = truncateAt;
        return this;
    }

    public StaticLayoutBuilderCompat e(int i11) {
        this.f29130j = i11;
        return this;
    }

    public StaticLayoutBuilderCompat f(boolean z10) {
        this.f29131k = z10;
        return this;
    }

    public StaticLayoutBuilderCompat g(boolean z10) {
        this.f29132l = z10;
        return this;
    }

    public StaticLayoutBuilderCompat h(float f11, float f12) {
        this.f29128h = f11;
        this.f29129i = f12;
        return this;
    }

    public StaticLayoutBuilderCompat i(int i11) {
        this.f29127g = i11;
        return this;
    }

    public StaticLayoutBuilderCompat j(x xVar) {
        return this;
    }
}
