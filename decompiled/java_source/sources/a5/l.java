package a5;

import com.alibaba.fastjson.serializer.SerializerFeature;
import java.lang.reflect.Type;

/* JADX INFO: loaded from: classes2.dex */
public class l implements z0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Class f288a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final z0 f289b;

    public l(Class cls, z0 z0Var) {
        this.f288a = cls;
        this.f289b = z0Var;
    }

    @Override // a5.z0
    public final void d(o0 o0Var, Object obj, Object obj2, Type type, int i11) {
        j1 j1Var = o0Var.f296k;
        if (obj == null) {
            j1Var.p0(SerializerFeature.WriteNullListAsEmpty);
            return;
        }
        Object[] objArr = (Object[]) obj;
        int length = objArr.length;
        e1 e1Var = o0Var.f303r;
        o0Var.w(e1Var, obj, obj2, 0);
        try {
            j1Var.append('[');
            for (int i12 = 0; i12 < length; i12++) {
                if (i12 != 0) {
                    j1Var.append(',');
                }
                Object obj3 = objArr[i12];
                if (obj3 == null) {
                    if (j1Var.q(SerializerFeature.WriteNullStringAsEmpty) && (obj instanceof String[])) {
                        j1Var.q0("");
                    } else {
                        j1Var.append("null");
                    }
                } else if (obj3.getClass() == this.f288a) {
                    this.f289b.d(o0Var, obj3, Integer.valueOf(i12), null, 0);
                } else {
                    o0Var.q(obj3.getClass()).d(o0Var, obj3, Integer.valueOf(i12), null, 0);
                }
            }
            j1Var.append(']');
        } finally {
            o0Var.f303r = e1Var;
        }
    }
}
