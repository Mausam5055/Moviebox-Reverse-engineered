package com.alibaba.fastjson;

import a5.g1;
import a5.h1;
import a5.j1;
import a5.m0;
import a5.o0;
import a5.p0;
import a5.z0;
import com.alibaba.fastjson.parser.Feature;
import com.alibaba.fastjson.serializer.SerializerFeature;
import com.alibaba.fastjson.util.TypeUtils;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.Writer;
import java.lang.reflect.Array;
import java.lang.reflect.Type;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.Charset;
import java.nio.charset.CharsetDecoder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Properties;
import java.util.TimeZone;
import java.util.TreeMap;
import java.util.concurrent.ConcurrentHashMap;
import java.util.zip.GZIPInputStream;
import y4.h;
import z4.e3;

/* JADX INFO: loaded from: classes2.dex */
public abstract class a implements e, b {
    public static final String VERSION = "1.2.83";
    private static final ThreadLocal<byte[]> bytesLocal;
    private static final ThreadLocal<char[]> charsLocal;
    public static TimeZone defaultTimeZone = TimeZone.getDefault();
    public static Locale defaultLocale = Locale.getDefault();
    public static String DEFAULT_TYPE_KEY = "@type";
    static final h1[] emptyFilters = new h1[0];
    public static String DEFFAULT_DATE_FORMAT = "yyyy-MM-dd HH:mm:ss";
    private static final ConcurrentHashMap<Type, Type> mixInsMapper = new ConcurrentHashMap<>(16);
    public static int DEFAULT_PARSER_FEATURE = ((((((Feature.AutoCloseSource.getMask() | Feature.InternFieldNames.getMask()) | Feature.UseBigDecimal.getMask()) | Feature.AllowUnQuotedFieldNames.getMask()) | Feature.AllowSingleQuotes.getMask()) | Feature.AllowArbitraryCommas.getMask()) | Feature.SortFeidFastMatch.getMask()) | Feature.IgnoreNotMatch.getMask();
    public static int DEFAULT_GENERATE_FEATURE = ((SerializerFeature.QuoteFieldNames.getMask() | SerializerFeature.SkipTransientField.getMask()) | SerializerFeature.WriteEnumUsingName.getMask()) | SerializerFeature.SortField.getMask();

    static {
        e(com.alibaba.fastjson.util.f.f18219a);
        bytesLocal = new ThreadLocal<>();
        charsLocal = new ThreadLocal<>();
    }

    private static byte[] a(int i11) {
        ThreadLocal<byte[]> threadLocal = bytesLocal;
        byte[] bArr = threadLocal.get();
        if (bArr != null) {
            return bArr.length < i11 ? new byte[i11] : bArr;
        }
        if (i11 > 65536) {
            return new byte[i11];
        }
        byte[] bArr2 = new byte[65536];
        threadLocal.set(bArr2);
        return bArr2;
    }

    public static void addMixInAnnotations(Type type, Type type2) {
        if (type == null || type2 == null) {
            return;
        }
        mixInsMapper.put(type, type2);
    }

    private static char[] c(int i11) {
        ThreadLocal<char[]> threadLocal = charsLocal;
        char[] cArr = threadLocal.get();
        if (cArr != null) {
            return cArr.length < i11 ? new char[i11] : cArr;
        }
        if (i11 > 65536) {
            return new char[i11];
        }
        char[] cArr2 = new char[65536];
        threadLocal.set(cArr2);
        return cArr2;
    }

    public static void clearMixInAnnotations() {
        mixInsMapper.clear();
    }

    private static void e(Properties properties) {
        String property = properties.getProperty("fastjson.serializerFeatures.MapSortField");
        int mask = SerializerFeature.MapSortField.getMask();
        if ("true".equals(property)) {
            DEFAULT_GENERATE_FEATURE |= mask;
        } else if ("false".equals(property)) {
            DEFAULT_GENERATE_FEATURE &= ~mask;
        }
        if ("true".equals(properties.getProperty("parser.features.NonStringKeyAsString"))) {
            DEFAULT_PARSER_FEATURE |= Feature.NonStringKeyAsString.getMask();
        }
        if ("true".equals(properties.getProperty("parser.features.ErrorOnEnumNotMatch")) || "true".equals(properties.getProperty("fastjson.parser.features.ErrorOnEnumNotMatch"))) {
            DEFAULT_PARSER_FEATURE |= Feature.ErrorOnEnumNotMatch.getMask();
        }
        if ("false".equals(properties.getProperty("fastjson.asmEnable"))) {
            h.f78878z.A(false);
            g1.f223j.l(false);
        }
    }

