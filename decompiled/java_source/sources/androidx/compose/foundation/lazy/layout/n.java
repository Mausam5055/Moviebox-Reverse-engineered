package androidx.compose.foundation.lazy.layout;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public abstract class n {
    public static final int a(m mVar, Object obj, int i11) {
        int iA;
        return (obj == null || mVar.getItemCount() == 0 || (i11 < mVar.getItemCount() && Intrinsics.c(obj, mVar.b(i11))) || (iA = mVar.a(obj)) == -1) ? i11 : iA;
    }
}
