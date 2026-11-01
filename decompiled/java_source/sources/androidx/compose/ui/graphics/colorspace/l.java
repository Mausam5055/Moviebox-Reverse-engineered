package androidx.compose.ui.graphics.colorspace;

import androidx.compose.ui.graphics.w1;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
public final class l extends c {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final a f4399e = new a(null);

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public l(String str, int i11) {
        super(str, b.f4344a.a(), i11, null);
    }

    @Override // androidx.compose.ui.graphics.colorspace.c
    public float c(int i11) {
        return i11 == 0 ? 100.0f : 128.0f;
    }

    @Override // androidx.compose.ui.graphics.colorspace.c
    public float d(int i11) {
        return i11 == 0 ? 0.0f : -128.0f;
    }

    @Override // androidx.compose.ui.graphics.colorspace.c
    public long h(float f11, float f12, float f13) {
        if (f11 < 0.0f) {
            f11 = 0.0f;
        }
        if (f11 > 100.0f) {
            f11 = 100.0f;
        }
        if (f12 < -128.0f) {
            f12 = -128.0f;
        }
        if (f12 > 128.0f) {
            f12 = 128.0f;
        }
        float f14 = (f11 + 16.0f) / 116.0f;
        float f15 = (f12 * 0.002f) + f14;
        float f16 = f15 > 0.20689656f ? f15 * f15 * f15 : (f15 - 0.13793103f) * 0.12841855f;
        float f17 = f14 > 0.20689656f ? f14 * f14 * f14 : (f14 - 0.13793103f) * 0.12841855f;
        k kVar = k.f4388a;
        return (((long) Float.floatToRawIntBits(f17 * kVar.c()[1])) & 4294967295L) | (((long) Float.floatToRawIntBits(f16 * kVar.c()[0])) << 32);
    }

    @Override // androidx.compose.ui.graphics.colorspace.c
    public float i(float f11, float f12, float f13) {
        if (f11 < 0.0f) {
            f11 = 0.0f;
        }
        if (f11 > 100.0f) {
            f11 = 100.0f;
        }
        if (f13 < -128.0f) {
            f13 = -128.0f;
        }
        if (f13 > 128.0f) {
            f13 = 128.0f;
        }
        float f14 = ((f11 + 16.0f) / 116.0f) - (f13 * 0.005f);
        return (f14 > 0.20689656f ? f14 * f14 * f14 : 0.12841855f * (f14 - 0.13793103f)) * k.f4388a.c()[2];
    }

    @Override // androidx.compose.ui.graphics.colorspace.c
    public long j(float f11, float f12, float f13, float f14, c cVar) {
        k kVar = k.f4388a;
        float f15 = f11 / kVar.c()[0];
        float f16 = f12 / kVar.c()[1];
        float f17 = f13 / kVar.c()[2];
        float fCbrt = f15 > 0.008856452f ? (float) Math.cbrt(f15) : (f15 * 7.787037f) + 0.13793103f;
        float fCbrt2 = f16 > 0.008856452f ? (float) Math.cbrt(f16) : (f16 * 7.787037f) + 0.13793103f;
        float f18 = (116.0f * fCbrt2) - 16.0f;
        float f19 = (fCbrt - fCbrt2) * 500.0f;
        float fCbrt3 = (fCbrt2 - (f17 > 0.008856452f ? (float) Math.cbrt(f17) : (f17 * 7.787037f) + 0.13793103f)) * 200.0f;
        if (f18 < 0.0f) {
            f18 = 0.0f;
        }
        if (f18 > 100.0f) {
            f18 = 100.0f;
        }
        if (f19 < -128.0f) {
            f19 = -128.0f;
        }
        if (f19 > 128.0f) {
            f19 = 128.0f;
        }
        if (fCbrt3 < -128.0f) {
            fCbrt3 = -128.0f;
        }
        return w1.a(f18, f19, fCbrt3 <= 128.0f ? fCbrt3 : 128.0f, f14, cVar);
    }
}
