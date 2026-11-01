package com.google.android.gms.internal.play_billing;

import com.cloud.tmc.integration.ui.p001native.NativeImgComponent;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.ServiceConfigurationError;
import java.util.ServiceLoader;
import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes4.dex */
abstract class zzer {
    private static final Logger zza = Logger.getLogger(zzee.class.getName());
    private static final String zzb = "com.google.protobuf.BlazeGeneratedExtensionRegistryLiteLoader";

    zzer() {
    }

    static zzej zzb(Class cls) {
        String str;
        ClassLoader classLoader = zzer.class.getClassLoader();
        if (cls.equals(zzej.class)) {
            str = zzb;
        } else {
            if (!cls.getPackage().equals(zzer.class.getPackage())) {
                throw new IllegalArgumentException(cls.getName());
            }
            str = String.format("%s.BlazeGenerated%sLoader", cls.getPackage().getName(), cls.getSimpleName());
        }
        try {
            try {
                try {
                    return (zzej) cls.cast(((zzer) Class.forName(str, true, classLoader).getConstructor(null).newInstance(null)).zza());
                } catch (IllegalAccessException e11) {
                    throw new IllegalStateException(e11);
                } catch (InvocationTargetException e12) {
                    throw new IllegalStateException(e12);
                }
            } catch (InstantiationException e13) {
                throw new IllegalStateException(e13);
            } catch (NoSuchMethodException e14) {
                throw new IllegalStateException(e14);
            }
        } catch (ClassNotFoundException unused) {
            Iterator it = ServiceLoader.load(zzer.class, classLoader).iterator();
            ArrayList arrayList = new ArrayList();
            while (it.hasNext()) {
                try {
                    arrayList.add((zzej) cls.cast(((zzer) it.next()).zza()));
                } catch (ServiceConfigurationError e15) {
                    zza.logp(Level.SEVERE, "com.google.protobuf.GeneratedExtensionRegistryLoader", NativeImgComponent.EVENT_LOAD, "Unable to load ".concat(cls.getSimpleName()), (Throwable) e15);
                }
            }
            if (arrayList.size() == 1) {
                return (zzej) arrayList.get(0);
            }
            if (arrayList.size() == 0) {
                return null;
            }
            try {
                return (zzej) cls.getMethod("combine", Collection.class).invoke(null, arrayList);
            } catch (IllegalAccessException e16) {
                throw new IllegalStateException(e16);
            } catch (NoSuchMethodException e17) {
                throw new IllegalStateException(e17);
            } catch (InvocationTargetException e18) {
                throw new IllegalStateException(e18);
            }
        }
    }

    protected abstract zzej zza();
}
