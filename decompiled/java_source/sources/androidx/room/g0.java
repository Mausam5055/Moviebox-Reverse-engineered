package androidx.room;

import java.util.Iterator;
import java.util.Map;
import java.util.TreeMap;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public final class g0 implements a4.g, a4.f {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final a f14685i = new a(null);

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final TreeMap f14686j = new TreeMap();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f14687a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private volatile String f14688b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long[] f14689c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final double[] f14690d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String[] f14691e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final byte[][] f14692f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final int[] f14693g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f14694h;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final g0 a(String query, int i11) {
            Intrinsics.h(query, "query");
            TreeMap treeMap = g0.f14686j;
            synchronized (treeMap) {
                Map.Entry entryCeilingEntry = treeMap.ceilingEntry(Integer.valueOf(i11));
                if (entryCeilingEntry == null) {
                    Unit unit = Unit.f67061a;
                    g0 g0Var = new g0(i11, null);
                    g0Var.l(query, i11);
                    return g0Var;
                }
                treeMap.remove(entryCeilingEntry.getKey());
                g0 g0Var2 = (g0) entryCeilingEntry.getValue();
                g0Var2.l(query, i11);
                Intrinsics.e(g0Var2);
                return g0Var2;
            }
        }

        public final void b() {
            TreeMap treeMap = g0.f14686j;
            if (treeMap.size() <= 15) {
                return;
            }
            int size = treeMap.size() - 10;
            Iterator it = treeMap.descendingKeySet().iterator();
            Intrinsics.g(it, "iterator(...)");
            while (true) {
                int i11 = size - 1;
                if (size <= 0) {
                    return;
                }
                it.next();
                it.remove();
                size = i11;
            }
        }
    }

    private g0(int i11) {
        this.f14687a = i11;
        int i12 = i11 + 1;
        this.f14693g = new int[i12];
        this.f14689c = new long[i12];
        this.f14690d = new double[i12];
        this.f14691e = new String[i12];
        this.f14692f = new byte[i12][];
    }

    public /* synthetic */ g0(int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(i11);
    }

    public static final g0 h(String str, int i11) {
        return f14685i.a(str, i11);
    }

    @Override // a4.f
    public void a(int i11, double d11) {
        this.f14693g[i11] = 3;
        this.f14690d[i11] = d11;
    }

    @Override // a4.g
    public void b(a4.f statement) {
        Intrinsics.h(statement, "statement");
        int iK = k();
        if (1 > iK) {
            return;
        }
        int i11 = 1;
        while (true) {
            int i12 = this.f14693g[i11];
            if (i12 == 1) {
                statement.g(i11);
            } else if (i12 == 2) {
                statement.c(i11, this.f14689c[i11]);
            } else if (i12 == 3) {
                statement.a(i11, this.f14690d[i11]);
            } else if (i12 == 4) {
                String str = this.f14691e[i11];
                if (str == null) {
                    throw new IllegalArgumentException("Required value was null.");
                }
                statement.y(i11, str);
            } else if (i12 == 5) {
                byte[] bArr = this.f14692f[i11];
                if (bArr == null) {
                    throw new IllegalArgumentException("Required value was null.");
                }
                statement.e(i11, bArr);
            }
            if (i11 == iK) {
                return;
            } else {
                i11++;
            }
        }
    }

    @Override // a4.f
    public void c(int i11, long j11) {
        this.f14693g[i11] = 2;
        this.f14689c[i11] = j11;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }

    @Override // a4.g
    public String d() {
        String str = this.f14688b;
        if (str != null) {
            return str;
        }
        throw new IllegalStateException("Required value was null.");
    }

    @Override // a4.f
    public void e(int i11, byte[] value) {
        Intrinsics.h(value, "value");
        this.f14693g[i11] = 5;
        this.f14692f[i11] = value;
    }

    @Override // a4.f
    public void g(int i11) {
        this.f14693g[i11] = 1;
    }

    public int k() {
        return this.f14694h;
    }

    public final void l(String query, int i11) {
        Intrinsics.h(query, "query");
        this.f14688b = query;
        this.f14694h = i11;
    }

    public final void release() {
        TreeMap treeMap = f14686j;
        synchronized (treeMap) {
            treeMap.put(Integer.valueOf(this.f14687a), this);
            f14685i.b();
            Unit unit = Unit.f67061a;
        }
    }

    @Override // a4.f
    public void y(int i11, String value) {
        Intrinsics.h(value, "value");
        this.f14693g[i11] = 4;
        this.f14691e[i11] = value;
    }
}
