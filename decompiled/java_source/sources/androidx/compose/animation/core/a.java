package androidx.compose.animation.core;

import kotlin.jvm.internal.FloatCompanionObject;

/* JADX INFO: loaded from: classes.dex */
public abstract class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final k f2399a = p.a(Float.POSITIVE_INFINITY);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final l f2400b = p.b(Float.POSITIVE_INFINITY, Float.POSITIVE_INFINITY);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final m f2401c = p.c(Float.POSITIVE_INFINITY, Float.POSITIVE_INFINITY, Float.POSITIVE_INFINITY);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final n f2402d = p.d(Float.POSITIVE_INFINITY, Float.POSITIVE_INFINITY, Float.POSITIVE_INFINITY, Float.POSITIVE_INFINITY);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final k f2403e = p.a(Float.NEGATIVE_INFINITY);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final l f2404f = p.b(Float.NEGATIVE_INFINITY, Float.NEGATIVE_INFINITY);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final m f2405g = p.c(Float.NEGATIVE_INFINITY, Float.NEGATIVE_INFINITY, Float.NEGATIVE_INFINITY);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final n f2406h = p.d(Float.NEGATIVE_INFINITY, Float.NEGATIVE_INFINITY, Float.NEGATIVE_INFINITY, Float.NEGATIVE_INFINITY);

    public static final Animatable a(float f11, float f12) {
        return new Animatable(Float.valueOf(f11), VectorConvertersKt.b(FloatCompanionObject.f67281a), Float.valueOf(f12), null, 8, null);
    }

    public static /* synthetic */ Animatable b(float f11, float f12, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            f12 = 0.01f;
        }
        return a(f11, f12);
    }
}
