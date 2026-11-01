package androidx.compose.foundation.lazy.layout;

/* JADX INFO: loaded from: classes.dex */
public abstract class c {
    /* JADX INFO: Access modifiers changed from: private */
    public static final int b(androidx.compose.runtime.collection.b bVar, int i11) {
        int iN = bVar.n() - 1;
        int i12 = 0;
        while (i12 < iN) {
            int i13 = ((iN - i12) / 2) + i12;
            int iB = ((b.a) bVar.m()[i13]).b();
            if (iB == i11) {
                return i13;
            }
            if (iB < i11) {
                i12 = i13 + 1;
                if (i11 < ((b.a) bVar.m()[i12]).b()) {
                    return i13;
                }
            } else {
                iN = i13 - 1;
            }
        }
        return i12;
    }
}
