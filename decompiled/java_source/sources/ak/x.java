package ak;

import com.blankj.utilcode.util.Utils;

/* JADX INFO: loaded from: classes5.dex */
public final class x {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final x f658a = new x();

    private x() {
    }

    public final boolean a() {
        return !com.transsion.baselib.report.launch.b.f43370a.b().getBoolean("dark_mode_follow_sys", false) || (Utils.a().getResources().getConfiguration().uiMode & 48) == 32;
    }
}
