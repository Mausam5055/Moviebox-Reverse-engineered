package kotlinx.serialization.internal;

import kotlin.jvm.internal.IntCompanionObject;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public final class q0 extends r1 implements kotlinx.serialization.b {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final q0 f68186c = new q0();

    private q0() {
        super(d00.a.D(IntCompanionObject.f67282a));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.a
    /* JADX INFO: renamed from: v, reason: merged with bridge method [inline-methods] */
    public int e(int[] iArr) {
        Intrinsics.h(iArr, "<this>");
        return iArr.length;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.r1
    /* JADX INFO: renamed from: w, reason: merged with bridge method [inline-methods] */
    public int[] r() {
        return new int[0];
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.w, kotlinx.serialization.internal.a
    /* JADX INFO: renamed from: x, reason: merged with bridge method [inline-methods] */
    public void h(e00.c decoder, int i11, p0 builder, boolean z10) {
        Intrinsics.h(decoder, "decoder");
        Intrinsics.h(builder, "builder");
        builder.e(decoder.i(getDescriptor(), i11));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.a
    /* JADX INFO: renamed from: y, reason: merged with bridge method [inline-methods] */
    public p0 k(int[] iArr) {
        Intrinsics.h(iArr, "<this>");
        return new p0(iArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.r1
    /* JADX INFO: renamed from: z, reason: merged with bridge method [inline-methods] */
    public void u(e00.d encoder, int[] content, int i11) {
        Intrinsics.h(encoder, "encoder");
        Intrinsics.h(content, "content");
        for (int i12 = 0; i12 < i11; i12++) {
            encoder.w(getDescriptor(), i12, content[i12]);
        }
    }
}