    public static Type getMixInAnnotations(Type type) {
        if (type != null) {
            return mixInsMapper.get(type);
        }
        return null;
    }

    public static <T> void handleResovleTask(y4.a aVar, T t11) {
        aVar.w(t11);
    }

    public static boolean isValid(String str) {
        if (str != null && str.length() != 0) {
            y4.e eVar = new y4.e(str);
            try {
                eVar.Z();
                int iQ0 = eVar.q0();
                if (iQ0 != 12) {
                    if (iQ0 != 14) {
                        switch (iQ0) {
                            case 2:
                            case 3:
                            case 4:
                            case 5:
                            case 6:
                            case 7:
                            case 8:
                                eVar.Z();
                                break;
                            default:
                                return false;
                        }
                    } else {
                        eVar.D1(true);
                    }
                } else {
                    if (eVar.d() == 26) {
                        return false;
                    }
                    eVar.E1(true);
                }
                return eVar.q0() == 20;
            } catch (Exception unused) {
            } finally {
                eVar.close();
            }
        }
        return false;
    }

    public static boolean isValidArray(String str) {
        if (str != null && str.length() != 0) {
            y4.e eVar = new y4.e(str);
            try {
                eVar.Z();
                if (eVar.q0() != 14) {
                    return false;
                }
                eVar.D1(true);
                return eVar.q0() == 20;
            } catch (Exception unused) {
            } finally {
                eVar.close();
            }
        }
        return false;
    }

    public static boolean isValidObject(String str) {
        if (str != null && str.length() != 0) {
            y4.e eVar = new y4.e(str);
            try {
                eVar.Z();
                if (eVar.q0() != 12) {
                    return false;
                }
                if (eVar.d() == 26) {
                    return false;
                }
                eVar.E1(true);
                return eVar.q0() == 20;
            } catch (Exception unused) {
            } finally {
                eVar.close();
            }
        }
        return false;
    }

    public static Object parse(String str) {
        return parse(str, DEFAULT_PARSER_FEATURE);
    }

    public static Object parse(String str, int i11) {
        return parse(str, h.t(), i11);
    }

    public static Object parse(String str, h hVar) {
        return parse(str, hVar, DEFAULT_PARSER_FEATURE);
    }

    public static Object parse(String str, h hVar, int i11) {
        if (str == null) {
            return null;
        }
        y4.a aVar = new y4.a(str, hVar, i11);
        Object objT = aVar.T();
        aVar.w(objT);
        aVar.close();
        return objT;
    }

    public static Object parse(String str, h hVar, Feature... featureArr) {
        int iConfig = DEFAULT_PARSER_FEATURE;
        for (Feature feature : featureArr) {
            iConfig = Feature.config(iConfig, feature, true);
        }
        return parse(str, hVar, iConfig);
    }

    public static Object parse(String str, Feature... featureArr) {
        int iConfig = DEFAULT_PARSER_FEATURE;
        for (Feature feature : featureArr) {
            iConfig = Feature.config(iConfig, feature, true);
        }
        return parse(str, iConfig);
    }

    public static Object parse(byte[] bArr, int i11, int i12, CharsetDecoder charsetDecoder, int i13) {
        charsetDecoder.reset();
        char[] cArrC = c((int) (((double) i12) * ((double) charsetDecoder.maxCharsPerByte())));
        ByteBuffer byteBufferWrap = ByteBuffer.wrap(bArr, i11, i12);
        CharBuffer charBufferWrap = CharBuffer.wrap(cArrC);
        com.alibaba.fastjson.util.f.b(charsetDecoder, byteBufferWrap, charBufferWrap);
        y4.a aVar = new y4.a(cArrC, charBufferWrap.position(), h.t(), i13);
        Object objT = aVar.T();
        aVar.w(objT);
        aVar.close();
        return objT;
    }

    public static Object parse(byte[] bArr, int i11, int i12, CharsetDecoder charsetDecoder, Feature... featureArr) {
        if (bArr == null || bArr.length == 0) {
            return null;
        }
        int iConfig = DEFAULT_PARSER_FEATURE;
        for (Feature feature : featureArr) {
            iConfig = Feature.config(iConfig, feature, true);
        }
        return parse(bArr, i11, i12, charsetDecoder, iConfig);
    }

