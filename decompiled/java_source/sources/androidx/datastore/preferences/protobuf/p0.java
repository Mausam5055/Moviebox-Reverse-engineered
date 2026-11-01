package androidx.datastore.preferences.protobuf;

import com.google.android.gms.measurement.api.AppMeasurementSdk;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

/* JADX INFO: loaded from: classes.dex */
abstract class p0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final char[] f8879a;

    static {
        char[] cArr = new char[80];
        f8879a = cArr;
        Arrays.fill(cArr, ' ');
    }

    private static void a(int i11, StringBuilder sb2) {
        while (i11 > 0) {
            char[] cArr = f8879a;
            int length = i11 > cArr.length ? cArr.length : i11;
            sb2.append(cArr, 0, length);
            i11 -= length;
        }
    }

    private static boolean b(Object obj) {
        if (obj instanceof Boolean) {
            return !((Boolean) obj).booleanValue();
        }
        if (obj instanceof Integer) {
            return ((Integer) obj).intValue() == 0;
        }
        if (obj instanceof Float) {
            return Float.floatToRawIntBits(((Float) obj).floatValue()) == 0;
        }
        if (obj instanceof Double) {
            return Double.doubleToRawLongBits(((Double) obj).doubleValue()) == 0;
        }
        if (obj instanceof String) {
            return obj.equals("");
        }
        if (obj instanceof ByteString) {
            return obj.equals(ByteString.EMPTY);
        }
        if (obj instanceof n0) {
            return obj == ((n0) obj).getDefaultInstanceForType();
        }
        return (obj instanceof Enum) && ((Enum) obj).ordinal() == 0;
    }

    private static String c(String str) {
        if (str.isEmpty()) {
            return str;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append(Character.toLowerCase(str.charAt(0)));
        for (int i11 = 1; i11 < str.length(); i11++) {
            char cCharAt = str.charAt(i11);
            if (Character.isUpperCase(cCharAt)) {
                sb2.append("_");
            }
            sb2.append(Character.toLowerCase(cCharAt));
        }
        return sb2.toString();
    }

    static void d(StringBuilder sb2, int i11, String str, Object obj) {
        if (obj instanceof List) {
            Iterator it = ((List) obj).iterator();
            while (it.hasNext()) {
                d(sb2, i11, str, it.next());
            }
            return;
        }
        if (obj instanceof Map) {
            Iterator it2 = ((Map) obj).entrySet().iterator();
            while (it2.hasNext()) {
                d(sb2, i11, str, (Map.Entry) it2.next());
            }
            return;
        }
        sb2.append('\n');
        a(i11, sb2);
        sb2.append(c(str));
        if (obj instanceof String) {
            sb2.append(": \"");
            sb2.append(g1.c((String) obj));
            sb2.append('\"');
            return;
        }
        if (obj instanceof ByteString) {
            sb2.append(": \"");
            sb2.append(g1.a((ByteString) obj));
            sb2.append('\"');
            return;
        }
        if (obj instanceof GeneratedMessageLite) {
            sb2.append(" {");
            e((GeneratedMessageLite) obj, sb2, i11 + 2);
            sb2.append("\n");
            a(i11, sb2);
            sb2.append("}");
            return;
        }
        if (!(obj instanceof Map.Entry)) {
            sb2.append(": ");
            sb2.append(obj);
            return;
        }
        sb2.append(" {");
        Map.Entry entry = (Map.Entry) obj;
        int i12 = i11 + 2;
        d(sb2, i12, "key", entry.getKey());
        d(sb2, i12, AppMeasurementSdk.ConditionalUserProperty.VALUE, entry.getValue());
        sb2.append("\n");
        a(i11, sb2);
        sb2.append("}");
    }

    /* JADX WARN: Code duplicated, block: B:63:0x0172  */
    /* JADX WARN: Code duplicated, block: B:65:0x018f  */
    /* JADX WARN: Code duplicated, block: B:67:0x0197  */
    /* JADX WARN: Code duplicated, block: B:69:0x019d  */
    /* JADX WARN: Code duplicated, block: B:70:0x019f  */
    /* JADX WARN: Code duplicated, block: B:71:0x01a1  */
    /* JADX WARN: Code duplicated, block: B:73:0x01af  */
    /* JADX WARN: Instruction removed from duplicated block: B:63:0x0172, please report this as an issue */
    private static void e(n0 n0Var, StringBuilder sb2, int i11) {
        int i12;
        int i13;
        Method method;
        Method method2;
        Object objX;
        boolean zBooleanValue;
        Method method3;
        Method method4;
        HashSet hashSet = new HashSet();
        HashMap map = new HashMap();
        TreeMap treeMap = new TreeMap();
        Method[] declaredMethods = n0Var.getClass().getDeclaredMethods();
        int length = declaredMethods.length;
        int i14 = 0;
        while (true) {
            i12 = 3;
            if (i14 >= length) {
                break;
            }
            Method method5 = declaredMethods[i14];
            if (!Modifier.isStatic(method5.getModifiers()) && method5.getName().length() >= 3) {
                if (method5.getName().startsWith("set")) {
                    hashSet.add(method5.getName());
                } else if (Modifier.isPublic(method5.getModifiers()) && method5.getParameterTypes().length == 0) {
                    if (method5.getName().startsWith("has")) {
                        map.put(method5.getName(), method5);
                    } else if (method5.getName().startsWith("get")) {
                        treeMap.put(method5.getName(), method5);
                    }
                }
            }
            i14++;
        }
        for (Map.Entry entry : treeMap.entrySet()) {
            String strSubstring = ((String) entry.getKey()).substring(i12);
            if (!strSubstring.endsWith("List") || strSubstring.endsWith("OrBuilderList") || strSubstring.equals("List") || (method4 = (Method) entry.getValue()) == null || !method4.getReturnType().equals(List.class)) {
                if (!strSubstring.endsWith("Map") || strSubstring.equals("Map") || (method3 = (Method) entry.getValue()) == null || !method3.getReturnType().equals(Map.class) || method3.isAnnotationPresent(Deprecated.class) || !Modifier.isPublic(method3.getModifiers())) {
                    i13 = 3;
                    if (hashSet.contains("set" + strSubstring)) {
                        if (strSubstring.endsWith("Bytes")) {
                            if (!treeMap.containsKey("get" + strSubstring.substring(0, strSubstring.length() - 5))) {
                                method = (Method) entry.getValue();
                                method2 = (Method) map.get("has" + strSubstring);
                                if (method != null) {
                                    objX = GeneratedMessageLite.x(method, n0Var, new Object[0]);
                                    if (method2 == null) {
                                        zBooleanValue = ((Boolean) GeneratedMessageLite.x(method2, n0Var, new Object[0])).booleanValue();
                                    } else if (b(objX)) {
                                        zBooleanValue = false;
                                    } else {
                                        zBooleanValue = true;
                                    }
                                    if (zBooleanValue) {
                                        d(sb2, i11, strSubstring, objX);
                                    }
                                }
                            }
                        } else {
                            method = (Method) entry.getValue();
                            method2 = (Method) map.get("has" + strSubstring);
                            if (method != null) {
                                objX = GeneratedMessageLite.x(method, n0Var, new Object[0]);
                                if (method2 == null) {
                                    zBooleanValue = ((Boolean) GeneratedMessageLite.x(method2, n0Var, new Object[0])).booleanValue();
                                } else if (b(objX)) {
                                    zBooleanValue = true;
                                } else {
                                    zBooleanValue = false;
                                }
                                if (zBooleanValue) {
                                    d(sb2, i11, strSubstring, objX);
                                }
                            }
                        }
                    }
                } else {
                    i13 = 3;
                    d(sb2, i11, strSubstring.substring(0, strSubstring.length() - 3), GeneratedMessageLite.x(method3, n0Var, new Object[0]));
                }
                i12 = i13;
            } else {
                d(sb2, i11, strSubstring.substring(0, strSubstring.length() - 4), GeneratedMessageLite.x(method4, n0Var, new Object[0]));
                i12 = 3;
            }
        }
        if (n0Var instanceof GeneratedMessageLite.c) {
            Iterator itP = ((GeneratedMessageLite.c) n0Var).extensions.p();
            if (itP.hasNext()) {
                Map.Entry entry2 = (Map.Entry) itP.next();
                new StringBuilder().append("[");
                android.support.v4.media.session.c.a(entry2.getKey());
                throw null;
            }
        }
        i1 i1Var = ((GeneratedMessageLite) n0Var).unknownFields;
        if (i1Var != null) {
            i1Var.m(sb2, i11);
        }
    }

    static String f(n0 n0Var, String str) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("# ");
        sb2.append(str);
        e(n0Var, sb2, 0);
        return sb2.toString();
    }
}
