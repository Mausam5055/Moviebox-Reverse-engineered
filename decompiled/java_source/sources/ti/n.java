package ti;

import java.util.concurrent.ThreadLocalRandom;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final n f76264a = new n();

    private n() {
    }

    public final String a(int i11) {
        StringBuffer stringBuffer = new StringBuffer("0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ");
        StringBuffer stringBuffer2 = new StringBuffer();
        ThreadLocalRandom threadLocalRandomCurrent = ThreadLocalRandom.current();
        int length = stringBuffer.length();
        for (int i12 = 0; i12 < i11; i12++) {
            stringBuffer2.append(stringBuffer.charAt(threadLocalRandomCurrent.nextInt(length)));
        }
        String string = stringBuffer2.toString();
        Intrinsics.g(string, "toString(...)");
        return string;
    }

    public final String b() {
        return a(12);
    }
}
