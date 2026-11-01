package d00;

import kotlin.UByte;
import kotlin.UInt;
import kotlin.ULong;
import kotlin.UShort;
import kotlin.Unit;
import kotlin.jvm.internal.BooleanCompanionObject;
import kotlin.jvm.internal.ByteCompanionObject;
import kotlin.jvm.internal.CharCompanionObject;
import kotlin.jvm.internal.DoubleCompanionObject;
import kotlin.jvm.internal.FloatCompanionObject;
import kotlin.jvm.internal.IntCompanionObject;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.LongCompanionObject;
import kotlin.jvm.internal.ShortCompanionObject;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.reflect.KClass;
import kotlin.time.Duration;
import kotlinx.serialization.b;
import kotlinx.serialization.internal.MapEntrySerializer;
import kotlinx.serialization.internal.PairSerializer;
import kotlinx.serialization.internal.TripleSerializer;
import kotlinx.serialization.internal.a1;
import kotlinx.serialization.internal.a2;
import kotlinx.serialization.internal.b0;
import kotlinx.serialization.internal.b1;
import kotlinx.serialization.internal.b2;
import kotlinx.serialization.internal.c0;
import kotlinx.serialization.internal.d0;
import kotlinx.serialization.internal.f;
import kotlinx.serialization.internal.f2;
import kotlinx.serialization.internal.g0;
import kotlinx.serialization.internal.g2;
import kotlinx.serialization.internal.h;
import kotlinx.serialization.internal.h0;
import kotlinx.serialization.internal.h1;
import kotlinx.serialization.internal.i;
import kotlinx.serialization.internal.i2;
import kotlinx.serialization.internal.j2;
import kotlinx.serialization.internal.k;
import kotlinx.serialization.internal.l;
import kotlinx.serialization.internal.l2;
import kotlinx.serialization.internal.m2;
import kotlinx.serialization.internal.o2;
import kotlinx.serialization.internal.p2;
import kotlinx.serialization.internal.q;
import kotlinx.serialization.internal.q0;
import kotlinx.serialization.internal.q2;
import kotlinx.serialization.internal.r;
import kotlinx.serialization.internal.r0;
import kotlinx.serialization.internal.u1;
import kotlinx.serialization.internal.v0;
import kotlinx.serialization.internal.z1;

/* JADX INFO: loaded from: classes7.dex */
public abstract class a {
    public static final b A(CharCompanionObject charCompanionObject) {
        Intrinsics.h(charCompanionObject, "<this>");
        return r.f68190a;
    }

    public static final b B(DoubleCompanionObject doubleCompanionObject) {
        Intrinsics.h(doubleCompanionObject, "<this>");
        return c0.f68114a;
    }

    public static final b C(FloatCompanionObject floatCompanionObject) {
        Intrinsics.h(floatCompanionObject, "<this>");
        return h0.f68146a;
    }

    public static final b D(IntCompanionObject intCompanionObject) {
        Intrinsics.h(intCompanionObject, "<this>");
        return r0.f68192a;
    }

    public static final b E(LongCompanionObject longCompanionObject) {
        Intrinsics.h(longCompanionObject, "<this>");
        return b1.f68110a;
    }

    public static final b F(ShortCompanionObject shortCompanionObject) {
        Intrinsics.h(shortCompanionObject, "<this>");
        return a2.f68107a;
    }

    public static final b G(StringCompanionObject stringCompanionObject) {
        Intrinsics.h(stringCompanionObject, "<this>");
        return b2.f68112a;
    }

    public static final b H(Duration.Companion companion) {
        Intrinsics.h(companion, "<this>");
        return d0.f68121a;
    }

    public static final b a(KClass kClass, b elementSerializer) {
        Intrinsics.h(kClass, "kClass");
        Intrinsics.h(elementSerializer, "elementSerializer");
        return new u1(kClass, elementSerializer);
    }

    public static final b b() {
        return h.f68145c;
    }

    public static final b c() {
        return k.f68160c;
    }

    public static final b d() {
        return q.f68185c;
    }

    public static final b e() {
        return b0.f68109c;
    }

    public static final b f() {
        return g0.f68140c;
    }

    public static final b g() {
        return q0.f68186c;
    }

    public static final b h(b elementSerializer) {
        Intrinsics.h(elementSerializer, "elementSerializer");
        return new f(elementSerializer);
    }

    public static final b i() {
        return a1.f68106c;
    }

    public static final b j(b keySerializer, b valueSerializer) {
        Intrinsics.h(keySerializer, "keySerializer");
        Intrinsics.h(valueSerializer, "valueSerializer");
        return new MapEntrySerializer(keySerializer, valueSerializer);
    }

    public static final b k(b keySerializer, b valueSerializer) {
        Intrinsics.h(keySerializer, "keySerializer");
        Intrinsics.h(valueSerializer, "valueSerializer");
        return new v0(keySerializer, valueSerializer);
    }

    public static final b l(b keySerializer, b valueSerializer) {
        Intrinsics.h(keySerializer, "keySerializer");
        Intrinsics.h(valueSerializer, "valueSerializer");
        return new PairSerializer(keySerializer, valueSerializer);
    }

    public static final b m() {
        return z1.f68223c;
    }

    public static final b n(b aSerializer, b bSerializer, b cSerializer) {
        Intrinsics.h(aSerializer, "aSerializer");
        Intrinsics.h(bSerializer, "bSerializer");
        Intrinsics.h(cSerializer, "cSerializer");
        return new TripleSerializer(aSerializer, bSerializer, cSerializer);
    }

    public static final b o() {
        return f2.f68137c;
    }

    public static final b p() {
        return i2.f68155c;
    }

    public static final b q() {
        return l2.f68167c;
    }

    public static final b r() {
        return o2.f68178c;
    }

    public static final b s(b bVar) {
        Intrinsics.h(bVar, "<this>");
        return bVar.getDescriptor().b() ? bVar : new h1(bVar);
    }

    public static final b t(UByte.Companion companion) {
        Intrinsics.h(companion, "<this>");
        return g2.f68143a;
    }

    public static final b u(UInt.Companion companion) {
        Intrinsics.h(companion, "<this>");
        return j2.f68158a;
    }

    public static final b v(ULong.Companion companion) {
        Intrinsics.h(companion, "<this>");
        return m2.f68170a;
    }

    public static final b w(UShort.Companion companion) {
        Intrinsics.h(companion, "<this>");
        return p2.f68183a;
    }

    public static final b x(Unit unit) {
        Intrinsics.h(unit, "<this>");
        return q2.f68188b;
    }

    public static final b y(BooleanCompanionObject booleanCompanionObject) {
        Intrinsics.h(booleanCompanionObject, "<this>");
        return i.f68152a;
    }

    public static final b z(ByteCompanionObject byteCompanionObject) {
        Intrinsics.h(byteCompanionObject, "<this>");
        return l.f68164a;
    }
}
