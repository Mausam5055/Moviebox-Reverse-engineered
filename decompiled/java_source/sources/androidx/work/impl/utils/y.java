package androidx.work.impl.utils;

import android.content.ComponentName;
import android.content.Context;

/* JADX INFO: loaded from: classes2.dex */
public abstract class y {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f16000a = androidx.work.t.i("PackageManagerHelper");

    private static int a(Context context, String str) {
        return context.getPackageManager().getComponentEnabledSetting(new ComponentName(context, str));
    }

    private static boolean b(int i11, boolean z10) {
        if (i11 == 0) {
            return z10;
        }
        return i11 == 1;
    }

    public static void c(Context context, Class cls, boolean z10) {
        try {
            if (z10 == b(a(context, cls.getName()), false)) {
                androidx.work.t.e().a(f16000a, "Skipping component enablement for " + cls.getName());
                return;
            }
            context.getPackageManager().setComponentEnabledSetting(new ComponentName(context, cls.getName()), z10 ? 1 : 2, 1);
            androidx.work.t tVarE = androidx.work.t.e();
            String str = f16000a;
            StringBuilder sb2 = new StringBuilder();
            sb2.append(cls.getName());
            sb2.append(" ");
            sb2.append(z10 ? "enabled" : "disabled");
            tVarE.a(str, sb2.toString());
        } catch (Exception e11) {
            androidx.work.t tVarE2 = androidx.work.t.e();
            String str2 = f16000a;
            StringBuilder sb3 = new StringBuilder();
            sb3.append(cls.getName());
            sb3.append("could not be ");
            sb3.append(z10 ? "enabled" : "disabled");
            tVarE2.b(str2, sb3.toString(), e11);
        }
    }
}