    public static Object parse(byte[] bArr, Feature... featureArr) {
        char[] cArrC = c(bArr.length);
        int iE = com.alibaba.fastjson.util.f.e(bArr, 0, bArr.length, cArrC);
        if (iE < 0) {
            return null;
        }
        return parse(new String(cArrC, 0, iE), featureArr);
    }

    public static JSONArray parseArray(String str) {
        return parseArray(str, h.f78878z);
    }

    public static JSONArray parseArray(String str, h hVar) {
        JSONArray jSONArray = null;
        if (str == null) {
            return null;
        }
        y4.a aVar = new y4.a(str, hVar);
        y4.b bVar = aVar.f78831f;
        if (bVar.q0() == 8) {
            bVar.Z();
        } else if (bVar.q0() != 20 || !bVar.U()) {
            jSONArray = new JSONArray();
            aVar.d0(jSONArray);
            aVar.w(jSONArray);
        }
        aVar.close();
        return jSONArray;
    }

    public static <T> List<T> parseArray(String str, Class<T> cls) {
        return parseArray(str, cls, h.f78878z);
    }

    public static <T> List<T> parseArray(String str, Class<T> cls, h hVar) {
        ArrayList arrayList = null;
        if (str == null) {
            return null;
        }
        y4.a aVar = new y4.a(str, hVar);
        y4.b bVar = aVar.f78831f;
        int iQ0 = bVar.q0();
        if (iQ0 == 8) {
            bVar.Z();
        } else if (iQ0 != 20 || !bVar.U()) {
            arrayList = new ArrayList();
            aVar.Z(cls, arrayList);
            aVar.w(arrayList);
        }
        aVar.close();
        return arrayList;
    }

    public static List<Object> parseArray(String str, Type[] typeArr) {
        return parseArray(str, typeArr, h.f78878z);
    }

    public static List<Object> parseArray(String str, Type[] typeArr, h hVar) {
        if (str == null) {
            return null;
        }
        y4.a aVar = new y4.a(str, hVar);
        Object[] objArrH0 = aVar.h0(typeArr);
        List<Object> listAsList = objArrH0 != null ? Arrays.asList(objArrH0) : null;
        aVar.w(listAsList);
        aVar.close();
        return listAsList;
    }

    public static JSONObject parseObject(String str) {
        Object obj = parse(str);
        if (obj instanceof JSONObject) {
            return (JSONObject) obj;
        }
        try {
            return (JSONObject) toJSON(obj);
        } catch (RuntimeException e11) {
            throw new JSONException("can not cast to JSONObject.", e11);
        }
    }

    public static JSONObject parseObject(String str, Feature... featureArr) {
        return (JSONObject) parse(str, featureArr);
    }

    public static <T> T parseObject(InputStream inputStream, Type type, Feature... featureArr) throws IOException {
        return (T) parseObject(inputStream, com.alibaba.fastjson.util.f.f18220b, type, featureArr);
    }

    public static <T> T parseObject(InputStream inputStream, Charset charset, Type type, h hVar, e3 e3Var, int i11, Feature... featureArr) throws IOException {
        if (charset == null) {
            charset = com.alibaba.fastjson.util.f.f18220b;
        }
        Charset charset2 = charset;
        byte[] bArrA = a(65536);
        int i12 = 0;
        while (true) {
            int i13 = inputStream.read(bArrA, i12, bArrA.length - i12);
            if (i13 == -1) {
                return (T) parseObject(bArrA, 0, i12, charset2, type, hVar, e3Var, i11, featureArr);
            }
            i12 += i13;
            if (i12 == bArrA.length) {
                byte[] bArr = new byte[(bArrA.length * 3) / 2];
                System.arraycopy(bArrA, 0, bArr, 0, bArrA.length);
                bArrA = bArr;
            }
        }
    }

    public static <T> T parseObject(InputStream inputStream, Charset charset, Type type, h hVar, Feature... featureArr) throws IOException {
        return (T) parseObject(inputStream, charset, type, hVar, (e3) null, DEFAULT_PARSER_FEATURE, featureArr);
    }

    public static <T> T parseObject(InputStream inputStream, Charset charset, Type type, Feature... featureArr) throws IOException {
        return (T) parseObject(inputStream, charset, type, h.f78878z, featureArr);
    }

