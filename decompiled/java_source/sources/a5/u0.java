package a5;

import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.JSONObject;
import com.alibaba.fastjson.serializer.SerializerFeature;
import com.alibaba.fastjson.util.TypeUtils;
import java.lang.reflect.Type;
import java.util.concurrent.atomic.AtomicLong;
import z4.b2;

/* JADX INFO: loaded from: classes2.dex */
public class u0 implements z0, b2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static u0 f350a = new u0();

    @Override // z4.b2
    public int b() {
        return 2;
    }

    @Override // z4.b2
    public Object c(y4.a aVar, Type type, Object obj) {
        Long lW;
        y4.b bVar = aVar.f78831f;
        try {
            int iQ0 = bVar.q0();
            if (iQ0 == 2) {
                long jL = bVar.l();
                bVar.c0(16);
                lW = Long.valueOf(jL);
            } else if (iQ0 == 3) {
                lW = Long.valueOf(TypeUtils.E0(bVar.d0()));
                bVar.c0(16);
            } else {
                if (iQ0 == 12) {
                    JSONObject jSONObject = new JSONObject(true);
                    aVar.q0(jSONObject);
                    lW = TypeUtils.w(jSONObject);
                } else {
                    lW = TypeUtils.w(aVar.T());
                }
                if (lW == null) {
                    return null;
                }
            }
            return type == AtomicLong.class ? new AtomicLong(lW.longValue()) : lW;
        } catch (Exception e11) {
            throw new JSONException("parseLong error, field : " + obj, e11);
        }
    }

    @Override // a5.z0
    public void d(o0 o0Var, Object obj, Object obj2, Type type, int i11) {
        j1 j1Var = o0Var.f296k;
        if (obj == null) {
            j1Var.p0(SerializerFeature.WriteNullNumberAsZero);
            return;
        }
        long jLongValue = ((Long) obj).longValue();
        j1Var.l0(jLongValue);
        if (!j1Var.q(SerializerFeature.WriteClassName) || jLongValue > 2147483647L || jLongValue < -2147483648L || type == Long.class || type == Long.TYPE) {
            return;
        }
        j1Var.write(76);
    }
}
