package kotlinx.serialization.json.internal;

import kotlin.KotlinNothingValueException;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.UStringsKt;

/* JADX INFO: loaded from: classes7.dex */
public final class v extends e00.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final a f68344a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final f00.c f68345b;

    public v(a lexer, kotlinx.serialization.json.a json) {
        Intrinsics.h(lexer, "lexer");
        Intrinsics.h(json, "json");
        this.f68344a = lexer;
        this.f68345b = json.a();
    }

    @Override // e00.a, e00.e
    public byte H() {
        a aVar = this.f68344a;
        String strS = aVar.s();
        try {
            return UStringsKt.a(strS);
        } catch (IllegalArgumentException unused) {
            a.y(aVar, "Failed to parse type 'UByte' for input '" + strS + '\'', 0, null, 6, null);
            throw new KotlinNothingValueException();
        }
    }

    @Override // e00.e, e00.c
    public f00.c a() {
        return this.f68345b;
    }

    @Override // e00.a, e00.e
    public int h() {
        a aVar = this.f68344a;
        String strS = aVar.s();
        try {
            return UStringsKt.d(strS);
        } catch (IllegalArgumentException unused) {
            a.y(aVar, "Failed to parse type 'UInt' for input '" + strS + '\'', 0, null, 6, null);
            throw new KotlinNothingValueException();
        }
    }

    @Override // e00.a, e00.e
    public long l() {
        a aVar = this.f68344a;
        String strS = aVar.s();
        try {
            return UStringsKt.g(strS);
        } catch (IllegalArgumentException unused) {
            a.y(aVar, "Failed to parse type 'ULong' for input '" + strS + '\'', 0, null, 6, null);
            throw new KotlinNothingValueException();
        }
    }

    @Override // e00.c
    public int o(kotlinx.serialization.descriptors.f descriptor) {
        Intrinsics.h(descriptor, "descriptor");
        throw new IllegalStateException("unsupported");
    }

    @Override // e00.a, e00.e
    public short s() {
        a aVar = this.f68344a;
        String strS = aVar.s();
        try {
            return UStringsKt.j(strS);
        } catch (IllegalArgumentException unused) {
            a.y(aVar, "Failed to parse type 'UShort' for input '" + strS + '\'', 0, null, 6, null);
            throw new KotlinNothingValueException();
        }
    }
}
