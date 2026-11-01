package xb;

import java.util.HashMap;

/* JADX INFO: loaded from: classes5.dex */
public class c implements d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f78184a;

    public c() {
        this(1);
    }

    public c(int i11) {
        this.f78184a = i11;
    }

    private static boolean b(StackTraceElement[] stackTraceElementArr, int i11, int i12) {
        int i13 = i12 - i11;
        if (i12 + i13 > stackTraceElementArr.length) {
            return false;
        }
        for (int i14 = 0; i14 < i13; i14++) {
            if (!stackTraceElementArr[i11 + i14].equals(stackTraceElementArr[i12 + i14])) {
                return false;
            }
        }
        return true;
    }

    private static StackTraceElement[] c(StackTraceElement[] stackTraceElementArr, int i11) {
        int i12;
        HashMap map = new HashMap();
        StackTraceElement[] stackTraceElementArr2 = new StackTraceElement[stackTraceElementArr.length];
        int i13 = 0;
        int i14 = 0;
        int i15 = 1;
        while (i13 < stackTraceElementArr.length) {
            StackTraceElement stackTraceElement = stackTraceElementArr[i13];
            Integer num = (Integer) map.get(stackTraceElement);
            if (num == null || !b(stackTraceElementArr, num.intValue(), i13)) {
                stackTraceElementArr2[i14] = stackTraceElementArr[i13];
                i14++;
                i15 = 1;
                i12 = i13;
            } else {
                int iIntValue = i13 - num.intValue();
                if (i15 < i11) {
                    System.arraycopy(stackTraceElementArr, i13, stackTraceElementArr2, i14, iIntValue);
                    i14 += iIntValue;
                    i15++;
                }
                i12 = (iIntValue - 1) + i13;
            }
            map.put(stackTraceElement, Integer.valueOf(i13));
            i13 = i12 + 1;
        }
        StackTraceElement[] stackTraceElementArr3 = new StackTraceElement[i14];
        System.arraycopy(stackTraceElementArr2, 0, stackTraceElementArr3, 0, i14);
        return stackTraceElementArr3;
    }

    @Override // xb.d
    public StackTraceElement[] a(StackTraceElement[] stackTraceElementArr) {
        StackTraceElement[] stackTraceElementArrC = c(stackTraceElementArr, this.f78184a);
        return stackTraceElementArrC.length < stackTraceElementArr.length ? stackTraceElementArrC : stackTraceElementArr;
    }
}
