package a4;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class a implements g {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final C0001a f149c = new C0001a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f150a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Object[] f151b;

    /* JADX INFO: renamed from: a4.a$a, reason: collision with other inner class name */
    public static final class C0001a {
        private C0001a() {
        }

        public /* synthetic */ C0001a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private final void a(f fVar, int i11, Object obj) {
            if (obj == null) {
                fVar.g(i11);
                return;
            }
            if (obj instanceof byte[]) {
                fVar.e(i11, (byte[]) obj);
                return;
            }
            if (obj instanceof Float) {
                fVar.a(i11, ((Number) obj).floatValue());
                return;
            }
            if (obj instanceof Double) {
                fVar.a(i11, ((Number) obj).doubleValue());
                return;
            }
            if (obj instanceof Long) {
                fVar.c(i11, ((Number) obj).longValue());
                return;
            }
            if (obj instanceof Integer) {
                fVar.c(i11, ((Number) obj).intValue());
                return;
            }
            if (obj instanceof Short) {
                fVar.c(i11, ((Number) obj).shortValue());
                return;
            }
            if (obj instanceof Byte) {
                fVar.c(i11, ((Number) obj).byteValue());
                return;
            }
            if (obj instanceof String) {
                fVar.y(i11, (String) obj);
                return;
            }
            if (obj instanceof Boolean) {
                fVar.c(i11, ((Boolean) obj).booleanValue() ? 1L : 0L);
                return;
            }
            throw new IllegalArgumentException("Cannot bind " + obj + " at index " + i11 + " Supported types: Null, ByteArray, Float, Double, Long, Int, Short, Byte, String");
        }

        public final void b(f statement, Object[] objArr) {
            Intrinsics.h(statement, "statement");
            if (objArr == null) {
                return;
            }
            int length = objArr.length;
            int i11 = 0;
            while (i11 < length) {
                Object obj = objArr[i11];
                i11++;
                a(statement, i11, obj);
            }
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public a(String query) {
        this(query, null);
        Intrinsics.h(query, "query");
    }

    public a(String query, Object[] objArr) {
        Intrinsics.h(query, "query");
        this.f150a = query;
        this.f151b = objArr;
    }

    @Override // a4.g
    public void b(f statement) {
        Intrinsics.h(statement, "statement");
        f149c.b(statement, this.f151b);
    }

    @Override // a4.g
    public String d() {
        return this.f150a;
    }
}
