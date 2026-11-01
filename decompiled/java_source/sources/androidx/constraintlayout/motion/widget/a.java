package androidx.constraintlayout.motion.widget;

import android.content.Context;
import android.util.Log;
import android.view.View;
import com.cloud.tmc.kernel.utils.NetworkUtil;
import com.cloud.tmc.kernel.utils.UrlUtils;
import java.nio.CharBuffer;

/* JADX INFO: loaded from: classes.dex */
public class a {
    public static String a() {
        StackTraceElement stackTraceElement = new Throwable().getStackTrace()[1];
        return ".(" + stackTraceElement.getFileName() + ":" + stackTraceElement.getLineNumber() + ") " + stackTraceElement.getMethodName() + "()";
    }

    public static String b() {
        StackTraceElement stackTraceElement = new Throwable().getStackTrace()[1];
        return ".(" + stackTraceElement.getFileName() + ":" + stackTraceElement.getLineNumber() + ")";
    }

    public static String c(Context context, int i11) {
        if (i11 == -1) {
            return NetworkUtil.NETWORK_TYPE_UNKNOWN;
        }
        try {
            return context.getResources().getResourceEntryName(i11);
        } catch (Exception unused) {
            return UrlUtils.QUESTION_MARK + i11;
        }
    }

    public static String d(View view) {
        try {
            return view.getContext().getResources().getResourceEntryName(view.getId());
        } catch (Exception unused) {
            return NetworkUtil.NETWORK_TYPE_UNKNOWN;
        }
    }

    public static String e(MotionLayout motionLayout, int i11) {
        return f(motionLayout, i11, -1);
    }

    public static String f(MotionLayout motionLayout, int i11, int i12) {
        int length;
        if (i11 == -1) {
            return "UNDEFINED";
        }
        String resourceEntryName = motionLayout.getContext().getResources().getResourceEntryName(i11);
        if (i12 == -1) {
            return resourceEntryName;
        }
        if (resourceEntryName.length() > i12) {
            resourceEntryName = resourceEntryName.replaceAll("([^_])[aeiou]+", "$1");
        }
        if (resourceEntryName.length() <= i12 || (length = resourceEntryName.replaceAll("[^_]", "").length()) <= 0) {
            return resourceEntryName;
        }
        return resourceEntryName.replaceAll(CharBuffer.allocate((resourceEntryName.length() - i12) / length).toString().replace((char) 0, '.') + "_", "_");
    }

    public static void g(String str, String str2, int i11) {
        StackTraceElement[] stackTrace = new Throwable().getStackTrace();
        int iMin = Math.min(i11, stackTrace.length - 1);
        String str3 = " ";
        for (int i12 = 1; i12 <= iMin; i12++) {
            StackTraceElement stackTraceElement = stackTrace[i12];
            str3 = str3 + " ";
            Log.v(str, str2 + str3 + (".(" + stackTrace[i12].getFileName() + ":" + stackTrace[i12].getLineNumber() + ") " + stackTrace[i12].getMethodName()) + str3);
        }
    }
}
