package androidx.compose.ui;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public abstract /* synthetic */ class g {
    public static boolean a(f.b bVar, Function1 function1) {
        return ((Boolean) function1.invoke(bVar)).booleanValue();
    }

    public static Object b(f.b bVar, Object obj, Function2 function2) {
        return function2.invoke(obj, bVar);
    }
}
