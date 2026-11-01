package l0;

import android.text.TextPaint;
import android.text.style.CharacterStyle;

/* JADX INFO: loaded from: classes2.dex */
public final class l extends CharacterStyle {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f68440a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final float f68441b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final float f68442c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final float f68443d;

    public l(int i11, float f11, float f12, float f13) {
        this.f68440a = i11;
        this.f68441b = f11;
        this.f68442c = f12;
        this.f68443d = f13;
    }

    @Override // android.text.style.CharacterStyle
    public void updateDrawState(TextPaint textPaint) {
        textPaint.setShadowLayer(this.f68443d, this.f68441b, this.f68442c, this.f68440a);
    }
}
