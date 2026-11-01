package bw;

import android.content.Context;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class h {
    public final i a(Context context) {
        Intrinsics.h(context, "context");
        i iVar = i.f16942c;
        if (iVar == null) {
            synchronized (this) {
                iVar = i.f16942c;
                if (iVar == null) {
                    Context applicationContext = context.getApplicationContext();
                    Intrinsics.g(applicationContext, "getApplicationContext(...)");
                    iVar = new i(applicationContext);
                    i.f16942c = iVar;
                }
            }
        }
        return iVar;
    }
}