    public static <T> T parseObject(String str, g gVar, Feature... featureArr) {
        return (T) parseObject(str, gVar.f18147a, h.f78878z, DEFAULT_PARSER_FEATURE, featureArr);
    }

    public static <T> T parseObject(String str, Class<T> cls) {
        return (T) parseObject(str, (Class) cls, new Feature[0]);
    }

    public static <T> T parseObject(String str, Class<T> cls, e3 e3Var, Feature... featureArr) {
        return (T) parseObject(str, cls, h.f78878z, e3Var, DEFAULT_PARSER_FEATURE, featureArr);
    }

    public static <T> T parseObject(String str, Class<T> cls, Feature... featureArr) {
        return (T) parseObject(str, cls, h.f78878z, (e3) null, DEFAULT_PARSER_FEATURE, featureArr);
    }

    public static <T> T parseObject(String str, Type type, int i11, Feature... featureArr) {
        if (str == null) {
            return null;
        }
        for (Feature feature : featureArr) {
            i11 = Feature.config(i11, feature, true);
        }
        y4.a aVar = new y4.a(str, h.t(), i11);
        T t11 = (T) aVar.o0(type);
        aVar.w(t11);
        aVar.close();
        return t11;
    }

    public static <T> T parseObject(String str, Type type, h hVar, int i11, Feature... featureArr) {
        return (T) parseObject(str, type, hVar, (e3) null, i11, featureArr);
    }

    public static <T> T parseObject(String str, Type type, h hVar, e3 e3Var, int i11, Feature... featureArr) {
        if (str == null || str.length() == 0) {
            return null;
        }
        if (featureArr != null) {
            for (Feature feature : featureArr) {
                i11 |= feature.mask;
            }
        }
        y4.a aVar = new y4.a(str, hVar, i11);
        T t11 = (T) aVar.p0(type, null);
        aVar.w(t11);
        aVar.close();
        return t11;
    }

    public static <T> T parseObject(String str, Type type, h hVar, Feature... featureArr) {
        return (T) parseObject(str, type, hVar, (e3) null, DEFAULT_PARSER_FEATURE, featureArr);
    }

    public static <T> T parseObject(String str, Type type, e3 e3Var, Feature... featureArr) {
        return (T) parseObject(str, type, h.f78878z, e3Var, DEFAULT_PARSER_FEATURE, featureArr);
    }

    public static <T> T parseObject(String str, Type type, Feature... featureArr) {
        return (T) parseObject(str, type, h.f78878z, DEFAULT_PARSER_FEATURE, featureArr);
    }

    public static <T> T parseObject(byte[] bArr, int i11, int i12, Charset charset, Type type, h hVar, e3 e3Var, int i13, Feature... featureArr) throws Throwable {
        String str;
        InputStreamReader inputStreamReader;
        String strM;
        if (charset == null) {
            charset = com.alibaba.fastjson.util.f.f18220b;
        }
        InputStreamReader inputStreamReader2 = null;
        if (charset == com.alibaba.fastjson.util.f.f18220b) {
            char[] cArrC = c(bArr.length);
            int iE = com.alibaba.fastjson.util.f.e(bArr, i11, i12, cArrC);
            if (iE < 0) {
                try {
                    inputStreamReader = new InputStreamReader(new GZIPInputStream(new ByteArrayInputStream(bArr, i11, i12)), "UTF-8");
                    try {
                        strM = com.alibaba.fastjson.util.f.m(inputStreamReader);
                        com.alibaba.fastjson.util.f.a(inputStreamReader);
                    } catch (Exception unused) {
                        com.alibaba.fastjson.util.f.a(inputStreamReader);
                        return null;
                    } catch (Throwable th2) {
                        th = th2;
                        inputStreamReader2 = inputStreamReader;
                        com.alibaba.fastjson.util.f.a(inputStreamReader2);
                        throw th;
                    }
                } catch (Exception unused2) {
                    inputStreamReader = null;
                } catch (Throwable th3) {
                    th = th3;
                }
            } else {
                strM = null;
            }
            if (strM == null && iE < 0) {
                return null;
            }
            if (strM == null) {
                strM = new String(cArrC, 0, iE);
            }
            str = strM;
        } else {
            if (i12 < 0) {
                return null;
            }
            str = new String(bArr, i11, i12, charset);
        }
        return (T) parseObject(str, type, hVar, e3Var, i13, featureArr);
    }

