package kotlinx.serialization.internal;

import kotlin.UInt;
import kotlin.UIntArray;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public final class i2 extends r1 implements kotlinx.serialization.b {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final i2 f68155c = new i2();

    private i2() {
        super(d00.a.u(UInt.INSTANCE));
    }

    @Override // kotlinx.serialization.internal.a
    public /* bridge */ /* synthetic */ int e(Object obj) {
        return v(((UIntArray) obj).getCom.google.android.libraries.places.api.model.PlaceTypes.STORAGE java.lang.String());
    }

    @Override // kotlinx.serialization.internal.a
    public /* bridge */ /* synthetic */ Object k(Object obj) {
        return y(((UIntArray) obj).getCom.google.android.libraries.places.api.model.PlaceTypes.STORAGE java.lang.String());
    }

    @Override // kotlinx.serialization.internal.r1
    public /* bridge */ /* synthetic */ Object r() {
        return UIntArray.a(w());
    }

    @Override // kotlinx.serialization.internal.r1
    public /* bridge */ /* synthetic */ void u(e00.d dVar, Object obj, int i11) {
        z(dVar, ((UIntArray) obj).getCom.google.android.libraries.places.api.model.PlaceTypes.STORAGE java.lang.String(), i11);
    }

    protected int v(int[] collectionSize) {
        Intrinsics.h(collectionSize, "$this$collectionSize");
        return UIntArray.o(collectionSize);
    }

    protected int[] w() {
        return UIntArray.c(0);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.w, kotlinx.serialization.internal.a
    /* JADX INFO: renamed from: x, reason: merged with bridge method [inline-methods] */
    public void h(e00.c decoder, int i11, h2 builder, boolean z10) {
        Intrinsics.h(decoder, "decoder");
        Intrinsics.h(builder, "builder");
        builder.e(UInt.b(decoder.r(getDescriptor(), i11).h()));
    }

    protected h2 y(int[] toBuilder) {
        Intrinsics.h(toBuilder, "$this$toBuilder");
        return new h2(toBuilder, null);
    }

    protected void z(e00.d encoder, int[] content, int i11) {
        Intrinsics.h(encoder, "encoder");
        Intrinsics.h(content, "content");
        for (int i12 = 0; i12 < i11; i12++) {
            encoder.f(getDescriptor(), i12).B(UIntArray.m(content, i12));
        }
    }
}
