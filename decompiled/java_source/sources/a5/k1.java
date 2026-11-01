package a5;

import com.alibaba.fastjson.serializer.SerializerFeature;
import java.lang.reflect.Type;
import z4.b2;

/* JADX INFO: loaded from: classes2.dex */
public class k1 implements z0, b2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static k1 f287a = new k1();

    public static Object e(y4.a aVar) {
        y4.b bVarS = aVar.s();
        if (bVarS.q0() == 4) {
            String strK0 = bVarS.k0();
            bVarS.c0(16);
            return strK0;
        }
        if (bVarS.q0() == 2) {
            String strC0 = bVarS.C0();
            bVarS.c0(16);
            return strC0;
        }
        Object objT = aVar.T();
        if (objT == null) {
            return null;
        }
        return objT.toString();
    }

    @Override // z4.b2
    public int b() {
        return 4;
    }

    @Override // z4.b2
    public Object c(y4.a aVar, Type type, Object obj) {
        if (type == StringBuffer.class) {
            y4.b bVar = aVar.f78831f;
            if (bVar.q0() == 4) {
                String strK0 = bVar.k0();
                bVar.c0(16);
                return new StringBuffer(strK0);
            }
            Object objT = aVar.T();
            if (objT == null) {
                return null;
            }
            return new StringBuffer(objT.toString());
        }
        if (type != StringBuilder.class) {
            return e(aVar);
        }
        y4.b bVar2 = aVar.f78831f;
        if (bVar2.q0() == 4) {
            String strK1 = bVar2.k0();
            bVar2.c0(16);
            return new StringBuilder(strK1);
        }
        Object objT2 = aVar.T();
        if (objT2 == null) {
            return null;
        }
        return new StringBuilder(objT2.toString());
    }

    @Override // a5.z0
    public void d(o0 o0Var, Object obj, Object obj2, Type type, int i11) {
        f(o0Var, (String) obj);
    }

    public void f(o0 o0Var, String str) {
        j1 j1Var = o0Var.f296k;
        if (str == null) {
            j1Var.p0(SerializerFeature.WriteNullStringAsEmpty);
        } else {
            j1Var.q0(str);
        }
    }
}
