package a5;

import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.serializer.SerializerFeature;
import com.alibaba.fastjson.util.TypeUtils;
import com.google.android.material.timepicker.TimeModel;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import java.io.IOException;
import java.lang.reflect.Type;
import java.math.BigDecimal;
import java.sql.Date;
import java.sql.Time;
import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.TimeZone;
import z4.b2;

/* JADX INFO: loaded from: classes2.dex */
public class c0 extends z4.b implements z0, b2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final c0 f188a = new c0();

    @Override // z4.b2
    public int b() {
        return 2;
    }

    @Override // a5.z0
    public void d(o0 o0Var, Object obj, Object obj2, Type type, int i11) throws IOException {
        char[] charArray;
        j1 j1Var = o0Var.f296k;
        if (obj == null) {
            j1Var.m0();
            return;
        }
        Class<?> cls = obj.getClass();
        if (cls == Date.class && !j1Var.q(SerializerFeature.WriteDateUseDateFormat)) {
            long time = ((Date) obj).getTime();
            if ((time + ((long) o0Var.f304s.getOffset(time))) % 86400000 == 0 && !SerializerFeature.isEnabled(j1Var.f269c, i11, SerializerFeature.WriteClassName)) {
                j1Var.q0(obj.toString());
                return;
            }
        }
        if (cls == Time.class) {
            long time2 = ((Time) obj).getTime();
            if ("unixtime".equals(o0Var.o())) {
                j1Var.l0(time2 / 1000);
                return;
            } else if ("millis".equals(o0Var.o())) {
                j1Var.l0(time2);
                return;
            } else if (time2 < 86400000) {
                j1Var.q0(obj.toString());
                return;
            }
        }
        int nanos = cls == Timestamp.class ? ((Timestamp) obj).getNanos() : 0;
        java.util.Date dateO = obj instanceof java.util.Date ? (java.util.Date) obj : TypeUtils.o(obj);
        if ("unixtime".equals(o0Var.o())) {
            j1Var.l0(dateO.getTime() / 1000);
            return;
        }
        if ("millis".equals(o0Var.o())) {
            j1Var.l0(dateO.getTime());
            return;
        }
        if (j1Var.q(SerializerFeature.WriteDateUseDateFormat)) {
            DateFormat dateFormatN = o0Var.n();
            if (dateFormatN == null) {
                String strP = o0Var.p();
                if (strP == null) {
                    strP = com.alibaba.fastjson.a.DEFFAULT_DATE_FORMAT;
                }
                SimpleDateFormat simpleDateFormat = new SimpleDateFormat(strP, o0Var.f305t);
                simpleDateFormat.setTimeZone(o0Var.f304s);
                dateFormatN = simpleDateFormat;
            }
            j1Var.q0(dateFormatN.format(dateO));
            return;
        }
        if (j1Var.q(SerializerFeature.WriteClassName) && cls != type) {
            if (cls == java.util.Date.class) {
                j1Var.write("new Date(");
                j1Var.l0(((java.util.Date) obj).getTime());
                j1Var.write(41);
                return;
            } else {
                j1Var.write(Sdk$SDKError.Reason.INVALID_RI_ENDPOINT_VALUE);
                j1Var.w(com.alibaba.fastjson.a.DEFAULT_TYPE_KEY);
                o0Var.B(cls.getName());
                j1Var.V(',', "val", ((java.util.Date) obj).getTime());
                j1Var.write(Sdk$SDKError.Reason.INVALID_METRICS_ENDPOINT_VALUE);
                return;
            }
        }
        long time3 = dateO.getTime();
        if (!j1Var.q(SerializerFeature.UseISO8601DateFormat)) {
            j1Var.l0(time3);
            return;
        }
        int i12 = j1Var.q(SerializerFeature.UseSingleQuotes) ? 39 : 34;
        j1Var.write(i12);
        Calendar calendar = Calendar.getInstance(o0Var.f304s, o0Var.f305t);
        calendar.setTimeInMillis(time3);
        int i13 = calendar.get(1);
        int i14 = calendar.get(2) + 1;
        int i15 = calendar.get(5);
        int i16 = calendar.get(11);
        int i17 = calendar.get(12);
        int i18 = calendar.get(13);
        int i19 = calendar.get(14);
        if (nanos > 0) {
            charArray = "0000-00-00 00:00:00.000000000".toCharArray();
            com.alibaba.fastjson.util.f.h(nanos, 29, charArray);
            com.alibaba.fastjson.util.f.h(i18, 19, charArray);
            com.alibaba.fastjson.util.f.h(i17, 16, charArray);
            com.alibaba.fastjson.util.f.h(i16, 13, charArray);
            com.alibaba.fastjson.util.f.h(i15, 10, charArray);
            com.alibaba.fastjson.util.f.h(i14, 7, charArray);
            com.alibaba.fastjson.util.f.h(i13, 4, charArray);
        } else if (i19 != 0) {
            char[] charArray2 = "0000-00-00T00:00:00.000".toCharArray();
            com.alibaba.fastjson.util.f.h(i19, 23, charArray2);
            com.alibaba.fastjson.util.f.h(i18, 19, charArray2);
            com.alibaba.fastjson.util.f.h(i17, 16, charArray2);
            com.alibaba.fastjson.util.f.h(i16, 13, charArray2);
            com.alibaba.fastjson.util.f.h(i15, 10, charArray2);
            com.alibaba.fastjson.util.f.h(i14, 7, charArray2);
            com.alibaba.fastjson.util.f.h(i13, 4, charArray2);
            charArray = charArray2;
        } else if (i18 == 0 && i17 == 0 && i16 == 0) {
            char[] charArray3 = "0000-00-00".toCharArray();
            com.alibaba.fastjson.util.f.h(i15, 10, charArray3);
            com.alibaba.fastjson.util.f.h(i14, 7, charArray3);
            com.alibaba.fastjson.util.f.h(i13, 4, charArray3);
            charArray = charArray3;
        } else {
            charArray = "0000-00-00T00:00:00".toCharArray();
            com.alibaba.fastjson.util.f.h(i18, 19, charArray);
            com.alibaba.fastjson.util.f.h(i17, 16, charArray);
            com.alibaba.fastjson.util.f.h(i16, 13, charArray);
            com.alibaba.fastjson.util.f.h(i15, 10, charArray);
            com.alibaba.fastjson.util.f.h(i14, 7, charArray);
            com.alibaba.fastjson.util.f.h(i13, 4, charArray);
        }
        if (nanos > 0) {
            int i20 = 0;
            while (i20 < 9 && charArray[(charArray.length - i20) - 1] == '0') {
                i20++;
            }
            j1Var.write(charArray, 0, charArray.length - i20);
            j1Var.write(i12);
            return;
        }
        j1Var.write(charArray);
        float offset = calendar.getTimeZone().getOffset(calendar.getTimeInMillis()) / 3600000.0f;
        int i21 = (int) offset;
        if (i21 == 0.0d) {
            j1Var.write(90);
        } else {
            if (i21 > 9) {
                j1Var.write(43);
                j1Var.h0(i21);
            } else if (i21 > 0) {
                j1Var.write(43);
                j1Var.write(48);
                j1Var.h0(i21);
            } else if (i21 < -9) {
                j1Var.write(45);
                j1Var.h0(-i21);
            } else if (i21 < 0) {
                j1Var.write(45);
                j1Var.write(48);
                j1Var.h0(-i21);
            }
            j1Var.write(58);
            j1Var.append(String.format(TimeModel.ZERO_LEADING_NUMBER_FORMAT, Integer.valueOf((int) (Math.abs(offset - i21) * 60.0f))));
        }
        j1Var.write(i12);
    }

    @Override // z4.b
    public Object f(y4.a aVar, Type type, Object obj, Object obj2) {
        if (obj2 == null) {
            return null;
        }
        if (obj2 instanceof java.util.Date) {
            return obj2;
        }
        if (obj2 instanceof BigDecimal) {
            return new java.util.Date(TypeUtils.E0((BigDecimal) obj2));
        }
        if (obj2 instanceof Number) {
            return new java.util.Date(((Number) obj2).longValue());
        }
        if (!(obj2 instanceof String)) {
            throw new JSONException("parse error");
        }
        String strSubstring = (String) obj2;
        if (strSubstring.length() == 0) {
            return null;
        }
        if (strSubstring.length() == 23 && strSubstring.endsWith(" 000")) {
            strSubstring = strSubstring.substring(0, 19);
        }
        y4.e eVar = new y4.e(strSubstring);
        try {
            if (eVar.x1(false)) {
                Calendar calendarJ0 = eVar.J0();
                if (type == Calendar.class) {
                    eVar.close();
                    return calendarJ0;
                }
                java.util.Date time = calendarJ0.getTime();
                eVar.close();
                return time;
            }
            eVar.close();
            String strO = aVar.o();
            if (strSubstring.length() == strO.length() || ((strSubstring.length() == 22 && strO.equals("yyyyMMddHHmmssSSSZ")) || (strSubstring.indexOf(84) != -1 && strO.contains("'T'") && strSubstring.length() + 2 == strO.length()))) {
                try {
                    return aVar.p().parse(strSubstring);
                } catch (ParseException unused) {
                }
            }
            if (strSubstring.startsWith("/Date(") && strSubstring.endsWith(")/")) {
                strSubstring = strSubstring.substring(6, strSubstring.length() - 2);
            }
            if ("0000-00-00".equals(strSubstring) || "0000-00-00T00:00:00".equalsIgnoreCase(strSubstring) || "0001-01-01T00:00:00+08:00".equalsIgnoreCase(strSubstring)) {
                return null;
            }
            int iLastIndexOf = strSubstring.lastIndexOf(Sdk$SDKError.Reason.INVALID_LOG_ERROR_ENDPOINT_VALUE);
            if (iLastIndexOf > 20) {
                TimeZone timeZone = TimeZone.getTimeZone(strSubstring.substring(iLastIndexOf + 1));
                if (!"GMT".equals(timeZone.getID())) {
                    y4.e eVar2 = new y4.e(strSubstring.substring(0, iLastIndexOf));
                    try {
                        if (eVar2.x1(false)) {
                            Calendar calendarJ1 = eVar2.J0();
                            calendarJ1.setTimeZone(timeZone);
                            return type == Calendar.class ? calendarJ1 : calendarJ1.getTime();
                        }
                    } finally {
                        eVar2.close();
                    }
                }
            }
            return new java.util.Date(Long.parseLong(strSubstring));
        } catch (Throwable th2) {
            eVar.close();
            throw th2;
        }
    }
}
