package t8;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.ServiceInfo;
import android.os.Bundle;
import android.util.Log;
import com.google.android.datatransport.runtime.backends.TransportBackendDiscovery;
import java.lang.reflect.InvocationTargetException;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
class i implements d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final a f76085a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final g f76086b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Map f76087c;

    static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Context f76088a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private Map f76089b = null;

        a(Context context) {
            this.f76088a = context;
        }

        private Map a(Context context) {
            Bundle bundleD = d(context);
            if (bundleD == null) {
                Log.w("BackendRegistry", "Could not retrieve metadata, returning empty list of transport backends.");
                return Collections.emptyMap();
            }
            HashMap map = new HashMap();
            for (String str : bundleD.keySet()) {
                Object obj = bundleD.get(str);
                if ((obj instanceof String) && str.startsWith("backend:")) {
                    for (String str2 : ((String) obj).split(",", -1)) {
                        String strTrim = str2.trim();
                        if (!strTrim.isEmpty()) {
                            map.put(strTrim, str.substring(8));
                        }
                    }
                }
            }
            return map;
        }

        private Map c() {
            if (this.f76089b == null) {
                this.f76089b = a(this.f76088a);
            }
            return this.f76089b;
        }

        private static Bundle d(Context context) {
            try {
                PackageManager packageManager = context.getPackageManager();
                if (packageManager == null) {
                    Log.w("BackendRegistry", "Context has no PackageManager.");
                    return null;
                }
                ServiceInfo serviceInfo = packageManager.getServiceInfo(new ComponentName(context, (Class<?>) TransportBackendDiscovery.class), 128);
                if (serviceInfo != null) {
                    return serviceInfo.metaData;
                }
                Log.w("BackendRegistry", "TransportBackendDiscovery has no service info.");
                return null;
            } catch (PackageManager.NameNotFoundException unused) {
                Log.w("BackendRegistry", "Application info not found.");
                return null;
            }
        }

        c b(String str) {
            String str2 = (String) c().get(str);
            if (str2 == null) {
                return null;
            }
            try {
                return (c) Class.forName(str2).asSubclass(c.class).getDeclaredConstructor(null).newInstance(null);
            } catch (ClassNotFoundException e11) {
                Log.w("BackendRegistry", String.format("Class %s is not found.", str2), e11);
                return null;
            } catch (IllegalAccessException e12) {
                Log.w("BackendRegistry", String.format("Could not instantiate %s.", str2), e12);
                return null;
            } catch (InstantiationException e13) {
                Log.w("BackendRegistry", String.format("Could not instantiate %s.", str2), e13);
                return null;
            } catch (NoSuchMethodException e14) {
                Log.w("BackendRegistry", String.format("Could not instantiate %s", str2), e14);
                return null;
            } catch (InvocationTargetException e15) {
                Log.w("BackendRegistry", String.format("Could not instantiate %s", str2), e15);
                return null;
            }
        }
    }

    i(Context context, g gVar) {
        this(new a(context), gVar);
    }

    i(a aVar, g gVar) {
        this.f76087c = new HashMap();
        this.f76085a = aVar;
        this.f76086b = gVar;
    }

    @Override // t8.d
    public synchronized k a(String str) {
        if (this.f76087c.containsKey(str)) {
            return (k) this.f76087c.get(str);
        }
        c cVarB = this.f76085a.b(str);
        if (cVarB == null) {
            return null;
        }
        k kVarCreate = cVarB.create(this.f76086b.a(str));
        this.f76087c.put(str, kVarCreate);
        return kVarCreate;
    }
}
