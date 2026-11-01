package b6;

import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import org.json.JSONObject;
import x5.b;

/* JADX INFO: loaded from: classes2.dex */
public abstract class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static b f16231a = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static int f16232b = 10;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static int f16233c = 10;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static int f16234d = 10;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static int f16235e = 10;

    public static int a() {
        return f16234d;
    }

    public static int b() {
        return f16235e;
    }

    public static void c() {
        b bVar = f16231a;
        if (bVar != null) {
            bVar.EjP();
        }
    }

    public static void d(JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        try {
            f16232b = jSONObject.optInt("splash", 10);
            f16233c = jSONObject.optInt("reward", 10);
            f16234d = jSONObject.optInt("brand", 10);
            int iOptInt = jSONObject.optInt(OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, 10);
            f16235e = iOptInt;
            if (f16232b < 0) {
                f16232b = 10;
            }
            if (f16233c < 0) {
                f16233c = 10;
            }
            if (f16234d < 0) {
                f16234d = 10;
            }
            if (iOptInt < 0) {
                f16235e = 10;
            }
        } catch (Throwable th2) {
            th2.getMessage();
        }
    }

    public static void e(b bVar) {
        f16231a = bVar;
    }

    public static int f() {
        return f16233c;
    }

    public static int g() {
        return f16232b;
    }
}
