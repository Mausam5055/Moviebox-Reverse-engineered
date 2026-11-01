package lj;

import androidx.room.RoomDatabase;
import com.transsion.baselib.db.download.SubtitleLanguageMapBean;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes6.dex */
public final class h1 implements d1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final RoomDatabase f68897a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final androidx.room.g f68898b = new a();

    class a extends androidx.room.g {
        a() {
        }

        @Override // androidx.room.g
        protected String b() {
            return "INSERT OR REPLACE INTO `subtitle_language_map_table` (`lan`,`lanIOS3`,`lanName`,`inSearch`) VALUES (?,?,?,?)";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // androidx.room.g
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public void a(z3.e eVar, SubtitleLanguageMapBean subtitleLanguageMapBean) {
            if (subtitleLanguageMapBean.getLan() == null) {
                eVar.g(1);
            } else {
                eVar.j(1, subtitleLanguageMapBean.getLan());
            }
            if (subtitleLanguageMapBean.getLanIOS3() == null) {
                eVar.g(2);
            } else {
                eVar.j(2, subtitleLanguageMapBean.getLanIOS3());
            }
            if (subtitleLanguageMapBean.getLanName() == null) {
                eVar.g(3);
            } else {
                eVar.j(3, subtitleLanguageMapBean.getLanName());
            }
            eVar.c(4, subtitleLanguageMapBean.getInSearch() ? 1L : 0L);
        }
    }

    public h1(RoomDatabase roomDatabase) {
        this.f68897a = roomDatabase;
    }

    public static List g() {
        return Collections.emptyList();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ List h(z3.b bVar) {
        z3.e eVarD0 = bVar.D0("SELECT * FROM SUBTITLE_LANGUAGE_MAP_TABLE ");
        try {
            int iD = androidx.room.util.k.d(eVarD0, "lan");
            int iD2 = androidx.room.util.k.d(eVarD0, "lanIOS3");
            int iD3 = androidx.room.util.k.d(eVarD0, "lanName");
            int iD4 = androidx.room.util.k.d(eVarD0, "inSearch");
            ArrayList arrayList = new ArrayList();
            while (eVarD0.A0()) {
                String strN0 = null;
                String strN1 = eVarD0.isNull(iD) ? null : eVarD0.n0(iD);
                String strN2 = eVarD0.isNull(iD2) ? null : eVarD0.n0(iD2);
                if (!eVarD0.isNull(iD3)) {
                    strN0 = eVarD0.n0(iD3);
                }
                arrayList.add(new SubtitleLanguageMapBean(strN1, strN2, strN0, ((int) eVarD0.getLong(iD4)) != 0));
            }
            return arrayList;
        } finally {
            eVarD0.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Unit i(SubtitleLanguageMapBean subtitleLanguageMapBean, z3.b bVar) throws Exception {
        this.f68898b.d(bVar, subtitleLanguageMapBean);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Unit j(boolean z10, String str, z3.b bVar) {
        z3.e eVarD0 = bVar.D0("UPDATE SUBTITLE_LANGUAGE_MAP_TABLE SET inSearch = ?  WHERE lan = ?");
        try {
            eVarD0.c(1, z10 ? 1L : 0L);
            if (str == null) {
                eVarD0.g(2);
            } else {
                eVarD0.j(2, str);
            }
            eVarD0.A0();
            return Unit.f67061a;
        } finally {
            eVarD0.close();
        }
    }

    @Override // lj.d1
    public Object a(Continuation continuation) {
        return androidx.room.util.b.f(this.f68897a, true, false, new Function1() { // from class: lj.e1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return h1.h((z3.b) obj);
            }
        }, continuation);
    }

    @Override // lj.d1
    public Object b(final String str, final boolean z10, Continuation continuation) {
        return androidx.room.util.b.f(this.f68897a, false, true, new Function1() { // from class: lj.f1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return h1.j(z10, str, (z3.b) obj);
            }
        }, continuation);
    }

    @Override // lj.d1
    public Object c(final SubtitleLanguageMapBean subtitleLanguageMapBean, Continuation continuation) {
        subtitleLanguageMapBean.getClass();
        return androidx.room.util.b.f(this.f68897a, false, true, new Function1() { // from class: lj.g1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return this.f68891a.i(subtitleLanguageMapBean, (z3.b) obj);
            }
        }, continuation);
    }
}
