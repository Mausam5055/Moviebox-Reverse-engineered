package mi;

import androidx.room.RoomDatabase;
import com.cloud.tmc.kernel.utils.UrlUtils;
import com.transsion.ad.db.pslink.PsLinkAdPlan;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes6.dex */
public final class t implements l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final RoomDatabase f69602a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final androidx.room.g f69603b = new a();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final androidx.room.e f69604c = new b();

    class a extends androidx.room.g {
        a() {
        }

        @Override // androidx.room.g
        protected String b() {
            return "INSERT OR REPLACE INTO `ps_link_ad` (`id`,`nonId`,`adSource`,`extAdSlot`,`rank`,`psPlanId`,`psLinkAdInfoStr`,`psInfoJson`,`updateTimestamp`,`showMax`,`clickMax`,`showHours`,`showedTimes`,`clickedTimes`,`showDate`,`isOffer`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // androidx.room.g
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public void a(z3.e eVar, PsLinkAdPlan psLinkAdPlan) {
            eVar.c(1, psLinkAdPlan.getId());
            if (psLinkAdPlan.getNonId() == null) {
                eVar.g(2);
            } else {
                eVar.j(2, psLinkAdPlan.getNonId());
            }
            if (psLinkAdPlan.getAdSource() == null) {
                eVar.g(3);
            } else {
                eVar.j(3, psLinkAdPlan.getAdSource());
            }
            if (psLinkAdPlan.getExtAdSlot() == null) {
                eVar.g(4);
            } else {
                eVar.j(4, psLinkAdPlan.getExtAdSlot());
            }
            eVar.c(5, psLinkAdPlan.getRank());
            if (psLinkAdPlan.getPsPlanId() == null) {
                eVar.g(6);
            } else {
                eVar.j(6, psLinkAdPlan.getPsPlanId());
            }
            if (psLinkAdPlan.getPsLinkAdInfoStr() == null) {
                eVar.g(7);
            } else {
                eVar.j(7, psLinkAdPlan.getPsLinkAdInfoStr());
            }
            if (psLinkAdPlan.getPsInfoJson() == null) {
                eVar.g(8);
            } else {
                eVar.j(8, psLinkAdPlan.getPsInfoJson());
            }
            if (psLinkAdPlan.getUpdateTimestamp() == null) {
                eVar.g(9);
            } else {
                eVar.c(9, psLinkAdPlan.getUpdateTimestamp().longValue());
            }
            if (psLinkAdPlan.getShowMax() == null) {
                eVar.g(10);
            } else {
                eVar.c(10, psLinkAdPlan.getShowMax().intValue());
            }
            if (psLinkAdPlan.getClickMax() == null) {
                eVar.g(11);
            } else {
                eVar.c(11, psLinkAdPlan.getClickMax().intValue());
            }
            if (psLinkAdPlan.getShowHours() == null) {
                eVar.g(12);
            } else {
                eVar.j(12, psLinkAdPlan.getShowHours());
            }
            eVar.c(13, psLinkAdPlan.getShowedTimes());
            eVar.c(14, psLinkAdPlan.getClickedTimes());
            if (psLinkAdPlan.getShowDate() == null) {
                eVar.g(15);
            } else {
                eVar.j(15, psLinkAdPlan.getShowDate());
            }
            eVar.c(16, psLinkAdPlan.isOffer());
        }
    }

    class b extends androidx.room.e {
        b() {
        }

        @Override // androidx.room.e
        protected String b() {
            return "UPDATE OR ABORT `ps_link_ad` SET `id` = ?,`nonId` = ?,`adSource` = ?,`extAdSlot` = ?,`rank` = ?,`psPlanId` = ?,`psLinkAdInfoStr` = ?,`psInfoJson` = ?,`updateTimestamp` = ?,`showMax` = ?,`clickMax` = ?,`showHours` = ?,`showedTimes` = ?,`clickedTimes` = ?,`showDate` = ?,`isOffer` = ? WHERE `id` = ?";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // androidx.room.e
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public void a(z3.e eVar, PsLinkAdPlan psLinkAdPlan) {
            eVar.c(1, psLinkAdPlan.getId());
            if (psLinkAdPlan.getNonId() == null) {
                eVar.g(2);
            } else {
                eVar.j(2, psLinkAdPlan.getNonId());
            }
            if (psLinkAdPlan.getAdSource() == null) {
                eVar.g(3);
            } else {
                eVar.j(3, psLinkAdPlan.getAdSource());
            }
            if (psLinkAdPlan.getExtAdSlot() == null) {
                eVar.g(4);
            } else {
                eVar.j(4, psLinkAdPlan.getExtAdSlot());
            }
            eVar.c(5, psLinkAdPlan.getRank());
            if (psLinkAdPlan.getPsPlanId() == null) {
                eVar.g(6);
            } else {
                eVar.j(6, psLinkAdPlan.getPsPlanId());
            }
            if (psLinkAdPlan.getPsLinkAdInfoStr() == null) {
                eVar.g(7);
            } else {
                eVar.j(7, psLinkAdPlan.getPsLinkAdInfoStr());
            }
            if (psLinkAdPlan.getPsInfoJson() == null) {
                eVar.g(8);
            } else {
                eVar.j(8, psLinkAdPlan.getPsInfoJson());
            }
            if (psLinkAdPlan.getUpdateTimestamp() == null) {
                eVar.g(9);
            } else {
                eVar.c(9, psLinkAdPlan.getUpdateTimestamp().longValue());
            }
            if (psLinkAdPlan.getShowMax() == null) {
                eVar.g(10);
            } else {
                eVar.c(10, psLinkAdPlan.getShowMax().intValue());
            }
            if (psLinkAdPlan.getClickMax() == null) {
                eVar.g(11);
            } else {
                eVar.c(11, psLinkAdPlan.getClickMax().intValue());
            }
            if (psLinkAdPlan.getShowHours() == null) {
                eVar.g(12);
            } else {
                eVar.j(12, psLinkAdPlan.getShowHours());
            }
            eVar.c(13, psLinkAdPlan.getShowedTimes());
            eVar.c(14, psLinkAdPlan.getClickedTimes());
            if (psLinkAdPlan.getShowDate() == null) {
                eVar.g(15);
            } else {
                eVar.j(15, psLinkAdPlan.getShowDate());
            }
            eVar.c(16, psLinkAdPlan.isOffer());
            eVar.c(17, psLinkAdPlan.getId());
        }
    }

    public t(RoomDatabase roomDatabase) {
        this.f69602a = roomDatabase;
    }

    public static List o() {
        return Collections.emptyList();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Unit p(String str, String str2, List list, z3.b bVar) {
        z3.e eVarD0 = bVar.D0(str);
        try {
            if (str2 == null) {
                eVarD0.g(1);
            } else {
                eVarD0.j(1, str2);
            }
            Iterator it = list.iterator();
            int i11 = 2;
            while (it.hasNext()) {
                Integer num = (Integer) it.next();
                if (num == null) {
                    eVarD0.g(i11);
                } else {
                    eVarD0.c(i11, num.intValue());
                }
                i11++;
            }
            eVarD0.A0();
            Unit unit = Unit.f67061a;
            eVarD0.close();
            return unit;
        } catch (Throwable th2) {
            eVarD0.close();
            throw th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ List q(z3.b bVar) {
        z3.e eVarD0 = bVar.D0("SELECT * FROM ps_link_ad");
        try {
            int iD = androidx.room.util.k.d(eVarD0, "id");
            int iD2 = androidx.room.util.k.d(eVarD0, "nonId");
            int iD3 = androidx.room.util.k.d(eVarD0, "adSource");
            int iD4 = androidx.room.util.k.d(eVarD0, "extAdSlot");
            int iD5 = androidx.room.util.k.d(eVarD0, "rank");
            int iD6 = androidx.room.util.k.d(eVarD0, "psPlanId");
            int iD7 = androidx.room.util.k.d(eVarD0, "psLinkAdInfoStr");
            int iD8 = androidx.room.util.k.d(eVarD0, "psInfoJson");
            int iD9 = androidx.room.util.k.d(eVarD0, "updateTimestamp");
            int iD10 = androidx.room.util.k.d(eVarD0, "showMax");
            int iD11 = androidx.room.util.k.d(eVarD0, "clickMax");
            int iD12 = androidx.room.util.k.d(eVarD0, "showHours");
            int iD13 = androidx.room.util.k.d(eVarD0, "showedTimes");
            int iD14 = androidx.room.util.k.d(eVarD0, "clickedTimes");
            int iD15 = androidx.room.util.k.d(eVarD0, "showDate");
            int iD16 = androidx.room.util.k.d(eVarD0, "isOffer");
            ArrayList arrayList = new ArrayList();
            while (eVarD0.A0()) {
                int i11 = iD14;
                ArrayList arrayList2 = arrayList;
                int i12 = (int) eVarD0.getLong(iD);
                String strN0 = eVarD0.isNull(iD2) ? null : eVarD0.n0(iD2);
                String strN1 = eVarD0.isNull(iD3) ? null : eVarD0.n0(iD3);
                String strN2 = eVarD0.isNull(iD4) ? null : eVarD0.n0(iD4);
                int i13 = (int) eVarD0.getLong(iD5);
                String strN3 = eVarD0.isNull(iD6) ? null : eVarD0.n0(iD6);
                int i14 = iD6;
                int i15 = iD5;
                int i16 = iD15;
                int i17 = iD;
                int i18 = iD16;
                int i19 = iD7;
                arrayList2.add(new PsLinkAdPlan(i12, strN0, strN1, strN2, i13, strN3, eVarD0.isNull(iD7) ? null : eVarD0.n0(iD7), eVarD0.isNull(iD8) ? null : eVarD0.n0(iD8), eVarD0.isNull(iD9) ? null : Long.valueOf(eVarD0.getLong(iD9)), eVarD0.isNull(iD10) ? null : Integer.valueOf((int) eVarD0.getLong(iD10)), eVarD0.isNull(iD11) ? null : Integer.valueOf((int) eVarD0.getLong(iD11)), eVarD0.isNull(iD12) ? null : eVarD0.n0(iD12), (int) eVarD0.getLong(iD13), (int) eVarD0.getLong(i11), eVarD0.isNull(i16) ? null : eVarD0.n0(i16), (int) eVarD0.getLong(i18)));
                iD14 = i11;
                iD7 = i19;
                iD5 = i15;
                iD3 = iD3;
                iD4 = iD4;
                iD6 = i14;
                iD16 = i18;
                iD = i17;
                iD15 = i16;
                arrayList = arrayList2;
                iD2 = iD2;
            }
            return arrayList;
        } finally {
            eVarD0.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Integer r(String str, z3.b bVar) {
        z3.e eVarD0 = bVar.D0("SELECT COUNT(*) FROM ps_link_ad WHERE extAdSlot = ?");
        try {
            if (str == null) {
                eVarD0.g(1);
            } else {
                eVarD0.j(1, str);
            }
            Integer numValueOf = null;
            if (eVarD0.A0() && !eVarD0.isNull(0)) {
                numValueOf = Integer.valueOf((int) eVarD0.getLong(0));
            }
            eVarD0.close();
            return numValueOf;
        } catch (Throwable th2) {
            eVarD0.close();
            throw th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ PsLinkAdPlan s(int i11, z3.b bVar) {
        z3.e eVarD0 = bVar.D0("SELECT * FROM ps_link_ad WHERE id =?");
        try {
            eVarD0.c(1, i11);
            int iD = androidx.room.util.k.d(eVarD0, "id");
            int iD2 = androidx.room.util.k.d(eVarD0, "nonId");
            int iD3 = androidx.room.util.k.d(eVarD0, "adSource");
            int iD4 = androidx.room.util.k.d(eVarD0, "extAdSlot");
            int iD5 = androidx.room.util.k.d(eVarD0, "rank");
            int iD6 = androidx.room.util.k.d(eVarD0, "psPlanId");
            int iD7 = androidx.room.util.k.d(eVarD0, "psLinkAdInfoStr");
            int iD8 = androidx.room.util.k.d(eVarD0, "psInfoJson");
            int iD9 = androidx.room.util.k.d(eVarD0, "updateTimestamp");
            int iD10 = androidx.room.util.k.d(eVarD0, "showMax");
            int iD11 = androidx.room.util.k.d(eVarD0, "clickMax");
            int iD12 = androidx.room.util.k.d(eVarD0, "showHours");
            int iD13 = androidx.room.util.k.d(eVarD0, "showedTimes");
            int iD14 = androidx.room.util.k.d(eVarD0, "clickedTimes");
            int iD15 = androidx.room.util.k.d(eVarD0, "showDate");
            int iD16 = androidx.room.util.k.d(eVarD0, "isOffer");
            PsLinkAdPlan psLinkAdPlan = null;
            if (eVarD0.A0()) {
                psLinkAdPlan = new PsLinkAdPlan((int) eVarD0.getLong(iD), eVarD0.isNull(iD2) ? null : eVarD0.n0(iD2), eVarD0.isNull(iD3) ? null : eVarD0.n0(iD3), eVarD0.isNull(iD4) ? null : eVarD0.n0(iD4), (int) eVarD0.getLong(iD5), eVarD0.isNull(iD6) ? null : eVarD0.n0(iD6), eVarD0.isNull(iD7) ? null : eVarD0.n0(iD7), eVarD0.isNull(iD8) ? null : eVarD0.n0(iD8), eVarD0.isNull(iD9) ? null : Long.valueOf(eVarD0.getLong(iD9)), eVarD0.isNull(iD10) ? null : Integer.valueOf((int) eVarD0.getLong(iD10)), eVarD0.isNull(iD11) ? null : Integer.valueOf((int) eVarD0.getLong(iD11)), eVarD0.isNull(iD12) ? null : eVarD0.n0(iD12), (int) eVarD0.getLong(iD13), (int) eVarD0.getLong(iD14), eVarD0.isNull(iD15) ? null : eVarD0.n0(iD15), (int) eVarD0.getLong(iD16));
            }
            return psLinkAdPlan;
        } finally {
            eVarD0.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ PsLinkAdPlan t(String str, z3.b bVar) {
        z3.e eVarD0 = bVar.D0("SELECT * FROM ps_link_ad WHERE extAdSlot = ? ORDER BY updateTimestamp ASC LIMIT 1");
        try {
            if (str == null) {
                eVarD0.g(1);
            } else {
                eVarD0.j(1, str);
            }
            int iD = androidx.room.util.k.d(eVarD0, "id");
            int iD2 = androidx.room.util.k.d(eVarD0, "nonId");
            int iD3 = androidx.room.util.k.d(eVarD0, "adSource");
            int iD4 = androidx.room.util.k.d(eVarD0, "extAdSlot");
            int iD5 = androidx.room.util.k.d(eVarD0, "rank");
            int iD6 = androidx.room.util.k.d(eVarD0, "psPlanId");
            int iD7 = androidx.room.util.k.d(eVarD0, "psLinkAdInfoStr");
            int iD8 = androidx.room.util.k.d(eVarD0, "psInfoJson");
            int iD9 = androidx.room.util.k.d(eVarD0, "updateTimestamp");
            int iD10 = androidx.room.util.k.d(eVarD0, "showMax");
            int iD11 = androidx.room.util.k.d(eVarD0, "clickMax");
            int iD12 = androidx.room.util.k.d(eVarD0, "showHours");
            int iD13 = androidx.room.util.k.d(eVarD0, "showedTimes");
            int iD14 = androidx.room.util.k.d(eVarD0, "clickedTimes");
            int iD15 = androidx.room.util.k.d(eVarD0, "showDate");
            int iD16 = androidx.room.util.k.d(eVarD0, "isOffer");
            PsLinkAdPlan psLinkAdPlan = null;
            if (eVarD0.A0()) {
                psLinkAdPlan = new PsLinkAdPlan((int) eVarD0.getLong(iD), eVarD0.isNull(iD2) ? null : eVarD0.n0(iD2), eVarD0.isNull(iD3) ? null : eVarD0.n0(iD3), eVarD0.isNull(iD4) ? null : eVarD0.n0(iD4), (int) eVarD0.getLong(iD5), eVarD0.isNull(iD6) ? null : eVarD0.n0(iD6), eVarD0.isNull(iD7) ? null : eVarD0.n0(iD7), eVarD0.isNull(iD8) ? null : eVarD0.n0(iD8), eVarD0.isNull(iD9) ? null : Long.valueOf(eVarD0.getLong(iD9)), eVarD0.isNull(iD10) ? null : Integer.valueOf((int) eVarD0.getLong(iD10)), eVarD0.isNull(iD11) ? null : Integer.valueOf((int) eVarD0.getLong(iD11)), eVarD0.isNull(iD12) ? null : eVarD0.n0(iD12), (int) eVarD0.getLong(iD13), (int) eVarD0.getLong(iD14), eVarD0.isNull(iD15) ? null : eVarD0.n0(iD15), (int) eVarD0.getLong(iD16));
            }
            eVarD0.close();
            return psLinkAdPlan;
        } catch (Throwable th2) {
            eVarD0.close();
            throw th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Unit u(PsLinkAdPlan psLinkAdPlan, z3.b bVar) throws Exception {
        this.f69603b.d(bVar, psLinkAdPlan);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Unit v(PsLinkAdPlan psLinkAdPlan, z3.b bVar) throws Exception {
        this.f69604c.c(bVar, psLinkAdPlan);
        return Unit.f67061a;
    }

    @Override // mi.l
    public Object a(Continuation continuation) {
        return androidx.room.util.b.f(this.f69602a, true, false, new Function1() { // from class: mi.n
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return t.q((z3.b) obj);
            }
        }, continuation);
    }

    @Override // mi.l
    public Object b(final PsLinkAdPlan psLinkAdPlan, Continuation continuation) {
        psLinkAdPlan.getClass();
        return androidx.room.util.b.f(this.f69602a, false, true, new Function1() { // from class: mi.o
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return this.f69595a.u(psLinkAdPlan, (z3.b) obj);
            }
        }, continuation);
    }

    @Override // mi.l
    public Object c(final String str, Continuation continuation) {
        return androidx.room.util.b.f(this.f69602a, true, false, new Function1() { // from class: mi.s
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return t.r(str, (z3.b) obj);
            }
        }, continuation);
    }

    @Override // mi.l
    public Object d(final String str, final List list, Continuation continuation) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("\n");
        sb2.append("    DELETE FROM ps_link_ad ");
        sb2.append("\n");
        sb2.append("    WHERE extAdSlot = ");
        sb2.append(UrlUtils.QUESTION_MARK);
        sb2.append(" ");
        sb2.append("\n");
        sb2.append("      AND id NOT IN (");
        androidx.room.util.n.a(sb2, list.size());
        sb2.append(")");
        sb2.append("\n");
        final String string = sb2.toString();
        return androidx.room.util.b.f(this.f69602a, false, true, new Function1() { // from class: mi.m
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return t.p(string, str, list, (z3.b) obj);
            }
        }, continuation);
    }

    @Override // mi.l
    public Object e(final PsLinkAdPlan psLinkAdPlan, Continuation continuation) {
        psLinkAdPlan.getClass();
        return androidx.room.util.b.f(this.f69602a, false, true, new Function1() { // from class: mi.r
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return this.f69599a.v(psLinkAdPlan, (z3.b) obj);
            }
        }, continuation);
    }

    @Override // mi.l
    public Object f(final int i11, Continuation continuation) {
        return androidx.room.util.b.f(this.f69602a, true, false, new Function1() { // from class: mi.p
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return t.s(i11, (z3.b) obj);
            }
        }, continuation);
    }

    @Override // mi.l
    public Object g(final String str, Continuation continuation) {
        return androidx.room.util.b.f(this.f69602a, true, false, new Function1() { // from class: mi.q
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return t.t(str, (z3.b) obj);
            }
        }, continuation);
    }
}
