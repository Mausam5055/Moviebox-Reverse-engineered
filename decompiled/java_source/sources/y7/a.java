package y7;

import b8.c;

/* JADX INFO: loaded from: classes4.dex */
public class a implements b {
    @Override // s7.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public String a(StackTraceElement[] stackTraceElementArr) {
        StringBuilder sb2 = new StringBuilder(256);
        if (stackTraceElementArr == null || stackTraceElementArr.length == 0) {
            return null;
        }
        if (stackTraceElementArr.length == 1) {
            return "\t─ " + stackTraceElementArr[0].toString();
        }
        int length = stackTraceElementArr.length;
        for (int i11 = 0; i11 < length; i11++) {
            if (i11 != length - 1) {
                sb2.append("\t├ ");
                sb2.append(stackTraceElementArr[i11].toString());
                sb2.append(c.f16248a);
            } else {
                sb2.append("\t└ ");
                sb2.append(stackTraceElementArr[i11].toString());
            }
        }
        return sb2.toString();
    }
}