    public static <T> T parseObject(byte[] bArr, int i11, int i12, Charset charset, Type type, Feature... featureArr) {
        return (T) parseObject(bArr, i11, i12, charset, type, h.f78878z, null, DEFAULT_PARSER_FEATURE, featureArr);
    }

    public static <T> T parseObject(byte[] bArr, int i11, int i12, CharsetDecoder charsetDecoder, Type type, Feature... featureArr) {
        charsetDecoder.reset();
        char[] cArrC = c((int) (((double) i12) * ((double) charsetDecoder.maxCharsPerByte())));
        ByteBuffer byteBufferWrap = ByteBuffer.wrap(bArr, i11, i12);
        CharBuffer charBufferWrap = CharBuffer.wrap(cArrC);
        com.alibaba.fastjson.util.f.b(charsetDecoder, byteBufferWrap, charBufferWrap);
        return (T) parseObject(cArrC, charBufferWrap.position(), type, featureArr);
    }

    public static <T> T parseObject(byte[] bArr, Type type, Feature... featureArr) {
        return (T) parseObject(bArr, 0, bArr.length, com.alibaba.fastjson.util.f.f18220b, type, featureArr);
    }

    public static <T> T parseObject(byte[] bArr, Charset charset, Type type, h hVar, e3 e3Var, int i11, Feature... featureArr) {
        return (T) parseObject(bArr, 0, bArr.length, charset, type, hVar, e3Var, i11, featureArr);
    }

    public static <T> T parseObject(char[] cArr, int i11, Type type, Feature... featureArr) {
        if (cArr == null || cArr.length == 0) {
            return null;
        }
        int iConfig = DEFAULT_PARSER_FEATURE;
        for (Feature feature : featureArr) {
            iConfig = Feature.config(iConfig, feature, true);
        }
        y4.a aVar = new y4.a(cArr, i11, h.t(), iConfig);
        T t11 = (T) aVar.o0(type);
        aVar.w(t11);
        aVar.close();
        return t11;
    }

    public static void removeMixInAnnotations(Type type) {
        if (type != null) {
            mixInsMapper.remove(type);
        }
    }

    public static void setDefaultTypeKey(String str) {
        DEFAULT_TYPE_KEY = str;
        h.f78878z.f78883e.b(str, 0, str.length(), str.hashCode(), true);
    }

    public static Object toJSON(Object obj) {
        return toJSON(obj, g1.f223j);
    }

    public static Object toJSON(Object obj, g1 g1Var) {
        if (obj == null) {
            return null;
        }
        if (obj instanceof a) {
            return obj;
        }
        if (obj instanceof Map) {
            Map map = (Map) obj;
            int size = map.size();
            JSONObject jSONObject = new JSONObject((Map<String, Object>) (map instanceof LinkedHashMap ? new LinkedHashMap(size) : map instanceof TreeMap ? new TreeMap() : new HashMap(size)));
            for (Map.Entry entry : map.entrySet()) {
                jSONObject.put(TypeUtils.A(entry.getKey()), toJSON(entry.getValue(), g1Var));
            }
            return jSONObject;
        }
        if (obj instanceof Collection) {
            Collection collection = (Collection) obj;
            JSONArray jSONArray = new JSONArray(collection.size());
            Iterator it = collection.iterator();
            while (it.hasNext()) {
                jSONArray.add(toJSON(it.next(), g1Var));
            }
            return jSONArray;
        }
        if (obj instanceof m0) {
            return parse(toJSONString(obj));
        }
        Class<?> cls = obj.getClass();
        if (cls.isEnum()) {
            return ((Enum) obj).name();
        }
        boolean z10 = false;
        if (cls.isArray()) {
            int length = Array.getLength(obj);
            JSONArray jSONArray2 = new JSONArray(length);
            for (int i11 = 0; i11 < length; i11++) {
                jSONArray2.add(toJSON(Array.get(obj, i11)));
            }
            return jSONArray2;
        }
        if (h.w(cls)) {
            return obj;
        }
        z0 z0VarH = g1Var.h(cls);
        if (!(z0VarH instanceof p0)) {
            return parse(toJSONString(obj, g1Var, new SerializerFeature[0]));
        }
        p0 p0Var = (p0) z0VarH;
        x4.d dVarQ = p0Var.q();
        if (dVarQ != null) {
            boolean z11 = false;
            for (SerializerFeature serializerFeature : dVarQ.serialzeFeatures()) {
                if (serializerFeature == SerializerFeature.SortField || serializerFeature == SerializerFeature.MapSortField) {
                    z11 = true;
                }
            }
            z10 = z11;
        }
        JSONObject jSONObject2 = new JSONObject(z10);
        try {
            for (Map.Entry entry2 : p0Var.p(obj).entrySet()) {
                jSONObject2.put((String) entry2.getKey(), toJSON(entry2.getValue(), g1Var));
            }
            return jSONObject2;
        } catch (Exception e11) {
            throw new JSONException("toJSON error", e11);
        }
    }

