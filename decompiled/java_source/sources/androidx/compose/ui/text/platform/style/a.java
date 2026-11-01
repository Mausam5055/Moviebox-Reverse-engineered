package androidx.compose.ui.text.platform.style;

import android.graphics.Paint;
import android.text.TextPaint;
import android.text.style.CharacterStyle;
import android.text.style.UpdateAppearance;
import androidx.compose.ui.graphics.c5;
import androidx.compose.ui.graphics.d5;
import kotlin.jvm.internal.Intrinsics;
import z.h;
import z.l;
import z.m;

/* JADX INFO: loaded from: classes.dex */
public final class a extends CharacterStyle implements UpdateAppearance {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final h f6343a;

    public a(h hVar) {
        this.f6343a = hVar;
    }

    private final Paint.Cap a(int i11) {
        c5.a aVar = c5.f4318a;
        if (c5.e(i11, aVar.a())) {
            return Paint.Cap.BUTT;
        }
        if (c5.e(i11, aVar.b())) {
            return Paint.Cap.ROUND;
        }
        return c5.e(i11, aVar.c()) ? Paint.Cap.SQUARE : Paint.Cap.BUTT;
    }

    private final Paint.Join b(int i11) {
        d5.a aVar = d5.f4430a;
        if (d5.e(i11, aVar.b())) {
            return Paint.Join.MITER;
        }
        if (d5.e(i11, aVar.c())) {
            return Paint.Join.ROUND;
        }
        return d5.e(i11, aVar.a()) ? Paint.Join.BEVEL : Paint.Join.MITER;
    }

    @Override // android.text.style.CharacterStyle
    public void updateDrawState(TextPaint textPaint) {
        if (textPaint != null) {
            h hVar = this.f6343a;
            if (Intrinsics.c(hVar, l.f79114a)) {
                textPaint.setStyle(Paint.Style.FILL);
                return;
            }
            if (hVar instanceof m) {
                textPaint.setStyle(Paint.Style.STROKE);
                textPaint.setStrokeWidth(((m) this.f6343a).f());
                textPaint.setStrokeMiter(((m) this.f6343a).d());
                textPaint.setStrokeJoin(b(((m) this.f6343a).c()));
                textPaint.setStrokeCap(a(((m) this.f6343a).b()));
                ((m) this.f6343a).e();
                textPaint.setPathEffect(null);
            }
        }
    }
}
