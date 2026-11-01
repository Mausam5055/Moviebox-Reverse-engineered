package com.google.firebase.perf.util;

import android.content.Context;
import android.content.res.Resources;
import java.net.URI;

/* JADX INFO: loaded from: classes4.dex */
public class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static String[] f32379a;

    public static boolean a(URI uri, Context context) {
        Resources resources = context.getResources();
        int identifier = resources.getIdentifier("firebase_performance_whitelisted_domains", "array", context.getPackageName());
        if (identifier == 0) {
            return true;
        }
        sc.a.e().a("Detected domain allowlist, only allowlisted domains will be measured.");
        if (f32379a == null) {
            f32379a = resources.getStringArray(identifier);
        }
        String host = uri.getHost();
        if (host == null) {
            return true;
        }
        for (String str : f32379a) {
            if (host.contains(str)) {
                return true;
            }
        }
        return false;
    }
}