    public static Object toJSON(Object obj, h hVar) {
        return toJSON(obj, g1.f223j);
    }

    public static byte[] toJSONBytes(Object obj, int i11, SerializerFeature... serializerFeatureArr) {
        return toJSONBytes(obj, g1.f223j, i11, serializerFeatureArr);
    }

    public static byte[] toJSONBytes(Object obj, g1 g1Var, int i11, SerializerFeature... serializerFeatureArr) {
        return toJSONBytes(obj, g1Var, emptyFilters, i11, serializerFeatureArr);
    }

    public static byte[] toJSONBytes(Object obj, g1 g1Var, h1 h1Var, SerializerFeature... serializerFeatureArr) {
        return toJSONBytes(obj, g1Var, new h1[]{h1Var}, DEFAULT_GENERATE_FEATURE, serializerFeatureArr);
    }

    public static byte[] toJSONBytes(Object obj, g1 g1Var, h1[] h1VarArr, int i11, SerializerFeature... serializerFeatureArr) {
        return toJSONBytes(obj, g1Var, h1VarArr, null, i11, serializerFeatureArr);
    }

    public static byte[] toJSONBytes(Object obj, g1 g1Var, h1[] h1VarArr, String str, int i11, SerializerFeature... serializerFeatureArr) {
        return toJSONBytes(com.alibaba.fastjson.util.f.f18220b, obj, g1Var, h1VarArr, str, i11, serializerFeatureArr);
    }

    public static byte[] toJSONBytes(Object obj, g1 g1Var, SerializerFeature... serializerFeatureArr) {
        return toJSONBytes(obj, g1Var, emptyFilters, DEFAULT_GENERATE_FEATURE, serializerFeatureArr);
    }

    public static byte[] toJSONBytes(Object obj, h1 h1Var, SerializerFeature... serializerFeatureArr) {
        return toJSONBytes(obj, g1.f223j, new h1[]{h1Var}, DEFAULT_GENERATE_FEATURE, serializerFeatureArr);
    }

    public static byte[] toJSONBytes(Object obj, h1[] h1VarArr, SerializerFeature... serializerFeatureArr) {
        return toJSONBytes(obj, g1.f223j, h1VarArr, DEFAULT_GENERATE_FEATURE, serializerFeatureArr);
    }

    public static byte[] toJSONBytes(Object obj, SerializerFeature... serializerFeatureArr) {
        return toJSONBytes(obj, DEFAULT_GENERATE_FEATURE, serializerFeatureArr);
    }

    public static byte[] toJSONBytes(Charset charset, Object obj, g1 g1Var, h1[] h1VarArr, String str, int i11, SerializerFeature... serializerFeatureArr) {
        j1 j1Var = new j1(null, i11, serializerFeatureArr);
        try {
            o0 o0Var = new o0(j1Var, g1Var);
            if (str != null && str.length() != 0) {
                o0Var.y(str);
                o0Var.j(SerializerFeature.WriteDateUseDateFormat, true);
            }
            if (h1VarArr != null) {
                for (h1 h1Var : h1VarArr) {
                    o0Var.b(h1Var);
                }
            }
            o0Var.A(obj);
            return j1Var.r(charset);
        } finally {
            j1Var.close();
        }
    }

    public static byte[] toJSONBytesWithFastJsonConfig(Charset charset, Object obj, g1 g1Var, h1[] h1VarArr, String str, int i11, SerializerFeature... serializerFeatureArr) {
        j1 j1Var = new j1(null, i11, serializerFeatureArr);
        try {
            o0 o0Var = new o0(j1Var, g1Var);
            if (str != null && str.length() != 0) {
                o0Var.z(str);
                o0Var.j(SerializerFeature.WriteDateUseDateFormat, true);
            }
            if (h1VarArr != null) {
                for (h1 h1Var : h1VarArr) {
                    o0Var.b(h1Var);
                }
            }
            o0Var.A(obj);
            return j1Var.r(charset);
        } finally {
            j1Var.close();
        }
    }

