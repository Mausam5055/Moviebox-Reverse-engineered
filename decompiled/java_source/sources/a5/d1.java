package a5;

import java.lang.ref.Reference;
import java.lang.ref.SoftReference;
import java.lang.ref.WeakReference;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.concurrent.atomic.AtomicReference;
import z4.b2;

/* JADX INFO: loaded from: classes2.dex */
public class d1 implements z0, b2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final d1 f191a = new d1();

    @Override // z4.b2
    public int b() {
        return 12;
    }

    @Override // z4.b2
    public Object c(y4.a aVar, Type type, Object obj) {
        ParameterizedType parameterizedType = (ParameterizedType) type;
        Object objO0 = aVar.o0(parameterizedType.getActualTypeArguments()[0]);
        Type rawType = parameterizedType.getRawType();
        if (rawType == AtomicReference.class) {
            return new AtomicReference(objO0);
        }
        if (rawType == WeakReference.class) {
            return new WeakReference(objO0);
        }
        if (rawType == SoftReference.class) {
            return new SoftReference(objO0);
        }
        throw new UnsupportedOperationException(rawType.toString());
    }

    @Override // a5.z0
    public void d(o0 o0Var, Object obj, Object obj2, Type type, int i11) {
        o0Var.A(obj instanceof AtomicReference ? ((AtomicReference) obj).get() : ((Reference) obj).get());
    }
}
