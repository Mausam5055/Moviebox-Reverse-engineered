package com.cloud.hisavana.sdk;

import android.database.Cursor;
import androidx.room.RoomDatabase;
import androidx.room.j0;
import com.mbridge.msdk.mbbid.out.BidResponsed;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final class d2 implements c2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final RoomDatabase f22349a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final androidx.room.h f22350b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final j0 f22351c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final j0 f22352d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final j0 f22353e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final j0 f22354f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final j0 f22355g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final j0 f22356h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final j0 f22357i;

    class a extends androidx.room.h {
        a(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override // androidx.room.j0
        protected String e() {
            return "INSERT OR REPLACE INTO `default_ad_room` (`ad_creative_id`,`codeSeatId`,`ad_type`,`price`,`ad_request_ver`,`displayed_times`,`displayed_date`,`start_date`,`end_date`,`display_max_times`,`file_path`,`default_country_white`,`default_country_black`,`default_brand_white`,`default_brand_black`,`ad_bean`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // androidx.room.h
        /* JADX INFO: renamed from: n, reason: merged with bridge method [inline-methods] */
        public void j(a4.h hVar, g2 g2Var) {
            if (g2Var.b() == null) {
                hVar.g(1);
            } else {
                hVar.y(1, g2Var.b());
            }
            if (g2Var.e() == null) {
                hVar.g(2);
            } else {
                hVar.y(2, g2Var.e());
            }
            hVar.c(3, g2Var.d());
            if (g2Var.o() == null) {
                hVar.g(4);
            } else {
                hVar.a(4, g2Var.o().doubleValue());
            }
            hVar.c(5, g2Var.c());
            hVar.c(6, g2Var.l());
            if (g2Var.k() == null) {
                hVar.g(7);
            } else {
                hVar.y(7, g2Var.k());
            }
            if (g2Var.p() == null) {
                hVar.g(8);
            } else {
                hVar.y(8, g2Var.p());
            }
            if (g2Var.m() == null) {
                hVar.g(9);
            } else {
                hVar.y(9, g2Var.m());
            }
            hVar.c(10, g2Var.j());
            if (g2Var.n() == null) {
                hVar.g(11);
            } else {
                hVar.y(11, g2Var.n());
            }
            if (g2Var.i() == null) {
                hVar.g(12);
            } else {
                hVar.y(12, g2Var.i());
            }
            if (g2Var.h() == null) {
                hVar.g(13);
            } else {
                hVar.y(13, g2Var.h());
            }
            if (g2Var.g() == null) {
                hVar.g(14);
            } else {
                hVar.y(14, g2Var.g());
            }
            if (g2Var.f() == null) {
                hVar.g(15);
            } else {
                hVar.y(15, g2Var.f());
            }
            if (g2Var.a() == null) {
                hVar.g(16);
            } else {
                hVar.y(16, g2Var.a());
            }
        }
    }

    class b extends j0 {
        b(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override // androidx.room.j0
        public String e() {
            return "UPDATE default_ad_room SET displayed_times = ?, displayed_date = ? WHERE ad_creative_id = ? AND codeSeatId = ?";
        }
    }

    class c extends j0 {
        c(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override // androidx.room.j0
        public String e() {
            return "DELETE FROM default_ad_room WHERE ad_creative_id = ? AND codeSeatId = ?";
        }
    }

    class d extends j0 {
        d(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override // androidx.room.j0
        public String e() {
            return "UPDATE default_ad_room SET file_path = '' WHERE file_path LIKE '%' || ? || '.0'";
        }
    }

    class e extends j0 {
        e(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override // androidx.room.j0
        public String e() {
            return "DELETE FROM default_ad_room WHERE codeSeatId = ? AND ad_request_ver < (SELECT MAX(ad_request_ver) FROM default_ad_room WHERE codeSeatId = ?)";
        }
    }

    class f extends j0 {
        f(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override // androidx.room.j0
        public String e() {
            return "UPDATE default_ad_room SET file_path = ? WHERE ad_creative_id = ? AND codeSeatId = ?";
        }
    }

    class g extends j0 {
        g(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override // androidx.room.j0
        public String e() {
            return "DELETE FROM default_ad_room WHERE ad_request_ver < ?";
        }
    }

    class h extends j0 {
        h(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override // androidx.room.j0
        public String e() {
            return "DELETE FROM default_ad_room";
        }
    }

    public d2(RoomDatabase roomDatabase) {
        this.f22349a = roomDatabase;
        this.f22350b = new a(roomDatabase);
        this.f22351c = new b(roomDatabase);
        this.f22352d = new c(roomDatabase);
        this.f22353e = new d(roomDatabase);
        this.f22354f = new e(roomDatabase);
        this.f22355g = new f(roomDatabase);
        this.f22356h = new g(roomDatabase);
        this.f22357i = new h(roomDatabase);
    }

    public static List c() {
        return Collections.emptyList();
    }

    @Override // com.cloud.hisavana.sdk.c2
    public List a() throws Throwable {
        androidx.room.g0 g0Var;
        androidx.room.g0 g0VarH = androidx.room.g0.h("SELECT * FROM default_ad_room", 0);
        this.f22349a.j();
        Cursor cursorG = androidx.room.util.b.g(this.f22349a, g0VarH, false, null);
        try {
            int iE = androidx.room.util.a.e(cursorG, "ad_creative_id");
            int iE2 = androidx.room.util.a.e(cursorG, "codeSeatId");
            int iE3 = androidx.room.util.a.e(cursorG, "ad_type");
            int iE4 = androidx.room.util.a.e(cursorG, BidResponsed.KEY_PRICE);
            int iE5 = androidx.room.util.a.e(cursorG, "ad_request_ver");
            int iE6 = androidx.room.util.a.e(cursorG, "displayed_times");
            int iE7 = androidx.room.util.a.e(cursorG, "displayed_date");
            int iE8 = androidx.room.util.a.e(cursorG, "start_date");
            int iE9 = androidx.room.util.a.e(cursorG, "end_date");
            int iE10 = androidx.room.util.a.e(cursorG, "display_max_times");
            int iE11 = androidx.room.util.a.e(cursorG, "file_path");
            int iE12 = androidx.room.util.a.e(cursorG, "default_country_white");
            int iE13 = androidx.room.util.a.e(cursorG, "default_country_black");
            int iE14 = androidx.room.util.a.e(cursorG, "default_brand_white");
            g0Var = g0VarH;
            try {
                int iE15 = androidx.room.util.a.e(cursorG, "default_brand_black");
                int iE16 = androidx.room.util.a.e(cursorG, "ad_bean");
                int i11 = iE14;
                ArrayList arrayList = new ArrayList(cursorG.getCount());
                while (cursorG.moveToNext()) {
                    String string = cursorG.isNull(iE) ? null : cursorG.getString(iE);
                    String string2 = cursorG.isNull(iE2) ? null : cursorG.getString(iE2);
                    int i12 = cursorG.getInt(iE3);
                    Double dValueOf = cursorG.isNull(iE4) ? null : Double.valueOf(cursorG.getDouble(iE4));
                    int i13 = cursorG.getInt(iE5);
                    int i14 = cursorG.getInt(iE6);
                    String string3 = cursorG.isNull(iE7) ? null : cursorG.getString(iE7);
                    String string4 = cursorG.isNull(iE8) ? null : cursorG.getString(iE8);
                    String string5 = cursorG.isNull(iE9) ? null : cursorG.getString(iE9);
                    int i15 = cursorG.getInt(iE10);
                    String string6 = cursorG.isNull(iE11) ? null : cursorG.getString(iE11);
                    String string7 = cursorG.isNull(iE12) ? null : cursorG.getString(iE12);
                    String string8 = cursorG.isNull(iE13) ? null : cursorG.getString(iE13);
                    String string9 = cursorG.isNull(i11) ? null : cursorG.getString(i11);
                    int i16 = iE15;
                    int i17 = iE;
                    String string10 = cursorG.isNull(i16) ? null : cursorG.getString(i16);
                    int i18 = iE16;
                    arrayList.add(new g2(string, string2, i12, dValueOf, i13, i14, string3, string4, string5, i15, string6, string7, string8, string9, string10, cursorG.isNull(i18) ? null : cursorG.getString(i18)));
                    iE = i17;
                    iE15 = i16;
                    iE16 = i18;
                    i11 = i11;
                }
                cursorG.close();
                g0Var.release();
                return arrayList;
            } catch (Throwable th2) {
                th = th2;
                cursorG.close();
                g0Var.release();
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            g0Var = g0VarH;
        }
    }

    @Override // com.cloud.hisavana.sdk.c2
    public void a(int i11) {
        this.f22349a.j();
        a4.h hVarB = this.f22356h.b();
        hVarB.c(1, i11);
        try {
            this.f22349a.k();
            try {
                hVarB.F();
                this.f22349a.e0();
                this.f22349a.t();
                this.f22356h.h(hVarB);
            } catch (Throwable th2) {
                this.f22349a.t();
                throw th2;
            }
        } catch (Throwable th3) {
            this.f22356h.h(hVarB);
            throw th3;
        }
    }

    @Override // com.cloud.hisavana.sdk.c2
    public void a(g2 g2Var) {
        this.f22349a.j();
        this.f22349a.k();
        try {
            this.f22350b.l(g2Var);
            this.f22349a.e0();
        } finally {
            this.f22349a.t();
        }
    }

    @Override // com.cloud.hisavana.sdk.c2
    public void a(String str) {
        this.f22349a.j();
        a4.h hVarB = this.f22353e.b();
        if (str == null) {
            hVarB.g(1);
        } else {
            hVarB.y(1, str);
        }
        try {
            this.f22349a.k();
            try {
                hVarB.F();
                this.f22349a.e0();
                this.f22349a.t();
                this.f22353e.h(hVarB);
            } catch (Throwable th2) {
                this.f22349a.t();
                throw th2;
            }
        } catch (Throwable th3) {
            this.f22353e.h(hVarB);
            throw th3;
        }
    }

    @Override // com.cloud.hisavana.sdk.c2
    public void a(String str, String str2) {
        this.f22349a.j();
        a4.h hVarB = this.f22352d.b();
        if (str == null) {
            hVarB.g(1);
        } else {
            hVarB.y(1, str);
        }
        if (str2 == null) {
            hVarB.g(2);
        } else {
            hVarB.y(2, str2);
        }
        try {
            this.f22349a.k();
            try {
                hVarB.F();
                this.f22349a.e0();
                this.f22349a.t();
                this.f22352d.h(hVarB);
            } catch (Throwable th2) {
                this.f22349a.t();
                throw th2;
            }
        } catch (Throwable th3) {
            this.f22352d.h(hVarB);
            throw th3;
        }
    }

    @Override // com.cloud.hisavana.sdk.c2
    public void a(String str, String str2, String str3) {
        this.f22349a.j();
        a4.h hVarB = this.f22355g.b();
        if (str3 == null) {
            hVarB.g(1);
        } else {
            hVarB.y(1, str3);
        }
        if (str == null) {
            hVarB.g(2);
        } else {
            hVarB.y(2, str);
        }
        if (str2 == null) {
            hVarB.g(3);
        } else {
            hVarB.y(3, str2);
        }
        try {
            this.f22349a.k();
            try {
                hVarB.F();
                this.f22349a.e0();
                this.f22349a.t();
                this.f22355g.h(hVarB);
            } catch (Throwable th2) {
                this.f22349a.t();
                throw th2;
            }
        } catch (Throwable th3) {
            this.f22355g.h(hVarB);
            throw th3;
        }
    }

    @Override // com.cloud.hisavana.sdk.c2
    public void a(List list) {
        this.f22349a.j();
        StringBuilder sbB = androidx.room.util.n.b();
        sbB.append("DELETE FROM default_ad_room WHERE codeSeatId NOT IN (");
        androidx.room.util.n.a(sbB, list.size());
        sbB.append(")");
        a4.h hVarM = this.f22349a.m(sbB.toString());
        Iterator it = list.iterator();
        int i11 = 1;
        while (it.hasNext()) {
            String str = (String) it.next();
            if (str == null) {
                hVarM.g(i11);
            } else {
                hVarM.y(i11, str);
            }
            i11++;
        }
        this.f22349a.k();
        try {
            hVarM.F();
            this.f22349a.e0();
        } finally {
            this.f22349a.t();
        }
    }

    @Override // com.cloud.hisavana.sdk.c2
    public void b() {
        this.f22349a.j();
        a4.h hVarB = this.f22357i.b();
        try {
            this.f22349a.k();
            try {
                hVarB.F();
                this.f22349a.e0();
                this.f22349a.t();
                this.f22357i.h(hVarB);
            } catch (Throwable th2) {
                this.f22349a.t();
                throw th2;
            }
        } catch (Throwable th3) {
            this.f22357i.h(hVarB);
            throw th3;
        }
    }

    @Override // com.cloud.hisavana.sdk.c2
    public void b(String str) {
        this.f22349a.j();
        a4.h hVarB = this.f22354f.b();
        if (str == null) {
            hVarB.g(1);
        } else {
            hVarB.y(1, str);
        }
        if (str == null) {
            hVarB.g(2);
        } else {
            hVarB.y(2, str);
        }
        try {
            this.f22349a.k();
            try {
                hVarB.F();
                this.f22349a.e0();
                this.f22349a.t();
                this.f22354f.h(hVarB);
            } catch (Throwable th2) {
                this.f22349a.t();
                throw th2;
            }
        } catch (Throwable th3) {
            this.f22354f.h(hVarB);
            throw th3;
        }
    }

    @Override // com.cloud.hisavana.sdk.c2
    public void b(String str, String str2, int i11, String str3) {
        this.f22349a.j();
        a4.h hVarB = this.f22351c.b();
        hVarB.c(1, i11);
        if (str3 == null) {
            hVarB.g(2);
        } else {
            hVarB.y(2, str3);
        }
        if (str == null) {
            hVarB.g(3);
        } else {
            hVarB.y(3, str);
        }
        if (str2 == null) {
            hVarB.g(4);
        } else {
            hVarB.y(4, str2);
        }
        try {
            this.f22349a.k();
            try {
                hVarB.F();
                this.f22349a.e0();
                this.f22349a.t();
                this.f22351c.h(hVarB);
            } catch (Throwable th2) {
                this.f22349a.t();
                throw th2;
            }
        } catch (Throwable th3) {
            this.f22351c.h(hVarB);
            throw th3;
        }
    }
}