    public static String toJSONString(Object obj) {
        return toJSONString(obj, emptyFilters, new SerializerFeature[0]);
    }

    public static String toJSONString(Object obj, int i11, SerializerFeature... serializerFeatureArr) {
        j1 j1Var = new j1(null, i11, serializerFeatureArr);
        try {
            new o0(j1Var).A(obj);
            String string = j1Var.toString();
            int length = string.length();
            if (length > 0) {
                int i12 = length - 1;
                if (string.charAt(i12) == '.' && (obj instanceof Number) && !j1Var.q(SerializerFeature.WriteClassName)) {
                    return string.substring(0, i12);
                }
            }
            return string;
        } finally {
            j1Var.close();
        }
    }

    public static String toJSONString(Object obj, g1 g1Var, h1 h1Var, SerializerFeature... serializerFeatureArr) {
        return toJSONString(obj, g1Var, new h1[]{h1Var}, null, DEFAULT_GENERATE_FEATURE, serializerFeatureArr);
    }

    public static String toJSONString(Object obj, g1 g1Var, h1[] h1VarArr, String str, int i11, SerializerFeature... serializerFeatureArr) {
        j1 j1Var = new j1(null, i11, serializerFeatureArr);
        try {
            o0 o0Var = new o0(j1Var, g1Var);
            if (str != null && str.length() != 0) {
                o0Var.y(str);
                o0Var.j(SerializerFeature.WriteDateUseDateFormat, true);
            }
            if (h1VarArr != null) {
                for (h1 h1Var : h1VarArr) {
                    o0Var.b(h1Var);
                }
            }
            o0Var.A(obj);
            return j1Var.toString();
        } finally {
            j1Var.close();
        }
    }

    public static String toJSONString(Object obj, g1 g1Var, h1[] h1VarArr, SerializerFeature... serializerFeatureArr) {
        return toJSONString(obj, g1Var, h1VarArr, null, DEFAULT_GENERATE_FEATURE, serializerFeatureArr);
    }

    public static String toJSONString(Object obj, g1 g1Var, SerializerFeature... serializerFeatureArr) {
        return toJSONString(obj, g1Var, (h1) null, serializerFeatureArr);
    }

    public static String toJSONString(Object obj, h1 h1Var, SerializerFeature... serializerFeatureArr) {
        return toJSONString(obj, g1.f223j, new h1[]{h1Var}, null, DEFAULT_GENERATE_FEATURE, serializerFeatureArr);
    }

    public static String toJSONString(Object obj, boolean z10) {
        return !z10 ? toJSONString(obj) : toJSONString(obj, SerializerFeature.PrettyFormat);
    }

    public static String toJSONString(Object obj, h1[] h1VarArr, SerializerFeature... serializerFeatureArr) {
        return toJSONString(obj, g1.f223j, h1VarArr, null, DEFAULT_GENERATE_FEATURE, serializerFeatureArr);
    }

    public static String toJSONString(Object obj, SerializerFeature... serializerFeatureArr) {
        return toJSONString(obj, DEFAULT_GENERATE_FEATURE, serializerFeatureArr);
    }

    public static String toJSONStringWithDateFormat(Object obj, String str, SerializerFeature... serializerFeatureArr) {
        return toJSONString(obj, g1.f223j, null, str, DEFAULT_GENERATE_FEATURE, serializerFeatureArr);
    }

    public static String toJSONStringZ(Object obj, g1 g1Var, SerializerFeature... serializerFeatureArr) {
        return toJSONString(obj, g1Var, emptyFilters, null, 0, serializerFeatureArr);
    }

    public static <T> T toJavaObject(a aVar, Class<T> cls) {
        return (T) TypeUtils.f(aVar, cls, h.t());
    }

    public static final int writeJSONString(OutputStream outputStream, Object obj, int i11, SerializerFeature... serializerFeatureArr) throws IOException {
        return writeJSONString(outputStream, com.alibaba.fastjson.util.f.f18220b, obj, g1.f223j, null, null, i11, serializerFeatureArr);
    }

