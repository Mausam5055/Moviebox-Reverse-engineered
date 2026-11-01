package com.cloud.hisavana.sdk;

import a4.g;
import android.database.Cursor;
import androidx.room.RoomDatabase;
import androidx.room.j0;
import com.hisavana.common.tracking.TrackingKey;
import com.mbridge.msdk.mbbid.out.BidResponsed;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final class w3 implements v3 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final RoomDatabase f23047a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final androidx.room.h f23048b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final androidx.room.f f23049c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final j0 f23050d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final j0 f23051e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final j0 f23052f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final j0 f23053g;

    class a extends androidx.room.h {
        a(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override // androidx.room.j0
        protected String e() {
            return "INSERT OR REPLACE INTO `adList_room` (`_id`,`ad_creative_id`,`codeSeatId`,`file_path`,`price`,`is_offline_ad`,`ad_request_ver`,`ad_bean`) VALUES (nullif(?, 0),?,?,?,?,?,?,?)";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // androidx.room.h
        /* JADX INFO: renamed from: n, reason: merged with bridge method [inline-methods] */
        public void j(a4.h hVar, y3 y3Var) {
            hVar.c(1, y3Var.o());
            if (y3Var.f() == null) {
                hVar.g(2);
            } else {
                hVar.y(2, y3Var.f());
            }
            if (y3Var.k() == null) {
                hVar.g(3);
            } else {
                hVar.y(3, y3Var.k());
            }
            if (y3Var.m() == null) {
                hVar.g(4);
            } else {
                hVar.y(4, y3Var.m());
            }
            if (y3Var.n() == null) {
                hVar.g(5);
            } else {
                hVar.a(5, y3Var.n().doubleValue());
            }
            if (y3Var.p() == null) {
                hVar.g(6);
            } else {
                hVar.c(6, y3Var.p().intValue());
            }
            if (y3Var.i() == null) {
                hVar.g(7);
            } else {
                hVar.c(7, y3Var.i().intValue());
            }
            if (y3Var.a() == null) {
                hVar.g(8);
            } else {
                hVar.y(8, y3Var.a());
            }
        }
    }

    class b extends androidx.room.f {
        b(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override // androidx.room.j0
        protected String e() {
            return "UPDATE OR ABORT `adList_room` SET `_id` = ?,`ad_creative_id` = ?,`codeSeatId` = ?,`file_path` = ?,`price` = ?,`is_offline_ad` = ?,`ad_request_ver` = ?,`ad_bean` = ? WHERE `_id` = ?";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // androidx.room.f
        /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
        public void j(a4.h hVar, y3 y3Var) {
            hVar.c(1, y3Var.o());
            if (y3Var.f() == null) {
                hVar.g(2);
            } else {
                hVar.y(2, y3Var.f());
            }
            if (y3Var.k() == null) {
                hVar.g(3);
            } else {
                hVar.y(3, y3Var.k());
            }
            if (y3Var.m() == null) {
                hVar.g(4);
            } else {
                hVar.y(4, y3Var.m());
            }
            if (y3Var.n() == null) {
                hVar.g(5);
            } else {
                hVar.a(5, y3Var.n().doubleValue());
            }
            if (y3Var.p() == null) {
                hVar.g(6);
            } else {
                hVar.c(6, y3Var.p().intValue());
            }
            if (y3Var.i() == null) {
                hVar.g(7);
            } else {
                hVar.c(7, y3Var.i().intValue());
            }
            if (y3Var.a() == null) {
                hVar.g(8);
            } else {
                hVar.y(8, y3Var.a());
            }
            hVar.c(9, y3Var.o());
        }
    }

    class c extends j0 {
        c(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override // androidx.room.j0
        public String e() {
            return "DELETE FROM adList_room WHERE codeSeatId = ? AND ad_creative_id = ?";
        }
    }

    class d extends j0 {
        d(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override // androidx.room.j0
        public String e() {
            return "DELETE FROM adList_room WHERE codeSeatId = ? AND ad_request_ver < ? AND is_offline_ad = 1";
        }
    }

    class e extends j0 {
        e(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override // androidx.room.j0
        public String e() {
            return "DELETE FROM adList_room WHERE codeSeatId = ? AND is_offline_ad = 0";
        }
    }

    class f extends j0 {
        f(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override // androidx.room.j0
        public String e() {
            return "DELETE FROM adList_room";
        }
    }

    public w3(RoomDatabase roomDatabase) {
        this.f23047a = roomDatabase;
        this.f23048b = new a(roomDatabase);
        this.f23049c = new b(roomDatabase);
        this.f23050d = new c(roomDatabase);
        this.f23051e = new d(roomDatabase);
        this.f23052f = new e(roomDatabase);
        this.f23053g = new f(roomDatabase);
    }

    public static List e() {
        return Collections.emptyList();
    }

    @Override // com.cloud.hisavana.sdk.v3
    public int a(List list) {
        this.f23047a.j();
        this.f23047a.k();
        try {
            int iL = this.f23049c.l(list);
            this.f23047a.e0();
            return iL;
        } finally {
            this.f23047a.t();
        }
    }

    @Override // com.cloud.hisavana.sdk.v3
    public Cursor a(g gVar) {
        return this.f23047a.V(gVar);
    }

    @Override // com.cloud.hisavana.sdk.v3
    public void a() {
        this.f23047a.j();
        a4.h hVarB = this.f23053g.b();
        try {
            this.f23047a.k();
            try {
                hVarB.F();
                this.f23047a.e0();
                this.f23047a.t();
                this.f23053g.h(hVarB);
            } catch (Throwable th2) {
                this.f23047a.t();
                throw th2;
            }
        } catch (Throwable th3) {
            this.f23053g.h(hVarB);
            throw th3;
        }
    }

    @Override // com.cloud.hisavana.sdk.v3
    public int b(g gVar) {
        this.f23047a.j();
        Cursor cursorG = androidx.room.util.b.g(this.f23047a, gVar, false, null);
        try {
            return cursorG.moveToFirst() ? cursorG.getInt(0) : 0;
        } finally {
            cursorG.close();
        }
    }

    @Override // com.cloud.hisavana.sdk.v3
    public void c(List list) {
        this.f23047a.j();
        this.f23047a.k();
        try {
            this.f23048b.k(list);
            this.f23047a.e0();
        } finally {
            this.f23047a.t();
        }
    }

    @Override // com.cloud.hisavana.sdk.v3
    public List d(List list) {
        StringBuilder sbB = androidx.room.util.n.b();
        sbB.append("SELECT * FROM adList_room WHERE ad_creative_id IN (");
        int i11 = 1;
        int size = list == null ? 1 : list.size();
        androidx.room.util.n.a(sbB, size);
        sbB.append(")");
        androidx.room.g0 g0VarH = androidx.room.g0.h(sbB.toString(), size);
        if (list == null) {
            g0VarH.g(1);
        } else {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                String str = (String) it.next();
                if (str == null) {
                    g0VarH.g(i11);
                } else {
                    g0VarH.y(i11, str);
                }
                i11++;
            }
        }
        this.f23047a.j();
        Cursor cursorG = androidx.room.util.b.g(this.f23047a, g0VarH, false, null);
        try {
            int iE = androidx.room.util.a.e(cursorG, "_id");
            int iE2 = androidx.room.util.a.e(cursorG, "ad_creative_id");
            int iE3 = androidx.room.util.a.e(cursorG, "codeSeatId");
            int iE4 = androidx.room.util.a.e(cursorG, "file_path");
            int iE5 = androidx.room.util.a.e(cursorG, BidResponsed.KEY_PRICE);
            int iE6 = androidx.room.util.a.e(cursorG, TrackingKey.IS_OFFLINE_AD);
            int iE7 = androidx.room.util.a.e(cursorG, "ad_request_ver");
            int iE8 = androidx.room.util.a.e(cursorG, "ad_bean");
            ArrayList arrayList = new ArrayList(cursorG.getCount());
            while (cursorG.moveToNext()) {
                arrayList.add(new y3(cursorG.getInt(iE), cursorG.isNull(iE2) ? null : cursorG.getString(iE2), cursorG.isNull(iE3) ? null : cursorG.getString(iE3), cursorG.isNull(iE4) ? null : cursorG.getString(iE4), cursorG.isNull(iE5) ? null : Double.valueOf(cursorG.getDouble(iE5)), cursorG.isNull(iE6) ? null : Integer.valueOf(cursorG.getInt(iE6)), cursorG.isNull(iE7) ? null : Integer.valueOf(cursorG.getInt(iE7)), cursorG.isNull(iE8) ? null : cursorG.getString(iE8)));
            }
            return arrayList;
        } finally {
            cursorG.close();
            g0VarH.release();
        }
    }
}
