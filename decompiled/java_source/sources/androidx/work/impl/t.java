package androidx.work.impl;

import android.content.Context;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public final class t extends y3.c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Context f15926c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public t(Context mContext, int i11, int i12) {
        super(i11, i12);
        Intrinsics.h(mContext, "mContext");
        this.f15926c = mContext;
    }

    @Override // y3.c
    public void a(a4.d db2) {
        Intrinsics.h(db2, "db");
        if (this.f78824b >= 10) {
            db2.J("INSERT OR REPLACE INTO `Preference` (`key`, `long_value`) VALUES (@key, @long_value)", new Object[]{"reschedule_needed", 1});
        } else {
            this.f15926c.getSharedPreferences("androidx.work.util.preferences", 0).edit().putBoolean("reschedule_needed", true).apply();
        }
    }
}
