package k0;

import android.text.Spanned;

/* JADX INFO: loaded from: classes2.dex */
public abstract class m0 {
    public static final boolean a(Spanned spanned, Class cls) {
        return spanned.nextSpanTransition(-1, spanned.length(), cls) != spanned.length();
    }

    public static final boolean b(Spanned spanned, Class cls, int i11, int i12) {
        return spanned.nextSpanTransition(i11 - 1, i12, cls) != i12;
    }
}