    public static final int writeJSONString(OutputStream outputStream, Object obj, SerializerFeature... serializerFeatureArr) throws IOException {
        return writeJSONString(outputStream, obj, DEFAULT_GENERATE_FEATURE, serializerFeatureArr);
    }

    public static final int writeJSONString(OutputStream outputStream, Charset charset, Object obj, g1 g1Var, h1[] h1VarArr, String str, int i11, SerializerFeature... serializerFeatureArr) throws IOException {
        j1 j1Var = new j1(null, i11, serializerFeatureArr);
        try {
            o0 o0Var = new o0(j1Var, g1Var);
            if (str != null && str.length() != 0) {
                o0Var.y(str);
                o0Var.j(SerializerFeature.WriteDateUseDateFormat, true);
            }
            if (h1VarArr != null) {
                for (h1 h1Var : h1VarArr) {
                    o0Var.b(h1Var);
                }
            }
            o0Var.A(obj);
            return j1Var.y0(outputStream, charset);
        } finally {
            j1Var.close();
        }
    }

    public static final int writeJSONString(OutputStream outputStream, Charset charset, Object obj, SerializerFeature... serializerFeatureArr) throws IOException {
        return writeJSONString(outputStream, charset, obj, g1.f223j, null, null, DEFAULT_GENERATE_FEATURE, serializerFeatureArr);
    }

    public static void writeJSONString(Writer writer, Object obj, int i11, SerializerFeature... serializerFeatureArr) {
        j1 j1Var = new j1(writer, i11, serializerFeatureArr);
        try {
            new o0(j1Var).A(obj);
        } finally {
            j1Var.close();
        }
    }

    public static void writeJSONString(Writer writer, Object obj, SerializerFeature... serializerFeatureArr) {
        writeJSONString(writer, obj, DEFAULT_GENERATE_FEATURE, serializerFeatureArr);
    }

    public static void writeJSONStringTo(Object obj, Writer writer, SerializerFeature... serializerFeatureArr) {
        writeJSONString(writer, obj, serializerFeatureArr);
    }

    public static final int writeJSONStringWithFastJsonConfig(OutputStream outputStream, Charset charset, Object obj, g1 g1Var, h1[] h1VarArr, String str, int i11, SerializerFeature... serializerFeatureArr) throws IOException {
        j1 j1Var = new j1(null, i11, serializerFeatureArr);
        try {
            o0 o0Var = new o0(j1Var, g1Var);
            if (str != null && str.length() != 0) {
                o0Var.z(str);
                o0Var.j(SerializerFeature.WriteDateUseDateFormat, true);
            }
            if (h1VarArr != null) {
                for (h1 h1Var : h1VarArr) {
                    o0Var.b(h1Var);
                }
            }
            o0Var.A(obj);
            return j1Var.y0(outputStream, charset);
        } finally {
            j1Var.close();
        }
    }

    @Override // com.alibaba.fastjson.b
    public String toJSONString() {
        j1 j1Var = new j1();
        try {
            new o0(j1Var).A(this);
            return j1Var.toString();
        } finally {
            j1Var.close();
        }
    }

    public <T> T toJavaObject(g gVar) {
        return (T) TypeUtils.h(this, gVar != null ? gVar.a() : null, h.t());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <T> T toJavaObject(Class<T> cls) {
        return (cls == JSONArray.class || cls == a.class || cls == Collection.class || cls == List.class) ? this : (T) TypeUtils.f(this, cls, h.t());
    }

    public <T> T toJavaObject(Type type) {
        return (T) TypeUtils.h(this, type, h.t());
    }

    public String toString() {
        return toJSONString();
    }

    public String toString(SerializerFeature... serializerFeatureArr) {
        j1 j1Var = new j1(null, DEFAULT_GENERATE_FEATURE, serializerFeatureArr);
        try {
            new o0(j1Var).A(this);
            return j1Var.toString();
        } finally {
            j1Var.close();
        }
    }

    @Override // com.alibaba.fastjson.e
    public void writeJSONString(Appendable appendable) {
        j1 j1Var = new j1();
        try {
            try {
                new o0(j1Var).A(this);
                appendable.append(j1Var.toString());
                j1Var.close();
            } catch (IOException e11) {
                throw new JSONException(e11.getMessage(), e11);
            }
        } catch (Throwable th2) {
            j1Var.close();
            throw th2;
        }
    }
}
