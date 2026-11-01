package z4;

import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.util.TypeUtils;
import java.lang.reflect.Type;
import java.math.BigDecimal;
import java.sql.Time;

/* JADX INFO: loaded from: classes3.dex */
public class l3 implements b2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final l3 f79245a = new l3();

    @Override // z4.b2
    public int b() {
        return 2;
    }

    @Override // z4.b2
    public Object c(y4.a aVar, Type type, Object obj) {
        long timeInMillis;
        y4.b bVar = aVar.f78831f;
        if (bVar.q0() == 16) {
            bVar.c0(4);
            if (bVar.q0() != 4) {
                throw new JSONException("syntax error");
            }
            bVar.q(2);
            if (bVar.q0() != 2) {
                throw new JSONException("syntax error");
            }
            long jL = bVar.l();
            bVar.c0(13);
            if (bVar.q0() != 13) {
                throw new JSONException("syntax error");
            }
            bVar.c0(16);
            return new Time(jL);
        }
        Object objT = aVar.T();
        if (objT == null) {
            return null;
        }
        if (objT instanceof Time) {
            return objT;
        }
        if (objT instanceof BigDecimal) {
            return new Time(TypeUtils.E0((BigDecimal) objT));
        }
        if (objT instanceof Number) {
            return new Time(((Number) objT).longValue());
        }
        if (!(objT instanceof String)) {
            throw new JSONException("parse error");
        }
        String str = (String) objT;
        if (str.length() == 0) {
            return null;
        }
        y4.e eVar = new y4.e(str);
        if (eVar.w1()) {
            timeInMillis = eVar.J0().getTimeInMillis();
        } else {
            for (int i11 = 0; i11 < str.length(); i11++) {
                char cCharAt = str.charAt(i11);
                if (cCharAt < '0' || cCharAt > '9') {
                    eVar.close();
                    return Time.valueOf(str);
                }
            }
            timeInMillis = Long.parseLong(str);
        }
        eVar.close();
        return new Time(timeInMillis);
    }
}
