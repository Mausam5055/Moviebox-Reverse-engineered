package com.cloud.hisavana.sdk;

import android.database.Cursor;
import androidx.room.RoomDatabase;
import androidx.room.j0;
import com.transsion.push.PushConstants;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final class a implements c6 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final RoomDatabase f21554a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final androidx.room.h f21555b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final j0 f21556c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final j0 f21557d;

    /* JADX INFO: renamed from: com.cloud.hisavana.sdk.a$a, reason: collision with other inner class name */
    class C0296a extends androidx.room.h {
        C0296a(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override // androidx.room.j0
        protected String e() {
            return "INSERT OR REPLACE INTO `attr_impression_room` (`_id`,`pkg`,`imp_ts`,`ad_creative_id`) VALUES (nullif(?, 0),?,?,?)";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // androidx.room.h
        /* JADX INFO: renamed from: n, reason: merged with bridge method [inline-methods] */
        public void j(a4.h hVar, h hVar2) {
            hVar.c(1, hVar2.d());
            if (hVar2.c() == null) {
                hVar.g(2);
            } else {
                hVar.y(2, hVar2.c());
            }
            hVar.c(3, hVar2.b());
            if (hVar2.a() == null) {
                hVar.g(4);
            } else {
                hVar.y(4, hVar2.a());
            }
        }
    }

    class b extends j0 {
        b(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override // androidx.room.j0
        public String e() {
            return "DELETE FROM attr_impression_room WHERE _id IN (SELECT _id FROM attr_impression_room ORDER BY _id ASC LIMIT ?)";
        }
    }

    class c extends j0 {
        c(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override // androidx.room.j0
        public String e() {
            return "DELETE FROM attr_impression_room";
        }
    }

    public a(RoomDatabase roomDatabase) {
        this.f21554a = roomDatabase;
        this.f21555b = new C0296a(roomDatabase);
        this.f21556c = new b(roomDatabase);
        this.f21557d = new c(roomDatabase);
    }

    public static List c() {
        return Collections.emptyList();
    }

    @Override // com.cloud.hisavana.sdk.c6
    public int a() {
        this.f21554a.j();
        a4.h hVarB = this.f21557d.b();
        try {
            this.f21554a.k();
            try {
                int iF = hVarB.F();
                this.f21554a.e0();
                this.f21554a.t();
                this.f21557d.h(hVarB);
                return iF;
            } catch (Throwable th2) {
                this.f21554a.t();
                throw th2;
            }
        } catch (Throwable th3) {
            this.f21557d.h(hVarB);
            throw th3;
        }
    }

    @Override // com.cloud.hisavana.sdk.c6
    public int a(int i11) {
        this.f21554a.j();
        a4.h hVarB = this.f21556c.b();
        hVarB.c(1, i11);
        try {
            this.f21554a.k();
            try {
                int iF = hVarB.F();
                this.f21554a.e0();
                this.f21554a.t();
                this.f21556c.h(hVarB);
                return iF;
            } catch (Throwable th2) {
                this.f21554a.t();
                throw th2;
            }
        } catch (Throwable th3) {
            this.f21556c.h(hVarB);
            throw th3;
        }
    }

    @Override // com.cloud.hisavana.sdk.c6
    public void a(h hVar) {
        this.f21554a.j();
        this.f21554a.k();
        try {
            this.f21555b.l(hVar);
            this.f21554a.e0();
        } finally {
            this.f21554a.t();
        }
    }

    @Override // com.cloud.hisavana.sdk.c6
    public List b() {
        androidx.room.g0 g0VarH = androidx.room.g0.h("SELECT * FROM attr_impression_room", 0);
        this.f21554a.j();
        Cursor cursorG = androidx.room.util.b.g(this.f21554a, g0VarH, false, null);
        try {
            int iE = androidx.room.util.a.e(cursorG, "_id");
            int iE2 = androidx.room.util.a.e(cursorG, PushConstants.PROVIDER_FIELD_PKG);
            int iE3 = androidx.room.util.a.e(cursorG, "imp_ts");
            int iE4 = androidx.room.util.a.e(cursorG, "ad_creative_id");
            ArrayList arrayList = new ArrayList(cursorG.getCount());
            while (cursorG.moveToNext()) {
                arrayList.add(new h(cursorG.getInt(iE), cursorG.isNull(iE2) ? null : cursorG.getString(iE2), cursorG.getLong(iE3), cursorG.isNull(iE4) ? null : cursorG.getString(iE4)));
            }
            return arrayList;
        } finally {
            cursorG.close();
            g0VarH.release();
        }
    }
}
