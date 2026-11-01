package androidx.core.app;

import android.app.AppOpsManager;
import android.app.Notification;
import android.app.NotificationManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.ApplicationInfo;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.os.Build;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.Message;
import android.os.RemoteException;
import android.provider.Settings;
import android.util.Log;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayDeque;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class t {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static String f8091d;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static d f8094g;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f8095a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final NotificationManager f8096b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Object f8090c = new Object();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static Set f8092e = new HashSet();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final Object f8093f = new Object();

    static class a {
        static boolean a(NotificationManager notificationManager) {
            return notificationManager.areNotificationsEnabled();
        }
    }

    private static class b implements e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final String f8097a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final int f8098b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final String f8099c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final Notification f8100d;

        b(String str, int i11, String str2, Notification notification) {
            this.f8097a = str;
            this.f8098b = i11;
            this.f8099c = str2;
            this.f8100d = notification;
        }

        @Override // androidx.core.app.t.e
        public void a(e.a aVar) {
            aVar.T0(this.f8097a, this.f8098b, this.f8099c, this.f8100d);
        }

        public String toString() {
            return "NotifyTask[packageName:" + this.f8097a + ", id:" + this.f8098b + ", tag:" + this.f8099c + "]";
        }
    }

    private static class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final ComponentName f8101a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final IBinder f8102b;

        c(ComponentName componentName, IBinder iBinder) {
            this.f8101a = componentName;
            this.f8102b = iBinder;
        }
    }

    private static class d implements Handler.Callback, ServiceConnection {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Context f8103a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final HandlerThread f8104b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final Handler f8105c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final Map f8106d = new HashMap();

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private Set f8107e = new HashSet();

        private static class a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final ComponentName f8108a;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            e.a f8110c;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            boolean f8109b = false;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            ArrayDeque f8111d = new ArrayDeque();

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            int f8112e = 0;

            a(ComponentName componentName) {
                this.f8108a = componentName;
            }
        }

        d(Context context) {
            this.f8103a = context;
            HandlerThread handlerThread = new HandlerThread("NotificationManagerCompat");
            this.f8104b = handlerThread;
            handlerThread.start();
            this.f8105c = new Handler(handlerThread.getLooper(), this);
        }

        private boolean a(a aVar) {
            if (aVar.f8109b) {
                return true;
            }
            boolean zBindService = this.f8103a.bindService(new Intent("android.support.BIND_NOTIFICATION_SIDE_CHANNEL").setComponent(aVar.f8108a), this, 33);
            aVar.f8109b = zBindService;
            if (zBindService) {
                aVar.f8112e = 0;
            } else {
                Log.w("NotifManCompat", "Unable to bind to listener " + aVar.f8108a);
                this.f8103a.unbindService(this);
            }
            return aVar.f8109b;
        }

        private void b(a aVar) {
            if (aVar.f8109b) {
                this.f8103a.unbindService(this);
                aVar.f8109b = false;
            }
            aVar.f8110c = null;
        }

        private void c(e eVar) {
            j();
            for (a aVar : this.f8106d.values()) {
                aVar.f8111d.add(eVar);
                g(aVar);
            }
        }

        private void d(ComponentName componentName) {
            a aVar = (a) this.f8106d.get(componentName);
            if (aVar != null) {
                g(aVar);
            }
        }

        private void e(ComponentName componentName, IBinder iBinder) {
            a aVar = (a) this.f8106d.get(componentName);
            if (aVar != null) {
                aVar.f8110c = e.a.AbstractBinderC0738a.Y0(iBinder);
                aVar.f8112e = 0;
                g(aVar);
            }
        }

        private void f(ComponentName componentName) {
            a aVar = (a) this.f8106d.get(componentName);
            if (aVar != null) {
                b(aVar);
            }
        }

        private void g(a aVar) {
            if (Log.isLoggable("NotifManCompat", 3)) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Processing component ");
                sb2.append(aVar.f8108a);
                sb2.append(", ");
                sb2.append(aVar.f8111d.size());
                sb2.append(" queued tasks");
            }
            if (aVar.f8111d.isEmpty()) {
                return;
            }
            if (!a(aVar) || aVar.f8110c == null) {
                i(aVar);
                return;
            }
            while (true) {
                e eVar = (e) aVar.f8111d.peek();
                if (eVar == null) {
                    break;
                }
                try {
                    if (Log.isLoggable("NotifManCompat", 3)) {
                        StringBuilder sb3 = new StringBuilder();
                        sb3.append("Sending task ");
                        sb3.append(eVar);
                    }
                    eVar.a(aVar.f8110c);
                    aVar.f8111d.remove();
                } catch (DeadObjectException unused) {
                    if (Log.isLoggable("NotifManCompat", 3)) {
                        StringBuilder sb4 = new StringBuilder();
                        sb4.append("Remote service has died: ");
                        sb4.append(aVar.f8108a);
                    }
                } catch (RemoteException e11) {
                    Log.w("NotifManCompat", "RemoteException communicating with " + aVar.f8108a, e11);
                }
            }
            if (aVar.f8111d.isEmpty()) {
                return;
            }
            i(aVar);
        }

        private void i(a aVar) {
            if (this.f8105c.hasMessages(3, aVar.f8108a)) {
                return;
            }
            int i11 = aVar.f8112e;
            int i12 = i11 + 1;
            aVar.f8112e = i12;
            if (i12 <= 6) {
                int i13 = (1 << i11) * 1000;
                if (Log.isLoggable("NotifManCompat", 3)) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("Scheduling retry for ");
                    sb2.append(i13);
                    sb2.append(" ms");
                }
                this.f8105c.sendMessageDelayed(this.f8105c.obtainMessage(3, aVar.f8108a), i13);
                return;
            }
            Log.w("NotifManCompat", "Giving up on delivering " + aVar.f8111d.size() + " tasks to " + aVar.f8108a + " after " + aVar.f8112e + " retries");
            aVar.f8111d.clear();
        }

        private void j() {
            Set setE = t.e(this.f8103a);
            if (setE.equals(this.f8107e)) {
                return;
            }
            this.f8107e = setE;
            List<ResolveInfo> listQueryIntentServices = this.f8103a.getPackageManager().queryIntentServices(new Intent().setAction("android.support.BIND_NOTIFICATION_SIDE_CHANNEL"), 0);
            HashSet<ComponentName> hashSet = new HashSet();
            for (ResolveInfo resolveInfo : listQueryIntentServices) {
                if (setE.contains(resolveInfo.serviceInfo.packageName)) {
                    ServiceInfo serviceInfo = resolveInfo.serviceInfo;
                    ComponentName componentName = new ComponentName(serviceInfo.packageName, serviceInfo.name);
                    if (resolveInfo.serviceInfo.permission != null) {
                        Log.w("NotifManCompat", "Permission present on component " + componentName + ", not adding listener record.");
                    } else {
                        hashSet.add(componentName);
                    }
                }
            }
            for (ComponentName componentName2 : hashSet) {
                if (!this.f8106d.containsKey(componentName2)) {
                    if (Log.isLoggable("NotifManCompat", 3)) {
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("Adding listener record for ");
                        sb2.append(componentName2);
                    }
                    this.f8106d.put(componentName2, new a(componentName2));
                }
            }
            Iterator it = this.f8106d.entrySet().iterator();
            while (it.hasNext()) {
                Map.Entry entry = (Map.Entry) it.next();
                if (!hashSet.contains(entry.getKey())) {
                    if (Log.isLoggable("NotifManCompat", 3)) {
                        StringBuilder sb3 = new StringBuilder();
                        sb3.append("Removing listener record for ");
                        sb3.append(entry.getKey());
                    }
                    b((a) entry.getValue());
                    it.remove();
                }
            }
        }

        public void h(e eVar) {
            this.f8105c.obtainMessage(0, eVar).sendToTarget();
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            int i11 = message.what;
            if (i11 == 0) {
                c((e) message.obj);
                return true;
            }
            if (i11 == 1) {
                c cVar = (c) message.obj;
                e(cVar.f8101a, cVar.f8102b);
                return true;
            }
            if (i11 == 2) {
                f((ComponentName) message.obj);
                return true;
            }
            if (i11 != 3) {
                return false;
            }
            d((ComponentName) message.obj);
            return true;
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            if (Log.isLoggable("NotifManCompat", 3)) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Connected to service ");
                sb2.append(componentName);
            }
            this.f8105c.obtainMessage(1, new c(componentName, iBinder)).sendToTarget();
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            if (Log.isLoggable("NotifManCompat", 3)) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Disconnected from service ");
                sb2.append(componentName);
            }
            this.f8105c.obtainMessage(2, componentName).sendToTarget();
        }
    }

    private interface e {
        void a(e.a aVar);
    }

    private t(Context context) {
        this.f8095a = context;
        this.f8096b = (NotificationManager) context.getSystemService("notification");
    }

    public static t d(Context context) {
        return new t(context);
    }

    public static Set e(Context context) {
        Set set;
        String string = Settings.Secure.getString(context.getContentResolver(), "enabled_notification_listeners");
        synchronized (f8090c) {
            if (string != null) {
                try {
                    if (!string.equals(f8091d)) {
                        String[] strArrSplit = string.split(":", -1);
                        HashSet hashSet = new HashSet(strArrSplit.length);
                        for (String str : strArrSplit) {
                            ComponentName componentNameUnflattenFromString = ComponentName.unflattenFromString(str);
                            if (componentNameUnflattenFromString != null) {
                                hashSet.add(componentNameUnflattenFromString.getPackageName());
                            }
                        }
                        f8092e = hashSet;
                        f8091d = string;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            set = f8092e;
        }
        return set;
    }

    private void h(e eVar) {
        synchronized (f8093f) {
            try {
                if (f8094g == null) {
                    f8094g = new d(this.f8095a.getApplicationContext());
                }
                f8094g.h(eVar);
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    private static boolean i(Notification notification) {
        Bundle extras = NotificationCompat.getExtras(notification);
        return extras != null && extras.getBoolean("android.support.useSideChannel");
    }

    public boolean a() {
        if (Build.VERSION.SDK_INT >= 24) {
            return a.a(this.f8096b);
        }
        AppOpsManager appOpsManager = (AppOpsManager) this.f8095a.getSystemService("appops");
        ApplicationInfo applicationInfo = this.f8095a.getApplicationInfo();
        String packageName = this.f8095a.getApplicationContext().getPackageName();
        int i11 = applicationInfo.uid;
        try {
            Class<?> cls = Class.forName(AppOpsManager.class.getName());
            Class<?> cls2 = Integer.TYPE;
            Method method = cls.getMethod("checkOpNoThrow", cls2, cls2, String.class);
            Integer num = (Integer) cls.getDeclaredField("OP_POST_NOTIFICATION").get(Integer.class);
            num.intValue();
            return ((Integer) method.invoke(appOpsManager, num, Integer.valueOf(i11), packageName)).intValue() == 0;
        } catch (ClassNotFoundException | IllegalAccessException | NoSuchFieldException | NoSuchMethodException | RuntimeException | InvocationTargetException unused) {
            return true;
        }
    }

    public void b(int i11) {
        c(null, i11);
    }

    public void c(String str, int i11) {
        this.f8096b.cancel(str, i11);
    }

    public void f(int i11, Notification notification) {
        g(null, i11, notification);
    }

    public void g(String str, int i11, Notification notification) {
        if (!i(notification)) {
            this.f8096b.notify(str, i11, notification);
        } else {
            h(new b(this.f8095a.getPackageName(), i11, str, notification));
            this.f8096b.cancel(str, i11);
        }
    }
}
