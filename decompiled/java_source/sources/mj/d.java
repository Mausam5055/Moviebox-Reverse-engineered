package mj;

import androidx.room.RoomDatabase;
import androidx.room.g;
import androidx.room.util.k;
import com.transsion.baselib.db.home.HomePreferencesIntervalTimeDbBean;
import java.util.Collections;
import java.util.List;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;
import z3.e;

/* JADX INFO: loaded from: classes6.dex */
public final class d implements mj.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final RoomDatabase f69610a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final g f69611b = new a();

    class a extends g {
        a() {
        }

        @Override // androidx.room.g
        protected String b() {
            return "INSERT OR REPLACE INTO `home_preferences_interval_time` (`id`,`showTime`,`closeTime`,`chooseTime`,`showIntervalSeconds`,`closeIntervalSeconds`,`chooseIntervalSeconds`) VALUES (?,?,?,?,?,?,?)";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // androidx.room.g
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public void a(e eVar, HomePreferencesIntervalTimeDbBean homePreferencesIntervalTimeDbBean) {
            if (homePreferencesIntervalTimeDbBean.getId() == null) {
                eVar.g(1);
            } else {
                eVar.j(1, homePreferencesIntervalTimeDbBean.getId());
            }
            eVar.c(2, homePreferencesIntervalTimeDbBean.getShowTime());
            eVar.c(3, homePreferencesIntervalTimeDbBean.getCloseTime());
            eVar.c(4, homePreferencesIntervalTimeDbBean.getChooseTime());
            eVar.c(5, homePreferencesIntervalTimeDbBean.getShowIntervalSeconds());
            eVar.c(6, homePreferencesIntervalTimeDbBean.getCloseIntervalSeconds());
            eVar.c(7, homePreferencesIntervalTimeDbBean.getChooseIntervalSeconds());
        }
    }

    public d(RoomDatabase roomDatabase) {
        this.f69610a = roomDatabase;
    }

    public static List e() {
        return Collections.emptyList();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Unit f(HomePreferencesIntervalTimeDbBean homePreferencesIntervalTimeDbBean, z3.b bVar) throws Exception {
        this.f69611b.d(bVar, homePreferencesIntervalTimeDbBean);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ HomePreferencesIntervalTimeDbBean g(String str, z3.b bVar) {
        e eVarD0 = bVar.D0("\n        SELECT * FROM home_preferences_interval_time\n        WHERE id = ?\n        LIMIT 1\n    ");
        try {
            if (str == null) {
                eVarD0.g(1);
            } else {
                eVarD0.j(1, str);
            }
            int iD = k.d(eVarD0, "id");
            int iD2 = k.d(eVarD0, "showTime");
            int iD3 = k.d(eVarD0, "closeTime");
            int iD4 = k.d(eVarD0, "chooseTime");
            int iD5 = k.d(eVarD0, "showIntervalSeconds");
            int iD6 = k.d(eVarD0, "closeIntervalSeconds");
            int iD7 = k.d(eVarD0, "chooseIntervalSeconds");
            HomePreferencesIntervalTimeDbBean homePreferencesIntervalTimeDbBean = null;
            if (eVarD0.A0()) {
                homePreferencesIntervalTimeDbBean = new HomePreferencesIntervalTimeDbBean(eVarD0.isNull(iD) ? null : eVarD0.n0(iD), eVarD0.getLong(iD2), eVarD0.getLong(iD3), eVarD0.getLong(iD4), eVarD0.getLong(iD5), eVarD0.getLong(iD6), eVarD0.getLong(iD7));
            }
            eVarD0.close();
            return homePreferencesIntervalTimeDbBean;
        } catch (Throwable th2) {
            eVarD0.close();
            throw th2;
        }
    }

    @Override // mj.a
    public Object a(final HomePreferencesIntervalTimeDbBean homePreferencesIntervalTimeDbBean, Continuation continuation) {
        homePreferencesIntervalTimeDbBean.getClass();
        return androidx.room.util.b.f(this.f69610a, false, true, new Function1() { // from class: mj.b
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return this.f69607a.f(homePreferencesIntervalTimeDbBean, (z3.b) obj);
            }
        }, continuation);
    }

    @Override // mj.a
    public Object b(final String str, Continuation continuation) {
        return androidx.room.util.b.f(this.f69610a, true, false, new Function1() { // from class: mj.c
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return d.g(str, (z3.b) obj);
            }
        }, continuation);
    }
}
