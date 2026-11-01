package androidx.compose.runtime.snapshots;

import java.io.IOException;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
public abstract class a {
    private static final void a(Appendable appendable, Object obj, Function1 function1) throws IOException {
        if (function1 != null) {
            appendable.append((CharSequence) function1.invoke(obj));
            return;
        }
        if (obj == null ? true : obj instanceof CharSequence) {
            appendable.append((CharSequence) obj);
        } else if (obj instanceof Character) {
            appendable.append(((Character) obj).charValue());
        } else {
            appendable.append(String.valueOf(obj));
        }
    }

    private static final Appendable b(List list, Appendable appendable, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i11, CharSequence charSequence4, Function1 function1) throws IOException {
        appendable.append(charSequence2);
        int size = list.size();
        int i12 = 0;
        for (int i13 = 0; i13 < size; i13++) {
            Object obj = list.get(i13);
            i12++;
            if (i12 > 1) {
                appendable.append(charSequence);
            }
            if (i11 >= 0 && i12 > i11) {
                break;
            }
            a(appendable, obj, function1);
        }
        if (i11 >= 0 && i12 > i11) {
            appendable.append(charSequence4);
        }
        appendable.append(charSequence3);
        return appendable;
    }

    public static final String c(List list, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i11, CharSequence charSequence4, Function1 function1) {
        return ((StringBuilder) b(list, new StringBuilder(), charSequence, charSequence2, charSequence3, i11, charSequence4, function1)).toString();
    }

    public static /* synthetic */ String d(List list, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i11, CharSequence charSequence4, Function1 function1, int i12, Object obj) {
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
        return c(list, charSequence, charSequence5, charSequence6, i13, charSequence7, function1);
    }

    public static final Set e(List list) {
        HashSet hashSet = new HashSet(list.size());
        int size = list.size();
        for (int i11 = 0; i11 < size; i11++) {
            hashSet.add(list.get(i11));
        }
        return hashSet;
    }
}
