package androidx.room.util;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public final class o {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final b f14796e = new b(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f14797a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Map f14798b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Set f14799c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Set f14800d;

    public static final class a {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final C0120a f14801h = new C0120a(null);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f14802a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f14803b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final boolean f14804c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final int f14805d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final String f14806e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final int f14807f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public final int f14808g;

        /* JADX INFO: renamed from: androidx.room.util.o$a$a, reason: collision with other inner class name */
        public static final class C0120a {
            private C0120a() {
            }

            public /* synthetic */ C0120a(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }
        }

        public a(String name, String type, boolean z10, int i11, String str, int i12) {
            Intrinsics.h(name, "name");
            Intrinsics.h(type, "type");
            this.f14802a = name;
            this.f14803b = type;
            this.f14804c = z10;
            this.f14805d = i11;
            this.f14806e = str;
            this.f14807f = i12;
            this.f14808g = SchemaInfoUtilKt.a(type);
        }

        public final boolean a() {
            return this.f14805d > 0;
        }

        public boolean equals(Object obj) {
            return TableInfoKt.c(this, obj);
        }

        public int hashCode() {
            return TableInfoKt.h(this);
        }

        public String toString() {
            return TableInfoKt.n(this);
        }
    }

    public static final class b {
        private b() {
        }

        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final o a(a4.d database, String tableName) {
            Intrinsics.h(database, "database");
            Intrinsics.h(tableName, "tableName");
            return b(new androidx.room.driver.a(database), tableName);
        }

        public final o b(z3.b connection, String tableName) {
            Intrinsics.h(connection, "connection");
            Intrinsics.h(tableName, "tableName");
            return SchemaInfoUtilKt.g(connection, tableName);
        }
    }

    public static final class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f14809a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f14810b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f14811c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final List f14812d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final List f14813e;

        public c(String referenceTable, String onDelete, String onUpdate, List columnNames, List referenceColumnNames) {
            Intrinsics.h(referenceTable, "referenceTable");
            Intrinsics.h(onDelete, "onDelete");
            Intrinsics.h(onUpdate, "onUpdate");
            Intrinsics.h(columnNames, "columnNames");
            Intrinsics.h(referenceColumnNames, "referenceColumnNames");
            this.f14809a = referenceTable;
            this.f14810b = onDelete;
            this.f14811c = onUpdate;
            this.f14812d = columnNames;
            this.f14813e = referenceColumnNames;
        }

        public boolean equals(Object obj) {
            return TableInfoKt.d(this, obj);
        }

        public int hashCode() {
            return TableInfoKt.i(this);
        }

        public String toString() {
            return TableInfoKt.o(this);
        }
    }

    public static final class d {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public static final a f14814e = new a(null);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f14815a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final boolean f14816b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final List f14817c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public List f14818d;

        public static final class a {
            private a() {
            }

            public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r5v1, types: [java.util.Collection] */
        /* JADX WARN: Type inference failed for: r5v2 */
        /* JADX WARN: Type inference failed for: r5v4, types: [java.util.ArrayList] */
        public d(String name, boolean z10, List columns, List orders) {
            Intrinsics.h(name, "name");
            Intrinsics.h(columns, "columns");
            Intrinsics.h(orders, "orders");
            this.f14815a = name;
            this.f14816b = z10;
            this.f14817c = columns;
            this.f14818d = orders;
            List arrayList = orders;
            if (arrayList.isEmpty()) {
                int size = columns.size();
                arrayList = new ArrayList(size);
                for (int i11 = 0; i11 < size; i11++) {
                    arrayList.add("ASC");
                }
            }
            this.f14818d = (List) arrayList;
        }

        public boolean equals(Object obj) {
            return TableInfoKt.e(this, obj);
        }

        public int hashCode() {
            return TableInfoKt.j(this);
        }

        public String toString() {
            return TableInfoKt.p(this);
        }
    }

    public o(String name, Map columns, Set foreignKeys, Set set) {
        Intrinsics.h(name, "name");
        Intrinsics.h(columns, "columns");
        Intrinsics.h(foreignKeys, "foreignKeys");
        this.f14797a = name;
        this.f14798b = columns;
        this.f14799c = foreignKeys;
        this.f14800d = set;
    }

    public static final o a(a4.d dVar, String str) {
        return f14796e.a(dVar, str);
    }

    public static final o b(z3.b bVar, String str) {
        return f14796e.b(bVar, str);
    }

    public boolean equals(Object obj) {
        return TableInfoKt.f(this, obj);
    }

    public int hashCode() {
        return TableInfoKt.k(this);
    }

    public String toString() {
        return TableInfoKt.q(this);
    }
}
