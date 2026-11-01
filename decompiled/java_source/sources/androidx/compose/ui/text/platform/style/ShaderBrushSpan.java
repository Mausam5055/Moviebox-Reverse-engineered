package androidx.compose.ui.text.platform.style;

import android.graphics.Shader;
import android.text.TextPaint;
import android.text.style.CharacterStyle;
import android.text.style.UpdateAppearance;
import androidx.compose.runtime.a3;
import androidx.compose.runtime.i1;
import androidx.compose.runtime.r2;
import androidx.compose.runtime.u2;
import androidx.compose.ui.graphics.y4;
import androidx.compose.ui.text.platform.f;
import kotlin.jvm.functions.Function0;
import y.m;

/* JADX INFO: loaded from: classes.dex */
public final class ShaderBrushSpan extends CharacterStyle implements UpdateAppearance {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final y4 f6339a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final float f6340b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final i1 f6341c = u2.c(m.c(m.f78491b.a()), null, 2, null);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final a3 f6342d = r2.c(new Function0<Shader>() { // from class: androidx.compose.ui.text.platform.style.ShaderBrushSpan$shaderState$1
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final Shader invoke() {
            if (this.this$0.b() == 9205357640488583168L || m.k(this.this$0.b())) {
                return null;
            }
            return this.this$0.a().b(this.this$0.b());
        }
    });

    public ShaderBrushSpan(y4 y4Var, float f11) {
        this.f6339a = y4Var;
        this.f6340b = f11;
    }

    public final y4 a() {
        return this.f6339a;
    }

    public final long b() {
        return ((m) this.f6341c.getValue()).m();
    }

    public final void c(long j11) {
        this.f6341c.setValue(m.c(j11));
    }

    @Override // android.text.style.CharacterStyle
    public void updateDrawState(TextPaint textPaint) {
        f.a(textPaint, this.f6340b);
        textPaint.setShader((Shader) this.f6342d.getValue());
    }
}
