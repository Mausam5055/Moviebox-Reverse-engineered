package androidx.datastore.preferences.protobuf;

import com.google.android.libraries.places.api.model.PlaceTypes;
import java.lang.reflect.Field;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.security.AccessController;
import java.security.PrivilegedExceptionAction;
import java.util.logging.Level;
import java.util.logging.Logger;
import sun.misc.Unsafe;

/* JADX INFO: loaded from: classes.dex */
abstract class k1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Unsafe f8849a = H();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Class f8850b = androidx.datastore.preferences.protobuf.d.b();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final boolean f8851c = q(Long.TYPE);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final boolean f8852d = q(Integer.TYPE);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final e f8853e = F();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final boolean f8854f = Y();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final boolean f8855g = X();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    static final long f8856h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final long f8857i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final long f8858j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final long f8859k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static final long f8860l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static final long f8861m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private static final long f8862n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static final long f8863o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private static final long f8864p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private static final long f8865q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static final long f8866r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private static final long f8867s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private static final long f8868t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private static final long f8869u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private static final int f8870v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    static final boolean f8871w;

    class a implements PrivilegedExceptionAction {
        a() {
        }

        @Override // java.security.PrivilegedExceptionAction
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Unsafe run() throws IllegalAccessException {
            for (Field field : Unsafe.class.getDeclaredFields()) {
                field.setAccessible(true);
                Object obj = field.get(null);
                if (Unsafe.class.isInstance(obj)) {
                    return (Unsafe) Unsafe.class.cast(obj);
                }
            }
            return null;
        }
    }

    private static final class b extends e {
        b(Unsafe unsafe) {
            super(unsafe);
        }

        @Override // androidx.datastore.preferences.protobuf.k1.e
        public void c(long j11, byte[] bArr, long j12, long j13) {
            throw new UnsupportedOperationException();
        }

        @Override // androidx.datastore.preferences.protobuf.k1.e
        public boolean d(Object obj, long j11) {
            return k1.f8871w ? k1.u(obj, j11) : k1.v(obj, j11);
        }

        @Override // androidx.datastore.preferences.protobuf.k1.e
        public byte e(long j11) {
            throw new UnsupportedOperationException();
        }

        @Override // androidx.datastore.preferences.protobuf.k1.e
        public byte f(Object obj, long j11) {
            return k1.f8871w ? k1.y(obj, j11) : k1.z(obj, j11);
        }

        @Override // androidx.datastore.preferences.protobuf.k1.e
        public double g(Object obj, long j11) {
            return Double.longBitsToDouble(k(obj, j11));
        }

        @Override // androidx.datastore.preferences.protobuf.k1.e
        public float h(Object obj, long j11) {
            return Float.intBitsToFloat(i(obj, j11));
        }

        @Override // androidx.datastore.preferences.protobuf.k1.e
        public long j(long j11) {
            throw new UnsupportedOperationException();
        }

        @Override // androidx.datastore.preferences.protobuf.k1.e
        public void n(Object obj, long j11, boolean z10) {
            if (k1.f8871w) {
                k1.N(obj, j11, z10);
            } else {
                k1.O(obj, j11, z10);
            }
        }

        @Override // androidx.datastore.preferences.protobuf.k1.e
        public void o(Object obj, long j11, byte b11) {
            if (k1.f8871w) {
                k1.Q(obj, j11, b11);
            } else {
                k1.R(obj, j11, b11);
            }
        }

        @Override // androidx.datastore.preferences.protobuf.k1.e
        public void p(Object obj, long j11, double d11) {
            s(obj, j11, Double.doubleToLongBits(d11));
        }

        @Override // androidx.datastore.preferences.protobuf.k1.e
        public void q(Object obj, long j11, float f11) {
            r(obj, j11, Float.floatToIntBits(f11));
        }

        @Override // androidx.datastore.preferences.protobuf.k1.e
        public boolean v() {
            return false;
        }
    }

    private static final class c extends e {
        c(Unsafe unsafe) {
            super(unsafe);
        }

        @Override // androidx.datastore.preferences.protobuf.k1.e
        public void c(long j11, byte[] bArr, long j12, long j13) {
            throw new UnsupportedOperationException();
        }

        @Override // androidx.datastore.preferences.protobuf.k1.e
        public boolean d(Object obj, long j11) {
            return k1.f8871w ? k1.u(obj, j11) : k1.v(obj, j11);
        }

        @Override // androidx.datastore.preferences.protobuf.k1.e
        public byte e(long j11) {
            throw new UnsupportedOperationException();
        }

        @Override // androidx.datastore.preferences.protobuf.k1.e
        public byte f(Object obj, long j11) {
            return k1.f8871w ? k1.y(obj, j11) : k1.z(obj, j11);
        }

        @Override // androidx.datastore.preferences.protobuf.k1.e
        public double g(Object obj, long j11) {
            return Double.longBitsToDouble(k(obj, j11));
        }

        @Override // androidx.datastore.preferences.protobuf.k1.e
        public float h(Object obj, long j11) {
            return Float.intBitsToFloat(i(obj, j11));
        }

        @Override // androidx.datastore.preferences.protobuf.k1.e
        public long j(long j11) {
            throw new UnsupportedOperationException();
        }

        @Override // androidx.datastore.preferences.protobuf.k1.e
        public void n(Object obj, long j11, boolean z10) {
            if (k1.f8871w) {
                k1.N(obj, j11, z10);
            } else {
                k1.O(obj, j11, z10);
            }
        }

        @Override // androidx.datastore.preferences.protobuf.k1.e
        public void o(Object obj, long j11, byte b11) {
            if (k1.f8871w) {
                k1.Q(obj, j11, b11);
            } else {
                k1.R(obj, j11, b11);
            }
        }

        @Override // androidx.datastore.preferences.protobuf.k1.e
        public void p(Object obj, long j11, double d11) {
            s(obj, j11, Double.doubleToLongBits(d11));
        }

        @Override // androidx.datastore.preferences.protobuf.k1.e
        public void q(Object obj, long j11, float f11) {
            r(obj, j11, Float.floatToIntBits(f11));
        }

        @Override // androidx.datastore.preferences.protobuf.k1.e
        public boolean v() {
            return false;
        }
    }

    private static final class d extends e {
        d(Unsafe unsafe) {
            super(unsafe);
        }

        @Override // androidx.datastore.preferences.protobuf.k1.e
        public void c(long j11, byte[] bArr, long j12, long j13) {
            this.f8872a.copyMemory((Object) null, j11, bArr, k1.f8856h + j12, j13);
        }

        @Override // androidx.datastore.preferences.protobuf.k1.e
        public boolean d(Object obj, long j11) {
            return this.f8872a.getBoolean(obj, j11);
        }

        @Override // androidx.datastore.preferences.protobuf.k1.e
        public byte e(long j11) {
            return this.f8872a.getByte(j11);
        }

        @Override // androidx.datastore.preferences.protobuf.k1.e
        public byte f(Object obj, long j11) {
            return this.f8872a.getByte(obj, j11);
        }

        @Override // androidx.datastore.preferences.protobuf.k1.e
        public double g(Object obj, long j11) {
            return this.f8872a.getDouble(obj, j11);
        }

        @Override // androidx.datastore.preferences.protobuf.k1.e
        public float h(Object obj, long j11) {
            return this.f8872a.getFloat(obj, j11);
        }

        @Override // androidx.datastore.preferences.protobuf.k1.e
        public long j(long j11) {
            return this.f8872a.getLong(j11);
        }

        @Override // androidx.datastore.preferences.protobuf.k1.e
        public void n(Object obj, long j11, boolean z10) {
            this.f8872a.putBoolean(obj, j11, z10);
        }

        @Override // androidx.datastore.preferences.protobuf.k1.e
        public void o(Object obj, long j11, byte b11) {
            this.f8872a.putByte(obj, j11, b11);
        }

        @Override // androidx.datastore.preferences.protobuf.k1.e
        public void p(Object obj, long j11, double d11) {
            this.f8872a.putDouble(obj, j11, d11);
        }

        @Override // androidx.datastore.preferences.protobuf.k1.e
        public void q(Object obj, long j11, float f11) {
            this.f8872a.putFloat(obj, j11, f11);
        }

        @Override // androidx.datastore.preferences.protobuf.k1.e
        public boolean u() {
            if (!super.u()) {
                return false;
            }
            try {
                Class<?> cls = this.f8872a.getClass();
                Class<?> cls2 = Long.TYPE;
                cls.getMethod("getByte", Object.class, cls2);
                cls.getMethod("putByte", Object.class, cls2, Byte.TYPE);
                cls.getMethod("getBoolean", Object.class, cls2);
                cls.getMethod("putBoolean", Object.class, cls2, Boolean.TYPE);
                cls.getMethod("getFloat", Object.class, cls2);
                cls.getMethod("putFloat", Object.class, cls2, Float.TYPE);
                cls.getMethod("getDouble", Object.class, cls2);
                cls.getMethod("putDouble", Object.class, cls2, Double.TYPE);
                return true;
            } catch (Throwable th2) {
                k1.K(th2);
                return false;
            }
        }

        @Override // androidx.datastore.preferences.protobuf.k1.e
        public boolean v() {
            if (!super.v()) {
                return false;
            }
            try {
                Class<?> cls = this.f8872a.getClass();
                Class<?> cls2 = Long.TYPE;
                cls.getMethod("getByte", cls2);
                cls.getMethod("putByte", cls2, Byte.TYPE);
                cls.getMethod("getInt", cls2);
                cls.getMethod("putInt", cls2, Integer.TYPE);
                cls.getMethod("getLong", cls2);
                cls.getMethod("putLong", cls2, cls2);
                cls.getMethod("copyMemory", cls2, cls2, cls2);
                cls.getMethod("copyMemory", Object.class, cls2, Object.class, cls2, cls2);
                return true;
            } catch (Throwable th2) {
                k1.K(th2);
                return false;
            }
        }
    }

    private static abstract class e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        Unsafe f8872a;

        e(Unsafe unsafe) {
            this.f8872a = unsafe;
        }

        public final int a(Class cls) {
            return this.f8872a.arrayBaseOffset(cls);
        }

        public final int b(Class cls) {
            return this.f8872a.arrayIndexScale(cls);
        }

        public abstract void c(long j11, byte[] bArr, long j12, long j13);

        public abstract boolean d(Object obj, long j11);

        public abstract byte e(long j11);

        public abstract byte f(Object obj, long j11);

        public abstract double g(Object obj, long j11);

        public abstract float h(Object obj, long j11);

        public final int i(Object obj, long j11) {
            return this.f8872a.getInt(obj, j11);
        }

        public abstract long j(long j11);

        public final long k(Object obj, long j11) {
            return this.f8872a.getLong(obj, j11);
        }

        public final Object l(Object obj, long j11) {
            return this.f8872a.getObject(obj, j11);
        }

        public final long m(Field field) {
            return this.f8872a.objectFieldOffset(field);
        }

        public abstract void n(Object obj, long j11, boolean z10);

        public abstract void o(Object obj, long j11, byte b11);

        public abstract void p(Object obj, long j11, double d11);

        public abstract void q(Object obj, long j11, float f11);

        public final void r(Object obj, long j11, int i11) {
            this.f8872a.putInt(obj, j11, i11);
        }

        public final void s(Object obj, long j11, long j12) {
            this.f8872a.putLong(obj, j11, j12);
        }

        public final void t(Object obj, long j11, Object obj2) {
            this.f8872a.putObject(obj, j11, obj2);
        }

        public boolean u() {
            Unsafe unsafe = this.f8872a;
            if (unsafe == null) {
                return false;
            }
            try {
                Class<?> cls = unsafe.getClass();
                cls.getMethod("objectFieldOffset", Field.class);
                cls.getMethod("arrayBaseOffset", Class.class);
                cls.getMethod("arrayIndexScale", Class.class);
                Class<?> cls2 = Long.TYPE;
                cls.getMethod("getInt", Object.class, cls2);
                cls.getMethod("putInt", Object.class, cls2, Integer.TYPE);
                cls.getMethod("getLong", Object.class, cls2);
                cls.getMethod("putLong", Object.class, cls2, cls2);
                cls.getMethod("getObject", Object.class, cls2);
                cls.getMethod("putObject", Object.class, cls2, Object.class);
                return true;
            } catch (Throwable th2) {
                k1.K(th2);
                return false;
            }
        }

        public boolean v() {
            Unsafe unsafe = this.f8872a;
            if (unsafe == null) {
                return false;
            }
            try {
                Class<?> cls = unsafe.getClass();
                cls.getMethod("objectFieldOffset", Field.class);
                cls.getMethod("getLong", Object.class, Long.TYPE);
                return k1.o() != null;
            } catch (Throwable th2) {
                k1.K(th2);
                return false;
            }
        }
    }

    static {
        long jM = m(byte[].class);
        f8856h = jM;
        f8857i = m(boolean[].class);
        f8858j = n(boolean[].class);
        f8859k = m(int[].class);
        f8860l = n(int[].class);
        f8861m = m(long[].class);
        f8862n = n(long[].class);
        f8863o = m(float[].class);
        f8864p = n(float[].class);
        f8865q = m(double[].class);
        f8866r = n(double[].class);
        f8867s = m(Object[].class);
        f8868t = n(Object[].class);
        f8869u = s(o());
        f8870v = (int) (jM & 7);
        f8871w = ByteOrder.nativeOrder() == ByteOrder.BIG_ENDIAN;
    }

    static double A(Object obj, long j11) {
        return f8853e.g(obj, j11);
    }

    static float B(Object obj, long j11) {
        return f8853e.h(obj, j11);
    }

    static int C(Object obj, long j11) {
        return f8853e.i(obj, j11);
    }

    static long D(long j11) {
        return f8853e.j(j11);
    }

    static long E(Object obj, long j11) {
        return f8853e.k(obj, j11);
    }

    private static e F() {
        Unsafe unsafe = f8849a;
        if (unsafe == null) {
            return null;
        }
        if (!androidx.datastore.preferences.protobuf.d.c()) {
            return new d(unsafe);
        }
        if (f8851c) {
            return new c(unsafe);
        }
        if (f8852d) {
            return new b(unsafe);
        }
        return null;
    }

    static Object G(Object obj, long j11) {
        return f8853e.l(obj, j11);
    }

    static Unsafe H() {
        try {
            return (Unsafe) AccessController.doPrivileged(new a());
        } catch (Throwable unused) {
            return null;
        }
    }

    static boolean I() {
        return f8855g;
    }

    static boolean J() {
        return f8854f;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void K(Throwable th2) {
        Logger.getLogger(k1.class.getName()).log(Level.WARNING, "platform method missing - proto runtime falling back to safer methods: " + th2);
    }

    static long L(Field field) {
        return f8853e.m(field);
    }

    static void M(Object obj, long j11, boolean z10) {
        f8853e.n(obj, j11, z10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void N(Object obj, long j11, boolean z10) {
        Q(obj, j11, z10 ? (byte) 1 : (byte) 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void O(Object obj, long j11, boolean z10) {
        R(obj, j11, z10 ? (byte) 1 : (byte) 0);
    }

    static void P(byte[] bArr, long j11, byte b11) {
        f8853e.o(bArr, f8856h + j11, b11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void Q(Object obj, long j11, byte b11) {
        long j12 = (-4) & j11;
        int iC = C(obj, j12);
        int i11 = ((~((int) j11)) & 3) << 3;
        U(obj, j12, ((255 & b11) << i11) | (iC & (~(255 << i11))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void R(Object obj, long j11, byte b11) {
        long j12 = (-4) & j11;
        int i11 = (((int) j11) & 3) << 3;
        U(obj, j12, ((255 & b11) << i11) | (C(obj, j12) & (~(255 << i11))));
    }

    static void S(Object obj, long j11, double d11) {
        f8853e.p(obj, j11, d11);
    }

    static void T(Object obj, long j11, float f11) {
        f8853e.q(obj, j11, f11);
    }

    static void U(Object obj, long j11, int i11) {
        f8853e.r(obj, j11, i11);
    }

    static void V(Object obj, long j11, long j12) {
        f8853e.s(obj, j11, j12);
    }

    static void W(Object obj, long j11, Object obj2) {
        f8853e.t(obj, j11, obj2);
    }

    private static boolean X() {
        e eVar = f8853e;
        if (eVar == null) {
            return false;
        }
        return eVar.u();
    }

    private static boolean Y() {
        e eVar = f8853e;
        if (eVar == null) {
            return false;
        }
        return eVar.v();
    }

    static long k(ByteBuffer byteBuffer) {
        return f8853e.k(byteBuffer, f8869u);
    }

    static Object l(Class cls) {
        try {
            return f8849a.allocateInstance(cls);
        } catch (InstantiationException e11) {
            throw new IllegalStateException(e11);
        }
    }

    private static int m(Class cls) {
        if (f8855g) {
            return f8853e.a(cls);
        }
        return -1;
    }

    private static int n(Class cls) {
        if (f8855g) {
            return f8853e.b(cls);
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Field o() {
        Field fieldR;
        if (androidx.datastore.preferences.protobuf.d.c() && (fieldR = r(Buffer.class, "effectiveDirectAddress")) != null) {
            return fieldR;
        }
        Field fieldR2 = r(Buffer.class, PlaceTypes.ADDRESS);
        if (fieldR2 == null || fieldR2.getType() != Long.TYPE) {
            return null;
        }
        return fieldR2;
    }

    static void p(long j11, byte[] bArr, long j12, long j13) {
        f8853e.c(j11, bArr, j12, j13);
    }

    /* JADX WARN: Multi-variable type inference failed */
    static boolean q(Class cls) {
        if (!androidx.datastore.preferences.protobuf.d.c()) {
            return false;
        }
        try {
            Class cls2 = f8850b;
            Class cls3 = Boolean.TYPE;
            cls2.getMethod("peekLong", cls, cls3);
            cls2.getMethod("pokeLong", cls, Long.TYPE, cls3);
            Class cls4 = Integer.TYPE;
            cls2.getMethod("pokeInt", cls, cls4, cls3);
            cls2.getMethod("peekInt", cls, cls3);
            cls2.getMethod("pokeByte", cls, Byte.TYPE);
            cls2.getMethod("peekByte", cls);
            cls2.getMethod("pokeByteArray", cls, byte[].class, cls4, cls4);
            cls2.getMethod("peekByteArray", cls, byte[].class, cls4, cls4);
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }

    private static Field r(Class cls, String str) {
        try {
            return cls.getDeclaredField(str);
        } catch (Throwable unused) {
            return null;
        }
    }

    private static long s(Field field) {
        e eVar;
        if (field == null || (eVar = f8853e) == null) {
            return -1L;
        }
        return eVar.m(field);
    }

    static boolean t(Object obj, long j11) {
        return f8853e.d(obj, j11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean u(Object obj, long j11) {
        return y(obj, j11) != 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean v(Object obj, long j11) {
        return z(obj, j11) != 0;
    }

    static byte w(long j11) {
        return f8853e.e(j11);
    }

    static byte x(byte[] bArr, long j11) {
        return f8853e.f(bArr, f8856h + j11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static byte y(Object obj, long j11) {
        return (byte) ((C(obj, (-4) & j11) >>> ((int) (((~j11) & 3) << 3))) & 255);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static byte z(Object obj, long j11) {
        return (byte) ((C(obj, (-4) & j11) >>> ((int) ((j11 & 3) << 3))) & 255);
    }
}
