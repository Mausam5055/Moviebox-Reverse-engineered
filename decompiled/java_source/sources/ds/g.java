package ds;

import com.blankj.utilcode.util.Utils;
import com.transsion.shorttv.utils.h;

/* JADX INFO: loaded from: classes7.dex */
public final class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final g f61431a = new g();

    private g() {
    }

    public final boolean a() {
        return !h.f53653a.e().getBoolean("dark_mode_follow_sys", false) || (Utils.a().getResources().getConfiguration().uiMode & 48) == 32;
    }
}
