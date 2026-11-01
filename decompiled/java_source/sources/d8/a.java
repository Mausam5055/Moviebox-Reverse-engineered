package d8;

import q7.e;

/* JADX INFO: loaded from: classes4.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f61244a;

    static {
        String name = e.class.getName();
        f61244a = name.substring(0, name.lastIndexOf(46) + 1);
    }

    private static StackTraceElement[] a(StackTraceElement[] stackTraceElementArr, int i11) {
        int length = stackTraceElementArr.length;
        if (i11 > 0) {
            length = Math.min(i11, length);
        }
        StackTraceElement[] stackTraceElementArr2 = new StackTraceElement[length];
        System.arraycopy(stackTraceElementArr, 0, stackTraceElementArr2, 0, length);
        return stackTraceElementArr2;
    }

    public static StackTraceElement[] b(StackTraceElement[] stackTraceElementArr, String str, int i11) {
        return a(c(stackTraceElementArr, str), i11);
    }

    private static StackTraceElement[] c(StackTraceElement[] stackTraceElementArr, String str) {
        int i11;
        int length = stackTraceElementArr.length;
        for (int i12 = length - 1; i12 >= 0; i12--) {
            String className = stackTraceElementArr[i12].getClassName();
            if (className.startsWith(f61244a) || (str != null && className.startsWith(str))) {
                i11 = i12 + 1;
                int i13 = length - i11;
                StackTraceElement[] stackTraceElementArr2 = new StackTraceElement[i13];
                System.arraycopy(stackTraceElementArr, i11, stackTraceElementArr2, 0, i13);
                return stackTraceElementArr2;
            }
        }
        i11 = 0;
        int i14 = length - i11;
        StackTraceElement[] stackTraceElementArr3 = new StackTraceElement[i14];
        System.arraycopy(stackTraceElementArr, i11, stackTraceElementArr3, 0, i14);
        return stackTraceElementArr3;
    }
}
