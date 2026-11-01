package com.alibaba.fastjson.util;

import com.google.firebase.perf.network.FirebasePerfUrlConnection;
import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.URL;
import java.util.Collections;
import java.util.Enumeration;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
public class l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Set f18265a = new HashSet();

    public static Set a(Class cls, ClassLoader classLoader) {
        if (classLoader == null) {
            return Collections.emptySet();
        }
        HashSet hashSet = new HashSet();
        String str = "META-INF/services/" + cls.getName();
        HashSet hashSet2 = new HashSet();
        try {
            Enumeration<URL> resources = classLoader.getResources(str);
            while (resources.hasMoreElements()) {
                URL urlNextElement = resources.nextElement();
                Set set = f18265a;
                if (!set.contains(urlNextElement.toString())) {
                    b(urlNextElement, hashSet2);
                    set.add(urlNextElement.toString());
                }
            }
        } catch (Throwable unused) {
        }
        Iterator it = hashSet2.iterator();
        while (it.hasNext()) {
            try {
                hashSet.add(classLoader.loadClass((String) it.next()).newInstance());
            } catch (Exception unused2) {
            }
        }
        return hashSet;
    }

    public static void b(URL url, Set set) throws Throwable {
        InputStream inputStreamOpenStream;
        BufferedReader bufferedReader = null;
        try {
            inputStreamOpenStream = FirebasePerfUrlConnection.openStream(url);
            try {
                BufferedReader bufferedReader2 = new BufferedReader(new InputStreamReader(inputStreamOpenStream, "utf-8"));
                while (true) {
                    try {
                        String line = bufferedReader2.readLine();
                        if (line == null) {
                            f.a(bufferedReader2);
                            f.a(inputStreamOpenStream);
                            return;
                        }
                        int iIndexOf = line.indexOf(35);
                        if (iIndexOf >= 0) {
                            line = line.substring(0, iIndexOf);
                        }
                        String strTrim = line.trim();
                        if (strTrim.length() != 0) {
                            set.add(strTrim);
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        bufferedReader = bufferedReader2;
                        f.a(bufferedReader);
                        f.a(inputStreamOpenStream);
                        throw th;
                    }
                }
            } catch (Throwable th3) {
                th = th3;
            }
        } catch (Throwable th4) {
            th = th4;
            inputStreamOpenStream = null;
        }
    }
}
