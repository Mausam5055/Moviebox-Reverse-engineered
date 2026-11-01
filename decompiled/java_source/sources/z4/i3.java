package z4;

import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.util.TypeUtils;
import java.lang.reflect.Type;
import java.math.BigDecimal;
import java.sql.Timestamp;
import java.text.ParseException;
import java.util.Date;

/* JADX INFO: loaded from: classes3.dex */
public class i3 extends b implements b2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final i3 f79239b = new i3();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final i3 f79240c = new i3(true);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f79241a = false;

    public i3() {
    }

    public i3(boolean z10) {
    }

    @Override // z4.b2
    public int b() {
        return 2;
    }

    @Override // z4.b
    protected Object f(y4.a aVar, Type type, Object obj, Object obj2) {
        long timeInMillis;
        if (this.f79241a) {
            return g(aVar, type, obj, obj2);
        }
        if (obj2 == null) {
            return null;
        }
        if (obj2 instanceof Date) {
            return new java.sql.Date(((Date) obj2).getTime());
        }
        if (obj2 instanceof BigDecimal) {
            return new java.sql.Date(TypeUtils.E0((BigDecimal) obj2));
        }
        if (obj2 instanceof Number) {
            return new java.sql.Date(((Number) obj2).longValue());
        }
        if (!(obj2 instanceof String)) {
            throw new JSONException("parse error : " + obj2);
        }
        String str = (String) obj2;
        if (str.length() == 0) {
            return null;
        }
        y4.e eVar = new y4.e(str);
        try {
            if (eVar.w1()) {
                timeInMillis = eVar.J0().getTimeInMillis();
            } else {
                try {
                    java.sql.Date date = new java.sql.Date(aVar.p().parse(str).getTime());
                    eVar.close();
                    return date;
                } catch (ParseException unused) {
                    timeInMillis = Long.parseLong(str);
                }
            }
            eVar.close();
            return new java.sql.Date(timeInMillis);
        } catch (Throwable th2) {
            eVar.close();
            throw th2;
        }
    }

    protected Object g(y4.a aVar, Type type, Object obj, Object obj2) {
        long timeInMillis;
        if (obj2 == null) {
            return null;
        }
        if (obj2 instanceof Date) {
            return new Timestamp(((Date) obj2).getTime());
        }
        if (obj2 instanceof BigDecimal) {
            return new Timestamp(TypeUtils.E0((BigDecimal) obj2));
        }
        if (obj2 instanceof Number) {
            return new Timestamp(((Number) obj2).longValue());
        }
        if (!(obj2 instanceof String)) {
            throw new JSONException("parse error");
        }
        String str = (String) obj2;
        if (str.length() == 0) {
            return null;
        }
        y4.e eVar = new y4.e(str);
        try {
            if (str.length() > 19 && str.charAt(4) == '-' && str.charAt(7) == '-' && str.charAt(10) == ' ' && str.charAt(13) == ':' && str.charAt(16) == ':' && str.charAt(19) == '.') {
                String strO = aVar.o();
                if (strO.length() != str.length() && strO == com.alibaba.fastjson.a.DEFFAULT_DATE_FORMAT) {
                    Timestamp timestampValueOf = Timestamp.valueOf(str);
                    eVar.close();
                    return timestampValueOf;
                }
            }
            if (eVar.x1(false)) {
                timeInMillis = eVar.J0().getTimeInMillis();
            } else {
                try {
                    Timestamp timestamp = new Timestamp(aVar.p().parse(str).getTime());
                    eVar.close();
                    return timestamp;
                } catch (ParseException unused) {
                    timeInMillis = Long.parseLong(str);
                }
            }
            eVar.close();
            return new Timestamp(timeInMillis);
        } catch (Throwable th2) {
            eVar.close();
            throw th2;
        }
    }
}
