package a5;

import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.serializer.SerializerFeature;
import com.alibaba.fastjson.util.TypeUtils;
import java.lang.reflect.Type;
import java.math.BigDecimal;
import z4.b2;

/* JADX INFO: loaded from: classes2.dex */
public class r implements z0, b2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final BigDecimal f338a = BigDecimal.valueOf(-9007199254740991L);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static final BigDecimal f339b = BigDecimal.valueOf(9007199254740991L);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final r f340c = new r();

    public static Object e(y4.a aVar) {
        y4.b bVar = aVar.f78831f;
        if (bVar.q0() == 2) {
            BigDecimal bigDecimalD0 = bVar.d0();
            bVar.c0(16);
            return bigDecimalD0;
        }
        if (bVar.q0() == 3) {
            BigDecimal bigDecimalD1 = bVar.d0();
            bVar.c0(16);
            return bigDecimalD1;
        }
        Object objT = aVar.T();
        if (objT == null) {
            return null;
        }
        return TypeUtils.i(objT);
    }

    @Override // z4.b2
    public int b() {
        return 2;
    }

    @Override // z4.b2
    public Object c(y4.a aVar, Type type, Object obj) {
        try {
            return e(aVar);
        } catch (Exception e11) {
            throw new JSONException("parseDecimal error, field : " + obj, e11);
        }
    }

    @Override // a5.z0
    public void d(o0 o0Var, Object obj, Object obj2, Type type, int i11) {
        j1 j1Var = o0Var.f296k;
        if (obj == null) {
            j1Var.p0(SerializerFeature.WriteNullNumberAsZero);
            return;
        }
        BigDecimal bigDecimal = (BigDecimal) obj;
        int iScale = bigDecimal.scale();
        String string = (!SerializerFeature.isEnabled(i11, j1Var.f269c, SerializerFeature.WriteBigDecimalAsPlain) || iScale < -100 || iScale >= 100) ? bigDecimal.toString() : bigDecimal.toPlainString();
        if (iScale == 0 && string.length() >= 16 && SerializerFeature.isEnabled(i11, j1Var.f269c, SerializerFeature.BrowserCompatible) && (bigDecimal.compareTo(f338a) < 0 || bigDecimal.compareTo(f339b) > 0)) {
            j1Var.q0(string);
            return;
        }
        j1Var.write(string);
        if (j1Var.q(SerializerFeature.WriteClassName) && type != BigDecimal.class && bigDecimal.scale() == 0) {
            j1Var.write(46);
        }
    }
}
