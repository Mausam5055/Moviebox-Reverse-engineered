package n00;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.PackageManager;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.Parcel;
import java.io.IOException;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes7.dex */
public abstract class e {

    public static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String f70071a;

        b(String str, boolean z10) {
            this.f70071a = str;
        }

        public String a() {
            return this.f70071a;
        }
    }

    private static final class c implements ServiceConnection {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        boolean f70072a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final LinkedBlockingQueue f70073b;

        private c() {
            this.f70072a = false;
            this.f70073b = new LinkedBlockingQueue(1);
        }

        public IBinder a() {
            if (this.f70072a) {
                throw new IllegalStateException();
            }
            this.f70072a = true;
            return (IBinder) this.f70073b.poll(10L, TimeUnit.SECONDS);
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            try {
                if (this.f70073b.isEmpty()) {
                    this.f70073b.put(iBinder);
                }
            } catch (InterruptedException unused) {
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
        }
    }

    private static final class d implements IInterface {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private IBinder f70074a;

        d(IBinder iBinder) {
            this.f70074a = iBinder;
        }

        public String Y0() {
            Parcel parcelObtain = Parcel.obtain();
            Parcel parcelObtain2 = Parcel.obtain();
            try {
                parcelObtain.writeInterfaceToken("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
                this.f70074a.transact(1, parcelObtain, parcelObtain2, 0);
                parcelObtain2.readException();
                return parcelObtain2.readString();
            } finally {
                parcelObtain2.recycle();
                parcelObtain.recycle();
            }
        }

        boolean Z0(boolean z10) {
            Parcel parcelObtain = Parcel.obtain();
            Parcel parcelObtain2 = Parcel.obtain();
            try {
                parcelObtain.writeInterfaceToken("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
                parcelObtain.writeInt(z10 ? 1 : 0);
                this.f70074a.transact(2, parcelObtain, parcelObtain2, 0);
                parcelObtain2.readException();
                return parcelObtain2.readInt() != 0;
            } finally {
                parcelObtain2.recycle();
                parcelObtain.recycle();
            }
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this.f70074a;
        }
    }

    public static b a(Context context) throws PackageManager.NameNotFoundException, IOException {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            throw new IllegalStateException("Cannot be called from the main thread");
        }
        context.getPackageManager().getPackageInfo("com.android.vending", 0);
        c cVar = new c();
        Intent intent = new Intent("com.google.android.gms.ads.identifier.service.START");
        intent.setPackage("com.google.android.gms");
        if (context.bindService(intent, cVar, 1)) {
            try {
                try {
                    IBinder iBinderA = cVar.a();
                    if (iBinderA != null) {
                        d dVar = new d(iBinderA);
                        b bVar = new b(dVar.Y0(), dVar.Z0(true));
                        context.unbindService(cVar);
                        return bVar;
                    }
                    context.unbindService(cVar);
                } catch (Exception e11) {
                    throw e11;
                }
            } catch (Throwable th2) {
                context.unbindService(cVar);
                throw th2;
            }
            context.unbindService(cVar);
            throw th2;
        }
        throw new IOException("Google Play connection failed");
    }
}
