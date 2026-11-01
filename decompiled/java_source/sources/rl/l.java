package rl;

import com.blankj.utilcode.util.a0;
import com.blankj.utilcode.util.y;
import com.transsion.home.bean.LayoutStyle;

/* JADX INFO: loaded from: classes6.dex */
public final class l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final l f74565a = new l();

    private l() {
    }

    public final k a(int i11, LayoutStyle layoutStyle, String str) {
        int iA = a0.a(((i11 - 1) * 8.0f) + 24.0f);
        int iE = (y.e() - iA) / i11;
        return new k(iE, (int) (iE * ((a0.a(92.0f) * 1.0f) / a0.a(164.0f))));
    }
}
