package androidx.compose.ui.graphics.colorspace;

import androidx.compose.ui.graphics.w1;

/* JADX INFO: loaded from: classes.dex */
public final class z extends c {
    public z(String str, int i11) {
        super(str, b.f4344a.c(), i11, null);
    }

    @Override // androidx.compose.ui.graphics.colorspace.c
    public float c(int i11) {
        return 2.0f;
    }

    @Override // androidx.compose.ui.graphics.colorspace.c
    public float d(int i11) {
        return -2.0f;
    }

    @Override // androidx.compose.ui.graphics.colorspace.c
    public long h(float f11, float f12, float f13) {
        if (f11 < -2.0f) {
            f11 = -2.0f;
        }
        if (f11 > 2.0f) {
            f11 = 2.0f;
        }
        if (f12 < -2.0f) {
            f12 = -2.0f;
        }
        return (((long) Float.floatToRawIntBits(f11)) << 32) | (((long) Float.floatToRawIntBits(f12 <= 2.0f ? f12 : 2.0f)) & 4294967295L);
    }

    @Override // androidx.compose.ui.graphics.colorspace.c
    public float i(float f11, float f12, float f13) {
        if (f13 < -2.0f) {
            f13 = -2.0f;
        }
        if (f13 > 2.0f) {
            return 2.0f;
        }
        return f13;
    }

    @Override // androidx.compose.ui.graphics.colorspace.c
    public long j(float f11, float f12, float f13, float f14, c cVar) {
        if (f11 < -2.0f) {
            f11 = -2.0f;
        }
        if (f11 > 2.0f) {
            f11 = 2.0f;
        }
        if (f12 < -2.0f) {
            f12 = -2.0f;
        }
        if (f12 > 2.0f) {
            f12 = 2.0f;
        }
        if (f13 < -2.0f) {
            f13 = -2.0f;
        }
        return w1.a(f11, f12, f13 <= 2.0f ? f13 : 2.0f, f14, cVar);
    }
}
