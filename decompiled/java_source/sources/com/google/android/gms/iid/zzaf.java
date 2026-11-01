package com.google.android.gms.iid;

import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.os.Build;
import android.os.Bundle;
import android.os.ConditionVariable;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;
import android.os.Parcelable;
import android.os.Process;
import android.os.RemoteException;
import android.util.Log;
import androidx.collection.a;
import com.cloud.tmc.kernel.utils.NetworkUtil;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.util.PlatformVersion;
import com.google.android.gms.tasks.Tasks;
import com.transsion.api.gateway.utils.SafeStringUtils;
import java.io.IOException;
import java.security.KeyPair;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ExecutionException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes3.dex */
@ShowFirstParty
public class zzaf {
    private PendingIntent zzaf;
    private Messenger zzaj;
    private Map<String, Object> zzcz = new a();
    private Messenger zzda;
    private MessengerCompat zzdb;
    private Context zzl;
    private static final zzaj<Boolean> zzct = zzai.zzy().zzd("gcm_iid_use_messenger_ipc", true);
    private static String zzcu = null;
    private static boolean zzcv = false;
    private static int zzcw = 0;
    private static int zzcx = 0;
    private static int zzcp = 0;
    private static BroadcastReceiver zzcy = null;

    public zzaf(Context context) {
        this.zzl = context;
    }

    private static void zzd(Object obj, Object obj2) {
        if (obj instanceof ConditionVariable) {
            ((ConditionVariable) obj).open();
        }
        if (obj instanceof Messenger) {
            Messenger messenger = (Messenger) obj;
            Message messageObtain = Message.obtain();
            messageObtain.obj = obj2;
            try {
                messenger.send(messageObtain);
            } catch (RemoteException e11) {
                String strValueOf = String.valueOf(e11);
                StringBuilder sb2 = new StringBuilder(strValueOf.length() + 24);
                sb2.append("Failed to send response ");
                sb2.append(strValueOf);
                Log.w("InstanceID", sb2.toString());
            }
        }
    }

    private final void zzd(String str, Object obj) {
        synchronized (getClass()) {
            Object obj2 = this.zzcz.get(str);
            this.zzcz.put(str, obj);
            zzd(obj2, obj);
        }
    }

    private static boolean zzd(PackageManager packageManager, String str) {
        try {
            ApplicationInfo applicationInfo = packageManager.getApplicationInfo(str, 0);
            zzcu = applicationInfo.packageName;
            zzcx = applicationInfo.uid;
            return true;
        } catch (PackageManager.NameNotFoundException unused) {
            return false;
        }
    }

    private static boolean zzd(PackageManager packageManager, String str, String str2) {
        if (packageManager.checkPermission("com.google.android.c2dm.permission.SEND", str) == 0) {
            return zzd(packageManager, str);
        }
        StringBuilder sb2 = new StringBuilder(String.valueOf(str).length() + 56 + String.valueOf(str2).length());
        sb2.append("Possible malicious package ");
        sb2.append(str);
        sb2.append(" declares ");
        sb2.append(str2);
        sb2.append(" without permission");
        Log.w("InstanceID", sb2.toString());
        return false;
    }

    private final synchronized void zzg(Intent intent) {
        try {
            if (this.zzaf == null) {
                Intent intent2 = new Intent();
                intent2.setPackage("com.google.example.invalidpackage");
                this.zzaf = PendingIntent.getBroadcast(this.zzl, 0, intent2, 0);
            }
            intent.putExtra("app", this.zzaf);
        } catch (Throwable th2) {
            throw th2;
        }
    }

    static String zzi(Bundle bundle) throws IOException {
        if (bundle == null) {
            throw new IOException("SERVICE_NOT_AVAILABLE");
        }
        String string = bundle.getString("registration_id");
        if (string == null) {
            string = bundle.getString("unregistered");
        }
        if (string != null) {
            return string;
        }
        String string2 = bundle.getString("error");
        if (string2 != null) {
            throw new IOException(string2);
        }
        String strValueOf = String.valueOf(bundle);
        StringBuilder sb2 = new StringBuilder(strValueOf.length() + 29);
        sb2.append("Unexpected response from GCM ");
        sb2.append(strValueOf);
        Log.w("InstanceID", sb2.toString(), new Throwable());
        throw new IOException("SERVICE_NOT_AVAILABLE");
    }

