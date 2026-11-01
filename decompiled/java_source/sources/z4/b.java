package z4;

import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.parser.Feature;
import com.alibaba.fastjson.util.TypeUtils;
import java.lang.reflect.Type;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Locale;

/* JADX INFO: loaded from: classes2.dex */
public abstract class b extends e implements b2 {
    @Override // z4.e, z4.b2
    public Object c(y4.a aVar, Type type, Object obj) {
        return e(aVar, type, obj, null, 0);
    }

    @Override // z4.e
    public Object e(y4.a aVar, Type type, Object obj, String str, int i11) {
        Object objT;
        Object obj2;
        Object time;
        SimpleDateFormat simpleDateFormat;
        Object obj3;
        SimpleDateFormat simpleDateFormat2;
        y4.b bVar = aVar.f78831f;
        if (bVar.q0() == 2) {
            long jL = bVar.l();
            bVar.c0(16);
            if ("unixtime".equals(str)) {
                jL *= 1000;
            }
            objT = Long.valueOf(jL);
        } else {
            Object obj4 = null;
            if (bVar.q0() == 4) {
                String strK0 = bVar.k0();
                if (str != null) {
                    if ("yyyy-MM-dd HH:mm:ss.SSSSSSSSS".equals(str) && (type instanceof Class) && ((Class) type).getName().equals("java.sql.Timestamp")) {
                        return TypeUtils.B(strK0);
                    }
                    try {
                        simpleDateFormat = new SimpleDateFormat(str, aVar.f78831f.B0());
                    } catch (IllegalArgumentException e11) {
                        if (str.contains("T")) {
                            try {
                                simpleDateFormat = new SimpleDateFormat(str.replaceAll("T", "'T'"), aVar.f78831f.B0());
                            } catch (IllegalArgumentException unused) {
                                throw e11;
                            }
                        } else {
                            simpleDateFormat = null;
                        }
                    }
                    if (com.alibaba.fastjson.a.defaultTimeZone != null) {
                        simpleDateFormat.setTimeZone(aVar.f78831f.l0());
                    }
                    try {
                        obj3 = simpleDateFormat.parse(strK0);
                    } catch (ParseException unused2) {
                        obj3 = null;
                    }
                    if (obj3 == null && com.alibaba.fastjson.a.defaultLocale == Locale.CHINA) {
                        try {
                            simpleDateFormat2 = new SimpleDateFormat(str, Locale.US);
                        } catch (IllegalArgumentException e12) {
                            simpleDateFormat2 = simpleDateFormat;
                            if (str.contains("T")) {
                                try {
                                    simpleDateFormat2 = new SimpleDateFormat(str.replaceAll("T", "'T'"), aVar.f78831f.B0());
                                } catch (IllegalArgumentException unused3) {
                                    throw e12;
                                }
                            }
                        }
                        simpleDateFormat2.setTimeZone(aVar.f78831f.l0());
                        try {
                            obj3 = simpleDateFormat2.parse(strK0);
                        } catch (ParseException unused4) {
                            obj3 = null;
                        }
                    }
                    if (obj3 != null) {
                        obj4 = obj3;
                    } else if (str.equals("yyyy-MM-dd'T'HH:mm:ss.SSS") && strK0.length() == 19) {
                        try {
                            SimpleDateFormat simpleDateFormat3 = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss", com.alibaba.fastjson.a.defaultLocale);
                            simpleDateFormat3.setTimeZone(com.alibaba.fastjson.a.defaultTimeZone);
                            obj4 = simpleDateFormat3.parse(strK0);
                        } catch (ParseException unused5) {
                        }
                    }
                }
                if (obj4 == null) {
                    bVar.c0(16);
                    if (bVar.n(Feature.AllowISO8601DateFormat)) {
                        y4.e eVar = new y4.e(strK0);
                        if (eVar.w1()) {
                            obj2 = strK0;
                            time = strK0;
                            time = eVar.J0().getTime();
                        }
                        obj2 = strK0;
                        time = strK0;
                        eVar.close();
                        obj2 = time;
                    }
                    obj2 = strK0;
                    objT = obj2;
                } else {
                    objT = obj4;
                }
            } else if (bVar.q0() == 8) {
                bVar.Z();
                objT = obj4;
            } else if (bVar.q0() == 12) {
                bVar.Z();
                if (bVar.q0() != 4) {
                    throw new JSONException("syntax error");
                }
                if (com.alibaba.fastjson.a.DEFAULT_TYPE_KEY.equals(bVar.k0())) {
                    bVar.Z();
                    aVar.b(17);
                    Type typeJ = aVar.m().j(bVar.k0(), null, bVar.r());
                    if (typeJ != null) {
                        type = typeJ;
                    }
                    aVar.b(4);
                    aVar.b(16);
                }
                bVar.q(2);
                if (bVar.q0() != 2) {
                    throw new JSONException("syntax error : " + bVar.v());
                }
                long jL2 = bVar.l();
                bVar.Z();
                Object objValueOf = Long.valueOf(jL2);
                aVar.b(13);
                objT = objValueOf;
            } else if (aVar.u() == 2) {
                aVar.E0(0);
                aVar.b(16);
                if (bVar.q0() != 4) {
                    throw new JSONException("syntax error");
                }
                if (!"val".equals(bVar.k0())) {
                    throw new JSONException("syntax error");
                }
                bVar.Z();
                aVar.b(17);
                Object objT2 = aVar.T();
                aVar.b(13);
                objT = objT2;
            } else {
                objT = aVar.T();
            }
        }
        return f(aVar, type, obj, objT);
    }

    protected abstract Object f(y4.a aVar, Type type, Object obj, Object obj2);
}
