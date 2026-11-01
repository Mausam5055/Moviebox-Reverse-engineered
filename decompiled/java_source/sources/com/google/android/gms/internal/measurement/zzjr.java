package com.google.android.gms.internal.measurement;

import com.cloud.tmc.integration.ui.p001native.NativeImgComponent;
import com.google.android.gms.internal.measurement.zzjg;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.ServiceConfigurationError;
import java.util.ServiceLoader;
import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzjr<T extends zzjg> {
    private static String zza = "com.google.protobuf.BlazeGeneratedExtensionRegistryLiteLoader";

    static <T extends zzjg> T zza(Class<T> cls) {
        String str;
        ClassLoader classLoader = zzjr.class.getClassLoader();
        if (cls.equals(zzjg.class)) {
            str = zza;
        } else {
            if (!cls.getPackage().equals(zzjr.class.getPackage())) {
                throw new IllegalArgumentException(cls.getName());
            }
            str = String.format("%s.BlazeGenerated%sLoader", cls.getPackage().getName(), cls.getSimpleName());
        }
        try {
            try {
                try {
                    return cls.cast(((zzjr) Class.forName(str, true, classLoader).getConstructor(null).newInstance(null)).zza());
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
            Iterator it = ServiceLoader.load(zzjr.class, classLoader).iterator();
            ArrayList arrayList = new ArrayList();
            while (it.hasNext()) {
                try {
                    arrayList.add(cls.cast(((zzjr) it.next()).zza()));
                } catch (ServiceConfigurationError e15) {
                    Logger.getLogger(zzjc.class.getName()).logp(Level.SEVERE, "com.google.protobuf.GeneratedExtensionRegistryLoader", NativeImgComponent.EVENT_LOAD, "Unable to load " + cls.getSimpleName(), (Throwable) e15);
                }
            }
            if (arrayList.size() == 1) {
                return (T) arrayList.get(0);
            }
            if (arrayList.size() == 0) {
                return null;
            }
            try {
                return (T) cls.getMethod("combine", Collection.class).invoke(null, arrayList);
            } catch (IllegalAccessException e16) {
                throw new IllegalStateException(e16);
            } catch (NoSuchMethodException e17) {
                throw new IllegalStateException(e17);
            } catch (InvocationTargetException e18) {
                throw new IllegalStateException(e18);
            }
        }
    }

    protected abstract T zza();
}
