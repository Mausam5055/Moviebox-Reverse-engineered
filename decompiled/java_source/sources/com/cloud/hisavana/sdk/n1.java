package com.cloud.hisavana.sdk;

import a4.g;
import android.database.Cursor;
import androidx.room.RoomDatabase;
import androidx.room.j0;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final class n1 implements m1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final RoomDatabase f22732a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final androidx.room.h f22733b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final androidx.room.f f22734c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final j0 f22735d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final j0 f22736e;

    class a extends androidx.room.h {
        a(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override // androidx.room.j0
        protected String e() {
            return "INSERT OR REPLACE INTO `retry_tracking_table_room` (`uuid`,`create_time`,`retry_times`,`tracking_data`,`md5`) VALUES (?,?,?,?,?)";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // androidx.room.h
        /* JADX INFO: renamed from: n, reason: merged with bridge method [inline-methods] */
        public void j(a4.h hVar, q1 q1Var) {
            if (q1Var.j() == null) {
                hVar.g(1);
            } else {
                hVar.y(1, q1Var.j());
            }
            if (q1Var.a() == null) {
                hVar.g(2);
            } else {
                hVar.c(2, q1Var.a().longValue());
            }
            if (q1Var.g() == null) {
                hVar.g(3);
            } else {
                hVar.c(3, q1Var.g().intValue());
            }
            if (q1Var.i() == null) {
                hVar.g(4);
            } else {
                hVar.y(4, q1Var.i());
            }
            if (q1Var.e() == null) {
                hVar.g(5);
            } else {
                hVar.y(5, q1Var.e());
            }
        }
    }

    class b extends androidx.room.f {
        b(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override // androidx.room.j0
        protected String e() {
            return "UPDATE OR ABORT `retry_tracking_table_room` SET `uuid` = ?,`create_time` = ?,`retry_times` = ?,`tracking_data` = ?,`md5` = ? WHERE `uuid` = ?";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // androidx.room.f
        /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
        public void j(a4.h hVar, q1 q1Var) {
            if (q1Var.j() == null) {
                hVar.g(1);
            } else {
                hVar.y(1, q1Var.j());
            }
            if (q1Var.a() == null) {
                hVar.g(2);
            } else {
                hVar.c(2, q1Var.a().longValue());
            }
            if (q1Var.g() == null) {
                hVar.g(3);
            } else {
                hVar.c(3, q1Var.g().intValue());
            }
            if (q1Var.i() == null) {
                hVar.g(4);
            } else {
                hVar.y(4, q1Var.i());
            }
            if (q1Var.e() == null) {
                hVar.g(5);
            } else {
                hVar.y(5, q1Var.e());
            }
            if (q1Var.j() == null) {
                hVar.g(6);
            } else {
                hVar.y(6, q1Var.j());
            }
        }
    }

    class c extends j0 {
        c(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override // androidx.room.j0
        public String e() {
            return "DELETE FROM retry_tracking_table_room WHERE create_time < ?";
        }
    }

    class d extends j0 {
        d(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override // androidx.room.j0
        public String e() {
            return "DELETE FROM retry_tracking_table_room";
        }
    }

    public n1(RoomDatabase roomDatabase) {
        this.f22732a = roomDatabase;
        this.f22733b = new a(roomDatabase);
        this.f22734c = new b(roomDatabase);
        this.f22735d = new c(roomDatabase);
        this.f22736e = new d(roomDatabase);
    }

    public static List e() {
        return Collections.emptyList();
    }

    @Override // com.cloud.hisavana.sdk.m1
    public int a(long j11) {
        this.f22732a.j();
        a4.h hVarB = this.f22735d.b();
        hVarB.c(1, j11);
        try {
            this.f22732a.k();
            try {
                int iF = hVarB.F();
                this.f22732a.e0();
                this.f22732a.t();
                this.f22735d.h(hVarB);
                return iF;
            } catch (Throwable th2) {
                this.f22732a.t();
                throw th2;
            }
        } catch (Throwable th3) {
            this.f22735d.h(hVarB);
            throw th3;
        }
    }

    @Override // com.cloud.hisavana.sdk.m1
    public Cursor a(g gVar) {
        return this.f22732a.V(gVar);
    }

    @Override // com.cloud.hisavana.sdk.m1
    public List a() {
        androidx.room.g0 g0VarH = androidx.room.g0.h("SELECT tracking_data FROM retry_tracking_table_room", 0);
        this.f22732a.j();
        Cursor cursorG = androidx.room.util.b.g(this.f22732a, g0VarH, false, null);
        try {
            ArrayList arrayList = new ArrayList(cursorG.getCount());
            while (cursorG.moveToNext()) {
                arrayList.add(cursorG.isNull(0) ? null : cursorG.getString(0));
            }
            return arrayList;
        } finally {
            cursorG.close();
            g0VarH.release();
        }
    }

    @Override // com.cloud.hisavana.sdk.m1
    public void b() {
        this.f22732a.j();
        a4.h hVarB = this.f22736e.b();
        try {
            this.f22732a.k();
            try {
                hVarB.F();
                this.f22732a.e0();
                this.f22732a.t();
                this.f22736e.h(hVarB);
            } catch (Throwable th2) {
                this.f22732a.t();
                throw th2;
            }
        } catch (Throwable th3) {
            this.f22736e.h(hVarB);
            throw th3;
        }
    }

    @Override // com.cloud.hisavana.sdk.m1
    public void b(q1 q1Var) {
        this.f22732a.j();
        this.f22732a.k();
        try {
            this.f22733b.l(q1Var);
            this.f22732a.e0();
        } finally {
            this.f22732a.t();
        }
    }

    @Override // com.cloud.hisavana.sdk.m1
    public int c(q1 q1Var) {
        this.f22732a.j();
        this.f22732a.k();
        try {
            int iK = this.f22734c.k(q1Var);
            this.f22732a.e0();
            return iK;
        } finally {
            this.f22732a.t();
        }
    }

    @Override // com.cloud.hisavana.sdk.m1
    public int d(String[] strArr) {
        this.f22732a.j();
        StringBuilder sbB = androidx.room.util.n.b();
        sbB.append("DELETE FROM retry_tracking_table_room WHERE uuid in (");
        androidx.room.util.n.a(sbB, strArr.length);
        sbB.append(")");
        a4.h hVarM = this.f22732a.m(sbB.toString());
        int i11 = 1;
        for (String str : strArr) {
            if (str == null) {
                hVarM.g(i11);
            } else {
                hVarM.y(i11, str);
            }
            i11++;
        }
        this.f22732a.k();
        try {
            int iF = hVarM.F();
            this.f22732a.e0();
            return iF;
        } finally {
            this.f22732a.t();
        }
    }
}
