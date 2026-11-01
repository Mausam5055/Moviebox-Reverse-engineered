package z4;

import com.alibaba.fastjson.util.TypeUtils;
import java.io.Closeable;
import java.io.Serializable;
import java.lang.reflect.Array;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes3.dex */
public class p implements b2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final p f79256a = new p();

    @Override // z4.b2
    public int b() {
        return 12;
    }

    @Override // z4.b2
    public Object c(y4.a aVar, Type type, Object obj) {
        if (!(type instanceof GenericArrayType)) {
            return (!(type instanceof Class) || type == Object.class || type == Serializable.class || type == Cloneable.class || type == Closeable.class || type == Comparable.class) ? aVar.U(obj) : aVar.o0(type);
        }
        Type genericComponentType = ((GenericArrayType) type).getGenericComponentType();
        if (genericComponentType instanceof TypeVariable) {
            genericComponentType = ((TypeVariable) genericComponentType).getBounds()[0];
        }
        ArrayList arrayList = new ArrayList();
        aVar.a0(genericComponentType, arrayList);
        Object[] objArr = (Object[]) Array.newInstance((Class<?>) TypeUtils.i0(genericComponentType), arrayList.size());
        arrayList.toArray(objArr);
        return objArr;
    }
}