    private final Bundle zzj(Bundle bundle) throws IOException {
        Bundle bundleZzk = zzk(bundle);
        if (bundleZzk == null || !bundleZzk.containsKey("google.messenger")) {
            return bundleZzk;
        }
        Bundle bundleZzk2 = zzk(bundle);
        if (bundleZzk2 == null || !bundleZzk2.containsKey("google.messenger")) {
            return bundleZzk2;
        }
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:28:0x00ed  */
    /* JADX WARN: Code duplicated, block: B:32:0x00f4 A[Catch: all -> 0x011b, TryCatch #2 {all -> 0x011b, blocks: (B:30:0x00f0, B:32:0x00f4, B:35:0x011d), top: B:74:0x00f0 }] */
    /* JADX WARN: Code duplicated, block: B:39:0x0126  */
    /* JADX WARN: Code duplicated, block: B:41:0x0138  */
    /* JADX WARN: Code duplicated, block: B:45:0x0149  */
    /* JADX WARN: Code duplicated, block: B:47:0x014d  */
    /* JADX WARN: Code duplicated, block: B:48:0x0153  */
    /* JADX WARN: Code duplicated, block: B:74:0x00f0 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    private final Bundle zzk(Bundle bundle) throws IOException {
        Bundle bundle2;
        ConditionVariable conditionVariable = new ConditionVariable();
        String strZzx = zzx();
        synchronized (getClass()) {
            this.zzcz.put(strZzx, conditionVariable);
        }
        if (this.zzaj == null) {
            zzl(this.zzl);
            this.zzaj = new Messenger(new zzag(this, Looper.getMainLooper()));
        }
        if (zzcu == null) {
            throw new IOException(InstanceID.ERROR_MISSING_INSTANCEID_SERVICE);
        }
        Intent intent = new Intent(zzcv ? "com.google.iid.TOKEN_REQUEST" : "com.google.android.c2dm.intent.REGISTER");
        intent.setPackage(zzcu);
        intent.putExtras(bundle);
        zzg(intent);
        StringBuilder sb2 = new StringBuilder(String.valueOf(strZzx).length() + 5);
        sb2.append("|ID|");
        sb2.append(strZzx);
        sb2.append("|");
        intent.putExtra("kid", sb2.toString());
        StringBuilder sb3 = new StringBuilder(String.valueOf(strZzx).length() + 5);
        sb3.append("|ID|");
        sb3.append(strZzx);
        sb3.append("|");
        intent.putExtra("X-kid", sb3.toString());
        boolean zEquals = "com.google.android.gsf".equals(zzcu);
        String stringExtra = intent.getStringExtra("useGsf");
        if (stringExtra != null) {
            zEquals = "1".equals(stringExtra);
        }
        if (Log.isLoggable("InstanceID", 3)) {
            String strValueOf = String.valueOf(intent.getExtras());
            StringBuilder sb4 = new StringBuilder(strValueOf.length() + 8);
            sb4.append("Sending ");
            sb4.append(strValueOf);
        }
        if (this.zzda != null) {
            intent.putExtra("google.messenger", this.zzaj);
            Message messageObtain = Message.obtain();
            messageObtain.obj = intent;
            try {
                this.zzda.send(messageObtain);
            } catch (RemoteException unused) {
                Log.isLoggable("InstanceID", 3);
                if (zEquals) {
                    synchronized (zzaf.class) {
                        try {
                            if (zzcy == null) {
                                zzcy = new zzah(this);
                                Log.isLoggable("InstanceID", 3);
                                IntentFilter intentFilter = new IntentFilter("com.google.android.c2dm.intent.REGISTRATION");
                                intentFilter.addCategory(this.zzl.getPackageName());
                                this.zzl.registerReceiver(zzcy, intentFilter, "com.google.android.c2dm.permission.SEND", null);
                            }
                            this.zzl.sendBroadcast(intent);
                        } catch (Throwable th2) {
                            throw th2;
                        }
                    }
                } else {
                    intent.putExtra("google.messenger", this.zzaj);
                    intent.putExtra("messenger2", "1");
                    if (this.zzdb != null) {
                        Message messageObtain2 = Message.obtain();
                        messageObtain2.obj = intent;
                        try {
                            this.zzdb.send(messageObtain2);
                        } catch (RemoteException unused2) {
                            Log.isLoggable("InstanceID", 3);
                            if (zzcv) {
                                this.zzl.sendBroadcast(intent);
                            } else {
                                this.zzl.startService(intent);
                            }
                        }
                    } else if (zzcv) {
                        this.zzl.sendBroadcast(intent);
                    } else {
                        this.zzl.startService(intent);
                    }
                }
            }
        } else if (zEquals) {
            synchronized (zzaf.class) {
                if (zzcy == null) {
                    zzcy = new zzah(this);
                    Log.isLoggable("InstanceID", 3);
                    IntentFilter intentFilter2 = new IntentFilter("com.google.android.c2dm.intent.REGISTRATION");
                    intentFilter2.addCategory(this.zzl.getPackageName());
                    this.zzl.registerReceiver(zzcy, intentFilter2, "com.google.android.c2dm.permission.SEND", null);
                }
            }
            this.zzl.sendBroadcast(intent);
        } else {
            intent.putExtra("google.messenger", this.zzaj);
            intent.putExtra("messenger2", "1");
            if (this.zzdb != null) {
                Message messageObtain3 = Message.obtain();
                messageObtain3.obj = intent;
                this.zzdb.send(messageObtain3);
            } else if (zzcv) {
                this.zzl.sendBroadcast(intent);
            } else {
                this.zzl.startService(intent);
            }
        }
        conditionVariable.block(30000L);
        synchronized (getClass()) {
            try {
                Object objRemove = this.zzcz.remove(strZzx);
                if (!(objRemove instanceof Bundle)) {
                    if (objRemove instanceof String) {
                        throw new IOException((String) objRemove);
                    }
                    String strValueOf2 = String.valueOf(objRemove);
                    StringBuilder sb5 = new StringBuilder(strValueOf2.length() + 12);
                    sb5.append("No response ");
                    sb5.append(strValueOf2);
                    Log.w("InstanceID", sb5.toString());
                    throw new IOException(InstanceID.ERROR_TIMEOUT);
                }
                bundle2 = (Bundle) objRemove;
            } catch (Throwable th3) {
                throw th3;
            }
        }
        return bundle2;
    }

    @ShowFirstParty
    public static boolean zzk(Context context) {
        if (zzcu != null) {
            zzl(context);
        }
        return zzcv;
    }

    @ShowFirstParty
    public static String zzl(Context context) {
        String str = zzcu;
        if (str != null) {
            return str;
        }
        zzcw = Process.myUid();
        PackageManager packageManager = context.getPackageManager();
        if (!PlatformVersion.isAtLeastO()) {
            Iterator<ResolveInfo> it = packageManager.queryIntentServices(new Intent("com.google.android.c2dm.intent.REGISTER"), 0).iterator();
            while (it.hasNext()) {
                if (zzd(packageManager, it.next().serviceInfo.packageName, "com.google.android.c2dm.intent.REGISTER")) {
                    zzcv = false;
                    return zzcu;
                }
            }
        }
        Iterator<ResolveInfo> it2 = packageManager.queryBroadcastReceivers(new Intent("com.google.iid.TOKEN_REQUEST"), 0).iterator();
        while (it2.hasNext()) {
            if (zzd(packageManager, it2.next().activityInfo.packageName, "com.google.iid.TOKEN_REQUEST")) {
                zzcv = true;
                return zzcu;
            }
        }
        Log.w("InstanceID", "Failed to resolve IID implementation package, falling back");
        if (zzd(packageManager, "com.google.android.gms")) {
            zzcv = PlatformVersion.isAtLeastO();
            return zzcu;
        }
        if (PlatformVersion.isAtLeastLollipop() || !zzd(packageManager, "com.google.android.gsf")) {
            Log.w("InstanceID", "Google Play services is missing, unable to get tokens");
            return null;
        }
        zzcv = false;
        return zzcu;
    }

    private static int zzm(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(zzl(context), 0).versionCode;
        } catch (PackageManager.NameNotFoundException unused) {
            return -1;
        }
    }

    private static synchronized String zzx() {
        int i11;
        i11 = zzcp;
        zzcp = i11 + 1;
        return Integer.toString(i11);
    }

    final Bundle zzd(Bundle bundle, KeyPair keyPair) throws IOException {
        int iZzm = zzm(this.zzl);
        bundle.putString("gmsv", Integer.toString(iZzm));
        bundle.putString("osv", Integer.toString(Build.VERSION.SDK_INT));
        bundle.putString("app_ver", Integer.toString(InstanceID.zzg(this.zzl)));
        bundle.putString("app_ver_name", InstanceID.zzh(this.zzl));
        bundle.putString("cliv", "iid-12451000");
        bundle.putString(SafeStringUtils.SP_APPID, InstanceID.zzd(keyPair));
        if (iZzm < 12000000 || !zzct.get().booleanValue()) {
            return zzj(bundle);
        }
        try {
            return (Bundle) Tasks.await(new zzr(this.zzl).zzd(1, bundle));
        } catch (InterruptedException | ExecutionException e11) {
            if (Log.isLoggable("InstanceID", 3)) {
                String strValueOf = String.valueOf(e11);
                StringBuilder sb2 = new StringBuilder(strValueOf.length() + 22);
                sb2.append("Error making request: ");
                sb2.append(strValueOf);
            }
            if ((e11.getCause() instanceof zzaa) && ((zzaa) e11.getCause()).getErrorCode() == 4) {
                return zzj(bundle);
            }
            return null;
        }
    }

    public final void zze(Message message) {
        if (message == null) {
            return;
        }
        Object obj = message.obj;
        if (!(obj instanceof Intent)) {
            Log.w("InstanceID", "Dropping invalid message");
            return;
        }
        Intent intent = (Intent) obj;
        intent.setExtrasClassLoader(MessengerCompat.class.getClassLoader());
        if (intent.hasExtra("google.messenger")) {
            Parcelable parcelableExtra = intent.getParcelableExtra("google.messenger");
            if (parcelableExtra instanceof MessengerCompat) {
                this.zzdb = (MessengerCompat) parcelableExtra;
            }
            if (parcelableExtra instanceof Messenger) {
                this.zzda = (Messenger) parcelableExtra;
            }
        }
        zzh((Intent) message.obj);
    }

    public final void zzh(Intent intent) {
        String strSubstring;
        if (intent == null) {
            Log.isLoggable("InstanceID", 3);
            return;
        }
        String action = intent.getAction();
        if (!"com.google.android.c2dm.intent.REGISTRATION".equals(action) && !"com.google.android.gms.iid.InstanceID".equals(action)) {
            if (Log.isLoggable("InstanceID", 3)) {
                String strValueOf = String.valueOf(intent.getAction());
                if (strValueOf.length() != 0) {
                    "Unexpected response ".concat(strValueOf);
                    return;
                }
                return;
            }
            return;
        }
        String stringExtra = intent.getStringExtra("registration_id");
        if (stringExtra == null) {
            stringExtra = intent.getStringExtra("unregistered");
        }
        if (stringExtra != null) {
            Matcher matcher = Pattern.compile("\\|ID\\|([^|]+)\\|:?+(.*)").matcher(stringExtra);
            if (!matcher.matches()) {
                if (!Log.isLoggable("InstanceID", 3) || stringExtra.length() == 0) {
                    return;
                }
                "Unexpected response string: ".concat(stringExtra);
                return;
            }
            String strGroup = matcher.group(1);
            String strGroup2 = matcher.group(2);
            Bundle extras = intent.getExtras();
            extras.putString("registration_id", strGroup2);
            zzd(strGroup, (Object) extras);
            return;
        }
        String stringExtra2 = intent.getStringExtra("error");
        if (stringExtra2 == null) {
            String strValueOf2 = String.valueOf(intent.getExtras());
            StringBuilder sb2 = new StringBuilder(strValueOf2.length() + 49);
            sb2.append("Unexpected response, no error or registration id ");
            sb2.append(strValueOf2);
            Log.w("InstanceID", sb2.toString());
            return;
        }
        if (Log.isLoggable("InstanceID", 3) && stringExtra2.length() != 0) {
            "Received InstanceID error ".concat(stringExtra2);
        }
        String str = null;
        if (stringExtra2.startsWith("|")) {
            String[] strArrSplit = stringExtra2.split("\\|");
            if (!"ID".equals(strArrSplit[1])) {
                Log.w("InstanceID", stringExtra2.length() != 0 ? "Unexpected structured response ".concat(stringExtra2) : new String("Unexpected structured response "));
            }
            if (strArrSplit.length > 2) {
                str = strArrSplit[2];
                strSubstring = strArrSplit[3];
                if (strSubstring.startsWith(":")) {
                    strSubstring = strSubstring.substring(1);
                }
            } else {
                strSubstring = NetworkUtil.NETWORK_TYPE_UNKNOWN;
            }
            stringExtra2 = strSubstring;
            intent.putExtra("error", stringExtra2);
        }
        if (str != null) {
            zzd(str, (Object) stringExtra2);
            return;
        }
        synchronized (getClass()) {
            try {
                for (String str2 : this.zzcz.keySet()) {
                    Object obj = this.zzcz.get(str2);
                    this.zzcz.put(str2, stringExtra2);
                    zzd(obj, stringExtra2);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
