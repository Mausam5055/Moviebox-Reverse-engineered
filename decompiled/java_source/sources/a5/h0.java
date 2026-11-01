package a5;

import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.serializer.SerializerFeature;
import com.alibaba.fastjson.util.TypeUtils;
import java.lang.reflect.Type;
import java.text.DecimalFormat;
import java.text.NumberFormat;
import z4.b2;

/* JADX INFO: loaded from: classes2.dex */
public class h0 implements z0, b2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static h0 f240b = new h0();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private NumberFormat f241a;

    public h0() {
    }

    public h0(String str) {
        this(new DecimalFormat(str));
    }

    public h0(DecimalFormat decimalFormat) {
        this.f241a = decimalFormat;
    }

    public static Object e(y4.a aVar) {
        y4.b bVar = aVar.f78831f;
        if (bVar.q0() == 2) {
            String strC0 = bVar.C0();
            bVar.c0(16);
            return Float.valueOf(Float.parseFloat(strC0));
        }
        if (bVar.q0() == 3) {
            float fP0 = bVar.p0();
            bVar.c0(16);
            return Float.valueOf(fP0);
        }
        Object objT = aVar.T();
        if (objT == null) {
            return null;
        }
        return TypeUtils.s(objT);
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
        float fFloatValue = ((Float) obj).floatValue();
        NumberFormat numberFormat = this.f241a;
        if (numberFormat != null) {
            j1Var.write(numberFormat.format(fFloatValue));
        } else {
            j1Var.d0(fFloatValue, true);
        }
    }
}
