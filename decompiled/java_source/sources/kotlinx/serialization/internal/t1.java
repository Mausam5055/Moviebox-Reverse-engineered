package kotlinx.serialization.internal;

import java.util.Iterator;
import java.util.Map;
import kotlin.TuplesKt;
import kotlin.UByte;
import kotlin.UByteArray;
import kotlin.UInt;
import kotlin.UIntArray;
import kotlin.ULong;
import kotlin.ULongArray;
import kotlin.UShort;
import kotlin.UShortArray;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.BooleanCompanionObject;
import kotlin.jvm.internal.ByteCompanionObject;
import kotlin.jvm.internal.CharCompanionObject;
import kotlin.jvm.internal.DoubleCompanionObject;
import kotlin.jvm.internal.FloatCompanionObject;
import kotlin.jvm.internal.IntCompanionObject;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.LongCompanionObject;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.ShortCompanionObject;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.reflect.KClass;
import kotlin.text.CharsKt;
import kotlin.text.StringsKt;
import kotlin.time.Duration;

/* JADX INFO: loaded from: classes7.dex */
public abstract class t1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Map f68202a = MapsKt.l(TuplesKt.a(Reflection.b(String.class), d00.a.G(StringCompanionObject.f67289a)), TuplesKt.a(Reflection.b(Character.TYPE), d00.a.A(CharCompanionObject.f67270a)), TuplesKt.a(Reflection.b(char[].class), d00.a.d()), TuplesKt.a(Reflection.b(Double.TYPE), d00.a.B(DoubleCompanionObject.f67279a)), TuplesKt.a(Reflection.b(double[].class), d00.a.e()), TuplesKt.a(Reflection.b(Float.TYPE), d00.a.C(FloatCompanionObject.f67281a)), TuplesKt.a(Reflection.b(float[].class), d00.a.f()), TuplesKt.a(Reflection.b(Long.TYPE), d00.a.E(LongCompanionObject.f67283a)), TuplesKt.a(Reflection.b(long[].class), d00.a.i()), TuplesKt.a(Reflection.b(ULong.class), d00.a.v(ULong.INSTANCE)), TuplesKt.a(Reflection.b(ULongArray.class), d00.a.q()), TuplesKt.a(Reflection.b(Integer.TYPE), d00.a.D(IntCompanionObject.f67282a)), TuplesKt.a(Reflection.b(int[].class), d00.a.g()), TuplesKt.a(Reflection.b(UInt.class), d00.a.u(UInt.INSTANCE)), TuplesKt.a(Reflection.b(UIntArray.class), d00.a.p()), TuplesKt.a(Reflection.b(Short.TYPE), d00.a.F(ShortCompanionObject.f67288a)), TuplesKt.a(Reflection.b(short[].class), d00.a.m()), TuplesKt.a(Reflection.b(UShort.class), d00.a.w(UShort.INSTANCE)), TuplesKt.a(Reflection.b(UShortArray.class), d00.a.r()), TuplesKt.a(Reflection.b(Byte.TYPE), d00.a.z(ByteCompanionObject.f67268a)), TuplesKt.a(Reflection.b(byte[].class), d00.a.c()), TuplesKt.a(Reflection.b(UByte.class), d00.a.t(UByte.INSTANCE)), TuplesKt.a(Reflection.b(UByteArray.class), d00.a.o()), TuplesKt.a(Reflection.b(Boolean.TYPE), d00.a.y(BooleanCompanionObject.f67267a)), TuplesKt.a(Reflection.b(boolean[].class), d00.a.b()), TuplesKt.a(Reflection.b(Unit.class), d00.a.x(Unit.f67061a)), TuplesKt.a(Reflection.b(Duration.class), d00.a.H(Duration.INSTANCE)));

    public static final kotlinx.serialization.descriptors.f a(String serialName, kotlinx.serialization.descriptors.e kind) {
        Intrinsics.h(serialName, "serialName");
        Intrinsics.h(kind, "kind");
        d(serialName);
        return new s1(serialName, kind);
    }

    public static final kotlinx.serialization.b b(KClass kClass) {
        Intrinsics.h(kClass, "<this>");
        return (kotlinx.serialization.b) f68202a.get(kClass);
    }

    private static final String c(String str) {
        if (str.length() <= 0) {
            return str;
        }
        StringBuilder sb2 = new StringBuilder();
        char cCharAt = str.charAt(0);
        sb2.append((Object) (Character.isLowerCase(cCharAt) ? CharsKt.h(cCharAt) : String.valueOf(cCharAt)));
        String strSubstring = str.substring(1);
        Intrinsics.g(strSubstring, "this as java.lang.String).substring(startIndex)");
        sb2.append(strSubstring);
        return sb2.toString();
    }

    private static final void d(String str) {
        Iterator it = f68202a.keySet().iterator();
        while (it.hasNext()) {
            String strG = ((KClass) it.next()).g();
            Intrinsics.e(strG);
            String strC = c(strG);
            if (StringsKt.H(str, "kotlin." + strC, true) || StringsKt.H(str, strC, true)) {
                throw new IllegalArgumentException(StringsKt.n("\n                The name of serial descriptor should uniquely identify associated serializer.\n                For serial name " + str + " there already exist " + c(strC) + "Serializer.\n                Please refer to SerialDescriptor documentation for additional information.\n            "));
            }
        }
    }
}
