package ag;

import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes4.dex */
public abstract class e {
    /* JADX INFO: Access modifiers changed from: private */
    public static final Class d(String str) {
        if (!StringsKt.b0(str, '.', false, 2, null)) {
            return null;
        }
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException unused) {
            int iU0 = StringsKt.u0(str, '.', 0, false, 6, null);
            String string = new StringBuilder(str).replace(iU0, iU0 + 1, "$").toString();
            Intrinsics.g(string, "toString(...)");
            return d(string);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean e(String str, String str2) {
        return Intrinsics.c(f(str), f(str2));
    }

    private static final String f(String str) {
        switch (str.hashCode()) {
            case -2056817302:
                if (!str.equals("java.lang.Integer")) {
                    return str;
                }
                return "kotlin.Int";
            case -1325958191:
                if (!str.equals("double")) {
                    return str;
                }
                return "kotlin.Double";
            case -527879800:
                if (!str.equals("java.lang.Float")) {
                    return str;
                }
                return "kotlin.Float";
            case -515992664:
                if (!str.equals("java.lang.Short")) {
                    return str;
                }
                return "kotlin.Short";
            case 104431:
                if (!str.equals("int")) {
                    return str;
                }
                return "kotlin.Int";
            case 3039496:
                if (!str.equals("byte")) {
                    return str;
                }
                return "kotlin.Byte";
            case 3052374:
                if (!str.equals("char")) {
                    return str;
                }
                return "kotlin.Char";
            case 3327612:
                if (!str.equals("long")) {
                    return str;
                }
                return "kotlin.Long";
            case 64711720:
                if (!str.equals("boolean")) {
                    return str;
                }
                return "kotlin.Boolean";
            case 97526364:
                if (!str.equals("float")) {
                    return str;
                }
                return "kotlin.Float";
            case 109413500:
                if (!str.equals("short")) {
                    return str;
                }
                return "kotlin.Short";
            case 155276373:
                if (!str.equals("java.lang.Character")) {
                    return str;
                }
                return "kotlin.Char";
            case 344809556:
                if (!str.equals("java.lang.Boolean")) {
                    return str;
                }
                return "kotlin.Boolean";
            case 398507100:
                if (!str.equals("java.lang.Byte")) {
                    return str;
                }
                return "kotlin.Byte";
            case 398795216:
                if (!str.equals("java.lang.Long")) {
                    return str;
                }
                return "kotlin.Long";
            case 761287205:
                if (!str.equals("java.lang.Double")) {
                    return str;
                }
                return "kotlin.Double";
            case 1195259493:
                return !str.equals("java.lang.String") ? str : "kotlin.String";
            default:
                return str;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public static final Object g(String str, String str2) {
        switch (str.hashCode()) {
            case -2133280414:
                if (str.equals("kotlin.Int")) {
                    return Integer.valueOf(Integer.parseInt(str2));
                }
                return null;
            case -2056817302:
                if (str.equals("java.lang.Integer")) {
                    return Integer.valueOf(Integer.parseInt(str2));
                }
                return null;
            case -1707381259:
                if (str.equals("kotlin.Byte")) {
                    return Byte.valueOf(Byte.parseByte(str2));
                }
                return null;
            case -1707368381:
                if (str.equals("kotlin.Char") && str2.length() > 0) {
                    return Character.valueOf(str2.charAt(0));
                }
                return null;
            case -1707093143:
                if (str.equals("kotlin.Long")) {
                    return Long.valueOf(Long.parseLong(str2));
                }
                return null;
            case -1385909489:
                if (str.equals("kotlin.Float")) {
                    return Float.valueOf(Float.parseFloat(str2));
                }
                return null;
            case -1374022353:
                if (str.equals("kotlin.Short")) {
                    return Short.valueOf(Short.parseShort(str2));
                }
                return null;
            case -1325958191:
                if (str.equals("double")) {
                    return Double.valueOf(Double.parseDouble(str2));
                }
                return null;
            case -527879800:
                if (str.equals("java.lang.Float")) {
                    return Float.valueOf(Float.parseFloat(str2));
                }
                return null;
            case -515992664:
                if (str.equals("java.lang.Short")) {
                    return Short.valueOf(Short.parseShort(str2));
                }
                return null;
            case -67829378:
                if (str.equals("kotlin.Double")) {
                    return Double.valueOf(Double.parseDouble(str2));
                }
                return null;
            case 104431:
                if (str.equals("int")) {
                    return Integer.valueOf(Integer.parseInt(str2));
                }
                return null;
            case 3039496:
                if (str.equals("byte")) {
                    return Byte.valueOf(Byte.parseByte(str2));
                }
                return null;
            case 3052374:
                if (str.equals("char") && str2.length() > 0) {
                    return Character.valueOf(str2.charAt(0));
                }
                return null;
            case 3327612:
                if (str.equals("long")) {
                    return Long.valueOf(Long.parseLong(str2));
                }
                return null;
            case 64711720:
                if (str.equals("boolean")) {
                    return Boolean.valueOf(Boolean.parseBoolean(str2));
                }
                return null;
            case 97526364:
                if (str.equals("float")) {
                    return Float.valueOf(Float.parseFloat(str2));
                }
                return null;
            case 109413500:
                if (str.equals("short")) {
                    return Short.valueOf(Short.parseShort(str2));
                }
                return null;
            case 155276373:
                if (str.equals("java.lang.Character") && str2.length() > 0) {
                    return Character.valueOf(str2.charAt(0));
                }
                return null;
            case 344809556:
                if (str.equals("java.lang.Boolean")) {
                    return Boolean.valueOf(Boolean.parseBoolean(str2));
                }
                return null;
            case 398507100:
                if (str.equals("java.lang.Byte")) {
                    return Byte.valueOf(Byte.parseByte(str2));
                }
                return null;
            case 398795216:
                if (str.equals("java.lang.Long")) {
                    return Long.valueOf(Long.parseLong(str2));
                }
                return null;
            case 411999259:
                if (str.equals("kotlin.Boolean")) {
                    return Boolean.valueOf(Boolean.parseBoolean(str2));
                }
                return null;
            case 761287205:
                if (str.equals("java.lang.Double")) {
                    return Double.valueOf(Double.parseDouble(str2));
                }
                return null;
            default:
                return null;
        }
    }
}
