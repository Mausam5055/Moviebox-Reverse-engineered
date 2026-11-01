package kotlinx.serialization.internal;

import kotlin.UByte;
import kotlin.UByteArray;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public final class f2 extends r1 implements kotlinx.serialization.b {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final f2 f68137c = new f2();

    private f2() {
        super(d00.a.t(UByte.INSTANCE));
    }

    @Override // kotlinx.serialization.internal.a
    public /* bridge */ /* synthetic */ int e(Object obj) {
        return v(((UByteArray) obj).getCom.google.android.libraries.places.api.model.PlaceTypes.STORAGE java.lang.String());
    }

    @Override // kotlinx.serialization.internal.a
    public /* bridge */ /* synthetic */ Object k(Object obj) {
        return y(((UByteArray) obj).getCom.google.android.libraries.places.api.model.PlaceTypes.STORAGE java.lang.String());
    }

    @Override // kotlinx.serialization.internal.r1
    public /* bridge */ /* synthetic */ Object r() {
        return UByteArray.a(w());
    }

    @Override // kotlinx.serialization.internal.r1
    public /* bridge */ /* synthetic */ void u(e00.d dVar, Object obj, int i11) {
        z(dVar, ((UByteArray) obj).getCom.google.android.libraries.places.api.model.PlaceTypes.STORAGE java.lang.String(), i11);
    }

    protected int v(byte[] collectionSize) {
        Intrinsics.h(collectionSize, "$this$collectionSize");
        return UByteArray.o(collectionSize);
    }

    protected byte[] w() {
        return UByteArray.c(0);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.w, kotlinx.serialization.internal.a
    /* JADX INFO: renamed from: x, reason: merged with bridge method [inline-methods] */
    public void h(e00.c decoder, int i11, e2 builder, boolean z10) {
        Intrinsics.h(decoder, "decoder");
        Intrinsics.h(builder, "builder");
        builder.e(UByte.b(decoder.r(getDescriptor(), i11).H()));
    }

    protected e2 y(byte[] toBuilder) {
        Intrinsics.h(toBuilder, "$this$toBuilder");
        return new e2(toBuilder, null);
    }

    protected void z(e00.d encoder, byte[] content, int i11) {
        Intrinsics.h(encoder, "encoder");
        Intrinsics.h(content, "content");
        for (int i12 = 0; i12 < i11; i12++) {
            encoder.f(getDescriptor(), i12).h(UByteArray.m(content, i12));
        }
    }
}
