package kotlinx.serialization.internal;

import kotlin.ULong;
import kotlin.ULongArray;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public final class l2 extends r1 implements kotlinx.serialization.b {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final l2 f68167c = new l2();

    private l2() {
        super(d00.a.v(ULong.INSTANCE));
    }

    @Override // kotlinx.serialization.internal.a
    public /* bridge */ /* synthetic */ int e(Object obj) {
        return v(((ULongArray) obj).getCom.google.android.libraries.places.api.model.PlaceTypes.STORAGE java.lang.String());
    }

    @Override // kotlinx.serialization.internal.a
    public /* bridge */ /* synthetic */ Object k(Object obj) {
        return y(((ULongArray) obj).getCom.google.android.libraries.places.api.model.PlaceTypes.STORAGE java.lang.String());
    }

    @Override // kotlinx.serialization.internal.r1
    public /* bridge */ /* synthetic */ Object r() {
        return ULongArray.a(w());
    }

    @Override // kotlinx.serialization.internal.r1
    public /* bridge */ /* synthetic */ void u(e00.d dVar, Object obj, int i11) {
        z(dVar, ((ULongArray) obj).getCom.google.android.libraries.places.api.model.PlaceTypes.STORAGE java.lang.String(), i11);
    }

    protected int v(long[] collectionSize) {
        Intrinsics.h(collectionSize, "$this$collectionSize");
        return ULongArray.o(collectionSize);
    }

    protected long[] w() {
        return ULongArray.c(0);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.w, kotlinx.serialization.internal.a
    /* JADX INFO: renamed from: x, reason: merged with bridge method [inline-methods] */
    public void h(e00.c decoder, int i11, k2 builder, boolean z10) {
        Intrinsics.h(decoder, "decoder");
        Intrinsics.h(builder, "builder");
        builder.e(ULong.b(decoder.r(getDescriptor(), i11).l()));
    }

    protected k2 y(long[] toBuilder) {
        Intrinsics.h(toBuilder, "$this$toBuilder");
        return new k2(toBuilder, null);
    }

    protected void z(e00.d encoder, long[] content, int i11) {
        Intrinsics.h(encoder, "encoder");
        Intrinsics.h(content, "content");
        for (int i12 = 0; i12 < i11; i12++) {
            encoder.f(getDescriptor(), i12).m(ULongArray.m(content, i12));
        }
    }
}
