package androidx.compose.ui.graphics;

import androidx.compose.ui.platform.InspectableValueKt;

/* JADX INFO: loaded from: classes.dex */
public abstract class b4 {
    public static final androidx.compose.ui.f a(androidx.compose.ui.f fVar, float f11, float f12, float f13, float f14, float f15, float f16, float f17, float f18, float f19, float f20, long j11, a5 a5Var, boolean z10, w4 w4Var, long j12, long j13, int i11) {
        return fVar.e(new GraphicsLayerElement(f11, f12, f13, f14, f15, f16, f17, f18, f19, f20, j11, a5Var, z10, w4Var, j12, j13, i11, null));
    }

    public static /* synthetic */ androidx.compose.ui.f b(androidx.compose.ui.f fVar, float f11, float f12, float f13, float f14, float f15, float f16, float f17, float f18, float f19, float f20, long j11, a5 a5Var, boolean z10, w4 w4Var, long j12, long j13, int i11, int i12, Object obj) {
        return a(fVar, (i12 & 1) != 0 ? 1.0f : f11, (i12 & 2) != 0 ? 1.0f : f12, (i12 & 4) == 0 ? f13 : 1.0f, (i12 & 8) != 0 ? 0.0f : f14, (i12 & 16) != 0 ? 0.0f : f15, (i12 & 32) != 0 ? 0.0f : f16, (i12 & 64) != 0 ? 0.0f : f17, (i12 & 128) != 0 ? 0.0f : f18, (i12 & 256) == 0 ? f19 : 0.0f, (i12 & 512) != 0 ? 8.0f : f20, (i12 & 1024) != 0 ? e5.f4436a.a() : j11, (i12 & 2048) != 0 ? v4.a() : a5Var, (i12 & 4096) != 0 ? false : z10, (i12 & 8192) != 0 ? null : w4Var, (i12 & 16384) != 0 ? d4.a() : j12, (i12 & 32768) != 0 ? d4.a() : j13, (i12 & 65536) != 0 ? w3.f4874a.a() : i11);
    }

    public static final androidx.compose.ui.f c(androidx.compose.ui.f fVar) {
        return InspectableValueKt.b() ? fVar.e(b(androidx.compose.ui.f.f4178a, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0L, null, false, null, 0L, 0L, 0, 131071, null)) : fVar;
    }
}
