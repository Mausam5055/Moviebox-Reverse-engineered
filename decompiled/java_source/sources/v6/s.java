package v6;

import android.database.Cursor;
import android.util.Log;
import androidx.room.g0;
import com.cloud.hisavana.sdk.data.bean.response.ccofig.ClientABTestDTOKt;
import com.hisavana.common.tracking.TrackingKey;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public interface s {

    public static final class a {
        /* JADX WARN: Multi-variable type inference failed */
        public static void a(y yVar, z entity) {
            Intrinsics.h(entity, "entity");
            long layerId = entity.getLayerId();
            g0 g0VarH = g0.h("SELECT * FROM hisavana_ab_room WHERE layer_id = ?", 1);
            g0VarH.c(1, layerId);
            yVar.f77073a.j();
            Object zVar = null;
            Cursor cursorG = androidx.room.util.b.g(yVar.f77073a, g0VarH, false, null);
            try {
                int iE = androidx.room.util.a.e(cursorG, ClientABTestDTOKt.LAYER_ID);
                int iE2 = androidx.room.util.a.e(cursorG, TrackingKey.REQUEST_TIME);
                int iE3 = androidx.room.util.a.e(cursorG, "ab_info");
                if (cursorG.moveToFirst()) {
                    zVar = new z(cursorG.getLong(iE), cursorG.getLong(iE2), cursorG.isNull(iE3) ? null : cursorG.getString(iE3));
                }
                cursorG.close();
                g0VarH.release();
                if (Log.isLoggable("ADSDK", 3)) {
                    com.cloud.sdk.commonutil.util.c.Log().i("ABTEST", "OnlineABDao Query whether the " + entity.getLayerId() + " exists in the database = " + zVar);
                }
                if (zVar == null) {
                    yVar.a(entity);
                    return;
                }
                long layerId2 = entity.getLayerId();
                long requestTime = entity.getRequestTime();
                yVar.f77073a.j();
                a4.h hVarB = yVar.f77077e.b();
                hVarB.c(1, requestTime);
                hVarB.c(2, layerId2);
                try {
                    yVar.f77073a.k();
                    try {
                        hVarB.F();
                        yVar.f77073a.e0();
                        yVar.f77073a.t();
                        yVar.f77077e.h(hVarB);
                    } catch (Throwable th2) {
                        yVar.f77073a.t();
                        throw th2;
                    }
                } catch (Throwable th3) {
                    yVar.f77077e.h(hVarB);
                    throw th3;
                }
            } catch (Throwable th4) {
                cursorG.close();
                g0VarH.release();
                throw th4;
            }
        }

        public static long b(y yVar, z entity) {
            Intrinsics.h(entity, "entity");
            yVar.f77073a.j();
            yVar.f77073a.k();
            try {
                long jM = yVar.f77074b.m(entity);
                yVar.f77073a.e0();
                yVar.f77073a.t();
                int iF = 0;
                g0 g0VarH = g0.h("SELECT COUNT(*) FROM hisavana_ab_room", 0);
                yVar.f77073a.j();
                Cursor cursorG = androidx.room.util.b.g(yVar.f77073a, g0VarH, false, null);
                try {
                    int i11 = cursorG.moveToFirst() ? cursorG.getInt(0) : 0;
                    cursorG.close();
                    g0VarH.release();
                    if (i11 >= 20) {
                        yVar.f77073a.j();
                        a4.h hVarB = yVar.f77075c.b();
                        hVarB.c(1, i11 - 10);
                        try {
                            yVar.f77073a.k();
                            try {
                                iF = hVarB.F();
                                yVar.f77073a.e0();
                                yVar.f77073a.t();
                                yVar.f77075c.h(hVarB);
                            } catch (Throwable th2) {
                                yVar.f77073a.t();
                                throw th2;
                            }
                        } catch (Throwable th3) {
                            yVar.f77075c.h(hVarB);
                            throw th3;
                        }
                    }
                    if (Log.isLoggable("ADSDK", 3)) {
                        com.cloud.sdk.commonutil.util.c.Log().i("ABTEST", "OnlineABDao delCount = " + iF + " and upsertId = " + jM);
                    }
                    return jM;
                } catch (Throwable th4) {
                    cursorG.close();
                    g0VarH.release();
                    throw th4;
                }
            } catch (Throwable th5) {
                yVar.f77073a.t();
                throw th5;
            }
        }
    }

    int a();

    long a(z zVar);

    Cursor b();

    void b(z zVar);
}
