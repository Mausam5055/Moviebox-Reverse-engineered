package com.google.android.gms.gcm;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.collection.a;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.CollectionUtils;
import com.google.android.gms.internal.gcm.zzq;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public class GcmNetworkManager {
    public static final int RESULT_FAILURE = 2;
    public static final int RESULT_RESCHEDULE = 1;
    public static final int RESULT_SUCCESS = 0;
    private static GcmNetworkManager zzh;
    private final Context zzi;
    private final Map<String, Map<String, Boolean>> zzj = new a();

    private GcmNetworkManager(Context context) {
        this.zzi = context;
    }

    public static GcmNetworkManager getInstance(Context context) {
        GcmNetworkManager gcmNetworkManager;
        synchronized (GcmNetworkManager.class) {
            try {
                if (zzh == null) {
                    zzh = new GcmNetworkManager(context.getApplicationContext());
                }
                gcmNetworkManager = zzh;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return gcmNetworkManager;
    }

    static void zzd(String str) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("Must provide a valid tag.");
        }
        if (100 < str.length()) {
            throw new IllegalArgumentException("Tag is larger than max permissible tag length (100)");
        }
    }

    private static /* synthetic */ void zzd(Throwable th2, zzp zzpVar) {
        if (th2 == null) {
            zzpVar.close();
            return;
        }
        try {
            zzpVar.close();
        } catch (Throwable th3) {
            zzq.zzd(th2, th3);
        }
    }

    @NonNull
    private final zzn zze() {
        if (GoogleCloudMessaging.zzf(this.zzi) >= 5000000) {
            return new zzm(this.zzi);
        }
        Log.e("GcmNetworkManager", "Google Play services is not available, dropping all GcmNetworkManager requests");
        return new zzo();
    }

    private final boolean zze(String str) {
        List<ResolveInfo> listQueryIntentServices;
        Preconditions.checkNotNull(str, "GcmTaskService must not be null.");
        PackageManager packageManager = this.zzi.getPackageManager();
        if (packageManager == null) {
            listQueryIntentServices = Collections.emptyList();
        } else {
            listQueryIntentServices = packageManager.queryIntentServices(str != null ? new Intent(GcmTaskService.SERVICE_ACTION_EXECUTE_TASK).setClassName(this.zzi, str) : new Intent(GcmTaskService.SERVICE_ACTION_EXECUTE_TASK).setPackage(this.zzi.getPackageName()), 0);
        }
        if (CollectionUtils.isEmpty(listQueryIntentServices)) {
            Log.e("GcmNetworkManager", String.valueOf(str).concat(" is not available. This may cause the task to be lost."));
            return true;
        }
        Iterator<ResolveInfo> it = listQueryIntentServices.iterator();
        while (it.hasNext()) {
            ServiceInfo serviceInfo = it.next().serviceInfo;
            if (serviceInfo != null && serviceInfo.enabled) {
                return true;
            }
        }
        StringBuilder sb2 = new StringBuilder(String.valueOf(str).length() + Sdk$SDKError.Reason.PROTOBUF_SERIALIZATION_ERROR_VALUE);
        sb2.append("The GcmTaskService class you provided ");
        sb2.append(str);
        sb2.append(" does not seem to support receiving com.google.android.gms.gcm.ACTION_TASK_READY");
        throw new IllegalArgumentException(sb2.toString());
    }

    public void cancelAllTasks(Class<? extends GcmTaskService> cls) {
        ComponentName componentName = new ComponentName(this.zzi, cls);
        zzp zzpVar = new zzp("nts:client:cancelAll");
        try {
            zze(componentName.getClassName());
            zze().zzd(componentName);
            zzd((Throwable) null, zzpVar);
        } catch (Throwable th2) {
            try {
                throw th2;
            } catch (Throwable th3) {
                zzd(th2, zzpVar);
                throw th3;
            }
        }
    }

    public void cancelTask(String str, Class<? extends GcmTaskService> cls) {
        ComponentName componentName = new ComponentName(this.zzi, cls);
        String strValueOf = String.valueOf(str);
        zzp zzpVar = new zzp(strValueOf.length() != 0 ? "nts:client:cancel:".concat(strValueOf) : new String("nts:client:cancel:"));
        try {
            zzd(str);
            zze(componentName.getClassName());
            zze().zzd(componentName, str);
            zzd((Throwable) null, zzpVar);
        } catch (Throwable th2) {
            try {
                throw th2;
            } catch (Throwable th3) {
                zzd(th2, zzpVar);
                throw th3;
            }
        }
    }

    public synchronized void schedule(Task task) {
        Map<String, Boolean> map;
        try {
            String strValueOf = String.valueOf(task.getTag());
            zzp zzpVar = new zzp(strValueOf.length() != 0 ? "nts:client:schedule:".concat(strValueOf) : new String("nts:client:schedule:"));
            try {
                zze(task.getServiceName());
                if (zze().zzd(task) && (map = this.zzj.get(task.getServiceName())) != null && map.containsKey(task.getTag())) {
                    map.put(task.getTag(), Boolean.TRUE);
                }
                zzd((Throwable) null, zzpVar);
            } catch (Throwable th2) {
                try {
                    throw th2;
                } catch (Throwable th3) {
                    zzd(th2, zzpVar);
                    throw th3;
                }
            }
        } catch (Throwable th4) {
            throw th4;
        }
    }

    final synchronized boolean zzd(String str, String str2) {
        Map<String, Boolean> aVar;
        try {
            aVar = this.zzj.get(str2);
            if (aVar == null) {
                aVar = new a();
                this.zzj.put(str2, aVar);
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return aVar.put(str, Boolean.FALSE) == null;
    }

    final synchronized void zze(String str, String str2) {
        Map<String, Boolean> map = this.zzj.get(str2);
        if (map != null && map.remove(str) != null && map.isEmpty()) {
            this.zzj.remove(str2);
        }
    }

    final synchronized boolean zzf(String str) {
        return this.zzj.containsKey(str);
    }

    final synchronized boolean zzf(String str, String str2) {
        Map<String, Boolean> map = this.zzj.get(str2);
        if (map == null) {
            return false;
        }
        Boolean bool = map.get(str);
        if (bool == null) {
            return false;
        }
        return bool.booleanValue();
    }
}
