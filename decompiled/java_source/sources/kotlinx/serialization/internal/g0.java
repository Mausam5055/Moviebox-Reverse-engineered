package kotlinx.serialization.internal;

import kotlin.jvm.internal.FloatCompanionObject;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public final class g0 extends r1 implements kotlinx.serialization.b {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final g0 f68140c = new g0();

    private g0() {
        super(d00.a.C(FloatCompanionObject.f67281a));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.a
    /* JADX INFO: renamed from: v, reason: merged with bridge method [inline-methods] */
    public int e(float[] fArr) {
        Intrinsics.h(fArr, "<this>");
        return fArr.length;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.r1
    /* JADX INFO: renamed from: w, reason: merged with bridge method [inline-methods] */
    public float[] r() {
        return new float[0];
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.w, kotlinx.serialization.internal.a
    /* JADX INFO: renamed from: x, reason: merged with bridge method [inline-methods] */
    public void h(e00.c decoder, int i11, f0 builder, boolean z10) {
        Intrinsics.h(decoder, "decoder");
        Intrinsics.h(builder, "builder");
        builder.e(decoder.u(getDescriptor(), i11));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.a
    /* JADX INFO: renamed from: y, reason: merged with bridge method [inline-methods] */
    public f0 k(float[] fArr) {
        Intrinsics.h(fArr, "<this>");
        return new f0(fArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.r1
    /* JADX INFO: renamed from: z, reason: merged with bridge method [inline-methods] */
    public void u(e00.d encoder, float[] content, int i11) {
        Intrinsics.h(encoder, "encoder");
        Intrinsics.h(content, "content");
        for (int i12 = 0; i12 < i11; i12++) {
            encoder.s(getDescriptor(), i12, content[i12]);
        }
    }
}
