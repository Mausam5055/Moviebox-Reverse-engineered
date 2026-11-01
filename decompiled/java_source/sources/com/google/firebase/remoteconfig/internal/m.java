package com.google.firebase.remoteconfig.internal;

import android.util.Log;
import com.google.android.gms.common.util.BiConsumer;
import java.nio.charset.Charset;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.TreeSet;
import java.util.concurrent.Executor;
import java.util.regex.Pattern;
import org.json.JSONException;

/* JADX INFO: loaded from: classes4.dex */
public class m {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final Charset f32530e = Charset.forName("UTF-8");

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    static final Pattern f32531f = Pattern.compile("^(1|true|t|yes|y|on)$", 2);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    static final Pattern f32532g = Pattern.compile("^(0|false|f|no|n|off|)$", 2);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Set f32533a = new HashSet();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Executor f32534b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final e f32535c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final e f32536d;

    public m(Executor executor, e eVar, e eVar2) {
        this.f32534b = executor;
        this.f32535c = eVar;
        this.f32536d = eVar2;
    }

    private void c(final String str, final f fVar) {
        if (fVar == null) {
            return;
        }
        synchronized (this.f32533a) {
            try {
                for (final BiConsumer biConsumer : this.f32533a) {
                    this.f32534b.execute(new Runnable() { // from class: com.google.firebase.remoteconfig.internal.l
                        @Override // java.lang.Runnable
                        public final void run() {
                            biConsumer.accept(str, fVar);
                        }
                    });
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    private static f e(e eVar) {
        return eVar.f();
    }

    private static Set f(e eVar) {
        HashSet hashSet = new HashSet();
        f fVarE = e(eVar);
        if (fVarE == null) {
            return hashSet;
        }
        Iterator<String> itKeys = fVarE.g().keys();
        while (itKeys.hasNext()) {
            hashSet.add(itKeys.next());
        }
        return hashSet;
    }

    private static TreeSet h(String str, f fVar) {
        TreeSet treeSet = new TreeSet();
        Iterator<String> itKeys = fVar.g().keys();
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            if (next.startsWith(str)) {
                treeSet.add(next);
            }
        }
        return treeSet;
    }

    private static Long j(e eVar, String str) {
        f fVarE = e(eVar);
        if (fVarE == null) {
            return null;
        }
        try {
            return Long.valueOf(fVarE.g().getLong(str));
        } catch (JSONException unused) {
            return null;
        }
    }

    private static String l(e eVar, String str) {
        f fVarE = e(eVar);
        if (fVarE == null) {
            return null;
        }
        try {
            return fVarE.g().getString(str);
        } catch (JSONException unused) {
            return null;
        }
    }

    private static void o(String str, String str2) {
        Log.w("FirebaseRemoteConfig", String.format("No value of type '%s' exists for parameter key '%s'.", str2, str));
    }

    public void b(BiConsumer biConsumer) {
        synchronized (this.f32533a) {
            this.f32533a.add(biConsumer);
        }
    }

    public Map d() {
        HashSet<String> hashSet = new HashSet();
        hashSet.addAll(f(this.f32535c));
        hashSet.addAll(f(this.f32536d));
        HashMap map = new HashMap();
        for (String str : hashSet) {
            map.put(str, m(str));
        }
        return map;
    }

    public Set g(String str) {
        if (str == null) {
            str = "";
        }
        TreeSet treeSet = new TreeSet();
        f fVarE = e(this.f32535c);
        if (fVarE != null) {
            treeSet.addAll(h(str, fVarE));
        }
        f fVarE2 = e(this.f32536d);
        if (fVarE2 != null) {
            treeSet.addAll(h(str, fVarE2));
        }
        return treeSet;
    }

    public long i(String str) {
        Long lJ = j(this.f32535c, str);
        if (lJ != null) {
            c(str, e(this.f32535c));
            return lJ.longValue();
        }
        Long lJ2 = j(this.f32536d, str);
        if (lJ2 != null) {
            return lJ2.longValue();
        }
        o(str, "Long");
        return 0L;
    }

    public String k(String str) {
        String strL = l(this.f32535c, str);
        if (strL != null) {
            c(str, e(this.f32535c));
            return strL;
        }
        String strL2 = l(this.f32536d, str);
        if (strL2 != null) {
            return strL2;
        }
        o(str, "String");
        return "";
    }

    public yc.k m(String str) {
        String strL = l(this.f32535c, str);
        if (strL != null) {
            c(str, e(this.f32535c));
            return new t(strL, 2);
        }
        String strL2 = l(this.f32536d, str);
        if (strL2 != null) {
            return new t(strL2, 1);
        }
        o(str, "FirebaseRemoteConfigValue");
        return new t("", 0);
    }
}
