package com.google.android.gms.internal.auth;

import com.google.android.gms.measurement.api.AppMeasurementSdk;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeSet;

/* JADX INFO: loaded from: classes4.dex */
final class zzfy {
    static String zza(zzfw zzfwVar, String str) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("# ");
        sb2.append(str);
        zzd(zzfwVar, sb2, 0);
        return sb2.toString();
    }

    static final void zzb(StringBuilder sb2, int i11, String str, Object obj) {
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
        int i12 = 0;
        for (int i13 = 0; i13 < i11; i13++) {
            sb2.append(' ');
        }
        sb2.append(str);
        if (obj instanceof String) {
            sb2.append(": \"");
            sb2.append(zzgw.zza(zzee.zzl((String) obj)));
            sb2.append('\"');
            return;
        }
        if (obj instanceof zzee) {
            sb2.append(": \"");
            sb2.append(zzgw.zza((zzee) obj));
            sb2.append('\"');
            return;
        }
        if (obj instanceof zzeu) {
            sb2.append(" {");
            zzd((zzeu) obj, sb2, i11 + 2);
            sb2.append("\n");
            while (i12 < i11) {
                sb2.append(' ');
                i12++;
            }
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
        int i14 = i11 + 2;
        zzb(sb2, i14, "key", entry.getKey());
        zzb(sb2, i14, AppMeasurementSdk.ConditionalUserProperty.VALUE, entry.getValue());
        sb2.append("\n");
        while (i12 < i11) {
            sb2.append(' ');
            i12++;
        }
        sb2.append("}");
    }

    private static final String zzc(String str) {
        StringBuilder sb2 = new StringBuilder();
        for (int i11 = 0; i11 < str.length(); i11++) {
            char cCharAt = str.charAt(i11);
            if (Character.isUpperCase(cCharAt)) {
                sb2.append("_");
            }
            sb2.append(Character.toLowerCase(cCharAt));
        }
        return sb2.toString();
    }

    private static void zzd(zzfw zzfwVar, StringBuilder sb2, int i11) {
        boolean zEquals;
        HashMap map = new HashMap();
        HashMap map2 = new HashMap();
        TreeSet<String> treeSet = new TreeSet();
        for (Method method : zzfwVar.getClass().getDeclaredMethods()) {
            map2.put(method.getName(), method);
            if (method.getParameterTypes().length == 0) {
                map.put(method.getName(), method);
                if (method.getName().startsWith("get")) {
                    treeSet.add(method.getName());
                }
            }
        }
        for (String str : treeSet) {
            String strSubstring = str.startsWith("get") ? str.substring(3) : str;
            if (strSubstring.endsWith("List") && !strSubstring.endsWith("OrBuilderList") && !strSubstring.equals("List")) {
                String strConcat = String.valueOf(strSubstring.substring(0, 1).toLowerCase()).concat(String.valueOf(strSubstring.substring(1, strSubstring.length() - 4)));
                Method method2 = (Method) map.get(str);
                if (method2 != null && method2.getReturnType().equals(List.class)) {
                    zzb(sb2, i11, zzc(strConcat), zzeu.zze(method2, zzfwVar, new Object[0]));
                }
            }
            if (strSubstring.endsWith("Map") && !strSubstring.equals("Map")) {
                String strConcat2 = String.valueOf(strSubstring.substring(0, 1).toLowerCase()).concat(String.valueOf(strSubstring.substring(1, strSubstring.length() - 3)));
                Method method3 = (Method) map.get(str);
                if (method3 != null && method3.getReturnType().equals(Map.class) && !method3.isAnnotationPresent(Deprecated.class) && Modifier.isPublic(method3.getModifiers())) {
                    zzb(sb2, i11, zzc(strConcat2), zzeu.zze(method3, zzfwVar, new Object[0]));
                }
            }
            if (((Method) map2.get("set".concat(strSubstring))) != null && (!strSubstring.endsWith("Bytes") || !map.containsKey("get".concat(String.valueOf(strSubstring.substring(0, strSubstring.length() - 5)))))) {
                String strConcat3 = String.valueOf(strSubstring.substring(0, 1).toLowerCase()).concat(String.valueOf(strSubstring.substring(1)));
                Method method4 = (Method) map.get("get".concat(strSubstring));
                Method method5 = (Method) map.get("has".concat(strSubstring));
                if (method4 != null) {
                    Object objZze = zzeu.zze(method4, zzfwVar, new Object[0]);
                    if (method5 == null) {
                        if (objZze instanceof Boolean) {
                            if (((Boolean) objZze).booleanValue()) {
                                zzb(sb2, i11, zzc(strConcat3), objZze);
                            }
                        } else if (objZze instanceof Integer) {
                            if (((Integer) objZze).intValue() != 0) {
                                zzb(sb2, i11, zzc(strConcat3), objZze);
                            }
                        } else if (objZze instanceof Float) {
                            if (Float.floatToRawIntBits(((Float) objZze).floatValue()) != 0) {
                                zzb(sb2, i11, zzc(strConcat3), objZze);
                            }
                        } else if (!(objZze instanceof Double)) {
                            if (objZze instanceof String) {
                                zEquals = objZze.equals("");
                            } else if (objZze instanceof zzee) {
                                zEquals = objZze.equals(zzee.zzb);
                            } else if (objZze instanceof zzfw) {
                                if (objZze != ((zzfw) objZze).zzh()) {
                                    zzb(sb2, i11, zzc(strConcat3), objZze);
                                }
                            } else if (!(objZze instanceof Enum) || ((Enum) objZze).ordinal() != 0) {
                                zzb(sb2, i11, zzc(strConcat3), objZze);
                            }
                            if (!zEquals) {
                                zzb(sb2, i11, zzc(strConcat3), objZze);
                            }
                        } else if (Double.doubleToRawLongBits(((Double) objZze).doubleValue()) != 0) {
                            zzb(sb2, i11, zzc(strConcat3), objZze);
                        }
                    } else if (((Boolean) zzeu.zze(method5, zzfwVar, new Object[0])).booleanValue()) {
                        zzb(sb2, i11, zzc(strConcat3), objZze);
                    }
                }
            }
        }
        if (zzfwVar instanceof zzet) {
            throw null;
        }
        zzgz zzgzVar = ((zzeu) zzfwVar).zzc;
        if (zzgzVar != null) {
            zzgzVar.zze(sb2, i11);
        }
    }
}
