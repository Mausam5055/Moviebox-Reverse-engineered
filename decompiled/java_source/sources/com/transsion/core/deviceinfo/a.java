package com.transsion.core.deviceinfo;

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

/* JADX INFO: loaded from: classes5.dex */
abstract class a {

    public static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String f44014a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final boolean f44015b;

        b(String str, boolean z10) {
            this.f44014a = str;
            this.f44015b = z10;
        }

        public String a() {
            return this.f44014a;
        }
    }

    private static final class c implements ServiceConnection {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        boolean f44016a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final LinkedBlockingQueue f44017b;

        private c() {
            this.f44016a = false;
            this.f44017b = new LinkedBlockingQueue(1);
        }

        public IBinder a() {
            if (this.f44016a) {
                throw new IllegalStateException();
            }
            this.f44016a = true;
            return (IBinder) this.f44017b.take();
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            try {
                if (this.f44017b.size() == 0) {
                    this.f44017b.put(iBinder);
                }
            } catch (Exception unused) {
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            try {
                this.f44017b.clear();
            } catch (Exception unused) {
            }
        }
    }

    private static final class d implements IInterface {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private IBinder f44018a;

        d(IBinder iBinder) {
            this.f44018a = iBinder;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this.f44018a;
        }

        public String getId() {
            Parcel parcelObtain = Parcel.obtain();
            Parcel parcelObtain2 = Parcel.obtain();
            try {
                parcelObtain.writeInterfaceToken("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
                this.f44018a.transact(1, parcelObtain, parcelObtain2, 0);
                parcelObtain2.readException();
                return parcelObtain2.readString();
            } finally {
                parcelObtain2.recycle();
                parcelObtain.recycle();
            }
        }

        boolean isLimitAdTrackingEnabled(boolean z10) {
            Parcel parcelObtain = Parcel.obtain();
            Parcel parcelObtain2 = Parcel.obtain();
            try {
                parcelObtain.writeInterfaceToken("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
                parcelObtain.writeInt(z10 ? 1 : 0);
                this.f44018a.transact(2, parcelObtain, parcelObtain2, 0);
                parcelObtain2.readException();
                return parcelObtain2.readInt() != 0;
            } finally {
                parcelObtain2.recycle();
                parcelObtain.recycle();
            }
        }
    }

    static b a(Context context) throws PackageManager.NameNotFoundException, IOException {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            throw new IllegalStateException("Cannot be called from the main thread");
        }
        context.getPackageManager().getPackageInfo("com.android.vending", 0);
        c cVar = new c();
        Intent intent = new Intent("com.google.android.gms.ads.identifier.service.START");
        intent.setPackage("com.google.android.gms");
        if (!context.bindService(intent, cVar, 1)) {
            throw new IOException("Google Play connection failed");
        }
        try {
            try {
                d dVar = new d(cVar.a());
                b bVar = new b(dVar.getId(), dVar.isLimitAdTrackingEnabled(true));
                context.unbindService(cVar);
                return bVar;
            } catch (Exception e11) {
                throw e11;
            }
        } catch (Throwable th2) {
            context.unbindService(cVar);
            throw th2;
        }
    }
}
