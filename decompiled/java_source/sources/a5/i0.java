package a5;

import com.google.common.collect.ArrayListMultimap;
import com.google.common.collect.j3;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import z4.b2;

/* JADX INFO: loaded from: classes2.dex */
public class i0 implements z0, b2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static i0 f245a = new i0();

    @Override // z4.b2
    public int b() {
        return 0;
    }

    @Override // z4.b2
    public Object c(y4.a aVar, Type type, Object obj) {
        if (type instanceof ParameterizedType) {
            type = ((ParameterizedType) type).getRawType();
        }
        if (type != ArrayListMultimap.class) {
            return null;
        }
        ArrayListMultimap arrayListMultimapCreate = ArrayListMultimap.create();
        for (Map.Entry<String, Object> entry : aVar.l0().entrySet()) {
            Object value = entry.getValue();
            if (value instanceof Collection) {
                arrayListMultimapCreate.putAll(entry.getKey(), (List) value);
            } else {
                arrayListMultimapCreate.put(entry.getKey(), value);
            }
        }
        return arrayListMultimapCreate;
    }

    @Override // a5.z0
    public void d(o0 o0Var, Object obj, Object obj2, Type type, int i11) {
        j1 j1Var = o0Var.f296k;
        if (obj instanceof j3) {
            o0Var.A(((j3) obj).asMap());
        }
    }
}
