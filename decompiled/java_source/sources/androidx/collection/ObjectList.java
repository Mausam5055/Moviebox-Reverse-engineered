package androidx.collection;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt;

/* JADX INFO: loaded from: classes.dex */
public abstract class ObjectList {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Object[] f2244a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f2245b;

    private ObjectList(int i11) {
        this.f2244a = i11 == 0 ? r0.f2326a : new Object[i11];
    }

    public /* synthetic */ ObjectList(int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(i11);
    }

    public static /* synthetic */ String d(ObjectList objectList, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i11, CharSequence charSequence4, Function1 function1, int i12, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: joinToString");
        }
        if ((i12 & 1) != 0) {
            charSequence = ", ";
        }
        CharSequence charSequence5 = (i12 & 2) != 0 ? "" : charSequence2;
        CharSequence charSequence6 = (i12 & 4) == 0 ? charSequence3 : "";
        if ((i12 & 8) != 0) {
            i11 = -1;
        }
        int i13 = i11;
        if ((i12 & 16) != 0) {
            charSequence4 = "...";
        }
        CharSequence charSequence7 = charSequence4;
        if ((i12 & 32) != 0) {
            function1 = null;
        }
        return objectList.c(charSequence, charSequence5, charSequence6, i13, charSequence7, function1);
    }

    public final boolean a(Object obj) {
        return b(obj) >= 0;
    }

    public final int b(Object obj) {
        int i11 = 0;
        if (obj == null) {
            Object[] objArr = this.f2244a;
            int i12 = this.f2245b;
            while (i11 < i12) {
                if (objArr[i11] == null) {
                    return i11;
                }
                i11++;
            }
            return -1;
        }
        Object[] objArr2 = this.f2244a;
        int i13 = this.f2245b;
        while (i11 < i13) {
            if (obj.equals(objArr2[i11])) {
                return i11;
            }
            i11++;
        }
        return -1;
    }

    public final String c(CharSequence separator, CharSequence prefix, CharSequence postfix, int i11, CharSequence truncated, Function1 function1) {
        Intrinsics.h(separator, "separator");
        Intrinsics.h(prefix, "prefix");
        Intrinsics.h(postfix, "postfix");
        Intrinsics.h(truncated, "truncated");
        StringBuilder sb2 = new StringBuilder();
        sb2.append(prefix);
        Object[] objArr = this.f2244a;
        int i12 = this.f2245b;
        for (int i13 = 0; i13 < i12; i13++) {
            Object obj = objArr[i13];
            if (i13 == i11) {
                sb2.append(truncated);
                String string = sb2.toString();
                Intrinsics.g(string, "StringBuilder().apply(builderAction).toString()");
                return string;
            }
            if (i13 != 0) {
                sb2.append(separator);
            }
            if (function1 == null) {
                sb2.append(obj);
            } else {
                sb2.append((CharSequence) function1.invoke(obj));
            }
        }
        sb2.append(postfix);
        String string2 = sb2.toString();
        Intrinsics.g(string2, "StringBuilder().apply(builderAction).toString()");
        return string2;
    }

    public boolean equals(Object obj) {
        if (obj instanceof ObjectList) {
            ObjectList objectList = (ObjectList) obj;
            int i11 = objectList.f2245b;
            int i12 = this.f2245b;
            if (i11 == i12) {
                Object[] objArr = this.f2244a;
                Object[] objArr2 = objectList.f2244a;
                IntRange intRangeT = RangesKt.t(0, i12);
                int iF = intRangeT.getFirst();
                int iH = intRangeT.getLast();
                if (iF > iH) {
                    return true;
                }
                while (Intrinsics.c(objArr[iF], objArr2[iF])) {
                    if (iF == iH) {
                        return true;
                    }
                    iF++;
                }
                return false;
            }
        }
        return false;
    }

    public int hashCode() {
        Object[] objArr = this.f2244a;
        int i11 = this.f2245b;
        int iHashCode = 0;
        for (int i12 = 0; i12 < i11; i12++) {
            Object obj = objArr[i12];
            iHashCode += (obj != null ? obj.hashCode() : 0) * 31;
        }
        return iHashCode;
    }

    public String toString() {
        return d(this, null, "[", "]", 0, null, new Function1<Object, CharSequence>() { // from class: androidx.collection.ObjectList.toString.1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final CharSequence invoke(Object obj) {
                return obj == ObjectList.this ? "(this)" : String.valueOf(obj);
            }
        }, 25, null);
    }
}
