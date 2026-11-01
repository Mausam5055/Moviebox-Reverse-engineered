package yu;

import android.content.Context;
import android.content.SharedPreferences;
import com.tencent.tinker.loader.shareutil.ShareTinkerLog;
import com.transsion.tinker.lib.custom.api.PatchState;
import xu.b;

/* JADX INFO: loaded from: classes7.dex */
public abstract class a {
    public static void a(Context context) {
        SharedPreferences sharedPreferencesN = n(context);
        if (!PatchState.BLACKLISTED.name().equals(sharedPreferencesN.getString("state", null))) {
            ShareTinkerLog.d("Tinker.PatchStateStore", "clearBlacklist: current state is not BLACKLISTED, skip", new Object[0]);
        } else {
            ShareTinkerLog.i("Tinker.PatchStateStore", "clearBlacklist: state BLACKLISTED → NONE", new Object[0]);
            sharedPreferencesN.edit().putString("state", PatchState.NONE.name()).putString("last_reason", null).putString("blacklisted_patch_id", null).commit();
        }
    }

    public static String b(Context context) {
        return n(context).getString("blacklisted_patch_id", null);
    }

    public static String c(Context context) {
        return n(context).getString("last_reason", null);
    }

    public static String d(Context context) {
        return n(context).getString("patch_id", null);
    }

    public static PatchState e(Context context) {
        String string = n(context).getString("state", PatchState.NONE.name());
        try {
            return PatchState.valueOf(string);
        } catch (Throwable unused) {
            ShareTinkerLog.w("Tinker.PatchStateStore", "getState: unknown state name='%s', fallback to NONE", string);
            return PatchState.NONE;
        }
    }

    public static b f(Context context) {
        SharedPreferences sharedPreferencesN = n(context);
        boolean z10 = sharedPreferencesN.getBoolean("rollback_enabled", true);
        int i11 = sharedPreferencesN.getInt("rollback_threshold", 3);
        return new b(z10, i11, sharedPreferencesN.getLong("rollback_window_ms", 600000L), sharedPreferencesN.getBoolean("rollback_on_install_fail", i11 <= 1));
    }

    public static int g(Context context, long j11, long j12) {
        SharedPreferences sharedPreferencesN = n(context);
        long j13 = sharedPreferencesN.getLong("crash_window_start_ts", 0L);
        int i11 = sharedPreferencesN.getInt("crash_count", 0);
        boolean z10 = j13 <= 0 || j11 - j13 > j12;
        if (z10) {
            i11 = 0;
        } else {
            j11 = j13;
        }
        int i12 = i11 + 1;
        ShareTinkerLog.w("Tinker.PatchStateStore", "recordCrash: count=%d newWindow=%b windowMs=%d", Integer.valueOf(i12), Boolean.valueOf(z10), Long.valueOf(j12));
        sharedPreferencesN.edit().putLong("crash_window_start_ts", j11).putInt("crash_count", i12).commit();
        return i12;
    }

    public static void h(Context context) {
        ShareTinkerLog.d("Tinker.PatchStateStore", "resetCrashWindow", new Object[0]);
        n(context).edit().putLong("crash_window_start_ts", 0L).putInt("crash_count", 0).commit();
    }

    public static void i(Context context, String str) {
        ShareTinkerLog.i("Tinker.PatchStateStore", "saveBlacklistedPatchId: %s", str);
        n(context).edit().putString("blacklisted_patch_id", str).commit();
    }

    public static void j(Context context, long j11) {
        ShareTinkerLog.d("Tinker.PatchStateStore", "saveExpiresAt: expiresAt=%d", Long.valueOf(j11));
        n(context).edit().putLong("expires_at", j11).commit();
    }

    public static void k(Context context, String str) {
        ShareTinkerLog.d("Tinker.PatchStateStore", "savePreviousPatchId: %s", str);
        n(context).edit().putString("previous_patch_id", str).commit();
    }

    public static void l(Context context, b bVar) {
        if (bVar == null) {
            return;
        }
        ShareTinkerLog.i("Tinker.PatchStateStore", "saveRollbackPolicy: enabled=%b threshold=%d windowMs=%d rollbackOnInstallFail=%b", Boolean.valueOf(bVar.f78438a), Integer.valueOf(bVar.f78439b), Long.valueOf(bVar.f78440c), Boolean.valueOf(bVar.f78441d));
        n(context).edit().putBoolean("rollback_enabled", bVar.f78438a).putInt("rollback_threshold", bVar.f78439b).putLong("rollback_window_ms", bVar.f78440c).putBoolean("rollback_on_install_fail", bVar.f78441d).commit();
    }

    public static void m(Context context, boolean z10) {
        ShareTinkerLog.i("Tinker.PatchStateStore", "setNeedsRecovery: %b", Boolean.valueOf(z10));
        n(context).edit().putBoolean("needs_recovery", z10).commit();
    }

    private static SharedPreferences n(Context context) {
        if (context == null) {
            throw new IllegalArgumentException("context == null");
        }
        Context applicationContext = context.getApplicationContext();
        if (applicationContext != null) {
            context = applicationContext;
        }
        return context.getSharedPreferences("tinker_custom_patch_state", 4);
    }

    public static void o(Context context, PatchState patchState, String str, String str2) {
        ShareTinkerLog.i("Tinker.PatchStateStore", "update state=%s patchId=%s reason=%s", patchState, str, str2);
        n(context).edit().putString("state", patchState.name()).putString("patch_id", str).putString("last_reason", str2).putLong("last_ts", System.currentTimeMillis()).commit();
    }
}
