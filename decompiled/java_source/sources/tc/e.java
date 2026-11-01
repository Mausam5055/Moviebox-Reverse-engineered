package tc;

import android.content.Context;
import com.google.firebase.perf.util.Constants$CounterNames;
import com.google.firebase.perf.util.Constants$TraceNames;
import com.google.firebase.perf.v1.g;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: classes5.dex */
public abstract class e {
    private static List a(g gVar, Context context) {
        ArrayList arrayList = new ArrayList();
        if (gVar.e()) {
            arrayList.add(new d(gVar.f()));
        }
        if (gVar.b()) {
            arrayList.add(new c(gVar.c(), context));
        }
        if (gVar.m()) {
            arrayList.add(new a(gVar.l()));
        }
        if (gVar.a()) {
            arrayList.add(new b(gVar.g()));
        }
        return arrayList;
    }

    public static boolean b(g gVar, Context context) {
        List listA = a(gVar, context);
        if (listA.isEmpty()) {
            sc.a.e().a("No validators found for PerfMetric.");
            return false;
        }
        Iterator it = listA.iterator();
        while (it.hasNext()) {
            if (!((e) it.next()).c()) {
                return false;
            }
        }
        return true;
    }

    public static void d(String str, String str2) {
        if (str == null || str.length() == 0) {
            throw new IllegalArgumentException("Attribute key must not be null or empty");
        }
        if (str2 == null || str2.length() == 0) {
            throw new IllegalArgumentException("Attribute value must not be null or empty");
        }
        if (str.length() > 40) {
            throw new IllegalArgumentException(String.format(Locale.US, "Attribute key length must not exceed %d characters", 40));
        }
        if (str2.length() > 100) {
            throw new IllegalArgumentException(String.format(Locale.US, "Attribute value length must not exceed %d characters", 100));
        }
        if (!str.matches("^(?!(firebase_|google_|ga_))[A-Za-z][A-Za-z_0-9]*")) {
            throw new IllegalArgumentException("Attribute key must start with letter, must only contain alphanumeric characters and underscore and must not start with \"firebase_\", \"google_\" and \"ga_");
        }
    }

    public static String e(String str) {
        if (str == null) {
            return "Metric name must not be null";
        }
        if (str.length() > 100) {
            return String.format(Locale.US, "Metric name must not exceed %d characters", 100);
        }
        if (!str.startsWith("_")) {
            return null;
        }
        for (Constants$CounterNames constants$CounterNames : Constants$CounterNames.values()) {
            if (constants$CounterNames.toString().equals(str)) {
                return null;
            }
        }
        return "Metric name must not start with '_'";
    }

    public static String f(String str) {
        if (str == null) {
            return "Trace name must not be null";
        }
        if (str.length() > 100) {
            return String.format(Locale.US, "Trace name must not exceed %d characters", 100);
        }
        if (!str.startsWith("_")) {
            return null;
        }
        for (Constants$TraceNames constants$TraceNames : Constants$TraceNames.values()) {
            if (constants$TraceNames.toString().equals(str)) {
                return null;
            }
        }
        if (str.startsWith("_st_")) {
            return null;
        }
        return "Trace name must not start with '_'";
    }

    public abstract boolean c();
}
