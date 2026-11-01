package android.support.v4.os;

import android.annotation.SuppressLint;
import android.os.Bundle;
import android.os.Handler;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;

/* JADX INFO: loaded from: classes.dex */
@SuppressLint({"BanParcelableUsage"})
public class ResultReceiver implements Parcelable {
    public static final Parcelable.Creator<ResultReceiver> CREATOR = new a();
    final Handler mHandler;
    final boolean mLocal;
    android.support.v4.os.a mReceiver;

    class MyRunnable implements Runnable {
        final int mResultCode;
        final Bundle mResultData;

        MyRunnable(int i11, Bundle bundle) {
            this.mResultCode = i11;
            this.mResultData = bundle;
        }

        @Override // java.lang.Runnable
        public void run() {
            ResultReceiver.this.onReceiveResult(this.mResultCode, this.mResultData);
        }
    }

    class a implements Parcelable.Creator {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public ResultReceiver createFromParcel(Parcel parcel) {
            return new ResultReceiver(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public ResultReceiver[] newArray(int i11) {
            return new ResultReceiver[i11];
        }
    }

    class b extends android.support.v4.os.a.AbstractBinderC0018a {
        b() {
        }

        @Override // android.support.v4.os.a
        public void b0(int i11, Bundle bundle) {
            ResultReceiver resultReceiver = ResultReceiver.this;
            Handler handler = resultReceiver.mHandler;
            if (handler != null) {
                handler.post(resultReceiver.new MyRunnable(i11, bundle));
            } else {
                resultReceiver.onReceiveResult(i11, bundle);
            }
        }
    }

    public ResultReceiver(Handler handler) {
        this.mLocal = true;
        this.mHandler = handler;
    }

    ResultReceiver(Parcel parcel) {
        this.mLocal = false;
        this.mHandler = null;
        this.mReceiver = android.support.v4.os.a.AbstractBinderC0018a.Y0(parcel.readStrongBinder());
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    protected void onReceiveResult(int i11, Bundle bundle) {
    }

    public void send(int i11, Bundle bundle) {
        if (this.mLocal) {
            Handler handler = this.mHandler;
            if (handler != null) {
                handler.post(new MyRunnable(i11, bundle));
                return;
            } else {
                onReceiveResult(i11, bundle);
                return;
            }
        }
        android.support.v4.os.a aVar = this.mReceiver;
        if (aVar != null) {
            try {
                aVar.b0(i11, bundle);
            } catch (RemoteException unused) {
            }
        }
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i11) {
        synchronized (this) {
            try {
                if (this.mReceiver == null) {
                    this.mReceiver = new b();
                }
                parcel.writeStrongBinder(this.mReceiver.asBinder());
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
