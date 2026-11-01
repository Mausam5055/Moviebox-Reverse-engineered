package a5;

import com.alibaba.fastjson.serializer.SerializerFeature;
import com.google.android.material.timepicker.TimeModel;
import java.io.IOException;
import java.lang.reflect.Type;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import javax.xml.datatype.DatatypeConfigurationException;
import javax.xml.datatype.DatatypeFactory;
import javax.xml.datatype.XMLGregorianCalendar;
import z4.b2;

/* JADX INFO: loaded from: classes2.dex */
public class v extends z4.e implements z0, b2, a0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final v f351b = new v();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private DatatypeFactory f352a;

    @Override // a5.a0
    public void a(o0 o0Var, Object obj, p pVar) {
        j1 j1Var = o0Var.f296k;
        String strB = pVar.b();
        Calendar calendar = (Calendar) obj;
        if (strB.equals("unixtime")) {
            j1Var.h0((int) (calendar.getTimeInMillis() / 1000));
            return;
        }
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat(strB);
        simpleDateFormat.setTimeZone(o0Var.f304s);
        j1Var.q0(simpleDateFormat.format(calendar.getTime()));
    }

    @Override // z4.b2
    public int b() {
        return 2;
    }

    @Override // z4.e, z4.b2
    public Object c(y4.a aVar, Type type, Object obj) {
        return e(aVar, type, obj, null, 0);
    }

    @Override // a5.z0
    public void d(o0 o0Var, Object obj, Object obj2, Type type, int i11) throws IOException {
        char[] charArray;
        j1 j1Var = o0Var.f296k;
        if (obj == null) {
            j1Var.m0();
            return;
        }
        Calendar gregorianCalendar = obj instanceof XMLGregorianCalendar ? ((XMLGregorianCalendar) obj).toGregorianCalendar() : (Calendar) obj;
        if (!j1Var.q(SerializerFeature.UseISO8601DateFormat)) {
            o0Var.A(gregorianCalendar.getTime());
            return;
        }
        char c11 = j1Var.q(SerializerFeature.UseSingleQuotes) ? '\'' : '\"';
        j1Var.append(c11);
        int i12 = gregorianCalendar.get(1);
        int i13 = gregorianCalendar.get(2) + 1;
        int i14 = gregorianCalendar.get(5);
        int i15 = gregorianCalendar.get(11);
        int i16 = gregorianCalendar.get(12);
        int i17 = gregorianCalendar.get(13);
        int i18 = gregorianCalendar.get(14);
        if (i18 != 0) {
            charArray = "0000-00-00T00:00:00.000".toCharArray();
            com.alibaba.fastjson.util.f.h(i18, 23, charArray);
            com.alibaba.fastjson.util.f.h(i17, 19, charArray);
            com.alibaba.fastjson.util.f.h(i16, 16, charArray);
            com.alibaba.fastjson.util.f.h(i15, 13, charArray);
            com.alibaba.fastjson.util.f.h(i14, 10, charArray);
            com.alibaba.fastjson.util.f.h(i13, 7, charArray);
            com.alibaba.fastjson.util.f.h(i12, 4, charArray);
        } else if (i17 == 0 && i16 == 0 && i15 == 0) {
            charArray = "0000-00-00".toCharArray();
            com.alibaba.fastjson.util.f.h(i14, 10, charArray);
            com.alibaba.fastjson.util.f.h(i13, 7, charArray);
            com.alibaba.fastjson.util.f.h(i12, 4, charArray);
        } else {
            charArray = "0000-00-00T00:00:00".toCharArray();
            com.alibaba.fastjson.util.f.h(i17, 19, charArray);
            com.alibaba.fastjson.util.f.h(i16, 16, charArray);
            com.alibaba.fastjson.util.f.h(i15, 13, charArray);
            com.alibaba.fastjson.util.f.h(i14, 10, charArray);
            com.alibaba.fastjson.util.f.h(i13, 7, charArray);
            com.alibaba.fastjson.util.f.h(i12, 4, charArray);
        }
        j1Var.write(charArray);
        float offset = gregorianCalendar.getTimeZone().getOffset(gregorianCalendar.getTimeInMillis()) / 3600000.0f;
        int i19 = (int) offset;
        if (i19 == 0.0d) {
            j1Var.write(90);
        } else {
            if (i19 > 9) {
                j1Var.write(43);
                j1Var.h0(i19);
            } else if (i19 > 0) {
                j1Var.write(43);
                j1Var.write(48);
                j1Var.h0(i19);
            } else if (i19 < -9) {
                j1Var.write(45);
                j1Var.h0(i19);
            } else if (i19 < 0) {
                j1Var.write(45);
                j1Var.write(48);
                j1Var.h0(-i19);
            }
            j1Var.write(58);
            j1Var.append(String.format(TimeModel.ZERO_LEADING_NUMBER_FORMAT, Integer.valueOf((int) ((offset - i19) * 60.0f))));
        }
        j1Var.append(c11);
    }

    @Override // z4.e
    public Object e(y4.a aVar, Type type, Object obj, String str, int i11) {
        Object objE = c0.f188a.e(aVar, type, obj, str, i11);
        if (objE instanceof Calendar) {
            return objE;
        }
        Date date = (Date) objE;
        if (date == null) {
            return null;
        }
        y4.b bVar = aVar.f78831f;
        Calendar calendar = Calendar.getInstance(bVar.l0(), bVar.B0());
        calendar.setTime(date);
        return type == XMLGregorianCalendar.class ? f((GregorianCalendar) calendar) : calendar;
    }

    public XMLGregorianCalendar f(Calendar calendar) {
        if (this.f352a == null) {
            try {
                this.f352a = DatatypeFactory.newInstance();
            } catch (DatatypeConfigurationException e11) {
                throw new IllegalStateException("Could not obtain an instance of DatatypeFactory.", e11);
            }
        }
        return this.f352a.newXMLGregorianCalendar((GregorianCalendar) calendar);
    }
}
