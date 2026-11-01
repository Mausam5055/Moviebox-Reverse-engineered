package r8;

import com.google.android.datatransport.Priority;

/* JADX INFO: loaded from: classes4.dex */
public abstract class d {
    public static d f(Object obj) {
        return new a(null, obj, Priority.DEFAULT, null, null);
    }

    public static d g(Object obj, f fVar) {
        return new a(null, obj, Priority.DEFAULT, fVar, null);
    }

    public static d h(Object obj) {
        return new a(null, obj, Priority.HIGHEST, null, null);
    }

    public abstract Integer a();

    public abstract e b();

    public abstract Object c();

    public abstract Priority d();

    public abstract f e();
}
