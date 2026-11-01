package androidx.compose.foundation.lazy.layout;

import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
public abstract class j {

    public interface a {
        Function1 getKey();

        Function1 getType();
    }

    public final Object b(int i11) {
        b.a aVar = c().get(i11);
        return ((a) aVar.c()).getType().invoke(Integer.valueOf(i11 - aVar.b()));
    }

    public abstract b c();

    public final int d() {
        return c().getSize();
    }

    public final Object e(int i11) {
        Object objInvoke;
        b.a aVar = c().get(i11);
        int iB = i11 - aVar.b();
        Function1 key = ((a) aVar.c()).getKey();
        return (key == null || (objInvoke = key.invoke(Integer.valueOf(iB))) == null) ? b0.a(i11) : objInvoke;
    }
}
