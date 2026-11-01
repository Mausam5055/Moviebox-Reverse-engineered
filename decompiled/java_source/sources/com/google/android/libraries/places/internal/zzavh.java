package com.google.android.libraries.places.internal;

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

/* JADX INFO: loaded from: classes4.dex */
final class zzavh {
    private static final char[] zza;

    static {
        char[] cArr = new char[80];
        zza = cArr;
        Arrays.fill(cArr, ' ');
    }

    static String zza(zzavf zzavfVar, String str) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("# ");
        sb2.append(str);
        zzd(zzavfVar, sb2, 0);
        return sb2.toString();
    }

    static void zzb(StringBuilder sb2, int i11, String str, Object obj) {
        if (obj instanceof List) {
            Iterator it = ((List) obj).iterator();
            while (it.hasNext()) {
                zzb(sb2, i11, str, it.next());
            }
            return;
        }
        if (obj instanceof Map) {
            Iterator it2 = ((Map) obj).entrySet().iterator();
            while (it2.hasNext()) {
                zzb(sb2, i11, str, (Map.Entry) it2.next());
            }
            return;
        }
        sb2.append('\n');
        zzc(i11, sb2);
        if (!str.isEmpty()) {
            StringBuilder sb3 = new StringBuilder();
            sb3.append(Character.toLowerCase(str.charAt(0)));
            for (int i12 = 1; i12 < str.length(); i12++) {
                char cCharAt = str.charAt(i12);
                if (Character.isUpperCase(cCharAt)) {
                    sb3.append("_");
                }
                sb3.append(Character.toLowerCase(cCharAt));
            }
            str = sb3.toString();
        }
        sb2.append(str);
        if (obj instanceof String) {
            sb2.append(": \"");
            sb2.append(zzawi.zza(new zzash(((String) obj).getBytes(zzaud.zzb))));
            sb2.append('\"');
            return;
        }
        if (obj instanceof zzask) {
            sb2.append(": \"");
            sb2.append(zzawi.zza((zzask) obj));
            sb2.append('\"');
            return;
        }
        if (obj instanceof zzatu) {
            sb2.append(" {");
            zzd((zzatu) obj, sb2, i11 + 2);
            sb2.append("\n");
            zzc(i11, sb2);
            sb2.append("}");
            return;
        }
        if (!(obj instanceof Map.Entry)) {
            sb2.append(": ");
            sb2.append(obj);
            return;
        }
        int i13 = i11 + 2;
        sb2.append(" {");
        Map.Entry entry = (Map.Entry) obj;
        zzb(sb2, i13, "key", entry.getKey());
        zzb(sb2, i13, AppMeasurementSdk.ConditionalUserProperty.VALUE, entry.getValue());
        sb2.append("\n");
        zzc(i11, sb2);
        sb2.append("}");
    }

    private static void zzc(int i11, StringBuilder sb2) {
        while (i11 > 0) {
            int i12 = 80;
            if (i11 <= 80) {
                i12 = i11;
            }
            sb2.append(zza, 0, i12);
            i11 -= i12;
        }
    }

    /* JADX WARN: Code duplicated, block: B:102:0x01fa  */
    private static void zzd(zzavf zzavfVar, StringBuilder sb2, int i11) {
        int i12;
        boolean zEquals;
        Method method;
        Method method2;
        HashSet hashSet = new HashSet();
        HashMap map = new HashMap();
        TreeMap treeMap = new TreeMap();
        Method[] declaredMethods = zzavfVar.getClass().getDeclaredMethods();
        int length = declaredMethods.length;
        int i13 = 0;
        while (true) {
            i12 = 3;
            if (i13 >= length) {
                break;
            }
            Method method3 = declaredMethods[i13];
            if (!Modifier.isStatic(method3.getModifiers()) && method3.getName().length() >= 3) {
                if (method3.getName().startsWith("set")) {
                    hashSet.add(method3.getName());
                } else if (Modifier.isPublic(method3.getModifiers()) && method3.getParameterTypes().length == 0) {
                    if (method3.getName().startsWith("has")) {
                        map.put(method3.getName(), method3);
                    } else if (method3.getName().startsWith("get")) {
                        treeMap.put(method3.getName(), method3);
                    }
                }
            }
            i13++;
        }
        for (Map.Entry entry : treeMap.entrySet()) {
            String strSubstring = ((String) entry.getKey()).substring(i12);
            if (strSubstring.endsWith("List") && !strSubstring.endsWith("OrBuilderList") && !strSubstring.equals("List") && (method2 = (Method) entry.getValue()) != null && method2.getReturnType().equals(List.class)) {
                zzb(sb2, i11, strSubstring.substring(0, strSubstring.length() - 4), zzatu.zzaA(method2, zzavfVar, new Object[0]));
            } else if (strSubstring.endsWith("Map") && !strSubstring.equals("Map") && (method = (Method) entry.getValue()) != null && method.getReturnType().equals(Map.class) && !method.isAnnotationPresent(Deprecated.class) && Modifier.isPublic(method.getModifiers())) {
                zzb(sb2, i11, strSubstring.substring(0, strSubstring.length() - 3), zzatu.zzaA(method, zzavfVar, new Object[0]));
            } else if (hashSet.contains("set".concat(strSubstring)) && (!strSubstring.endsWith("Bytes") || !treeMap.containsKey("get".concat(String.valueOf(strSubstring.substring(0, strSubstring.length() - 5)))))) {
                Method method4 = (Method) entry.getValue();
                Method method5 = (Method) map.get("has".concat(strSubstring));
                if (method4 != null) {
                    Object objZzaA = zzatu.zzaA(method4, zzavfVar, new Object[0]);
                    if (method5 == null) {
                        if (objZzaA instanceof Boolean) {
                            if (((Boolean) objZzaA).booleanValue()) {
                                zzb(sb2, i11, strSubstring, objZzaA);
                            }
                        } else if (objZzaA instanceof Integer) {
                            if (((Integer) objZzaA).intValue() != 0) {
                                zzb(sb2, i11, strSubstring, objZzaA);
                            }
                        } else if (objZzaA instanceof Float) {
                            if (Float.floatToRawIntBits(((Float) objZzaA).floatValue()) != 0) {
                                zzb(sb2, i11, strSubstring, objZzaA);
                            }
                        } else if (!(objZzaA instanceof Double)) {
                            if (objZzaA instanceof String) {
                                zEquals = objZzaA.equals("");
                            } else if (objZzaA instanceof zzask) {
                                zEquals = objZzaA.equals(zzask.zzb);
                            } else if (objZzaA instanceof zzavf) {
                                if (objZzaA != ((zzavf) objZzaA).zzaL()) {
                                    zzb(sb2, i11, strSubstring, objZzaA);
                                }
                            } else if (!(objZzaA instanceof Enum) || ((Enum) objZzaA).ordinal() != 0) {
                                zzb(sb2, i11, strSubstring, objZzaA);
                            }
                            if (!zEquals) {
                                zzb(sb2, i11, strSubstring, objZzaA);
                            }
                        } else if (Double.doubleToRawLongBits(((Double) objZzaA).doubleValue()) != 0) {
                            zzb(sb2, i11, strSubstring, objZzaA);
                        }
                    } else if (((Boolean) zzatu.zzaA(method5, zzavfVar, new Object[0])).booleanValue()) {
                        zzb(sb2, i11, strSubstring, objZzaA);
                    }
                }
            }
            i12 = 3;
        }
        if (zzavfVar instanceof zzatq) {
            Iterator itZzf = ((zzatq) zzavfVar).zzb.zzf();
            if (itZzf.hasNext()) {
                throw null;
            }
        }
        zzawo zzawoVar = ((zzatu) zzavfVar).zzc;
        if (zzawoVar != null) {
            zzawoVar.zzi(sb2, i11);
        }
    }
}
