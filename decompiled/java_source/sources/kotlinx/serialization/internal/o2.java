package kotlinx.serialization.internal;

import kotlin.UShort;
import kotlin.UShortArray;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public final class o2 extends r1 implements kotlinx.serialization.b {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final o2 f68178c = new o2();

    private o2() {
        super(d00.a.w(UShort.INSTANCE));
    }

    @Override // kotlinx.serialization.internal.a
    public /* bridge */ /* synthetic */ int e(Object obj) {
        return v(((UShortArray) obj).getCom.google.android.libraries.places.api.model.PlaceTypes.STORAGE java.lang.String());
    }

    @Override // kotlinx.serialization.internal.a
    public /* bridge */ /* synthetic */ Object k(Object obj) {
        return y(((UShortArray) obj).getCom.google.android.libraries.places.api.model.PlaceTypes.STORAGE java.lang.String());
    }

    @Override // kotlinx.serialization.internal.r1
    public /* bridge */ /* synthetic */ Object r() {
        return UShortArray.a(w());
    }

    @Override // kotlinx.serialization.internal.r1
    public /* bridge */ /* synthetic */ void u(e00.d dVar, Object obj, int i11) {
        z(dVar, ((UShortArray) obj).getCom.google.android.libraries.places.api.model.PlaceTypes.STORAGE java.lang.String(), i11);
    }

    protected int v(short[] collectionSize) {
        Intrinsics.h(collectionSize, "$this$collectionSize");
        return UShortArray.o(collectionSize);
    }

    protected short[] w() {
        return UShortArray.c(0);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.w, kotlinx.serialization.internal.a
    /* JADX INFO: renamed from: x, reason: merged with bridge method [inline-methods] */
    public void h(e00.c decoder, int i11, n2 builder, boolean z10) {
        Intrinsics.h(decoder, "decoder");
        Intrinsics.h(builder, "builder");
        builder.e(UShort.b(decoder.r(getDescriptor(), i11).s()));
    }

    protected n2 y(short[] toBuilder) {
        Intrinsics.h(toBuilder, "$this$toBuilder");
        return new n2(toBuilder, null);
    }

    protected void z(e00.d encoder, short[] content, int i11) {
        Intrinsics.h(encoder, "encoder");
        Intrinsics.h(content, "content");
        for (int i12 = 0; i12 < i11; i12++) {
            encoder.f(getDescriptor(), i12).q(UShortArray.m(content, i12));
        }
    }
}
