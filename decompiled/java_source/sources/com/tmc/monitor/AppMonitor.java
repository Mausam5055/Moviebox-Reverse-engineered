package com.tmc.monitor;

import android.os.Bundle;
import android.text.TextUtils;
import com.cloud.tmc.integration.athena.Constants;
import com.tmc.network.NetworkConfig;
import eg.b;
import eg.c;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArraySet;

/* JADX INFO: loaded from: classes5.dex */
public class AppMonitor {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static Set f40794b = new CopyOnWriteArraySet();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static Map f40795c = new ConcurrentHashMap();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static Map f40796d = new ConcurrentHashMap();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f40797a;

    private static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static AppMonitor f40798a = new AppMonitor();
    }

    private AppMonitor() {
        this.f40797a = Constants.MINI_APPID;
        NetworkConfig networkConfig = NetworkConfig.INSTANCE;
        if (networkConfig.getAppMonitorId() != -1) {
            this.f40797a = networkConfig.getAppMonitorId();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(c cVar) {
        List<Field> list;
        try {
            Class<?> cls = cVar.getClass();
            if (!f40794b.contains(cls)) {
                e(cls);
            }
            b bVar = (b) cls.getAnnotation(b.class);
            if (bVar == null) {
                return;
            }
            String strId = bVar.id();
            String strName = bVar.name();
            if (TextUtils.isEmpty(strId) || (list = (List) f40795c.get(cls)) == null) {
                return;
            }
            Bundle bundle = new Bundle();
            bundle.putString("object_id", strId);
            bundle.putString("object_name", strName);
            for (Field field : list) {
                String str = (String) f40796d.get(field);
                Class<?> type = field.getType();
                if (type.isAssignableFrom(Integer.TYPE)) {
                    bundle.putInt(str, field.getInt(cVar));
                } else if (type.isAssignableFrom(Long.TYPE)) {
                    bundle.putLong(str, field.getLong(cVar));
                } else if (type.isAssignableFrom(Boolean.TYPE)) {
                    bundle.putBoolean(str, field.getBoolean(cVar));
                } else if (type.isAssignableFrom(Character.TYPE)) {
                    bundle.putChar(str, field.getChar(cVar));
                } else if (type.isAssignableFrom(Byte.TYPE)) {
                    bundle.putByte(str, field.getByte(cVar));
                } else if (type.isAssignableFrom(Short.TYPE)) {
                    bundle.putShort(str, field.getShort(cVar));
                } else if (type.isAssignableFrom(Float.TYPE)) {
                    bundle.putFloat(str, field.getFloat(cVar));
                } else if (type.isAssignableFrom(Double.TYPE)) {
                    bundle.putDouble(str, field.getDouble(cVar));
                } else if (type.isAssignableFrom(String.class)) {
                    bundle.putString(str, (String) field.get(cVar));
                } else {
                    gg.b.f63567a.c(" error type = " + type + ", fieldName = " + str);
                }
            }
            gg.b.f63567a.c(" Bundle data = " + bundle.toString());
            new yi.a("network", this.f40797a).c(bundle, null).b();
        } catch (Throwable th2) {
            gg.b.f63567a.e(th2);
        }
    }

    public static AppMonitor d() {
        return a.f40798a;
    }

    private void e(Class cls) {
        if (cls != null) {
            try {
                if (f40794b.contains(cls) || ((b) cls.getAnnotation(b.class)) == null) {
                    return;
                }
                Field[] declaredFields = cls.getDeclaredFields();
                ArrayList arrayList = new ArrayList();
                for (Field field : declaredFields) {
                    if (((eg.a) field.getAnnotation(eg.a.class)) != null) {
                        field.setAccessible(true);
                        arrayList.add(field);
                        f40796d.put(field, field.getName());
                    }
                }
                f40795c.put(cls, arrayList);
                f40794b.add(cls);
            } catch (Exception e11) {
                e11.printStackTrace();
            }
        }
    }

    public void c(final c cVar) {
        if (cVar != null) {
            try {
                NetworkConfig networkConfig = NetworkConfig.INSTANCE;
                if (networkConfig.isNetworkMonitorEnable()) {
                    if (((int) (Math.random() * 1000.0d)) <= networkConfig.getAppMonitorRandom()) {
                        gg.c.f63572c.a().a(new Runnable() { // from class: com.tmc.monitor.AppMonitor.1
                            @Override // java.lang.Runnable
                            public void run() {
                                AppMonitor.this.b(cVar);
                            }
                        });
                        return;
                    }
                    gg.b.f63567a.c("abort report. data = " + cVar.toString());
                }
            } catch (Throwable th2) {
                gg.b.f63567a.e(th2);
            }
        }
    }
}
