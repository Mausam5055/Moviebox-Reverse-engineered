package oe;

import android.text.TextUtils;
import android.util.Log;

/* JADX INFO: loaded from: classes5.dex */
public abstract class d {
    public static void a(String str) {
        if (le.c.f68809a.booleanValue()) {
            TextUtils.isEmpty(str);
        }
    }

    public static void b(String str, Exception exc) {
        if ((!le.c.f68809a.booleanValue() || TextUtils.isEmpty(str)) && exc == null) {
            return;
        }
        Log.e("OMIDLIB", str, exc);
    }
}
