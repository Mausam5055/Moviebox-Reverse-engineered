package kotlin.collections;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import kotlin.UByteArray;
import kotlin.UIntArray;
import kotlin.ULongArray;
import kotlin.UShortArray;
import kotlin.Unit;
import kotlin.collections.unsigned.UArraysKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes7.dex */
public class e extends d {
    public static boolean d(Object[] objArr, Object[] objArr2) {
        if (objArr == objArr2) {
            return true;
        }
        if (objArr == null || objArr2 == null || objArr.length != objArr2.length) {
            return false;
        }
        int length = objArr.length;
        for (int i11 = 0; i11 < length; i11++) {
            Object obj = objArr[i11];
            Object obj2 = objArr2[i11];
            if (obj != obj2) {
                if (obj == null || obj2 == null) {
                    return false;
                }
                if ((obj instanceof Object[]) && (obj2 instanceof Object[])) {
                    if (!ArraysKt.d((Object[]) obj, (Object[]) obj2)) {
                        return false;
                    }
                } else if ((obj instanceof byte[]) && (obj2 instanceof byte[])) {
                    if (!Arrays.equals((byte[]) obj, (byte[]) obj2)) {
                        return false;
                    }
                } else if ((obj instanceof short[]) && (obj2 instanceof short[])) {
                    if (!Arrays.equals((short[]) obj, (short[]) obj2)) {
                        return false;
                    }
                } else if ((obj instanceof int[]) && (obj2 instanceof int[])) {
                    if (!Arrays.equals((int[]) obj, (int[]) obj2)) {
                        return false;
                    }
                } else if ((obj instanceof long[]) && (obj2 instanceof long[])) {
                    if (!Arrays.equals((long[]) obj, (long[]) obj2)) {
                        return false;
                    }
                } else if ((obj instanceof float[]) && (obj2 instanceof float[])) {
                    if (!Arrays.equals((float[]) obj, (float[]) obj2)) {
                        return false;
                    }
                } else if ((obj instanceof double[]) && (obj2 instanceof double[])) {
                    if (!Arrays.equals((double[]) obj, (double[]) obj2)) {
                        return false;
                    }
                } else if ((obj instanceof char[]) && (obj2 instanceof char[])) {
                    if (!Arrays.equals((char[]) obj, (char[]) obj2)) {
                        return false;
                    }
                } else if ((obj instanceof boolean[]) && (obj2 instanceof boolean[])) {
                    if (!Arrays.equals((boolean[]) obj, (boolean[]) obj2)) {
                        return false;
                    }
                } else if ((obj instanceof UByteArray) && (obj2 instanceof UByteArray)) {
                    if (!UArraysKt.c(((UByteArray) obj).getCom.google.android.libraries.places.api.model.PlaceTypes.STORAGE java.lang.String(), ((UByteArray) obj2).getCom.google.android.libraries.places.api.model.PlaceTypes.STORAGE java.lang.String())) {
                        return false;
                    }
                } else if ((obj instanceof UShortArray) && (obj2 instanceof UShortArray)) {
                    if (!UArraysKt.a(((UShortArray) obj).getCom.google.android.libraries.places.api.model.PlaceTypes.STORAGE java.lang.String(), ((UShortArray) obj2).getCom.google.android.libraries.places.api.model.PlaceTypes.STORAGE java.lang.String())) {
                        return false;
                    }
                } else if ((obj instanceof UIntArray) && (obj2 instanceof UIntArray)) {
                    if (!UArraysKt.b(((UIntArray) obj).getCom.google.android.libraries.places.api.model.PlaceTypes.STORAGE java.lang.String(), ((UIntArray) obj2).getCom.google.android.libraries.places.api.model.PlaceTypes.STORAGE java.lang.String())) {
                        return false;
                    }
                } else if ((obj instanceof ULongArray) && (obj2 instanceof ULongArray)) {
                    if (!UArraysKt.d(((ULongArray) obj).getCom.google.android.libraries.places.api.model.PlaceTypes.STORAGE java.lang.String(), ((ULongArray) obj2).getCom.google.android.libraries.places.api.model.PlaceTypes.STORAGE java.lang.String())) {
                        return false;
                    }
                } else if (!Intrinsics.c(obj, obj2)) {
                    return false;
                }
            }
        }
        return true;
    }

    public static String e(Object[] objArr) {
        if (objArr == null) {
            return "null";
        }
        StringBuilder sb2 = new StringBuilder((RangesKt.i(objArr.length, 429496729) * 5) + 2);
        f(objArr, sb2, new ArrayList());
        return sb2.toString();
    }

    private static final void f(Object[] objArr, StringBuilder sb2, List list) {
        if (list.contains(objArr)) {
            sb2.append("[...]");
            return;
        }
        list.add(objArr);
        sb2.append('[');
        int length = objArr.length;
        for (int i11 = 0; i11 < length; i11++) {
            if (i11 != 0) {
                sb2.append(", ");
            }
            Object obj = objArr[i11];
            if (obj == null) {
                sb2.append("null");
            } else if (obj instanceof Object[]) {
                f((Object[]) obj, sb2, list);
                Unit unit = Unit.f67061a;
            } else if (obj instanceof byte[]) {
                String string = Arrays.toString((byte[]) obj);
                Intrinsics.g(string, "toString(...)");
                sb2.append(string);
            } else if (obj instanceof short[]) {
                String string2 = Arrays.toString((short[]) obj);
                Intrinsics.g(string2, "toString(...)");
                sb2.append(string2);
            } else if (obj instanceof int[]) {
                String string3 = Arrays.toString((int[]) obj);
                Intrinsics.g(string3, "toString(...)");
                sb2.append(string3);
            } else if (obj instanceof long[]) {
                String string4 = Arrays.toString((long[]) obj);
                Intrinsics.g(string4, "toString(...)");
                sb2.append(string4);
            } else if (obj instanceof float[]) {
                String string5 = Arrays.toString((float[]) obj);
                Intrinsics.g(string5, "toString(...)");
                sb2.append(string5);
            } else if (obj instanceof double[]) {
                String string6 = Arrays.toString((double[]) obj);
                Intrinsics.g(string6, "toString(...)");
                sb2.append(string6);
            } else if (obj instanceof char[]) {
                String string7 = Arrays.toString((char[]) obj);
                Intrinsics.g(string7, "toString(...)");
                sb2.append(string7);
            } else if (obj instanceof boolean[]) {
                String string8 = Arrays.toString((boolean[]) obj);
                Intrinsics.g(string8, "toString(...)");
                sb2.append(string8);
            } else if (obj instanceof UByteArray) {
                sb2.append(UArraysKt.e(((UByteArray) obj).getCom.google.android.libraries.places.api.model.PlaceTypes.STORAGE java.lang.String()));
            } else if (obj instanceof UShortArray) {
                sb2.append(UArraysKt.g(((UShortArray) obj).getCom.google.android.libraries.places.api.model.PlaceTypes.STORAGE java.lang.String()));
            } else if (obj instanceof UIntArray) {
                sb2.append(UArraysKt.f(((UIntArray) obj).getCom.google.android.libraries.places.api.model.PlaceTypes.STORAGE java.lang.String()));
            } else if (obj instanceof ULongArray) {
                sb2.append(UArraysKt.h(((ULongArray) obj).getCom.google.android.libraries.places.api.model.PlaceTypes.STORAGE java.lang.String()));
            } else {
                sb2.append(obj.toString());
            }
        }
        sb2.append(']');
        list.remove(CollectionsKt.n(list));
    }
}
