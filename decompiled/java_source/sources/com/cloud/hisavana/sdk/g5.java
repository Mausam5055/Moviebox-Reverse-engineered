package com.cloud.hisavana.sdk;

import android.database.Cursor;
import androidx.room.RoomDatabase;
import androidx.room.j0;
import com.hisavana.common.tracking.TrackingKey;
import com.transsion.push.PushConstants;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final class g5 implements f5 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final RoomDatabase f22472a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final androidx.room.h f22473b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final androidx.room.h f22474c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final j0 f22475d;

    class a extends androidx.room.h {
        a(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override // androidx.room.j0
        protected String e() {
            return "INSERT OR ABORT INTO `attr_click_room` (`_id`,`ac_type`,`pkg`,`dl_type`,`codeSeatId`,`click_ts`,`ad_creative_id`) VALUES (nullif(?, 0),?,?,?,?,?,?)";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // androidx.room.h
        /* JADX INFO: renamed from: n, reason: merged with bridge method [inline-methods] */
        public void j(a4.h hVar, j5 j5Var) {
            hVar.c(1, j5Var.g());
            hVar.c(2, j5Var.a());
            if (j5Var.f() == null) {
                hVar.g(3);
            } else {
                hVar.y(3, j5Var.f());
            }
            if (j5Var.e() == null) {
                hVar.g(4);
            } else {
                hVar.y(4, j5Var.e());
            }
            if (j5Var.d() == null) {
                hVar.g(5);
            } else {
                hVar.y(5, j5Var.d());
            }
            hVar.c(6, j5Var.c());
            if (j5Var.b() == null) {
                hVar.g(7);
            } else {
                hVar.y(7, j5Var.b());
            }
        }
    }

    class b extends androidx.room.h {
        b(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override // androidx.room.j0
        protected String e() {
            return "INSERT OR REPLACE INTO `attr_click_room` (`_id`,`ac_type`,`pkg`,`dl_type`,`codeSeatId`,`click_ts`,`ad_creative_id`) VALUES (nullif(?, 0),?,?,?,?,?,?)";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // androidx.room.h
        /* JADX INFO: renamed from: n, reason: merged with bridge method [inline-methods] */
        public void j(a4.h hVar, j5 j5Var) {
            hVar.c(1, j5Var.g());
            hVar.c(2, j5Var.a());
            if (j5Var.f() == null) {
                hVar.g(3);
            } else {
                hVar.y(3, j5Var.f());
            }
            if (j5Var.e() == null) {
                hVar.g(4);
            } else {
                hVar.y(4, j5Var.e());
            }
            if (j5Var.d() == null) {
                hVar.g(5);
            } else {
                hVar.y(5, j5Var.d());
            }
            hVar.c(6, j5Var.c());
            if (j5Var.b() == null) {
                hVar.g(7);
            } else {
                hVar.y(7, j5Var.b());
            }
        }
    }

    class c extends j0 {
        c(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override // androidx.room.j0
        public String e() {
            return "DELETE FROM attr_click_room";
        }
    }

    public g5(RoomDatabase roomDatabase) {
        this.f22472a = roomDatabase;
        this.f22473b = new a(roomDatabase);
        this.f22474c = new b(roomDatabase);
        this.f22475d = new c(roomDatabase);
    }

    public static List c() {
        return Collections.emptyList();
    }

    @Override // com.cloud.hisavana.sdk.f5
    public int a() {
        this.f22472a.j();
        a4.h hVarB = this.f22475d.b();
        try {
            this.f22472a.k();
            try {
                int iF = hVarB.F();
                this.f22472a.e0();
                this.f22472a.t();
                this.f22475d.h(hVarB);
                return iF;
            } catch (Throwable th2) {
                this.f22472a.t();
                throw th2;
            }
        } catch (Throwable th3) {
            this.f22475d.h(hVarB);
            throw th3;
        }
    }

    @Override // com.cloud.hisavana.sdk.f5
    public int a(List list) {
        this.f22472a.j();
        StringBuilder sbB = androidx.room.util.n.b();
        sbB.append("DELETE FROM attr_click_room WHERE _id IN (");
        androidx.room.util.n.a(sbB, list.size());
        sbB.append(")");
        a4.h hVarM = this.f22472a.m(sbB.toString());
        Iterator it = list.iterator();
        int i11 = 1;
        while (it.hasNext()) {
            Integer num = (Integer) it.next();
            if (num == null) {
                hVarM.g(i11);
            } else {
                hVarM.c(i11, num.intValue());
            }
            i11++;
        }
        this.f22472a.k();
        try {
            int iF = hVarM.F();
            this.f22472a.e0();
            return iF;
        } finally {
            this.f22472a.t();
        }
    }

    @Override // com.cloud.hisavana.sdk.f5
    public void a(j5 j5Var) {
        this.f22472a.j();
        this.f22472a.k();
        try {
            this.f22473b.l(j5Var);
            this.f22472a.e0();
        } finally {
            this.f22472a.t();
        }
    }

    @Override // com.cloud.hisavana.sdk.f5
    public List b() {
        androidx.room.g0 g0VarH = androidx.room.g0.h("SELECT * FROM attr_click_room", 0);
        this.f22472a.j();
        Cursor cursorG = androidx.room.util.b.g(this.f22472a, g0VarH, false, null);
        try {
            int iE = androidx.room.util.a.e(cursorG, "_id");
            int iE2 = androidx.room.util.a.e(cursorG, "ac_type");
            int iE3 = androidx.room.util.a.e(cursorG, PushConstants.PROVIDER_FIELD_PKG);
            int iE4 = androidx.room.util.a.e(cursorG, "dl_type");
            int iE5 = androidx.room.util.a.e(cursorG, "codeSeatId");
            int iE6 = androidx.room.util.a.e(cursorG, TrackingKey.CLICK_TS);
            int iE7 = androidx.room.util.a.e(cursorG, "ad_creative_id");
            ArrayList arrayList = new ArrayList(cursorG.getCount());
            while (cursorG.moveToNext()) {
                arrayList.add(new j5(cursorG.getInt(iE), cursorG.getInt(iE2), cursorG.isNull(iE3) ? null : cursorG.getString(iE3), cursorG.isNull(iE4) ? null : cursorG.getString(iE4), cursorG.isNull(iE5) ? null : cursorG.getString(iE5), cursorG.getLong(iE6), cursorG.isNull(iE7) ? null : cursorG.getString(iE7)));
            }
            return arrayList;
        } finally {
            cursorG.close();
            g0VarH.release();
        }
    }
}
