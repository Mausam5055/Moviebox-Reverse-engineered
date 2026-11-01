package androidx.work.impl.utils;

import android.content.Context;
import android.content.SharedPreferences;
import androidx.work.impl.WorkDatabase;

/* JADX INFO: loaded from: classes2.dex */
public class z {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final WorkDatabase f16001a;

    public z(WorkDatabase workDatabase) {
        this.f16001a = workDatabase;
    }

    public static void c(Context context, a4.d dVar) {
        SharedPreferences sharedPreferences = context.getSharedPreferences("androidx.work.util.preferences", 0);
        if (sharedPreferences.contains("reschedule_needed") || sharedPreferences.contains("last_cancel_all_time_ms")) {
            long j11 = sharedPreferences.getLong("last_cancel_all_time_ms", 0L);
            long j12 = sharedPreferences.getBoolean("reschedule_needed", false) ? 1L : 0L;
            dVar.A();
            try {
                dVar.J("INSERT OR REPLACE INTO `Preference` (`key`, `long_value`) VALUES (@key, @long_value)", new Object[]{"last_cancel_all_time_ms", Long.valueOf(j11)});
                dVar.J("INSERT OR REPLACE INTO `Preference` (`key`, `long_value`) VALUES (@key, @long_value)", new Object[]{"reschedule_needed", Long.valueOf(j12)});
                sharedPreferences.edit().clear().apply();
                dVar.I();
            } finally {
                dVar.L();
            }
        }
    }

    public long a() {
        Long longValue = this.f16001a.h0().getLongValue("last_force_stop_ms");
        if (longValue != null) {
            return longValue.longValue();
        }
        return 0L;
    }

    public boolean b() {
        Long longValue = this.f16001a.h0().getLongValue("reschedule_needed");
        return longValue != null && longValue.longValue() == 1;
    }

    public void d(long j11) {
        this.f16001a.h0().a(new androidx.work.impl.model.h("last_force_stop_ms", Long.valueOf(j11)));
    }

    public void e(boolean z10) {
        this.f16001a.h0().a(new androidx.work.impl.model.h("reschedule_needed", z10));
    }
}
