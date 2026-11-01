package ie;

import android.text.TextUtils;
import android.util.Log;

/* JADX INFO: loaded from: classes5.dex */
public abstract class d {
    public static void a(String str) {
        if (fe.b.f62380a.booleanValue()) {
            TextUtils.isEmpty(str);
        }
    }

    public static void b(String str, Exception exc) {
        if ((!fe.b.f62380a.booleanValue() || TextUtils.isEmpty(str)) && exc == null) {
            return;
        }
        Log.e("OMIDLIB", str, exc);
    }
}
