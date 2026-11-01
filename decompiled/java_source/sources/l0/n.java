package l0;

import android.text.TextPaint;
import android.text.style.CharacterStyle;

/* JADX INFO: loaded from: classes2.dex */
public final class n extends CharacterStyle {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final boolean f68445a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final boolean f68446b;

    public n(boolean z10, boolean z11) {
        this.f68445a = z10;
        this.f68446b = z11;
    }

    @Override // android.text.style.CharacterStyle
    public void updateDrawState(TextPaint textPaint) {
        textPaint.setUnderlineText(this.f68445a);
        textPaint.setStrikeThruText(this.f68446b);
    }
}
