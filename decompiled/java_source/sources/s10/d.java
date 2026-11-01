package s10;

import org.mvel2.util.m;

/* JADX INFO: loaded from: classes7.dex */
public class d {
    /* JADX WARN: Code duplicated, block: B:16:0x001b  */
    public static int a(char[] cArr, int i11) {
        int length = cArr.length;
        while (i11 != length) {
            char c11 = cArr[i11];
            if (c11 != '(') {
                if (c11 != ';') {
                    if (c11 == '[' || c11 == '{') {
                        i11 = m.c(cArr, i11, c11);
                    } else if (c11 != '}') {
                    }
                }
                return i11;
            }
            i11 = m.c(cArr, i11, c11);
            i11++;
        }
        return i11;
    }
}
