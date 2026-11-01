package com.bykv.vk.openvk.preload.a.b.a;

import com.bykv.vk.openvk.preload.a.n;
import com.bykv.vk.openvk.preload.a.p;
import com.bykv.vk.openvk.preload.a.r;
import com.bykv.vk.openvk.preload.a.s;
import java.io.IOException;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.net.InetAddress;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.Calendar;
import java.util.Currency;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.StringTokenizer;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicIntegerArray;

/* JADX INFO: loaded from: classes2.dex */
public final class m {
    public static final r<com.bykv.vk.openvk.preload.a.i> A;
    public static final s B;
    public static final s C;
    private static r<Class> D;
    private static r<BitSet> E;
    private static r<Boolean> F;
    private static r<Number> G;
    private static r<Number> H;
    private static r<Number> I;
    private static r<AtomicInteger> J;
    private static r<AtomicBoolean> K;
    private static r<AtomicIntegerArray> L;
    private static r<Number> M;
    private static r<Character> N;
    private static r<String> O;
    private static r<StringBuilder> P;
    private static r<StringBuffer> Q;
    private static r<URL> R;
    private static r<URI> S;
    private static r<InetAddress> T;
    private static r<UUID> U;
    private static r<Currency> V;
    private static r<Calendar> W;
    private static r<Locale> X;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final s f20369a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final s f20370b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final r<Boolean> f20371c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final s f20372d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final s f20373e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final s f20374f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final s f20375g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final s f20376h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final s f20377i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final s f20378j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final r<Number> f20379k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final s f20380l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final s f20381m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final r<BigDecimal> f20382n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final r<BigInteger> f20383o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static final s f20384p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static final s f20385q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static final s f20386r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static final s f20387s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static final s f20388t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final s f20389u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static final s f20390v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public static final s f20391w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static final s f20392x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public static final s f20393y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public static final s f20394z;

    /* JADX INFO: renamed from: com.bykv.vk.openvk.preload.a.b.a.m$30, reason: invalid class name */
    static /* synthetic */ class AnonymousClass30 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f20410a;

