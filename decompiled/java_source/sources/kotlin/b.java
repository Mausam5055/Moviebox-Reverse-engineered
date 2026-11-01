package kotlin;

import java.io.PrintWriter;
import java.io.StringWriter;
import java.lang.reflect.InvocationTargetException;
import kotlin.internal.PlatformImplementationsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes7.dex */
public class b {
    public static void a(Throwable th2, Throwable exception) throws IllegalAccessException, InvocationTargetException {
        Intrinsics.h(th2, "<this>");
        Intrinsics.h(exception, "exception");
        if (th2 != exception) {
            PlatformImplementationsKt.f67195a.a(th2, exception);
        }
    }

    public static String b(Throwable th2) {
        Intrinsics.h(th2, "<this>");
        StringWriter stringWriter = new StringWriter();
        PrintWriter printWriter = new PrintWriter(stringWriter);
        th2.printStackTrace(printWriter);
        printWriter.flush();
        String string = stringWriter.toString();
        Intrinsics.g(string, "toString(...)");
        return string;
    }
}
