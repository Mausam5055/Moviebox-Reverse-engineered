package g5;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
class b extends g5.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f63337a = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Context f63338b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private na.a f63339c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private ServiceConnection f63340d;

    /* JADX INFO: renamed from: g5.b$b, reason: collision with other inner class name */
    private final class ServiceConnectionC0768b implements ServiceConnection {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final c f63341a;

        private ServiceConnectionC0768b(c cVar) {
            if (cVar == null) {
                throw new RuntimeException("Please specify a listener to know when setup is done.");
            }
            this.f63341a = cVar;
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            h5.a.a("InstallReferrerClient", "Install Referrer service connected.");
            b.this.f63339c = na.a.AbstractBinderC0846a.Z0(iBinder);
            b.this.f63337a = 2;
            this.f63341a.onInstallReferrerSetupFinished(0);
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            h5.a.b("InstallReferrerClient", "Install Referrer service disconnected.");
            b.this.f63339c = null;
            b.this.f63337a = 0;
            this.f63341a.onInstallReferrerServiceDisconnected();
        }
    }

    public b(Context context) {
        this.f63338b = context.getApplicationContext();
    }

    private boolean g() {
        try {
            return this.f63338b.getPackageManager().getPackageInfo("com.android.vending", 128).versionCode >= 80837300;
        } catch (PackageManager.NameNotFoundException unused) {
        }
    }

    @Override // g5.a
    public void a() {
        this.f63337a = 3;
        if (this.f63340d != null) {
            h5.a.a("InstallReferrerClient", "Unbinding from service.");
            this.f63338b.unbindService(this.f63340d);
            this.f63340d = null;
        }
        this.f63339c = null;
    }

    @Override // g5.a
    public d b() throws RemoteException {
        if (!h()) {
            throw new IllegalStateException("Service not connected. Please start a connection before using the service.");
        }
        Bundle bundle = new Bundle();
        bundle.putString("package_name", this.f63338b.getPackageName());
        try {
            return new d(this.f63339c.w(bundle));
        } catch (RemoteException e11) {
            h5.a.b("InstallReferrerClient", "RemoteException getting install referrer information");
            this.f63337a = 0;
            throw e11;
        }
    }

    @Override // g5.a
    public void d(c cVar) {
        ServiceInfo serviceInfo;
        if (h()) {
            h5.a.a("InstallReferrerClient", "Service connection is valid. No need to re-initialize.");
            cVar.onInstallReferrerSetupFinished(0);
            return;
        }
        int i11 = this.f63337a;
        if (i11 == 1) {
            h5.a.b("InstallReferrerClient", "Client is already in the process of connecting to the service.");
            cVar.onInstallReferrerSetupFinished(3);
            return;
        }
        if (i11 == 3) {
            h5.a.b("InstallReferrerClient", "Client was already closed and can't be reused. Please create another instance.");
            cVar.onInstallReferrerSetupFinished(3);
            return;
        }
        h5.a.a("InstallReferrerClient", "Starting install referrer service setup.");
        Intent intent = new Intent("com.google.android.finsky.BIND_GET_INSTALL_REFERRER_SERVICE");
        intent.setComponent(new ComponentName("com.android.vending", "com.google.android.finsky.externalreferrer.GetInstallReferrerService"));
        List<ResolveInfo> listQueryIntentServices = this.f63338b.getPackageManager().queryIntentServices(intent, 0);
        if (listQueryIntentServices == null || listQueryIntentServices.isEmpty() || (serviceInfo = listQueryIntentServices.get(0).serviceInfo) == null) {
            this.f63337a = 0;
            h5.a.a("InstallReferrerClient", "Install Referrer service unavailable on device.");
            cVar.onInstallReferrerSetupFinished(2);
            return;
        }
        String str = serviceInfo.packageName;
        String str2 = serviceInfo.name;
        if (!"com.android.vending".equals(str) || str2 == null || !g()) {
            h5.a.b("InstallReferrerClient", "Play Store missing or incompatible. Version 8.3.73 or later required.");
            this.f63337a = 0;
            cVar.onInstallReferrerSetupFinished(2);
            return;
        }
        Intent intent2 = new Intent(intent);
        ServiceConnectionC0768b serviceConnectionC0768b = new ServiceConnectionC0768b(cVar);
        this.f63340d = serviceConnectionC0768b;
        try {
            if (this.f63338b.bindService(intent2, serviceConnectionC0768b, 1)) {
                h5.a.a("InstallReferrerClient", "Service was bonded successfully.");
                return;
            }
            h5.a.b("InstallReferrerClient", "Connection to service is blocked.");
            this.f63337a = 0;
            cVar.onInstallReferrerSetupFinished(1);
        } catch (SecurityException unused) {
            h5.a.b("InstallReferrerClient", "No permission to connect to service.");
            this.f63337a = 0;
            cVar.onInstallReferrerSetupFinished(4);
        }
    }

    public boolean h() {
        return (this.f63337a != 2 || this.f63339c == null || this.f63340d == null) ? false : true;
    }
}