        static {
            int[] iArr = new int[com.bykv.vk.openvk.preload.a.d.b.values().length];
            f20410a = iArr;
            try {
                iArr[com.bykv.vk.openvk.preload.a.d.b.NUMBER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f20410a[com.bykv.vk.openvk.preload.a.d.b.BOOLEAN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f20410a[com.bykv.vk.openvk.preload.a.d.b.STRING.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f20410a[com.bykv.vk.openvk.preload.a.d.b.NULL.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f20410a[com.bykv.vk.openvk.preload.a.d.b.BEGIN_ARRAY.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f20410a[com.bykv.vk.openvk.preload.a.d.b.BEGIN_OBJECT.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f20410a[com.bykv.vk.openvk.preload.a.d.b.END_DOCUMENT.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f20410a[com.bykv.vk.openvk.preload.a.d.b.NAME.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f20410a[com.bykv.vk.openvk.preload.a.d.b.END_OBJECT.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f20410a[com.bykv.vk.openvk.preload.a.d.b.END_ARRAY.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
        }
    }

    static final class a<T extends Enum<T>> extends r<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Map<String, T> f20411a = new HashMap();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final Map<T, String> f20412b = new HashMap();

        public a(Class<T> cls) {
            try {
                for (T t11 : cls.getEnumConstants()) {
                    String strName = t11.name();
                    com.bykv.vk.openvk.preload.a.a.b bVar = (com.bykv.vk.openvk.preload.a.a.b) cls.getField(strName).getAnnotation(com.bykv.vk.openvk.preload.a.a.b.class);
                    if (bVar != null) {
                        strName = bVar.a();
                        for (String str : bVar.b()) {
                            this.f20411a.put(str, t11);
                        }
                    }
                    this.f20411a.put(strName, t11);
                    this.f20412b.put(t11, strName);
                }
            } catch (NoSuchFieldException e11) {
                throw new AssertionError(e11);
            }
        }

        @Override // com.bykv.vk.openvk.preload.a.r
        public final /* synthetic */ Object a(com.bykv.vk.openvk.preload.a.d.a aVar) throws IOException {
            if (aVar.f() != com.bykv.vk.openvk.preload.a.d.b.NULL) {
                return this.f20411a.get(aVar.h());
            }
            aVar.j();
            return null;
        }

        @Override // com.bykv.vk.openvk.preload.a.r
        public final /* synthetic */ void a(com.bykv.vk.openvk.preload.a.d.c cVar, Object obj) throws IOException {
            Enum r11 = (Enum) obj;
            cVar.b(r11 == null ? null : this.f20412b.get(r11));
        }
    }

    static {
        r<Class> rVarA = new r<Class>() { // from class: com.bykv.vk.openvk.preload.a.b.a.m.1
            @Override // com.bykv.vk.openvk.preload.a.r
            public final /* synthetic */ Class a(com.bykv.vk.openvk.preload.a.d.a aVar) throws IOException {
                throw new UnsupportedOperationException("Attempted to deserialize a java.lang.Class. Forgot to register a type adapter?");
            }

            @Override // com.bykv.vk.openvk.preload.a.r
            public final /* synthetic */ void a(com.bykv.vk.openvk.preload.a.d.c cVar, Class cls) throws IOException {
                throw new UnsupportedOperationException("Attempted to serialize java.lang.Class: " + cls.getName() + ". Forgot to register a type adapter?");
            }
        }.a();
        D = rVarA;
        f20369a = a(Class.class, rVarA);
        r<BitSet> rVarA2 = new r<BitSet>() { // from class: com.bykv.vk.openvk.preload.a.b.a.m.12
            /* JADX WARN: Code duplicated, block: B:15:0x002e  */
            private static BitSet b(com.bykv.vk.openvk.preload.a.d.a aVar) throws IOException {
                BitSet bitSet = new BitSet();
                aVar.a();
                com.bykv.vk.openvk.preload.a.d.b bVarF = aVar.f();
                int i11 = 0;
                while (bVarF != com.bykv.vk.openvk.preload.a.d.b.END_ARRAY) {
                    int i12 = AnonymousClass30.f20410a[bVarF.ordinal()];
                    boolean zI = true;
                    if (i12 != 1) {
                        if (i12 == 2) {
                            zI = aVar.i();
                        } else {
                            if (i12 != 3) {
                                throw new p("Invalid bitset value type: ".concat(String.valueOf(bVarF)));
                            }
                            String strH = aVar.h();
                            try {
                                if (Integer.parseInt(strH) == 0) {
                                    zI = false;
                                }
                            } catch (NumberFormatException unused) {
                                throw new p("Error: Expecting: bitset number value (1, 0), Found: ".concat(String.valueOf(strH)));
                            }
                        }
                    } else if (aVar.m() == 0) {
                        zI = false;
                    }
                    if (zI) {
                        bitSet.set(i11);
                    }
                    i11++;
                    bVarF = aVar.f();
                }
                aVar.b();
                return bitSet;
            }

            @Override // com.bykv.vk.openvk.preload.a.r
            public final /* synthetic */ BitSet a(com.bykv.vk.openvk.preload.a.d.a aVar) throws IOException {
                return b(aVar);
            }

            @Override // com.bykv.vk.openvk.preload.a.r
            public final /* synthetic */ void a(com.bykv.vk.openvk.preload.a.d.c cVar, BitSet bitSet) throws IOException {
                BitSet bitSet2 = bitSet;
                cVar.d();
                int length = bitSet2.length();
                for (int i11 = 0; i11 < length; i11++) {
                    cVar.a(bitSet2.get(i11) ? 1L : 0L);
                }
                cVar.e();
            }
        }.a();
        E = rVarA2;
        f20370b = a(BitSet.class, rVarA2);
        F = new r<Boolean>() { // from class: com.bykv.vk.openvk.preload.a.b.a.m.23
            @Override // com.bykv.vk.openvk.preload.a.r
            public final /* synthetic */ Boolean a(com.bykv.vk.openvk.preload.a.d.a aVar) throws IOException {
                com.bykv.vk.openvk.preload.a.d.b bVarF = aVar.f();
                if (bVarF != com.bykv.vk.openvk.preload.a.d.b.NULL) {
                    return bVarF == com.bykv.vk.openvk.preload.a.d.b.STRING ? Boolean.valueOf(Boolean.parseBoolean(aVar.h())) : Boolean.valueOf(aVar.i());
                }
                aVar.j();
                return null;
            }

            @Override // com.bykv.vk.openvk.preload.a.r
            public final /* bridge */ /* synthetic */ void a(com.bykv.vk.openvk.preload.a.d.c cVar, Boolean bool) throws IOException {
                cVar.a(bool);
            }
        };
        f20371c = new r<Boolean>() { // from class: com.bykv.vk.openvk.preload.a.b.a.m.31
            @Override // com.bykv.vk.openvk.preload.a.r
            public final /* synthetic */ Boolean a(com.bykv.vk.openvk.preload.a.d.a aVar) throws IOException {
                if (aVar.f() != com.bykv.vk.openvk.preload.a.d.b.NULL) {
                    return Boolean.valueOf(aVar.h());
                }
                aVar.j();
                return null;
            }

            @Override // com.bykv.vk.openvk.preload.a.r
            public final /* synthetic */ void a(com.bykv.vk.openvk.preload.a.d.c cVar, Boolean bool) throws IOException {
                Boolean bool2 = bool;
                cVar.b(bool2 == null ? "null" : bool2.toString());
            }
        };
        f20372d = a(Boolean.TYPE, Boolean.class, F);
        r<Number> rVar = new r<Number>() { // from class: com.bykv.vk.openvk.preload.a.b.a.m.32
            private static Number b(com.bykv.vk.openvk.preload.a.d.a aVar) throws IOException {
                if (aVar.f() == com.bykv.vk.openvk.preload.a.d.b.NULL) {
                    aVar.j();
                    return null;
                }
                try {
                    return Byte.valueOf((byte) aVar.m());
                } catch (NumberFormatException e11) {
                    throw new p(e11);
                }
            }

            @Override // com.bykv.vk.openvk.preload.a.r
            public final /* synthetic */ Number a(com.bykv.vk.openvk.preload.a.d.a aVar) throws IOException {
                return b(aVar);
            }

            @Override // com.bykv.vk.openvk.preload.a.r
            public final /* bridge */ /* synthetic */ void a(com.bykv.vk.openvk.preload.a.d.c cVar, Number number) throws IOException {
                cVar.a(number);
            }
        };
        G = rVar;
        f20373e = a(Byte.TYPE, Byte.class, rVar);
        r<Number> rVar2 = new r<Number>() { // from class: com.bykv.vk.openvk.preload.a.b.a.m.33
            private static Number b(com.bykv.vk.openvk.preload.a.d.a aVar) throws IOException {
                if (aVar.f() == com.bykv.vk.openvk.preload.a.d.b.NULL) {
                    aVar.j();
                    return null;
                }
                try {
                    return Short.valueOf((short) aVar.m());
                } catch (NumberFormatException e11) {
                    throw new p(e11);
                }
            }

            @Override // com.bykv.vk.openvk.preload.a.r
            public final /* synthetic */ Number a(com.bykv.vk.openvk.preload.a.d.a aVar) throws IOException {
                return b(aVar);
            }

            @Override // com.bykv.vk.openvk.preload.a.r
            public final /* bridge */ /* synthetic */ void a(com.bykv.vk.openvk.preload.a.d.c cVar, Number number) throws IOException {
                cVar.a(number);
            }
        };
        H = rVar2;
        f20374f = a(Short.TYPE, Short.class, rVar2);
        r<Number> rVar3 = new r<Number>() { // from class: com.bykv.vk.openvk.preload.a.b.a.m.34
            private static Number b(com.bykv.vk.openvk.preload.a.d.a aVar) throws IOException {
                if (aVar.f() == com.bykv.vk.openvk.preload.a.d.b.NULL) {
                    aVar.j();
                    return null;
                }
                try {
                    return Integer.valueOf(aVar.m());
                } catch (NumberFormatException e11) {
                    throw new p(e11);
                }
            }

            @Override // com.bykv.vk.openvk.preload.a.r
            public final /* synthetic */ Number a(com.bykv.vk.openvk.preload.a.d.a aVar) throws IOException {
                return b(aVar);
            }

            @Override // com.bykv.vk.openvk.preload.a.r
            public final /* bridge */ /* synthetic */ void a(com.bykv.vk.openvk.preload.a.d.c cVar, Number number) throws IOException {
                cVar.a(number);
            }
        };
        I = rVar3;
        f20375g = a(Integer.TYPE, Integer.class, rVar3);
        r<AtomicInteger> rVarA3 = new r<AtomicInteger>() { // from class: com.bykv.vk.openvk.preload.a.b.a.m.35
            private static AtomicInteger b(com.bykv.vk.openvk.preload.a.d.a aVar) throws IOException {
                try {
                    return new AtomicInteger(aVar.m());
                } catch (NumberFormatException e11) {
                    throw new p(e11);
                }
            }

            @Override // com.bykv.vk.openvk.preload.a.r
            public final /* synthetic */ AtomicInteger a(com.bykv.vk.openvk.preload.a.d.a aVar) throws IOException {
                return b(aVar);
            }

            @Override // com.bykv.vk.openvk.preload.a.r
            public final /* synthetic */ void a(com.bykv.vk.openvk.preload.a.d.c cVar, AtomicInteger atomicInteger) throws IOException {
                cVar.a(atomicInteger.get());
            }
        }.a();
        J = rVarA3;
        f20376h = a(AtomicInteger.class, rVarA3);
        r<AtomicBoolean> rVarA4 = new r<AtomicBoolean>() { // from class: com.bykv.vk.openvk.preload.a.b.a.m.36
            @Override // com.bykv.vk.openvk.preload.a.r
            public final /* synthetic */ AtomicBoolean a(com.bykv.vk.openvk.preload.a.d.a aVar) throws IOException {
                return new AtomicBoolean(aVar.i());
            }

            @Override // com.bykv.vk.openvk.preload.a.r
            public final /* synthetic */ void a(com.bykv.vk.openvk.preload.a.d.c cVar, AtomicBoolean atomicBoolean) throws IOException {
                cVar.d(atomicBoolean.get());
            }
        }.a();
        K = rVarA4;
        f20377i = a(AtomicBoolean.class, rVarA4);
        r<AtomicIntegerArray> rVarA5 = new r<AtomicIntegerArray>() { // from class: com.bykv.vk.openvk.preload.a.b.a.m.2
            private static AtomicIntegerArray b(com.bykv.vk.openvk.preload.a.d.a aVar) throws IOException {
                ArrayList arrayList = new ArrayList();
                aVar.a();
                while (aVar.e()) {
                    try {
                        arrayList.add(Integer.valueOf(aVar.m()));
                    } catch (NumberFormatException e11) {
                        throw new p(e11);
                    }
                }
                aVar.b();
                int size = arrayList.size();
                AtomicIntegerArray atomicIntegerArray = new AtomicIntegerArray(size);
                for (int i11 = 0; i11 < size; i11++) {
                    atomicIntegerArray.set(i11, ((Integer) arrayList.get(i11)).intValue());
                }
                return atomicIntegerArray;
            }

            @Override // com.bykv.vk.openvk.preload.a.r
            public final /* synthetic */ AtomicIntegerArray a(com.bykv.vk.openvk.preload.a.d.a aVar) throws IOException {
                return b(aVar);
            }

            @Override // com.bykv.vk.openvk.preload.a.r
            public final /* synthetic */ void a(com.bykv.vk.openvk.preload.a.d.c cVar, AtomicIntegerArray atomicIntegerArray) throws IOException {
                AtomicIntegerArray atomicIntegerArray2 = atomicIntegerArray;
                cVar.d();
                int length = atomicIntegerArray2.length();
                for (int i11 = 0; i11 < length; i11++) {
                    cVar.a(atomicIntegerArray2.get(i11));
                }
                cVar.e();
            }
        }.a();
        L = rVarA5;
        f20378j = a(AtomicIntegerArray.class, rVarA5);
        f20379k = new r<Number>() { // from class: com.bykv.vk.openvk.preload.a.b.a.m.3
            private static Number b(com.bykv.vk.openvk.preload.a.d.a aVar) throws IOException {
                if (aVar.f() == com.bykv.vk.openvk.preload.a.d.b.NULL) {
                    aVar.j();
                    return null;
                }
                try {
                    return Long.valueOf(aVar.l());
                } catch (NumberFormatException e11) {
                    throw new p(e11);
                }
            }

            @Override // com.bykv.vk.openvk.preload.a.r
            public final /* synthetic */ Number a(com.bykv.vk.openvk.preload.a.d.a aVar) throws IOException {
                return b(aVar);
            }

            @Override // com.bykv.vk.openvk.preload.a.r
            public final /* bridge */ /* synthetic */ void a(com.bykv.vk.openvk.preload.a.d.c cVar, Number number) throws IOException {
                cVar.a(number);
            }
        };
        new r<Number>() { // from class: com.bykv.vk.openvk.preload.a.b.a.m.4
            @Override // com.bykv.vk.openvk.preload.a.r
            public final /* synthetic */ Number a(com.bykv.vk.openvk.preload.a.d.a aVar) throws IOException {
                if (aVar.f() != com.bykv.vk.openvk.preload.a.d.b.NULL) {
                    return Float.valueOf((float) aVar.k());
                }
                aVar.j();
                return null;
            }

            @Override // com.bykv.vk.openvk.preload.a.r
            public final /* bridge */ /* synthetic */ void a(com.bykv.vk.openvk.preload.a.d.c cVar, Number number) throws IOException {
                cVar.a(number);
            }
        };
        new r<Number>() { // from class: com.bykv.vk.openvk.preload.a.b.a.m.5
            @Override // com.bykv.vk.openvk.preload.a.r
            public final /* synthetic */ Number a(com.bykv.vk.openvk.preload.a.d.a aVar) throws IOException {
                if (aVar.f() != com.bykv.vk.openvk.preload.a.d.b.NULL) {
                    return Double.valueOf(aVar.k());
                }
                aVar.j();
                return null;
            }

            @Override // com.bykv.vk.openvk.preload.a.r
            public final /* bridge */ /* synthetic */ void a(com.bykv.vk.openvk.preload.a.d.c cVar, Number number) throws IOException {
                cVar.a(number);
            }
        };
        r<Number> rVar4 = new r<Number>() { // from class: com.bykv.vk.openvk.preload.a.b.a.m.6
            @Override // com.bykv.vk.openvk.preload.a.r
            public final /* synthetic */ Number a(com.bykv.vk.openvk.preload.a.d.a aVar) throws IOException {
                com.bykv.vk.openvk.preload.a.d.b bVarF = aVar.f();
                int i11 = AnonymousClass30.f20410a[bVarF.ordinal()];
                if (i11 == 1 || i11 == 3) {
                    return new com.bykv.vk.openvk.preload.a.b.f(aVar.h());
                }
                if (i11 != 4) {
                    throw new p("Expecting number, got: ".concat(String.valueOf(bVarF)));
                }
                aVar.j();
                return null;
            }

            @Override // com.bykv.vk.openvk.preload.a.r
            public final /* bridge */ /* synthetic */ void a(com.bykv.vk.openvk.preload.a.d.c cVar, Number number) throws IOException {
                cVar.a(number);
            }
        };
        M = rVar4;
        f20380l = a(Number.class, rVar4);
        r<Character> rVar5 = new r<Character>() { // from class: com.bykv.vk.openvk.preload.a.b.a.m.7
            @Override // com.bykv.vk.openvk.preload.a.r
            public final /* synthetic */ Character a(com.bykv.vk.openvk.preload.a.d.a aVar) throws IOException {
                if (aVar.f() == com.bykv.vk.openvk.preload.a.d.b.NULL) {
                    aVar.j();
                    return null;
                }
                String strH = aVar.h();
                if (strH.length() == 1) {
                    return Character.valueOf(strH.charAt(0));
                }
                throw new p("Expecting character, got: ".concat(strH));
            }

            @Override // com.bykv.vk.openvk.preload.a.r
            public final /* synthetic */ void a(com.bykv.vk.openvk.preload.a.d.c cVar, Character ch2) throws IOException {
                Character ch3 = ch2;
                cVar.b(ch3 == null ? null : String.valueOf(ch3));
            }
        };
        N = rVar5;
        f20381m = a(Character.TYPE, Character.class, rVar5);
        O = new r<String>() { // from class: com.bykv.vk.openvk.preload.a.b.a.m.8
            @Override // com.bykv.vk.openvk.preload.a.r
            public final /* synthetic */ String a(com.bykv.vk.openvk.preload.a.d.a aVar) throws IOException {
                com.bykv.vk.openvk.preload.a.d.b bVarF = aVar.f();
                if (bVarF != com.bykv.vk.openvk.preload.a.d.b.NULL) {
                    return bVarF == com.bykv.vk.openvk.preload.a.d.b.BOOLEAN ? Boolean.toString(aVar.i()) : aVar.h();
                }
                aVar.j();
                return null;
            }

            @Override // com.bykv.vk.openvk.preload.a.r
            public final /* synthetic */ void a(com.bykv.vk.openvk.preload.a.d.c cVar, String str) throws IOException {
                cVar.b(str);
            }
        };
        f20382n = new r<BigDecimal>() { // from class: com.bykv.vk.openvk.preload.a.b.a.m.9
            private static BigDecimal b(com.bykv.vk.openvk.preload.a.d.a aVar) throws IOException {
                if (aVar.f() == com.bykv.vk.openvk.preload.a.d.b.NULL) {
                    aVar.j();
                    return null;
                }
                try {
                    return new BigDecimal(aVar.h());
                } catch (NumberFormatException e11) {
                    throw new p(e11);
                }
            }

            @Override // com.bykv.vk.openvk.preload.a.r
            public final /* synthetic */ BigDecimal a(com.bykv.vk.openvk.preload.a.d.a aVar) throws IOException {
                return b(aVar);
            }

            @Override // com.bykv.vk.openvk.preload.a.r
            public final /* bridge */ /* synthetic */ void a(com.bykv.vk.openvk.preload.a.d.c cVar, BigDecimal bigDecimal) throws IOException {
                cVar.a(bigDecimal);
            }
        };
        f20383o = new r<BigInteger>() { // from class: com.bykv.vk.openvk.preload.a.b.a.m.10
            private static BigInteger b(com.bykv.vk.openvk.preload.a.d.a aVar) throws IOException {
                if (aVar.f() == com.bykv.vk.openvk.preload.a.d.b.NULL) {
                    aVar.j();
                    return null;
                }
                try {
                    return new BigInteger(aVar.h());
                } catch (NumberFormatException e11) {
                    throw new p(e11);
                }
            }

            @Override // com.bykv.vk.openvk.preload.a.r
            public final /* synthetic */ BigInteger a(com.bykv.vk.openvk.preload.a.d.a aVar) throws IOException {
                return b(aVar);
            }

            @Override // com.bykv.vk.openvk.preload.a.r
            public final /* bridge */ /* synthetic */ void a(com.bykv.vk.openvk.preload.a.d.c cVar, BigInteger bigInteger) throws IOException {
                cVar.a(bigInteger);
            }
        };
        f20384p = a(String.class, O);
        r<StringBuilder> rVar6 = new r<StringBuilder>() { // from class: com.bykv.vk.openvk.preload.a.b.a.m.11
            @Override // com.bykv.vk.openvk.preload.a.r
            public final /* synthetic */ StringBuilder a(com.bykv.vk.openvk.preload.a.d.a aVar) throws IOException {
                if (aVar.f() != com.bykv.vk.openvk.preload.a.d.b.NULL) {
                    return new StringBuilder(aVar.h());
                }
                aVar.j();
                return null;
            }

            @Override // com.bykv.vk.openvk.preload.a.r
            public final /* synthetic */ void a(com.bykv.vk.openvk.preload.a.d.c cVar, StringBuilder sb2) throws IOException {
                StringBuilder sb3 = sb2;
                cVar.b(sb3 == null ? null : sb3.toString());
            }
        };
        P = rVar6;
        f20385q = a(StringBuilder.class, rVar6);
        r<StringBuffer> rVar7 = new r<StringBuffer>() { // from class: com.bykv.vk.openvk.preload.a.b.a.m.13
            @Override // com.bykv.vk.openvk.preload.a.r
            public final /* synthetic */ StringBuffer a(com.bykv.vk.openvk.preload.a.d.a aVar) throws IOException {
                if (aVar.f() != com.bykv.vk.openvk.preload.a.d.b.NULL) {
                    return new StringBuffer(aVar.h());
                }
                aVar.j();
                return null;
            }

            @Override // com.bykv.vk.openvk.preload.a.r
            public final /* synthetic */ void a(com.bykv.vk.openvk.preload.a.d.c cVar, StringBuffer stringBuffer) throws IOException {
                StringBuffer stringBuffer2 = stringBuffer;
                cVar.b(stringBuffer2 == null ? null : stringBuffer2.toString());
            }
        };
        Q = rVar7;
        f20386r = a(StringBuffer.class, rVar7);
        r<URL> rVar8 = new r<URL>() { // from class: com.bykv.vk.openvk.preload.a.b.a.m.14
            @Override // com.bykv.vk.openvk.preload.a.r
            public final /* synthetic */ URL a(com.bykv.vk.openvk.preload.a.d.a aVar) throws IOException {
                if (aVar.f() == com.bykv.vk.openvk.preload.a.d.b.NULL) {
                    aVar.j();
                    return null;
                }
                String strH = aVar.h();
                if ("null".equals(strH)) {
                    return null;
                }
                return new URL(strH);
            }

            @Override // com.bykv.vk.openvk.preload.a.r
            public final /* synthetic */ void a(com.bykv.vk.openvk.preload.a.d.c cVar, URL url) throws IOException {
                URL url2 = url;
                cVar.b(url2 == null ? null : url2.toExternalForm());
            }
        };
        R = rVar8;
        f20387s = a(URL.class, rVar8);
        r<URI> rVar9 = new r<URI>() { // from class: com.bykv.vk.openvk.preload.a.b.a.m.15
            private static URI b(com.bykv.vk.openvk.preload.a.d.a aVar) throws IOException {
                if (aVar.f() == com.bykv.vk.openvk.preload.a.d.b.NULL) {
                    aVar.j();
                    return null;
                }
                try {
                    String strH = aVar.h();
                    if ("null".equals(strH)) {
                        return null;
                    }
                    return new URI(strH);
                } catch (URISyntaxException e11) {
                    throw new com.bykv.vk.openvk.preload.a.j(e11);
                }
            }

            @Override // com.bykv.vk.openvk.preload.a.r
            public final /* synthetic */ URI a(com.bykv.vk.openvk.preload.a.d.a aVar) throws IOException {
                return b(aVar);
            }

            @Override // com.bykv.vk.openvk.preload.a.r
            public final /* synthetic */ void a(com.bykv.vk.openvk.preload.a.d.c cVar, URI uri) throws IOException {
                URI uri2 = uri;
                cVar.b(uri2 == null ? null : uri2.toASCIIString());
            }
        };
        S = rVar9;
        f20388t = a(URI.class, rVar9);
        r<InetAddress> rVar10 = new r<InetAddress>() { // from class: com.bykv.vk.openvk.preload.a.b.a.m.16
            @Override // com.bykv.vk.openvk.preload.a.r
            public final /* synthetic */ InetAddress a(com.bykv.vk.openvk.preload.a.d.a aVar) throws IOException {
                if (aVar.f() != com.bykv.vk.openvk.preload.a.d.b.NULL) {
                    return InetAddress.getByName(aVar.h());
                }
                aVar.j();
                return null;
            }

            @Override // com.bykv.vk.openvk.preload.a.r
            public final /* synthetic */ void a(com.bykv.vk.openvk.preload.a.d.c cVar, InetAddress inetAddress) throws IOException {
                InetAddress inetAddress2 = inetAddress;
                cVar.b(inetAddress2 == null ? null : inetAddress2.getHostAddress());
            }
        };
        T = rVar10;
        f20389u = b(InetAddress.class, rVar10);
        r<UUID> rVar11 = new r<UUID>() { // from class: com.bykv.vk.openvk.preload.a.b.a.m.17
            @Override // com.bykv.vk.openvk.preload.a.r
            public final /* synthetic */ UUID a(com.bykv.vk.openvk.preload.a.d.a aVar) throws IOException {
                if (aVar.f() != com.bykv.vk.openvk.preload.a.d.b.NULL) {
                    return UUID.fromString(aVar.h());
                }
                aVar.j();
                return null;
            }

            @Override // com.bykv.vk.openvk.preload.a.r
            public final /* synthetic */ void a(com.bykv.vk.openvk.preload.a.d.c cVar, UUID uuid) throws IOException {
                UUID uuid2 = uuid;
                cVar.b(uuid2 == null ? null : uuid2.toString());
            }
        };
        U = rVar11;
        f20390v = a(UUID.class, rVar11);
        r<Currency> rVarA6 = new r<Currency>() { // from class: com.bykv.vk.openvk.preload.a.b.a.m.18
            @Override // com.bykv.vk.openvk.preload.a.r
            public final /* synthetic */ Currency a(com.bykv.vk.openvk.preload.a.d.a aVar) throws IOException {
                return Currency.getInstance(aVar.h());
            }

            @Override // com.bykv.vk.openvk.preload.a.r
            public final /* synthetic */ void a(com.bykv.vk.openvk.preload.a.d.c cVar, Currency currency) throws IOException {
                cVar.b(currency.getCurrencyCode());
            }
        }.a();
        V = rVarA6;
        f20391w = a(Currency.class, rVarA6);
        f20392x = new s() { // from class: com.bykv.vk.openvk.preload.a.b.a.m.19
            @Override // com.bykv.vk.openvk.preload.a.s
            public final <T> r<T> a(com.bykv.vk.openvk.preload.a.d dVar, com.bykv.vk.openvk.preload.a.c.a<T> aVar) {
                if (aVar.a() != Timestamp.class) {
                    return null;
                }
                final r<T> rVarA7 = dVar.a((Class) Date.class);
                return (r<T>) new r<Timestamp>() { // from class: com.bykv.vk.openvk.preload.a.b.a.m.19.1
                    @Override // com.bykv.vk.openvk.preload.a.r
                    public final /* synthetic */ Timestamp a(com.bykv.vk.openvk.preload.a.d.a aVar2) throws IOException {
                        Date date = (Date) rVarA7.a(aVar2);
                        if (date != null) {
                            return new Timestamp(date.getTime());
                        }
                        return null;
                    }

                    @Override // com.bykv.vk.openvk.preload.a.r
                    public final /* bridge */ /* synthetic */ void a(com.bykv.vk.openvk.preload.a.d.c cVar, Timestamp timestamp) throws IOException {
                        rVarA7.a(cVar, timestamp);
                    }
                };
            }
        };
        final r<Calendar> rVar12 = new r<Calendar>() { // from class: com.bykv.vk.openvk.preload.a.b.a.m.20
            @Override // com.bykv.vk.openvk.preload.a.r
            public final /* synthetic */ Calendar a(com.bykv.vk.openvk.preload.a.d.a aVar) throws IOException {
                if (aVar.f() == com.bykv.vk.openvk.preload.a.d.b.NULL) {
                    aVar.j();
                    return null;
                }
                aVar.c();
                int i11 = 0;
                int i12 = 0;
                int i13 = 0;
                int i14 = 0;
                int i15 = 0;
                int i16 = 0;
                while (aVar.f() != com.bykv.vk.openvk.preload.a.d.b.END_OBJECT) {
                    String strG = aVar.g();
                    int iM = aVar.m();
                    if ("year".equals(strG)) {
                        i11 = iM;
                    } else if ("month".equals(strG)) {
                        i12 = iM;
                    } else if ("dayOfMonth".equals(strG)) {
                        i13 = iM;
                    } else if ("hourOfDay".equals(strG)) {
                        i14 = iM;
                    } else if ("minute".equals(strG)) {
                        i15 = iM;
                    } else if ("second".equals(strG)) {
                        i16 = iM;
                    }
                }
                aVar.d();
                return new GregorianCalendar(i11, i12, i13, i14, i15, i16);
            }

            @Override // com.bykv.vk.openvk.preload.a.r
            public final /* synthetic */ void a(com.bykv.vk.openvk.preload.a.d.c cVar, Calendar calendar) throws IOException {
                Calendar calendar2 = calendar;
                if (calendar2 == null) {
                    cVar.h();
                    return;
                }
                cVar.f();
                cVar.a("year");
                cVar.a(calendar2.get(1));
                cVar.a("month");
                cVar.a(calendar2.get(2));
                cVar.a("dayOfMonth");
                cVar.a(calendar2.get(5));
                cVar.a("hourOfDay");
                cVar.a(calendar2.get(11));
                cVar.a("minute");
                cVar.a(calendar2.get(12));
                cVar.a("second");
                cVar.a(calendar2.get(13));
                cVar.g();
            }
        };
        W = rVar12;
        final Class<Calendar> cls = Calendar.class;
        final Class<GregorianCalendar> cls2 = GregorianCalendar.class;
        f20393y = new s() { // from class: com.bykv.vk.openvk.preload.a.b.a.m.28
            @Override // com.bykv.vk.openvk.preload.a.s
            public final <T> r<T> a(com.bykv.vk.openvk.preload.a.d dVar, com.bykv.vk.openvk.preload.a.c.a<T> aVar) {
                Class<? super T> clsA = aVar.a();
                if (clsA == cls || clsA == cls2) {
                    return rVar12;
                }
                return null;
            }

            public final String toString() {
                return "Factory[type=" + cls.getName() + "+" + cls2.getName() + ",adapter=" + rVar12 + "]";
            }
        };
        r<Locale> rVar13 = new r<Locale>() { // from class: com.bykv.vk.openvk.preload.a.b.a.m.21
            @Override // com.bykv.vk.openvk.preload.a.r
            public final /* synthetic */ Locale a(com.bykv.vk.openvk.preload.a.d.a aVar) throws IOException {
                if (aVar.f() == com.bykv.vk.openvk.preload.a.d.b.NULL) {
                    aVar.j();
                    return null;
                }
                StringTokenizer stringTokenizer = new StringTokenizer(aVar.h(), "_");
                String strNextToken = stringTokenizer.hasMoreElements() ? stringTokenizer.nextToken() : null;
                String strNextToken2 = stringTokenizer.hasMoreElements() ? stringTokenizer.nextToken() : null;
                String strNextToken3 = stringTokenizer.hasMoreElements() ? stringTokenizer.nextToken() : null;
                if (strNextToken2 == null && strNextToken3 == null) {
                    return new Locale(strNextToken);
                }
                return strNextToken3 == null ? new Locale(strNextToken, strNextToken2) : new Locale(strNextToken, strNextToken2, strNextToken3);
            }

            @Override // com.bykv.vk.openvk.preload.a.r
            public final /* synthetic */ void a(com.bykv.vk.openvk.preload.a.d.c cVar, Locale locale) throws IOException {
                Locale locale2 = locale;
                cVar.b(locale2 == null ? null : locale2.toString());
            }
        };
        X = rVar13;
        f20394z = a(Locale.class, rVar13);
        r<com.bykv.vk.openvk.preload.a.i> rVar14 = new r<com.bykv.vk.openvk.preload.a.i>() { // from class: com.bykv.vk.openvk.preload.a.b.a.m.22
            /* JADX INFO: Access modifiers changed from: private */
            @Override // com.bykv.vk.openvk.preload.a.r
            public void a(com.bykv.vk.openvk.preload.a.d.c cVar, com.bykv.vk.openvk.preload.a.i iVar) throws IOException {
                if (iVar == null || (iVar instanceof com.bykv.vk.openvk.preload.a.k)) {
                    cVar.h();
                    return;
                }
                boolean z10 = iVar instanceof n;
                if (z10) {
                    if (!z10) {
                        throw new IllegalStateException("Not a JSON Primitive: ".concat(String.valueOf(iVar)));
                    }
                    n nVar = (n) iVar;
                    if (nVar.e()) {
                        cVar.a(nVar.a());
                        return;
                    } else if (nVar.d()) {
                        cVar.d(nVar.c());
                        return;
                    } else {
                        cVar.b(nVar.b());
                        return;
                    }
                }
                boolean z11 = iVar instanceof com.bykv.vk.openvk.preload.a.g;
                if (z11) {
                    cVar.d();
                    if (!z11) {
                        throw new IllegalStateException("Not a JSON Array: ".concat(String.valueOf(iVar)));
                    }
                    Iterator<com.bykv.vk.openvk.preload.a.i> it = ((com.bykv.vk.openvk.preload.a.g) iVar).iterator();
                    while (it.hasNext()) {
                        a(cVar, it.next());
                    }
                    cVar.e();
                    return;
                }
                boolean z12 = iVar instanceof com.bykv.vk.openvk.preload.a.l;
                if (!z12) {
                    throw new IllegalArgumentException("Couldn't write " + iVar.getClass());
                }
                cVar.f();
                if (!z12) {
                    throw new IllegalStateException("Not a JSON Object: ".concat(String.valueOf(iVar)));
                }
                for (Map.Entry<String, com.bykv.vk.openvk.preload.a.i> entry : ((com.bykv.vk.openvk.preload.a.l) iVar).d()) {
                    cVar.a(entry.getKey());
                    a(cVar, entry.getValue());
                }
                cVar.g();
            }

            /* JADX INFO: Access modifiers changed from: private */
            @Override // com.bykv.vk.openvk.preload.a.r
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public com.bykv.vk.openvk.preload.a.i a(com.bykv.vk.openvk.preload.a.d.a aVar) throws IOException {
                switch (AnonymousClass30.f20410a[aVar.f().ordinal()]) {
                    case 1:
                        return new n(new com.bykv.vk.openvk.preload.a.b.f(aVar.h()));
                    case 2:
                        return new n(Boolean.valueOf(aVar.i()));
                    case 3:
                        return new n(aVar.h());
                    case 4:
                        aVar.j();
                        return com.bykv.vk.openvk.preload.a.k.f20530a;
                    case 5:
                        com.bykv.vk.openvk.preload.a.g gVar = new com.bykv.vk.openvk.preload.a.g();
                        aVar.a();
                        while (aVar.e()) {
                            gVar.a(a(aVar));
                        }
                        aVar.b();
                        return gVar;
                    case 6:
                        com.bykv.vk.openvk.preload.a.l lVar = new com.bykv.vk.openvk.preload.a.l();
                        aVar.c();
                        while (aVar.e()) {
                            lVar.a(aVar.g(), a(aVar));
                        }
                        aVar.d();
                        return lVar;
                    default:
                        throw new IllegalArgumentException();
                }
            }
        };
        A = rVar14;
        B = b(com.bykv.vk.openvk.preload.a.i.class, rVar14);
        C = new s() { // from class: com.bykv.vk.openvk.preload.a.b.a.m.24
            @Override // com.bykv.vk.openvk.preload.a.s
            public final <T> r<T> a(com.bykv.vk.openvk.preload.a.d dVar, com.bykv.vk.openvk.preload.a.c.a<T> aVar) {
                Class<? super T> clsA = aVar.a();
                if (!Enum.class.isAssignableFrom(clsA) || clsA == Enum.class) {
                    return null;
                }
                if (!clsA.isEnum()) {
                    clsA = clsA.getSuperclass();
                }
                return new a(clsA);
            }
        };
    }

    public static <TT> s a(final com.bykv.vk.openvk.preload.a.c.a<TT> aVar, final r<TT> rVar) {
        return new s() { // from class: com.bykv.vk.openvk.preload.a.b.a.m.25
            @Override // com.bykv.vk.openvk.preload.a.s
            public final <T> r<T> a(com.bykv.vk.openvk.preload.a.d dVar, com.bykv.vk.openvk.preload.a.c.a<T> aVar2) {
                if (aVar2.equals(aVar)) {
                    return rVar;
                }
                return null;
            }
        };
    }

    public static <TT> s a(final Class<TT> cls, final r<TT> rVar) {
        return new s() { // from class: com.bykv.vk.openvk.preload.a.b.a.m.26
            @Override // com.bykv.vk.openvk.preload.a.s
            public final <T> r<T> a(com.bykv.vk.openvk.preload.a.d dVar, com.bykv.vk.openvk.preload.a.c.a<T> aVar) {
                if (aVar.a() == cls) {
                    return rVar;
                }
                return null;
            }

            public final String toString() {
                return "Factory[type=" + cls.getName() + ",adapter=" + rVar + "]";
            }
        };
    }

    public static <TT> s a(final Class<TT> cls, final Class<TT> cls2, final r<? super TT> rVar) {
        return new s() { // from class: com.bykv.vk.openvk.preload.a.b.a.m.27
            @Override // com.bykv.vk.openvk.preload.a.s
            public final <T> r<T> a(com.bykv.vk.openvk.preload.a.d dVar, com.bykv.vk.openvk.preload.a.c.a<T> aVar) {
                Class<? super T> clsA = aVar.a();
                if (clsA == cls || clsA == cls2) {
                    return rVar;
                }
                return null;
            }

            public final String toString() {
                return "Factory[type=" + cls2.getName() + "+" + cls.getName() + ",adapter=" + rVar + "]";
            }
        };
    }

    private static <T1> s b(final Class<T1> cls, final r<T1> rVar) {
        return new s() { // from class: com.bykv.vk.openvk.preload.a.b.a.m.29
            @Override // com.bykv.vk.openvk.preload.a.s
            public final <T2> r<T2> a(com.bykv.vk.openvk.preload.a.d dVar, com.bykv.vk.openvk.preload.a.c.a<T2> aVar) {
                final Class<? super T2> clsA = aVar.a();
                if (cls.isAssignableFrom(clsA)) {
                    return (r<T2>) new r<T1>() { // from class: com.bykv.vk.openvk.preload.a.b.a.m.29.1
                        @Override // com.bykv.vk.openvk.preload.a.r
                        public final T1 a(com.bykv.vk.openvk.preload.a.d.a aVar2) throws IOException {
                            T1 t11 = (T1) rVar.a(aVar2);
                            if (t11 == null || clsA.isInstance(t11)) {
                                return t11;
                            }
                            throw new p("Expected a " + clsA.getName() + " but was " + t11.getClass().getName());
                        }

                        @Override // com.bykv.vk.openvk.preload.a.r
                        public final void a(com.bykv.vk.openvk.preload.a.d.c cVar, T1 t11) throws IOException {
                            rVar.a(cVar, t11);
                        }
                    };
                }
                return null;
            }

            public final String toString() {
                return "Factory[typeHierarchy=" + cls.getName() + ",adapter=" + rVar + "]";
            }
        };
    }
}
