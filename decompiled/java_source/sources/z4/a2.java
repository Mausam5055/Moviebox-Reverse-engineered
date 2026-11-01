package z4;

import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.parser.Feature;
import com.alibaba.fastjson.util.TypeUtils;
import java.lang.reflect.Type;
import java.math.BigDecimal;

/* JADX INFO: loaded from: classes3.dex */
public class a2 implements b2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a2 f79219a = new a2();

    @Override // z4.b2
    public int b() {
        return 2;
    }

    @Override // z4.b2
    public Object c(y4.a aVar, Type type, Object obj) {
        y4.b bVar = aVar.f78831f;
        if (bVar.q0() == 2) {
            if (type == Double.TYPE || type == Double.class) {
                String strC0 = bVar.C0();
                bVar.c0(16);
                return Double.valueOf(Double.parseDouble(strC0));
            }
            long jL = bVar.l();
            bVar.c0(16);
            if (type == Short.TYPE || type == Short.class) {
                if (jL <= 32767 && jL >= -32768) {
                    return Short.valueOf((short) jL);
                }
                throw new JSONException("short overflow : " + jL);
            }
            if (type != Byte.TYPE && type != Byte.class) {
                return (jL < -2147483648L || jL > 2147483647L) ? Long.valueOf(jL) : Integer.valueOf((int) jL);
            }
            if (jL <= 127 && jL >= -128) {
                return Byte.valueOf((byte) jL);
            }
            throw new JSONException("short overflow : " + jL);
        }
        if (bVar.q0() == 3) {
            if (type == Double.TYPE || type == Double.class) {
                String strC1 = bVar.C0();
                bVar.c0(16);
                return Double.valueOf(Double.parseDouble(strC1));
            }
            if (type == Short.TYPE || type == Short.class) {
                BigDecimal bigDecimalD0 = bVar.d0();
                bVar.c0(16);
                return Short.valueOf(TypeUtils.N0(bigDecimalD0));
            }
            if (type == Byte.TYPE || type == Byte.class) {
                BigDecimal bigDecimalD1 = bVar.d0();
                bVar.c0(16);
                return Byte.valueOf(TypeUtils.e(bigDecimalD1));
            }
            BigDecimal bigDecimalD2 = bVar.d0();
            bVar.c0(16);
            return bVar.n(Feature.UseBigDecimal) ? bigDecimalD2 : Double.valueOf(bigDecimalD2.doubleValue());
        }
        if (bVar.q0() == 18 && "NaN".equals(bVar.k0())) {
            bVar.Z();
            if (type == Double.class) {
                return Double.valueOf(Double.NaN);
            }
            if (type == Float.class) {
                return Float.valueOf(Float.NaN);
            }
            return null;
        }
        Object objT = aVar.T();
        if (objT == null) {
            return null;
        }
        if (type == Double.TYPE || type == Double.class) {
            try {
                return TypeUtils.q(objT);
            } catch (Exception e11) {
                throw new JSONException("parseDouble error, field : " + obj, e11);
            }
        }
        if (type == Short.TYPE || type == Short.class) {
            try {
                return TypeUtils.x(objT);
            } catch (Exception e12) {
                throw new JSONException("parseShort error, field : " + obj, e12);
            }
        }
        if (type != Byte.TYPE && type != Byte.class) {
            return TypeUtils.i(objT);
        }
        try {
            return TypeUtils.l(objT);
        } catch (Exception e13) {
            throw new JSONException("parseByte error, field : " + obj, e13);
        }
    }
}
