package b8;

import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final b f16246a = d();

    static class a extends b {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static final Map f16247b;

        static {
            HashMap map = new HashMap();
            map.put(Bundle.class, new v7.a());
            map.put(Intent.class, new v7.b());
            f16247b = Collections.unmodifiableMap(map);
        }

        a() {
        }

        @Override // b8.b
        Map a() {
            return f16247b;
        }

        @Override // b8.b
        e8.c b() {
            return new e8.a();
        }

        @Override // b8.b
        public void c(String str) {
            Log.e("XLog", str);
        }

        @Override // b8.b
        String f() {
            return System.lineSeparator();
        }

        @Override // b8.b
        public void g(String str) {
            Log.w("XLog", str);
        }
    }

    private static b d() {
        try {
            Class.forName("android.os.Build");
            return new a();
        } catch (ClassNotFoundException unused) {
            return new b();
        }
    }

    public static b e() {
        return f16246a;
    }

    Map a() {
        return Collections.emptyMap();
    }

    e8.c b() {
        return new e8.b();
    }

    public void c(String str) {
        System.out.println(str);
    }

    String f() {
        return System.lineSeparator();
    }

    public void g(String str) {
        System.out.println(str);
    }
}
