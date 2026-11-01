package a5;

import com.alibaba.fastjson.JSONObject;
import com.alibaba.fastjson.serializer.SerializerFeature;
import com.alibaba.fastjson.util.TypeUtils;
import java.lang.reflect.Type;
import java.util.Locale;
import java.util.TimeZone;
import org.joda.time.DateTime;
import org.joda.time.DateTimeZone;
import org.joda.time.Duration;
import org.joda.time.Instant;
import org.joda.time.LocalDate;
import org.joda.time.LocalDateTime;
import org.joda.time.LocalTime;
import org.joda.time.Period;
import org.joda.time.ReadablePartial;
import org.joda.time.format.DateTimeFormat;
import org.joda.time.format.DateTimeFormatter;
import z4.b2;

/* JADX INFO: loaded from: classes2.dex */
public class q0 implements z0, a0, b2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final q0 f317a = new q0();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final DateTimeFormatter f318b = DateTimeFormat.forPattern("yyyy-MM-dd HH:mm:ss");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final DateTimeFormatter f319c = DateTimeFormat.forPattern("yyyy-MM-dd HH:mm:ss.SSS");

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final DateTimeFormatter f320d = DateTimeFormat.forPattern("yyyy/MM/dd HH:mm:ss");

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final DateTimeFormatter f321e = DateTimeFormat.forPattern("yyyy年M月d日 HH:mm:ss");

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final DateTimeFormatter f322f = DateTimeFormat.forPattern("yyyy年M月d日 H时m分s秒");

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final DateTimeFormatter f323g = DateTimeFormat.forPattern("yyyy년M월d일 HH:mm:ss");

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final DateTimeFormatter f324h = DateTimeFormat.forPattern("MM/dd/yyyy HH:mm:ss");

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final DateTimeFormatter f325i = DateTimeFormat.forPattern("dd/MM/yyyy HH:mm:ss");

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final DateTimeFormatter f326j = DateTimeFormat.forPattern("dd.MM.yyyy HH:mm:ss");

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final DateTimeFormatter f327k = DateTimeFormat.forPattern("dd-MM-yyyy HH:mm:ss");

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static final DateTimeFormatter f328l = DateTimeFormat.forPattern("yyyyMMdd");

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static final DateTimeFormatter f329m = DateTimeFormat.forPattern("yyyy/MM/dd");

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private static final DateTimeFormatter f330n = DateTimeFormat.forPattern("yyyy年M月d日");

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static final DateTimeFormatter f331o = DateTimeFormat.forPattern("yyyy년M월d일");

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private static final DateTimeFormatter f332p = DateTimeFormat.forPattern("MM/dd/yyyy");

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private static final DateTimeFormatter f333q = DateTimeFormat.forPattern("dd/MM/yyyy");

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static final DateTimeFormatter f334r = DateTimeFormat.forPattern("dd.MM.yyyy");

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private static final DateTimeFormatter f335s = DateTimeFormat.forPattern("dd-MM-yyyy");

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private static final DateTimeFormatter f336t = DateTimeFormat.forPattern("yyyy-MM-dd HH:mm:ss").withZone(DateTimeZone.getDefault());

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private static final DateTimeFormatter f337u = DateTimeFormat.forPattern("yyyy-MM-dd'T'HH:mm:ss");

    private void i(j1 j1Var, ReadablePartial readablePartial, String str) {
        j1Var.q0((str.equals("yyyy-MM-dd'T'HH:mm:ss") ? f337u : DateTimeFormat.forPattern(str)).print(readablePartial));
    }

    @Override // a5.a0
    public void a(o0 o0Var, Object obj, p pVar) {
        i(o0Var.f296k, (ReadablePartial) obj, pVar.b());
    }

    @Override // z4.b2
    public int b() {
        return 4;
    }

    @Override // z4.b2
    public Object c(y4.a aVar, Type type, Object obj) {
        return e(aVar, type, obj, null, 0);
    }

    @Override // a5.z0
    public void d(o0 o0Var, Object obj, Object obj2, Type type, int i11) {
        j1 j1Var = o0Var.f296k;
        if (obj == null) {
            j1Var.m0();
            return;
        }
        if (type == null) {
            type = obj.getClass();
        }
        if (type != LocalDateTime.class) {
            j1Var.q0(obj.toString());
            return;
        }
        SerializerFeature serializerFeature = SerializerFeature.UseISO8601DateFormat;
        int mask = serializerFeature.getMask();
        LocalDateTime localDateTime = (LocalDateTime) obj;
        String strO = o0Var.o();
        if (strO == null) {
            if ((i11 & mask) != 0 || o0Var.t(serializerFeature)) {
                strO = "yyyy-MM-dd'T'HH:mm:ss";
            } else if (o0Var.t(SerializerFeature.WriteDateUseDateFormat)) {
                strO = com.alibaba.fastjson.a.DEFFAULT_DATE_FORMAT;
            } else {
                strO = localDateTime.getMillisOfSecond() == 0 ? "yyyy-MM-dd'T'HH:mm:ss.SSS" : "yyyy-MM-dd'T'HH:mm:ss.SSSSSSSSS";
            }
        }
        if (strO != null) {
            i(j1Var, localDateTime, strO);
        } else {
            j1Var.l0(localDateTime.toDateTime(DateTimeZone.forTimeZone(com.alibaba.fastjson.a.defaultTimeZone)).toInstant().getMillis());
        }
    }

    public Object e(y4.a aVar, Type type, Object obj, String str, int i11) {
        y4.b bVar = aVar.f78831f;
        if (bVar.q0() == 8) {
            bVar.Z();
            return null;
        }
        if (bVar.q0() == 4) {
            String strK0 = bVar.k0();
            bVar.Z();
            DateTimeFormatter dateTimeFormatterForPattern = str != null ? "yyyy-MM-dd HH:mm:ss".equals(str) ? f318b : DateTimeFormat.forPattern(str) : null;
            if ("".equals(strK0)) {
                return null;
            }
            if (type == LocalDateTime.class) {
                return (strK0.length() == 10 || strK0.length() == 8) ? g(strK0, str, dateTimeFormatterForPattern).toLocalDateTime(LocalTime.MIDNIGHT) : f(strK0, dateTimeFormatterForPattern);
            }
            if (type == LocalDate.class) {
                return strK0.length() == 23 ? LocalDateTime.parse(strK0).toLocalDate() : g(strK0, str, dateTimeFormatterForPattern);
            }
            if (type == LocalTime.class) {
                return strK0.length() == 23 ? LocalDateTime.parse(strK0).toLocalTime() : LocalTime.parse(strK0);
            }
            if (type == DateTime.class) {
                if (dateTimeFormatterForPattern == f318b) {
                    dateTimeFormatterForPattern = f336t;
                }
                return h(strK0, dateTimeFormatterForPattern);
            }
            if (type == DateTimeZone.class) {
                return DateTimeZone.forID(strK0);
            }
            if (type == Period.class) {
                return Period.parse(strK0);
            }
            if (type == Duration.class) {
                return Duration.parse(strK0);
            }
            if (type == Instant.class) {
                for (int i12 = 0; i12 < strK0.length(); i12++) {
                    char cCharAt = strK0.charAt(i12);
                    if (cCharAt < '0' || cCharAt > '9') {
                        return Instant.parse(strK0);
                    }
                }
                if (strK0.length() > 8 && strK0.length() < 19) {
                    return new Instant(Long.parseLong(strK0));
                }
                return Instant.parse(strK0);
            }
            if (type == DateTimeFormatter.class) {
                return DateTimeFormat.forPattern(strK0);
            }
        } else {
            if (bVar.q0() == 2) {
                long jL = bVar.l();
                bVar.Z();
                TimeZone timeZone = com.alibaba.fastjson.a.defaultTimeZone;
                if (timeZone == null) {
                    timeZone = TimeZone.getDefault();
                }
                if (type == DateTime.class) {
                    return new DateTime(jL, DateTimeZone.forTimeZone(timeZone));
                }
                LocalDateTime localDateTime = new LocalDateTime(jL, DateTimeZone.forTimeZone(timeZone));
                if (type == LocalDateTime.class) {
                    return localDateTime;
                }
                if (type == LocalDate.class) {
                    return localDateTime.toLocalDate();
                }
                if (type == LocalTime.class) {
                    return localDateTime.toLocalTime();
                }
                if (type == Instant.class) {
                    return new Instant(jL);
                }
                throw new UnsupportedOperationException();
            }
            if (bVar.q0() != 12) {
                throw new UnsupportedOperationException();
            }
            JSONObject jSONObjectL0 = aVar.l0();
            if (type == Instant.class) {
                Object obj2 = jSONObjectL0.get("epochSecond");
                if (obj2 instanceof Number) {
                    return Instant.ofEpochSecond(TypeUtils.D0((Number) obj2));
                }
                Object obj3 = jSONObjectL0.get("millis");
                if (obj3 instanceof Number) {
                    return Instant.ofEpochMilli(TypeUtils.D0((Number) obj3));
                }
            }
        }
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:52:0x00e8  */
    protected LocalDateTime f(String str, DateTimeFormatter dateTimeFormatter) {
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
                        dateTimeFormatter2 = f337u;
                    } else if (cCharAt3 == ' ') {
                        dateTimeFormatter2 = f318b;
                    } else {
                        dateTimeFormatter2 = dateTimeFormatter;
                    }
                } else if (cCharAt == '/' && cCharAt2 == '/') {
                    dateTimeFormatter2 = f320d;
                } else {
                    char cCharAt6 = str.charAt(0);
                    char cCharAt7 = str.charAt(1);
                    char cCharAt8 = str.charAt(2);
                    char cCharAt9 = str.charAt(3);
                    char cCharAt10 = str.charAt(5);
                    if (cCharAt8 == '/' && cCharAt10 == '/') {
                        int i11 = ((cCharAt9 - '0') * 10) + (cCharAt - '0');
                        if (((cCharAt6 - '0') * 10) + (cCharAt7 - '0') > 12) {
                            dateTimeFormatter2 = f325i;
                        } else if (i11 > 12) {
                            dateTimeFormatter2 = f324h;
                        } else {
                            String country = Locale.getDefault().getCountry();
                            if (country.equals("US")) {
                                dateTimeFormatter2 = f324h;
                            } else if (country.equals("BR") || country.equals("AU")) {
                                dateTimeFormatter2 = f325i;
                            } else {
                                dateTimeFormatter2 = dateTimeFormatter;
                            }
                        }
                    } else if (cCharAt8 == '.' && cCharAt10 == '.') {
                        dateTimeFormatter2 = f326j;
                    } else if (cCharAt8 == '-' && cCharAt10 == '-') {
                        dateTimeFormatter2 = f327k;
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
                    dateTimeFormatter2 = f319c;
                } else {
                    dateTimeFormatter2 = dateTimeFormatter;
                }
            } else {
                dateTimeFormatter2 = dateTimeFormatter;
            }
            if (str.length() >= 17) {
                char cCharAt17 = str.charAt(4);
                if (cCharAt17 == 24180) {
                    dateTimeFormatter2 = str.charAt(str.length() - 1) == 31186 ? f322f : f321e;
                } else if (cCharAt17 == 45380) {
                    dateTimeFormatter2 = f323g;
                }
            }
            for (int i12 = 0; i12 < str.length(); i12++) {
                char cCharAt18 = str.charAt(i12);
                if (cCharAt18 >= '0' && cCharAt18 <= '9') {
                }
            }
            if (str.length() > 8 && str.length() < 19) {
                return new LocalDateTime(Long.parseLong(str), DateTimeZone.forTimeZone(com.alibaba.fastjson.a.defaultTimeZone));
            }
        } else {
            dateTimeFormatter2 = dateTimeFormatter;
        }
        return dateTimeFormatter2 == null ? LocalDateTime.parse(str) : LocalDateTime.parse(str, dateTimeFormatter2);
    }

    protected LocalDate g(String str, String str2, DateTimeFormatter dateTimeFormatter) {
        DateTimeFormatter dateTimeFormatter2;
        DateTimeFormatter dateTimeFormatter3;
        if (dateTimeFormatter == null) {
            if (str.length() == 8) {
                dateTimeFormatter = f328l;
            }
            if (str.length() == 10) {
                char cCharAt = str.charAt(4);
                char cCharAt2 = str.charAt(7);
                if (cCharAt == '/' && cCharAt2 == '/') {
                    dateTimeFormatter = f329m;
                }
                char cCharAt3 = str.charAt(0);
                char cCharAt4 = str.charAt(1);
                char cCharAt5 = str.charAt(2);
                char cCharAt6 = str.charAt(3);
                char cCharAt7 = str.charAt(5);
                if (cCharAt5 == '/' && cCharAt7 == '/') {
                    int i11 = ((cCharAt6 - '0') * 10) + (cCharAt - '0');
                    if (((cCharAt3 - '0') * 10) + (cCharAt4 - '0') > 12) {
                        dateTimeFormatter3 = f333q;
                    } else if (i11 > 12) {
                        dateTimeFormatter3 = f332p;
                    } else {
                        String country = Locale.getDefault().getCountry();
                        if (country.equals("US")) {
                            dateTimeFormatter3 = f332p;
                        } else if (country.equals("BR") || country.equals("AU")) {
                            dateTimeFormatter3 = f333q;
                        }
                    }
                    dateTimeFormatter = dateTimeFormatter3;
                } else if (cCharAt5 == '.' && cCharAt7 == '.') {
                    dateTimeFormatter = f334r;
                } else if (cCharAt5 == '-' && cCharAt7 == '-') {
                    dateTimeFormatter = f335s;
                }
            }
            if (str.length() >= 9) {
                char cCharAt8 = str.charAt(4);
                if (cCharAt8 == 24180) {
                    dateTimeFormatter2 = f330n;
                } else if (cCharAt8 == 45380) {
                    dateTimeFormatter2 = f331o;
                }
                dateTimeFormatter = dateTimeFormatter2;
            }
            for (int i12 = 0; i12 < str.length(); i12++) {
                char cCharAt9 = str.charAt(i12);
                if (cCharAt9 >= '0' && cCharAt9 <= '9') {
                }
            }
            if (str.length() > 8 && str.length() < 19) {
                return new LocalDateTime(Long.parseLong(str), DateTimeZone.forTimeZone(com.alibaba.fastjson.a.defaultTimeZone)).toLocalDate();
            }
        }
        return dateTimeFormatter == null ? LocalDate.parse(str) : LocalDate.parse(str, dateTimeFormatter);
    }

    protected DateTime h(String str, DateTimeFormatter dateTimeFormatter) {
        if (dateTimeFormatter == null) {
            if (str.length() == 19) {
                char cCharAt = str.charAt(4);
                char cCharAt2 = str.charAt(7);
                char cCharAt3 = str.charAt(10);
                char cCharAt4 = str.charAt(13);
                char cCharAt5 = str.charAt(16);
                if (cCharAt4 == ':' && cCharAt5 == ':') {
                    if (cCharAt == '-' && cCharAt2 == '-') {
                        if (cCharAt3 == 'T') {
                            dateTimeFormatter = f337u;
                        } else if (cCharAt3 == ' ') {
                            dateTimeFormatter = f318b;
                        }
                    } else if (cCharAt == '/' && cCharAt2 == '/') {
                        dateTimeFormatter = f320d;
                    } else {
                        char cCharAt6 = str.charAt(0);
                        char cCharAt7 = str.charAt(1);
                        char cCharAt8 = str.charAt(2);
                        char cCharAt9 = str.charAt(3);
                        char cCharAt10 = str.charAt(5);
                        if (cCharAt8 == '/' && cCharAt10 == '/') {
                            int i11 = ((cCharAt9 - '0') * 10) + (cCharAt - '0');
                            if (((cCharAt6 - '0') * 10) + (cCharAt7 - '0') > 12) {
                                dateTimeFormatter = f325i;
                            } else if (i11 > 12) {
                                dateTimeFormatter = f324h;
                            } else {
                                String country = Locale.getDefault().getCountry();
                                if (country.equals("US")) {
                                    dateTimeFormatter = f324h;
                                } else if (country.equals("BR") || country.equals("AU")) {
                                    dateTimeFormatter = f325i;
                                }
                            }
                        } else if (cCharAt8 == '.' && cCharAt10 == '.') {
                            dateTimeFormatter = f326j;
                        } else if (cCharAt8 == '-' && cCharAt10 == '-') {
                            dateTimeFormatter = f327k;
                        }
                    }
                }
            }
            if (str.length() >= 17) {
                char cCharAt11 = str.charAt(4);
                if (cCharAt11 == 24180) {
                    dateTimeFormatter = str.charAt(str.length() - 1) == 31186 ? f322f : f321e;
                } else if (cCharAt11 == 45380) {
                    dateTimeFormatter = f323g;
                }
            }
        }
        return dateTimeFormatter == null ? DateTime.parse(str) : DateTime.parse(str, dateTimeFormatter);
    }
}
