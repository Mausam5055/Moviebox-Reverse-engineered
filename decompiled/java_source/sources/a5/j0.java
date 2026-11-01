package a5;

import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.JSONObject;
import com.alibaba.fastjson.serializer.SerializerFeature;
import com.alibaba.fastjson.util.TypeUtils;
import java.lang.reflect.Type;
import java.util.concurrent.atomic.AtomicInteger;
import z4.b2;

/* JADX INFO: loaded from: classes2.dex */
public class j0 implements z0, b2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static j0 f260a = new j0();

    @Override // z4.b2
    public int b() {
        return 2;
    }

    @Override // z4.b2
    public Object c(y4.a aVar, Type type, Object obj) {
        Integer numT;
        y4.b bVar = aVar.f78831f;
        int iQ0 = bVar.q0();
        if (iQ0 == 8) {
            bVar.c0(16);
            return null;
        }
        try {
            if (iQ0 == 2) {
                int iO = bVar.o();
                bVar.c0(16);
                numT = Integer.valueOf(iO);
            } else if (iQ0 == 3) {
                numT = Integer.valueOf(TypeUtils.l0(bVar.d0()));
                bVar.c0(16);
            } else if (iQ0 == 12) {
                JSONObject jSONObject = new JSONObject(true);
                aVar.q0(jSONObject);
                numT = TypeUtils.t(jSONObject);
            } else {
                numT = TypeUtils.t(aVar.T());
            }
            obj = AtomicInteger.class;
            return type == obj ? new AtomicInteger(numT.intValue()) : numT;
        } catch (Exception e11) {
            String str = "parseInt error";
            if (obj != null) {
                str = "parseInt error, field : " + obj;
            }
            throw new JSONException(str, e11);
        }
    }

    @Override // a5.z0
    public void d(o0 o0Var, Object obj, Object obj2, Type type, int i11) {
        j1 j1Var = o0Var.f296k;
        Number number = (Number) obj;
        if (number == null) {
            j1Var.p0(SerializerFeature.WriteNullNumberAsZero);
            return;
        }
        if (obj instanceof Long) {
            j1Var.l0(number.longValue());
        } else {
            j1Var.h0(number.intValue());
        }
        if (j1Var.q(SerializerFeature.WriteClassName)) {
            Class<?> cls = number.getClass();
            if (cls == Byte.class) {
                j1Var.write(66);
            } else if (cls == Short.class) {
                j1Var.write(83);
            }
        }
    }
}
