package androidx.datastore.preferences.core;

import androidx.datastore.core.CorruptionException;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.datastore.preferences.protobuf.ByteString;
import androidx.datastore.preferences.protobuf.GeneratedMessageLite;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;
import okio.BufferedSink;
import okio.BufferedSource;

/* JADX INFO: loaded from: classes.dex */
public final class f implements androidx.datastore.core.okio.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final f f8657a = new f();

    public /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f8658a;

        static {
            int[] iArr = new int[PreferencesProto$Value.ValueCase.values().length];
            try {
                iArr[PreferencesProto$Value.ValueCase.BOOLEAN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[PreferencesProto$Value.ValueCase.FLOAT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[PreferencesProto$Value.ValueCase.DOUBLE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[PreferencesProto$Value.ValueCase.INTEGER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[PreferencesProto$Value.ValueCase.LONG.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[PreferencesProto$Value.ValueCase.STRING.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[PreferencesProto$Value.ValueCase.STRING_SET.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr[PreferencesProto$Value.ValueCase.BYTES.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr[PreferencesProto$Value.ValueCase.VALUE_NOT_SET.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            f8658a = iArr;
        }
    }

    private f() {
    }

    private final void d(String str, PreferencesProto$Value preferencesProto$Value, MutablePreferences mutablePreferences) throws CorruptionException {
        PreferencesProto$Value.ValueCase valueCaseC0 = preferencesProto$Value.c0();
        switch (valueCaseC0 == null ? -1 : a.f8658a[valueCaseC0.ordinal()]) {
            case -1:
                throw new CorruptionException("Value case is null.", null, 2, null);
            case 0:
            default:
                throw new NoWhenBranchMatchedException();
            case 1:
                mutablePreferences.i(e.a(str), Boolean.valueOf(preferencesProto$Value.T()));
                return;
            case 2:
                mutablePreferences.i(e.d(str), Float.valueOf(preferencesProto$Value.X()));
                return;
            case 3:
                mutablePreferences.i(e.c(str), Double.valueOf(preferencesProto$Value.W()));
                return;
            case 4:
                mutablePreferences.i(e.e(str), Integer.valueOf(preferencesProto$Value.Y()));
                return;
            case 5:
                mutablePreferences.i(e.f(str), Long.valueOf(preferencesProto$Value.Z()));
                return;
            case 6:
                c.a aVarG = e.g(str);
                String strA0 = preferencesProto$Value.a0();
                Intrinsics.g(strA0, "value.string");
                mutablePreferences.i(aVarG, strA0);
                return;
            case 7:
                c.a aVarH = e.h(str);
                List listP = preferencesProto$Value.b0().P();
                Intrinsics.g(listP, "value.stringSet.stringsList");
                mutablePreferences.i(aVarH, CollectionsKt.W0(listP));
                return;
            case 8:
                c.a aVarB = e.b(str);
                byte[] byteArray = preferencesProto$Value.U().toByteArray();
                Intrinsics.g(byteArray, "value.bytes.toByteArray()");
                mutablePreferences.i(aVarB, byteArray);
                return;
            case 9:
                throw new CorruptionException("Value not set.", null, 2, null);
        }
    }

    private final PreferencesProto$Value f(Object obj) {
        if (obj instanceof Boolean) {
            GeneratedMessageLite generatedMessageLiteM = PreferencesProto$Value.d0().x(((Boolean) obj).booleanValue()).m();
            Intrinsics.g(generatedMessageLiteM, "newBuilder().setBoolean(value).build()");
            return (PreferencesProto$Value) generatedMessageLiteM;
        }
        if (obj instanceof Float) {
            GeneratedMessageLite generatedMessageLiteM2 = PreferencesProto$Value.d0().A(((Number) obj).floatValue()).m();
            Intrinsics.g(generatedMessageLiteM2, "newBuilder().setFloat(value).build()");
            return (PreferencesProto$Value) generatedMessageLiteM2;
        }
        if (obj instanceof Double) {
            GeneratedMessageLite generatedMessageLiteM3 = PreferencesProto$Value.d0().z(((Number) obj).doubleValue()).m();
            Intrinsics.g(generatedMessageLiteM3, "newBuilder().setDouble(value).build()");
            return (PreferencesProto$Value) generatedMessageLiteM3;
        }
        if (obj instanceof Integer) {
            GeneratedMessageLite generatedMessageLiteM4 = PreferencesProto$Value.d0().B(((Number) obj).intValue()).m();
            Intrinsics.g(generatedMessageLiteM4, "newBuilder().setInteger(value).build()");
            return (PreferencesProto$Value) generatedMessageLiteM4;
        }
        if (obj instanceof Long) {
            GeneratedMessageLite generatedMessageLiteM5 = PreferencesProto$Value.d0().C(((Number) obj).longValue()).m();
            Intrinsics.g(generatedMessageLiteM5, "newBuilder().setLong(value).build()");
            return (PreferencesProto$Value) generatedMessageLiteM5;
        }
        if (obj instanceof String) {
            GeneratedMessageLite generatedMessageLiteM6 = PreferencesProto$Value.d0().D((String) obj).m();
            Intrinsics.g(generatedMessageLiteM6, "newBuilder().setString(value).build()");
            return (PreferencesProto$Value) generatedMessageLiteM6;
        }
        if (obj instanceof Set) {
            PreferencesProto$Value.a aVarD0 = PreferencesProto$Value.d0();
            androidx.datastore.preferences.e.a aVarQ = androidx.datastore.preferences.e.Q();
            Intrinsics.f(obj, "null cannot be cast to non-null type kotlin.collections.Set<kotlin.String>");
            GeneratedMessageLite generatedMessageLiteM7 = aVarD0.E(aVarQ.x((Set) obj)).m();
            Intrinsics.g(generatedMessageLiteM7, "newBuilder().setStringSe…                ).build()");
            return (PreferencesProto$Value) generatedMessageLiteM7;
        }
        if (obj instanceof byte[]) {
            GeneratedMessageLite generatedMessageLiteM8 = PreferencesProto$Value.d0().y(ByteString.copyFrom((byte[]) obj)).m();
            Intrinsics.g(generatedMessageLiteM8, "newBuilder().setBytes(By….copyFrom(value)).build()");
            return (PreferencesProto$Value) generatedMessageLiteM8;
        }
        throw new IllegalStateException("PreferencesSerializer does not support type: " + obj.getClass().getName());
    }

    @Override // androidx.datastore.core.okio.b
    public Object a(BufferedSource bufferedSource, Continuation continuation) throws CorruptionException {
        androidx.datastore.preferences.d dVarA = androidx.datastore.preferences.b.f8649a.a(bufferedSource.inputStream());
        MutablePreferences mutablePreferencesB = d.b(new c.b[0]);
        Map mapN = dVarA.N();
        Intrinsics.g(mapN, "preferencesProto.preferencesMap");
        for (Map.Entry entry : mapN.entrySet()) {
            String name = (String) entry.getKey();
            PreferencesProto$Value value = (PreferencesProto$Value) entry.getValue();
            f fVar = f8657a;
            Intrinsics.g(name, "name");
            Intrinsics.g(value, "value");
            fVar.d(name, value, mutablePreferencesB);
        }
        return mutablePreferencesB.d();
    }

    @Override // androidx.datastore.core.okio.b
    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public c c() {
        return d.a();
    }

    @Override // androidx.datastore.core.okio.b
    /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
    public Object b(c cVar, BufferedSink bufferedSink, Continuation continuation) {
        Map mapA = cVar.a();
        androidx.datastore.preferences.d.a aVarQ = androidx.datastore.preferences.d.Q();
        for (Map.Entry entry : mapA.entrySet()) {
            aVarQ.x(((c.a) entry.getKey()).a(), f(entry.getValue()));
        }
        ((androidx.datastore.preferences.d) aVarQ.m()).h(bufferedSink.outputStream());
        return Unit.f67061a;
    }
}
