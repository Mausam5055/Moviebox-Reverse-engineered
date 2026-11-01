package z4;

import com.alibaba.fastjson.JSONObject;
import com.alibaba.fastjson.serializer.SerializerFeature;
import com.alibaba.fastjson.util.TypeUtils;
import java.lang.reflect.Type;
import java.time.Duration;
import java.time.Instant;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.LocalTime;
import java.time.OffsetDateTime;
import java.time.OffsetTime;
import java.time.Period;
import java.time.ZoneId;
import java.time.ZonedDateTime;
import java.time.format.DateTimeFormatter;
import java.time.temporal.TemporalAccessor;
import java.util.Locale;
import java.util.TimeZone;
import okhttp3.internal.connection.RealConnection;

/* JADX INFO: loaded from: classes3.dex */
public class y1 extends e implements a5.z0, a5.a0, b2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final y1 f79257a = new y1();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final DateTimeFormatter f79258b = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final DateTimeFormatter f79259c = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss.SSS");

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final DateTimeFormatter f79260d = DateTimeFormatter.ofPattern("yyyy/MM/dd HH:mm:ss");

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final DateTimeFormatter f79261e = DateTimeFormatter.ofPattern("yyyy年M月d日 HH:mm:ss");

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final DateTimeFormatter f79262f = DateTimeFormatter.ofPattern("yyyy年M月d日 H时m分s秒");

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final DateTimeFormatter f79263g = DateTimeFormatter.ofPattern("yyyy년M월d일 HH:mm:ss");

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final DateTimeFormatter f79264h = DateTimeFormatter.ofPattern("MM/dd/yyyy HH:mm:ss");

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final DateTimeFormatter f79265i = DateTimeFormatter.ofPattern("dd/MM/yyyy HH:mm:ss");

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final DateTimeFormatter f79266j = DateTimeFormatter.ofPattern("dd.MM.yyyy HH:mm:ss");

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final DateTimeFormatter f79267k = DateTimeFormatter.ofPattern("dd-MM-yyyy HH:mm:ss");

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static final DateTimeFormatter f79268l = DateTimeFormatter.ofPattern("yyyyMMdd");

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static final DateTimeFormatter f79269m = DateTimeFormatter.ofPattern("yyyy/MM/dd");

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private static final DateTimeFormatter f79270n = DateTimeFormatter.ofPattern("yyyy年M月d日");

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static final DateTimeFormatter f79271o = DateTimeFormatter.ofPattern("yyyy년M월d일");

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private static final DateTimeFormatter f79272p = DateTimeFormatter.ofPattern("MM/dd/yyyy");

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private static final DateTimeFormatter f79273q = DateTimeFormatter.ofPattern("dd/MM/yyyy");

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static final DateTimeFormatter f79274r = DateTimeFormatter.ofPattern("dd.MM.yyyy");

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private static final DateTimeFormatter f79275s = DateTimeFormatter.ofPattern("dd-MM-yyyy");

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private static final DateTimeFormatter f79276t = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss").withZone(ZoneId.systemDefault());

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private static final DateTimeFormatter f79277u = DateTimeFormatter.ofPattern("yyyy-MM-dd'T'HH:mm:ss");

    public static Object f(Object obj, String str) {
        if (obj == null) {
            return null;
        }
        if (str == null) {
            str = "yyyy-MM-dd HH:mm:ss";
        }
        return LocalDateTime.parse(obj.toString(), DateTimeFormatter.ofPattern(str));
    }

    private void j(a5.j1 j1Var, TemporalAccessor temporalAccessor, String str) {
        Instant instant;
        if ("unixtime".equals(str)) {
            if (m1.a(temporalAccessor)) {
                j1Var.h0((int) p1.a(temporalAccessor).toEpochSecond());
                return;
            } else if (n1.a(temporalAccessor)) {
                j1Var.h0((int) i1.a(temporalAccessor).atZone(com.alibaba.fastjson.a.defaultTimeZone.toZoneId()).toEpochSecond());
                return;
            }
        }
        if ("millis".equals(str)) {
            if (m1.a(temporalAccessor)) {
                instant = p1.a(temporalAccessor).toInstant();
            } else {
                instant = n1.a(temporalAccessor) ? i1.a(temporalAccessor).atZone(com.alibaba.fastjson.a.defaultTimeZone.toZoneId()).toInstant() : null;
            }
            if (instant != null) {
                j1Var.l0(instant.toEpochMilli());
                return;
            }
        }
        j1Var.q0((str == "yyyy-MM-dd'T'HH:mm:ss" ? f79277u : DateTimeFormatter.ofPattern(str)).format(temporalAccessor));
    }

    @Override // a5.a0
    public void a(a5.o0 o0Var, Object obj, a5.p pVar) {
        j(o0Var.f296k, x1.a(obj), pVar.b());
    }

    @Override // z4.b2
    public int b() {
        return 4;
    }

    @Override // a5.z0
    public void d(a5.o0 o0Var, Object obj, Object obj2, Type type, int i11) {
        a5.j1 j1Var = o0Var.f296k;
        if (obj == null) {
            j1Var.m0();
            return;
        }
        if (type == null) {
            type = obj.getClass();
        }
        if (type != x0.a()) {
            j1Var.q0(obj.toString());
            return;
        }
        SerializerFeature serializerFeature = SerializerFeature.UseISO8601DateFormat;
        int mask = serializerFeature.getMask();
        LocalDateTime localDateTimeA = i1.a(obj);
        String strO = o0Var.o();
        if (strO == null) {
            strO = "yyyy-MM-dd'T'HH:mm:ss";
            if ((i11 & mask) == 0 && !o0Var.t(serializerFeature)) {
                if (o0Var.t(SerializerFeature.WriteDateUseDateFormat)) {
                    strO = (o0Var.p() == null || o0Var.p().length() <= 0) ? com.alibaba.fastjson.a.DEFFAULT_DATE_FORMAT : o0Var.p();
                } else {
                    int nano = localDateTimeA.getNano();
                    if (nano != 0) {
                        strO = nano % 1000000 == 0 ? "yyyy-MM-dd'T'HH:mm:ss.SSS" : "yyyy-MM-dd'T'HH:mm:ss.SSSSSSSSS";
                    }
                }
            }
        }
        if (strO != null) {
            j(j1Var, localDateTimeA, strO);
        } else {
            j1Var.l0(localDateTimeA.atZone(com.alibaba.fastjson.a.defaultTimeZone.toZoneId()).toInstant().toEpochMilli());
        }
    }

    @Override // z4.e
    public Object e(y4.a aVar, Type type, Object obj, String str, int i11) {
        Long l11;
        DateTimeFormatter dateTimeFormatterOfPattern;
        y4.b bVar = aVar.f78831f;
        if (bVar.q0() == 8) {
            bVar.Z();
            return null;
        }
        if (bVar.q0() == 4) {
            String strK0 = bVar.k0();
            bVar.Z();
            if (str != null) {
                dateTimeFormatterOfPattern = "yyyy-MM-dd HH:mm:ss".equals(str) ? f79258b : DateTimeFormatter.ofPattern(str);
            } else {
                dateTimeFormatterOfPattern = null;
            }
            if ("".equals(strK0)) {
                return null;
            }
            if (type == x0.a()) {
                return (strK0.length() == 10 || strK0.length() == 8) ? LocalDateTime.of(h(strK0, str, dateTimeFormatterOfPattern), LocalTime.MIN) : g(strK0, dateTimeFormatterOfPattern);
            }
            if (type == w0.a()) {
                if (strK0.length() != 23) {
                    return h(strK0, str, dateTimeFormatterOfPattern);
                }
                LocalDateTime localDateTime = LocalDateTime.parse(strK0);
                return LocalDate.of(localDateTime.getYear(), localDateTime.getMonthValue(), localDateTime.getDayOfMonth());
            }
            int i12 = 0;
            if (type == s.a()) {
                if (strK0.length() == 23) {
                    LocalDateTime localDateTime2 = LocalDateTime.parse(strK0);
                    return LocalTime.of(localDateTime2.getHour(), localDateTime2.getMinute(), localDateTime2.getSecond(), localDateTime2.getNano());
                }
                while (i12 < strK0.length()) {
                    char cCharAt = strK0.charAt(i12);
                    if (cCharAt < '0' || cCharAt > '9') {
                        return LocalTime.parse(strK0);
                    }
                    i12++;
                }
                if (strK0.length() > 8 && strK0.length() < 19) {
                    return LocalDateTime.ofInstant(Instant.ofEpochMilli(Long.parseLong(strK0)), com.alibaba.fastjson.a.defaultTimeZone.toZoneId()).toLocalTime();
                }
                return LocalTime.parse(strK0);
            }
            if (type == d0.a()) {
                if (dateTimeFormatterOfPattern == f79258b) {
                    dateTimeFormatterOfPattern = f79276t;
                }
                if (dateTimeFormatterOfPattern == null && strK0.length() <= 19) {
                    y4.e eVar = new y4.e(strK0);
                    TimeZone timeZoneL0 = aVar.f78831f.l0();
                    eVar.o1(timeZoneL0);
                    if (eVar.x1(false)) {
                        return ZonedDateTime.ofInstant(eVar.J0().getTime().toInstant(), timeZoneL0.toZoneId());
                    }
                }
                return i(strK0, dateTimeFormatterOfPattern);
            }
            if (type == g0.a()) {
                return OffsetDateTime.parse(strK0);
            }
            if (type == i0.a()) {
                return OffsetTime.parse(strK0);
            }
            if (type == l0.a()) {
                return ZoneId.of(strK0);
            }
            if (type == o0.a()) {
                return Period.parse(strK0);
            }
            if (type == q0.a()) {
                return Duration.parse(strK0);
            }
            if (type == s0.a()) {
                while (i12 < strK0.length()) {
                    char cCharAt2 = strK0.charAt(i12);
                    if (cCharAt2 < '0' || cCharAt2 > '9') {
                        return Instant.parse(strK0);
                    }
                    i12++;
                }
                if (strK0.length() > 8 && strK0.length() < 19) {
                    return Instant.ofEpochMilli(Long.parseLong(strK0));
                }
                return Instant.parse(strK0);
            }
        } else {
            if (bVar.q0() == 2) {
                long jL = bVar.l();
                bVar.Z();
                if ("unixtime".equals(str)) {
                    jL *= 1000;
                } else if ("yyyyMMddHHmmss".equals(str)) {
                    int i13 = (int) (jL / RealConnection.IDLE_CONNECTION_HEALTHY_NS);
                    int i14 = (int) ((jL / 100000000) % 100);
                    int i15 = (int) ((jL / 1000000) % 100);
                    int i16 = (int) ((jL / 10000) % 100);
                    int i17 = (int) ((jL / 100) % 100);
                    int i18 = (int) (jL % 100);
                    if (type == x0.a()) {
                        return LocalDateTime.of(i13, i14, i15, i16, i17, i18);
                    }
                }
                if (type == x0.a()) {
                    return LocalDateTime.ofInstant(Instant.ofEpochMilli(jL), com.alibaba.fastjson.a.defaultTimeZone.toZoneId());
                }
                if (type == w0.a()) {
                    return LocalDateTime.ofInstant(Instant.ofEpochMilli(jL), com.alibaba.fastjson.a.defaultTimeZone.toZoneId()).toLocalDate();
                }
                if (type == s.a()) {
                    return LocalDateTime.ofInstant(Instant.ofEpochMilli(jL), com.alibaba.fastjson.a.defaultTimeZone.toZoneId()).toLocalTime();
                }
                if (type == d0.a()) {
                    return ZonedDateTime.ofInstant(Instant.ofEpochMilli(jL), com.alibaba.fastjson.a.defaultTimeZone.toZoneId());
                }
                if (type == s0.a()) {
                    return Instant.ofEpochMilli(jL);
                }
                throw new UnsupportedOperationException();
            }
            if (bVar.q0() != 12) {
                throw new UnsupportedOperationException();
            }
            JSONObject jSONObjectL0 = aVar.l0();
            if (type == s0.a()) {
                Object obj2 = jSONObjectL0.get("epochSecond");
                Object obj3 = jSONObjectL0.get("nano");
                boolean z10 = obj2 instanceof Number;
                if (z10 && (obj3 instanceof Number)) {
                    return Instant.ofEpochSecond(TypeUtils.D0((Number) obj2), TypeUtils.D0((Number) obj3));
                }
                if (z10) {
                    return Instant.ofEpochSecond(TypeUtils.D0((Number) obj2));
                }
            } else if (type == q0.a() && (l11 = jSONObjectL0.getLong("seconds")) != null) {
                return Duration.ofSeconds(l11.longValue(), jSONObjectL0.getLongValue("nano"));
            }
        }
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:52:0x00ea  */
    protected LocalDateTime g(String str, DateTimeFormatter dateTimeFormatter) {
        DateTimeFormatter dateTimeFormatter2;
        if (dateTimeFormatter == null) {
            if (str.length() == 19) {
                char cCharAt = str.charAt(4);
                char cCharAt2 = str.charAt(7);
                char cCharAt3 = str.charAt(10);
                char cCharAt4 = str.charAt(13);
                char cCharAt5 = str.charAt(16);
                if (cCharAt4 != ':' || cCharAt5 != ':') {
                    dateTimeFormatter2 = dateTimeFormatter;
                } else if (cCharAt == '-' && cCharAt2 == '-') {
                    if (cCharAt3 == 'T') {
                        dateTimeFormatter2 = DateTimeFormatter.ISO_LOCAL_DATE_TIME;
                    } else if (cCharAt3 == ' ') {
                        dateTimeFormatter2 = f79258b;
                    } else {
                        dateTimeFormatter2 = dateTimeFormatter;
                    }
                } else if (cCharAt == '/' && cCharAt2 == '/') {
                    dateTimeFormatter2 = f79260d;
                } else {
                    char cCharAt6 = str.charAt(0);
                    char cCharAt7 = str.charAt(1);
                    char cCharAt8 = str.charAt(2);
                    char cCharAt9 = str.charAt(3);
                    char cCharAt10 = str.charAt(5);
                    if (cCharAt8 == '/' && cCharAt10 == '/') {
                        int i11 = ((cCharAt9 - '0') * 10) + (cCharAt - '0');
                        if (((cCharAt6 - '0') * 10) + (cCharAt7 - '0') > 12) {
                            dateTimeFormatter2 = f79265i;
                        } else if (i11 > 12) {
                            dateTimeFormatter2 = f79264h;
                        } else {
                            String country = Locale.getDefault().getCountry();
                            if (country.equals("US")) {
                                dateTimeFormatter2 = f79264h;
                            } else if (country.equals("BR") || country.equals("AU")) {
                                dateTimeFormatter2 = f79265i;
                            } else {
                                dateTimeFormatter2 = dateTimeFormatter;
                            }
                        }
                    } else if (cCharAt8 == '.' && cCharAt10 == '.') {
                        dateTimeFormatter2 = f79266j;
                    } else if (cCharAt8 == '-' && cCharAt10 == '-') {
                        dateTimeFormatter2 = f79267k;
                    } else {
                        dateTimeFormatter2 = dateTimeFormatter;
                    }
                }
            } else if (str.length() == 23) {
                char cCharAt11 = str.charAt(4);
                char cCharAt12 = str.charAt(7);
                char cCharAt13 = str.charAt(10);
                char cCharAt14 = str.charAt(13);
                char cCharAt15 = str.charAt(16);
                char cCharAt16 = str.charAt(19);
                if (cCharAt14 == ':' && cCharAt15 == ':' && cCharAt11 == '-' && cCharAt12 == '-' && cCharAt13 == ' ' && cCharAt16 == '.') {
                    dateTimeFormatter2 = f79259c;
                } else {
                    dateTimeFormatter2 = dateTimeFormatter;
                }
            } else {
                dateTimeFormatter2 = dateTimeFormatter;
            }
            if (str.length() >= 17) {
                char cCharAt17 = str.charAt(4);
                if (cCharAt17 == 24180) {
                    dateTimeFormatter2 = str.charAt(str.length() - 1) == 31186 ? f79262f : f79261e;
                } else if (cCharAt17 == 45380) {
                    dateTimeFormatter2 = f79263g;
                }
            }
        } else {
            dateTimeFormatter2 = dateTimeFormatter;
        }
        if (dateTimeFormatter2 == null) {
            y4.e eVar = new y4.e(str);
            if (eVar.x1(false)) {
                return LocalDateTime.ofInstant(eVar.J0().toInstant(), ZoneId.systemDefault());
            }
            for (int i12 = 0; i12 < str.length(); i12++) {
                char cCharAt18 = str.charAt(i12);
                if (cCharAt18 >= '0' && cCharAt18 <= '9') {
                }
            }
            if (str.length() > 8 && str.length() < 19) {
                return LocalDateTime.ofInstant(Instant.ofEpochMilli(Long.parseLong(str)), com.alibaba.fastjson.a.defaultTimeZone.toZoneId());
            }
        }
        return dateTimeFormatter2 == null ? LocalDateTime.parse(str) : LocalDateTime.parse(str, dateTimeFormatter2);
    }

    protected LocalDate h(String str, String str2, DateTimeFormatter dateTimeFormatter) {
        DateTimeFormatter dateTimeFormatter2;
        DateTimeFormatter dateTimeFormatter3;
        if (dateTimeFormatter == null) {
            if (str.length() == 8) {
                dateTimeFormatter = f79268l;
            }
            if (str.length() == 10) {
                char cCharAt = str.charAt(4);
                char cCharAt2 = str.charAt(7);
                if (cCharAt == '/' && cCharAt2 == '/') {
                    dateTimeFormatter = f79269m;
                }
                char cCharAt3 = str.charAt(0);
                char cCharAt4 = str.charAt(1);
                char cCharAt5 = str.charAt(2);
                char cCharAt6 = str.charAt(3);
                char cCharAt7 = str.charAt(5);
                if (cCharAt5 == '/' && cCharAt7 == '/') {
                    int i11 = ((cCharAt6 - '0') * 10) + (cCharAt - '0');
                    if (((cCharAt3 - '0') * 10) + (cCharAt4 - '0') > 12) {
                        dateTimeFormatter3 = f79273q;
                    } else if (i11 > 12) {
                        dateTimeFormatter3 = f79272p;
                    } else {
                        String country = Locale.getDefault().getCountry();
                        if (country.equals("US")) {
                            dateTimeFormatter3 = f79272p;
                        } else if (country.equals("BR") || country.equals("AU")) {
                            dateTimeFormatter3 = f79273q;
                        }
                    }
                    dateTimeFormatter = dateTimeFormatter3;
                } else if (cCharAt5 == '.' && cCharAt7 == '.') {
                    dateTimeFormatter = f79274r;
                } else if (cCharAt5 == '-' && cCharAt7 == '-') {
                    dateTimeFormatter = f79275s;
                }
            }
            if (str.length() >= 9) {
                char cCharAt8 = str.charAt(4);
                if (cCharAt8 == 24180) {
                    dateTimeFormatter2 = f79270n;
                } else if (cCharAt8 == 45380) {
                    dateTimeFormatter2 = f79271o;
                }
                dateTimeFormatter = dateTimeFormatter2;
            }
            for (int i12 = 0; i12 < str.length(); i12++) {
                char cCharAt9 = str.charAt(i12);
                if (cCharAt9 >= '0' && cCharAt9 <= '9') {
                }
            }
            if (str.length() > 8 && str.length() < 19) {
                return LocalDateTime.ofInstant(Instant.ofEpochMilli(Long.parseLong(str)), com.alibaba.fastjson.a.defaultTimeZone.toZoneId()).toLocalDate();
            }
        }
        return dateTimeFormatter == null ? LocalDate.parse(str) : LocalDate.parse(str, dateTimeFormatter);
    }

    /* JADX WARN: Code duplicated, block: B:45:0x00b9  */
    protected ZonedDateTime i(String str, DateTimeFormatter dateTimeFormatter) {
        DateTimeFormatter dateTimeFormatter2;
        if (dateTimeFormatter == null) {
            if (str.length() == 19) {
                char cCharAt = str.charAt(4);
                char cCharAt2 = str.charAt(7);
                char cCharAt3 = str.charAt(10);
                char cCharAt4 = str.charAt(13);
                char cCharAt5 = str.charAt(16);
                if (cCharAt4 != ':' || cCharAt5 != ':') {
                    dateTimeFormatter2 = dateTimeFormatter;
                } else if (cCharAt == '-' && cCharAt2 == '-') {
                    if (cCharAt3 == 'T') {
                        dateTimeFormatter2 = DateTimeFormatter.ISO_LOCAL_DATE_TIME;
                    } else if (cCharAt3 == ' ') {
                        dateTimeFormatter2 = f79258b;
                    } else {
                        dateTimeFormatter2 = dateTimeFormatter;
                    }
                } else if (cCharAt == '/' && cCharAt2 == '/') {
                    dateTimeFormatter2 = f79260d;
                } else {
                    char cCharAt6 = str.charAt(0);
                    char cCharAt7 = str.charAt(1);
                    char cCharAt8 = str.charAt(2);
                    char cCharAt9 = str.charAt(3);
                    char cCharAt10 = str.charAt(5);
                    if (cCharAt8 == '/' && cCharAt10 == '/') {
                        int i11 = ((cCharAt9 - '0') * 10) + (cCharAt - '0');
                        if (((cCharAt6 - '0') * 10) + (cCharAt7 - '0') > 12) {
                            dateTimeFormatter2 = f79265i;
                        } else if (i11 > 12) {
                            dateTimeFormatter2 = f79264h;
                        } else {
                            String country = Locale.getDefault().getCountry();
                            if (country.equals("US")) {
                                dateTimeFormatter2 = f79264h;
                            } else if (country.equals("BR") || country.equals("AU")) {
                                dateTimeFormatter2 = f79265i;
                            } else {
                                dateTimeFormatter2 = dateTimeFormatter;
                            }
                        }
                    } else if (cCharAt8 == '.' && cCharAt10 == '.') {
                        dateTimeFormatter2 = f79266j;
                    } else if (cCharAt8 == '-' && cCharAt10 == '-') {
                        dateTimeFormatter2 = f79267k;
                    } else {
                        dateTimeFormatter2 = dateTimeFormatter;
                    }
                }
            } else {
                dateTimeFormatter2 = dateTimeFormatter;
            }
            if (str.length() >= 17) {
                char cCharAt11 = str.charAt(4);
                if (cCharAt11 == 24180) {
                    dateTimeFormatter2 = str.charAt(str.length() - 1) == 31186 ? f79262f : f79261e;
                } else if (cCharAt11 == 45380) {
                    dateTimeFormatter2 = f79263g;
                }
            }
            for (int i12 = 0; i12 < str.length(); i12++) {
                char cCharAt12 = str.charAt(i12);
                if (cCharAt12 >= '0' && cCharAt12 <= '9') {
                }
            }
            if (str.length() > 8 && str.length() < 19) {
                return ZonedDateTime.ofInstant(Instant.ofEpochMilli(Long.parseLong(str)), com.alibaba.fastjson.a.defaultTimeZone.toZoneId());
            }
        } else {
            dateTimeFormatter2 = dateTimeFormatter;
        }
        return dateTimeFormatter2 == null ? ZonedDateTime.parse(str) : ZonedDateTime.parse(str, dateTimeFormatter2);
    }
}
