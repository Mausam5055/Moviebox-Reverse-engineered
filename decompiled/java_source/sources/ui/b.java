package ui;

import android.graphics.LinearGradient;
import android.graphics.Shader;
import android.text.TextPaint;
import android.text.style.CharacterStyle;
import android.text.style.UpdateAppearance;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class b extends CharacterStyle implements UpdateAppearance {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f76756a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f76757b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f76758c;

    public b(int i11, int i12, String gradientText) {
        Intrinsics.h(gradientText, "gradientText");
        this.f76756a = i11;
        this.f76757b = i12;
        this.f76758c = gradientText;
    }

    @Override // android.text.style.CharacterStyle
    public void updateDrawState(TextPaint tp2) {
        Intrinsics.h(tp2, "tp");
        tp2.setShader(new LinearGradient(0.0f, 0.0f, tp2.measureText(this.f76758c), 0.0f, this.f76756a, this.f76757b, Shader.TileMode.CLAMP));
    }
}
