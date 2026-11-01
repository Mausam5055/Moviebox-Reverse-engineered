package com.google.android.gms.internal.measurement;

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
final class zzld {
    private static final char[] zza;

    static {
        char[] cArr = new char[80];
        zza = cArr;
        Arrays.fill(cArr, ' ');
    }

    static String zza(zzlc zzlcVar, String str) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("# ");
        sb2.append(str);
        zza(zzlcVar, sb2, 0);
        return sb2.toString();
    }

    private static void zza(int i11, StringBuilder sb2) {
        while (i11 > 0) {
            char[] cArr = zza;
            int length = i11 > cArr.length ? cArr.length : i11;
            sb2.append(cArr, 0, length);
            i11 -= length;
        }
    }

    /* JADX WARN: Code duplicated, block: B:100:0x0207  */
    /* JADX WARN: Code duplicated, block: B:101:0x0209  */
    /* JADX WARN: Code duplicated, block: B:103:0x0217  */
    /* JADX WARN: Code duplicated, block: B:57:0x0166  */
    /* JADX WARN: Code duplicated, block: B:59:0x0180  */
    /* JADX WARN: Code duplicated, block: B:61:0x0188  */
    /* JADX WARN: Code duplicated, block: B:63:0x018d  */
    /* JADX WARN: Code duplicated, block: B:65:0x0196  */
    /* JADX WARN: Code duplicated, block: B:66:0x0199  */
    /* JADX WARN: Code duplicated, block: B:67:0x019c  */
    /* JADX WARN: Code duplicated, block: B:69:0x01a0  */
    /* JADX WARN: Code duplicated, block: B:72:0x01aa  */
    /* JADX WARN: Code duplicated, block: B:74:0x01ae  */
    /* JADX WARN: Code duplicated, block: B:77:0x01bc  */
    /* JADX WARN: Code duplicated, block: B:79:0x01c0  */
    /* JADX WARN: Code duplicated, block: B:82:0x01d2  */
    /* JADX WARN: Code duplicated, block: B:84:0x01d6  */
    /* JADX WARN: Code duplicated, block: B:85:0x01dd  */
    /* JADX WARN: Code duplicated, block: B:87:0x01e1  */
    /* JADX WARN: Code duplicated, block: B:88:0x01e8  */
    /* JADX WARN: Instruction removed from duplicated block: B:57:0x0166, please report this as an issue */
    private static void zza(zzlc zzlcVar, StringBuilder sb2, int i11) {
        int i12;
        int i13;
        Method method;
        Method method2;
        Object objZza;
        boolean zBooleanValue;
        boolean zEquals;
        Method method3;
        Method method4;
        HashSet hashSet = new HashSet();
        HashMap map = new HashMap();
        TreeMap treeMap = new TreeMap();
        Method[] declaredMethods = zzlcVar.getClass().getDeclaredMethods();
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
                                    objZza = zzjt.zza(method, zzlcVar, new Object[0]);
                                    if (method2 == null) {
                                        zBooleanValue = true;
                                        if (objZza instanceof Boolean) {
                                            if (((Boolean) objZza).booleanValue()) {
                                                zEquals = false;
                                            } else {
                                                zEquals = true;
                                            }
                                        } else if (objZza instanceof Integer) {
                                            if (((Integer) objZza).intValue() == 0) {
                                                zEquals = true;
                                            } else {
                                                zEquals = false;
                                            }
                                        } else if (objZza instanceof Float) {
                                            if (Float.floatToRawIntBits(((Float) objZza).floatValue()) == 0) {
                                                zEquals = true;
                                            } else {
                                                zEquals = false;
                                            }
                                        } else if (objZza instanceof Double) {
                                            if (Double.doubleToRawLongBits(((Double) objZza).doubleValue()) == 0) {
                                                zEquals = true;
                                            } else {
                                                zEquals = false;
                                            }
                                        } else if (objZza instanceof String) {
                                            zEquals = objZza.equals("");
                                        } else if (objZza instanceof zzik) {
                                            zEquals = objZza.equals(zzik.zza);
                                        } else if ((objZza instanceof zzlc) ? !((objZza instanceof Enum) && ((Enum) objZza).ordinal() == 0) : objZza != ((zzlc) objZza).zzck()) {
                                            zEquals = false;
                                        } else {
                                            zEquals = true;
                                        }
                                        if (zEquals) {
                                            zBooleanValue = false;
                                        }
                                    } else {
                                        zBooleanValue = ((Boolean) zzjt.zza(method2, zzlcVar, new Object[0])).booleanValue();
                                    }
                                    if (zBooleanValue) {
                                        zza(sb2, i11, strSubstring, objZza);
                                    }
                                }
                            }
                        } else {
                            method = (Method) entry.getValue();
                            method2 = (Method) map.get("has" + strSubstring);
                            if (method != null) {
                                objZza = zzjt.zza(method, zzlcVar, new Object[0]);
                                if (method2 == null) {
                                    zBooleanValue = true;
                                    if (objZza instanceof Boolean) {
                                        if (((Boolean) objZza).booleanValue()) {
                                            zEquals = true;
                                        } else {
                                            zEquals = false;
                                        }
                                    } else if (objZza instanceof Integer) {
                                        if (((Integer) objZza).intValue() == 0) {
                                            zEquals = true;
                                        } else {
                                            zEquals = false;
                                        }
                                    } else if (objZza instanceof Float) {
                                        if (Float.floatToRawIntBits(((Float) objZza).floatValue()) == 0) {
                                            zEquals = true;
                                        } else {
                                            zEquals = false;
                                        }
                                    } else if (objZza instanceof Double) {
                                        if (Double.doubleToRawLongBits(((Double) objZza).doubleValue()) == 0) {
                                            zEquals = true;
                                        } else {
                                            zEquals = false;
                                        }
                                    } else if (objZza instanceof String) {
                                        zEquals = objZza.equals("");
                                    } else if (objZza instanceof zzik) {
                                        zEquals = objZza.equals(zzik.zza);
                                    } else if (objZza instanceof zzlc) {
                                        zEquals = false;
                                    } else {
                                        zEquals = false;
                                    }
                                    if (zEquals) {
                                        zBooleanValue = false;
                                    }
                                } else {
                                    zBooleanValue = ((Boolean) zzjt.zza(method2, zzlcVar, new Object[0])).booleanValue();
                                }
                                if (zBooleanValue) {
                                    zza(sb2, i11, strSubstring, objZza);
                                }
                            }
                        }
                    }
                } else {
                    i13 = 3;
                    zza(sb2, i11, strSubstring.substring(0, strSubstring.length() - 3), zzjt.zza(method3, zzlcVar, new Object[0]));
                }
                i12 = i13;
            } else {
                zza(sb2, i11, strSubstring.substring(0, strSubstring.length() - 4), zzjt.zza(method4, zzlcVar, new Object[0]));
                i12 = 3;
            }
        }
        if (zzlcVar instanceof zzjt.zzd) {
            Iterator<Map.Entry<T, Object>> itZzd = ((zzjt.zzd) zzlcVar).zzc.zzd();
            if (itZzd.hasNext()) {
                throw new NoSuchMethodError();
            }
        }
        zzmj zzmjVar = ((zzjt) zzlcVar).zzb;
        if (zzmjVar != null) {
            zzmjVar.zza(sb2, i11);
        }
    }

    static void zza(StringBuilder sb2, int i11, String str, Object obj) {
        if (obj instanceof List) {
            Iterator it = ((List) obj).iterator();
            while (it.hasNext()) {
                zza(sb2, i11, str, it.next());
            }
            return;
        }
        if (obj instanceof Map) {
            Iterator it2 = ((Map) obj).entrySet().iterator();
            while (it2.hasNext()) {
                zza(sb2, i11, str, (Map.Entry) it2.next());
            }
            return;
        }
        sb2.append('\n');
        zza(i11, sb2);
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
            sb2.append(zzmg.zza(zzik.zza((String) obj)));
            sb2.append('\"');
            return;
        }
        if (obj instanceof zzik) {
            sb2.append(": \"");
            sb2.append(zzmg.zza((zzik) obj));
            sb2.append('\"');
            return;
        }
        if (obj instanceof zzjt) {
            sb2.append(" {");
            zza((zzjt) obj, sb2, i11 + 2);
            sb2.append("\n");
            zza(i11, sb2);
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
        int i13 = i11 + 2;
        zza(sb2, i13, "key", entry.getKey());
        zza(sb2, i13, AppMeasurementSdk.ConditionalUserProperty.VALUE, entry.getValue());
        sb2.append("\n");
        zza(i11, sb2);
        sb2.append("}");
    }
}
