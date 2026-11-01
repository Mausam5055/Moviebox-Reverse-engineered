package mi;

import androidx.room.RoomDatabase;
import com.cloud.tmc.component_api_ps.ipc.constants.MiniAppIpcConfig;
import com.cloud.tmc.integration.event.EventConstants;
import com.transsion.ad.db.pslink.AppInstalledBean;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes6.dex */
public final class f implements mi.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final RoomDatabase f69572a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final androidx.room.g f69573b = new a();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final androidx.room.e f69574c = new b();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final androidx.room.e f69575d = new c();

    class a extends androidx.room.g {
        a() {
        }

        @Override // androidx.room.g
        protected String b() {
            return "INSERT OR REPLACE INTO `app_installed` (`packageName`,`source`,`appName`,`versionName`,`versionCode`,`horizontalImageUrl`,`eCPM`,`installTime`,`lastOpenTime`) VALUES (?,?,?,?,?,?,?,?,?)";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // androidx.room.g
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public void a(z3.e eVar, AppInstalledBean appInstalledBean) {
            if (appInstalledBean.getPackageName() == null) {
                eVar.g(1);
            } else {
                eVar.j(1, appInstalledBean.getPackageName());
            }
            if (appInstalledBean.getSource() == null) {
                eVar.g(2);
            } else {
                eVar.j(2, appInstalledBean.getSource());
            }
            if (appInstalledBean.getAppName() == null) {
                eVar.g(3);
            } else {
                eVar.j(3, appInstalledBean.getAppName());
            }
            if (appInstalledBean.getVersionName() == null) {
                eVar.g(4);
            } else {
                eVar.j(4, appInstalledBean.getVersionName());
            }
            if (appInstalledBean.getVersionCode() == null) {
                eVar.g(5);
            } else {
                eVar.j(5, appInstalledBean.getVersionCode());
            }
            if (appInstalledBean.getHorizontalImageUrl() == null) {
                eVar.g(6);
            } else {
                eVar.j(6, appInstalledBean.getHorizontalImageUrl());
            }
            if (appInstalledBean.getECPM() == null) {
                eVar.g(7);
            } else {
                eVar.a(7, appInstalledBean.getECPM().doubleValue());
            }
            if (appInstalledBean.getInstallTime() == null) {
                eVar.g(8);
            } else {
                eVar.c(8, appInstalledBean.getInstallTime().longValue());
            }
            if (appInstalledBean.getLastOpenTime() == null) {
                eVar.g(9);
            } else {
                eVar.c(9, appInstalledBean.getLastOpenTime().longValue());
            }
        }
    }

    class b extends androidx.room.e {
        b() {
        }

        @Override // androidx.room.e
        protected String b() {
            return "DELETE FROM `app_installed` WHERE `packageName` = ?";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // androidx.room.e
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public void a(z3.e eVar, AppInstalledBean appInstalledBean) {
            if (appInstalledBean.getPackageName() == null) {
                eVar.g(1);
            } else {
                eVar.j(1, appInstalledBean.getPackageName());
            }
        }
    }

    class c extends androidx.room.e {
        c() {
        }

        @Override // androidx.room.e
        protected String b() {
            return "UPDATE OR ABORT `app_installed` SET `packageName` = ?,`source` = ?,`appName` = ?,`versionName` = ?,`versionCode` = ?,`horizontalImageUrl` = ?,`eCPM` = ?,`installTime` = ?,`lastOpenTime` = ? WHERE `packageName` = ?";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // androidx.room.e
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public void a(z3.e eVar, AppInstalledBean appInstalledBean) {
            if (appInstalledBean.getPackageName() == null) {
                eVar.g(1);
            } else {
                eVar.j(1, appInstalledBean.getPackageName());
            }
            if (appInstalledBean.getSource() == null) {
                eVar.g(2);
            } else {
                eVar.j(2, appInstalledBean.getSource());
            }
            if (appInstalledBean.getAppName() == null) {
                eVar.g(3);
            } else {
                eVar.j(3, appInstalledBean.getAppName());
            }
            if (appInstalledBean.getVersionName() == null) {
                eVar.g(4);
            } else {
                eVar.j(4, appInstalledBean.getVersionName());
            }
            if (appInstalledBean.getVersionCode() == null) {
                eVar.g(5);
            } else {
                eVar.j(5, appInstalledBean.getVersionCode());
            }
            if (appInstalledBean.getHorizontalImageUrl() == null) {
                eVar.g(6);
            } else {
                eVar.j(6, appInstalledBean.getHorizontalImageUrl());
            }
            if (appInstalledBean.getECPM() == null) {
                eVar.g(7);
            } else {
                eVar.a(7, appInstalledBean.getECPM().doubleValue());
            }
            if (appInstalledBean.getInstallTime() == null) {
                eVar.g(8);
            } else {
                eVar.c(8, appInstalledBean.getInstallTime().longValue());
            }
            if (appInstalledBean.getLastOpenTime() == null) {
                eVar.g(9);
            } else {
                eVar.c(9, appInstalledBean.getLastOpenTime().longValue());
            }
            if (appInstalledBean.getPackageName() == null) {
                eVar.g(10);
            } else {
                eVar.j(10, appInstalledBean.getPackageName());
            }
        }
    }

    public f(RoomDatabase roomDatabase) {
        this.f69572a = roomDatabase;
    }

    public static List i() {
        return Collections.emptyList();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ List j(long j11, z3.b bVar) {
        z3.e eVarD0 = bVar.D0("\n        SELECT * FROM app_installed\n        WHERE lastOpenTime IS NOT NULL\n        AND lastOpenTime >= ?\n    ");
        try {
            eVarD0.c(1, j11);
            int iD = androidx.room.util.k.d(eVarD0, "packageName");
            int iD2 = androidx.room.util.k.d(eVarD0, EventConstants.KEY_SOURCE);
            int iD3 = androidx.room.util.k.d(eVarD0, MiniAppIpcConfig.IPC_ADDHOME_APP_NAME);
            int iD4 = androidx.room.util.k.d(eVarD0, "versionName");
            int iD5 = androidx.room.util.k.d(eVarD0, "versionCode");
            int iD6 = androidx.room.util.k.d(eVarD0, "horizontalImageUrl");
            int iD7 = androidx.room.util.k.d(eVarD0, "eCPM");
            int iD8 = androidx.room.util.k.d(eVarD0, "installTime");
            int iD9 = androidx.room.util.k.d(eVarD0, "lastOpenTime");
            ArrayList arrayList = new ArrayList();
            while (eVarD0.A0()) {
                arrayList.add(new AppInstalledBean(eVarD0.isNull(iD) ? null : eVarD0.n0(iD), eVarD0.isNull(iD2) ? null : eVarD0.n0(iD2), eVarD0.isNull(iD3) ? null : eVarD0.n0(iD3), eVarD0.isNull(iD4) ? null : eVarD0.n0(iD4), eVarD0.isNull(iD5) ? null : eVarD0.n0(iD5), eVarD0.isNull(iD6) ? null : eVarD0.n0(iD6), eVarD0.isNull(iD7) ? null : Double.valueOf(eVarD0.getDouble(iD7)), eVarD0.isNull(iD8) ? null : Long.valueOf(eVarD0.getLong(iD8)), eVarD0.isNull(iD9) ? null : Long.valueOf(eVarD0.getLong(iD9))));
            }
            return arrayList;
        } finally {
            eVarD0.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ AppInstalledBean k(String str, z3.b bVar) {
        z3.e eVarD0 = bVar.D0("SELECT * FROM app_installed WHERE packageName = ? LIMIT 1");
        try {
            if (str == null) {
                eVarD0.g(1);
            } else {
                eVarD0.j(1, str);
            }
            int iD = androidx.room.util.k.d(eVarD0, "packageName");
            int iD2 = androidx.room.util.k.d(eVarD0, EventConstants.KEY_SOURCE);
            int iD3 = androidx.room.util.k.d(eVarD0, MiniAppIpcConfig.IPC_ADDHOME_APP_NAME);
            int iD4 = androidx.room.util.k.d(eVarD0, "versionName");
            int iD5 = androidx.room.util.k.d(eVarD0, "versionCode");
            int iD6 = androidx.room.util.k.d(eVarD0, "horizontalImageUrl");
            int iD7 = androidx.room.util.k.d(eVarD0, "eCPM");
            int iD8 = androidx.room.util.k.d(eVarD0, "installTime");
            int iD9 = androidx.room.util.k.d(eVarD0, "lastOpenTime");
            AppInstalledBean appInstalledBean = null;
            if (eVarD0.A0()) {
                appInstalledBean = new AppInstalledBean(eVarD0.isNull(iD) ? null : eVarD0.n0(iD), eVarD0.isNull(iD2) ? null : eVarD0.n0(iD2), eVarD0.isNull(iD3) ? null : eVarD0.n0(iD3), eVarD0.isNull(iD4) ? null : eVarD0.n0(iD4), eVarD0.isNull(iD5) ? null : eVarD0.n0(iD5), eVarD0.isNull(iD6) ? null : eVarD0.n0(iD6), eVarD0.isNull(iD7) ? null : Double.valueOf(eVarD0.getDouble(iD7)), eVarD0.isNull(iD8) ? null : Long.valueOf(eVarD0.getLong(iD8)), eVarD0.isNull(iD9) ? null : Long.valueOf(eVarD0.getLong(iD9)));
            }
            eVarD0.close();
            return appInstalledBean;
        } catch (Throwable th2) {
            eVarD0.close();
            throw th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Long l(AppInstalledBean appInstalledBean, z3.b bVar) {
        return Long.valueOf(this.f69573b.e(bVar, appInstalledBean));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Unit m(long j11, String str, z3.b bVar) {
        z3.e eVarD0 = bVar.D0("\n        UPDATE app_installed \n        SET lastOpenTime = ? \n        WHERE packageName = ?\n    ");
        try {
            eVarD0.c(1, j11);
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

    @Override // mi.a
    public Object a(final AppInstalledBean appInstalledBean, Continuation continuation) {
        appInstalledBean.getClass();
        return androidx.room.util.b.f(this.f69572a, false, true, new Function1() { // from class: mi.b
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return this.f69566a.l(appInstalledBean, (z3.b) obj);
            }
        }, continuation);
    }

    @Override // mi.a
    public Object b(final String str, Continuation continuation) {
        return androidx.room.util.b.f(this.f69572a, true, false, new Function1() { // from class: mi.c
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return f.k(str, (z3.b) obj);
            }
        }, continuation);
    }

    @Override // mi.a
    public Object c(final String str, final long j11, Continuation continuation) {
        return androidx.room.util.b.f(this.f69572a, false, true, new Function1() { // from class: mi.d
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return f.m(j11, str, (z3.b) obj);
            }
        }, continuation);
    }

    @Override // mi.a
    public Object d(final long j11, Continuation continuation) {
        return androidx.room.util.b.f(this.f69572a, true, false, new Function1() { // from class: mi.e
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return f.j(j11, (z3.b) obj);
            }
        }, continuation);
    }
}
