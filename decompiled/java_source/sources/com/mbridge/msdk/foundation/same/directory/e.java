package com.mbridge.msdk.foundation.same.directory;

import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.r0;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class e {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static volatile e f35394c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final b f35395a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ArrayList<a> f35396b = new ArrayList<>();

    private static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public File f35397a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public c f35398b;

        public a(c cVar, File file) {
            this.f35398b = cVar;
            this.f35397a = file;
        }
    }

    private e(b bVar) {
        this.f35395a = bVar;
    }

    public static File a(c cVar) {
        try {
            if (b() == null || b().f35396b == null || b().f35396b.isEmpty()) {
                return null;
            }
            for (a aVar : b().f35396b) {
                if (aVar.f35398b.equals(cVar)) {
                    return aVar.f35397a;
                }
            }
            return null;
        } catch (Throwable th2) {
            o0.b("MBridgeDirManager", th2.getMessage(), th2);
            return null;
        }
    }

    public static synchronized void a(b bVar) {
        if (f35394c == null) {
            f35394c = new e(bVar);
        }
    }

    private boolean a(com.mbridge.msdk.foundation.same.directory.a aVar) {
        String strB;
        com.mbridge.msdk.foundation.same.directory.a aVarC = aVar.c();
        if (aVarC == null) {
            strB = aVar.b();
        } else {
            File fileA = a(aVarC.d());
            if (fileA == null) {
                return false;
            }
            strB = fileA.getAbsolutePath() + File.separator + aVar.b();
        }
        File file = new File(strB);
        if (!(!file.exists() ? file.mkdirs() : true)) {
            return false;
        }
        this.f35396b.add(new a(aVar.d(), file));
        List<com.mbridge.msdk.foundation.same.directory.a> listA = aVar.a();
        if (listA != null) {
            Iterator<com.mbridge.msdk.foundation.same.directory.a> it = listA.iterator();
            while (it.hasNext()) {
                if (!a(it.next())) {
                    return false;
                }
            }
        }
        return true;
    }

    public static synchronized e b() {
        try {
            if (f35394c == null && com.mbridge.msdk.foundation.controller.c.m().d() != null) {
                r0.a(com.mbridge.msdk.foundation.controller.c.m().d());
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return f35394c;
    }

    public static String b(c cVar) {
        File fileA = a(cVar);
        if (fileA != null) {
            return fileA.getAbsolutePath();
        }
        return null;
    }

    public boolean a() {
        return a(this.f35395a.a());
    }
}
