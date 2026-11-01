package q8;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* JADX INFO: loaded from: classes4.dex */
public abstract class b extends Binder implements IInterface {
    protected b() {
        attachInterface(this, "com.google.android.finsky.externalreferrer.IGetInstallReferrerService");
    }

    protected abstract boolean Y0(int i11, Parcel parcel, Parcel parcel2);

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this;
    }

    @Override // android.os.Binder
    public final boolean onTransact(int i11, Parcel parcel, Parcel parcel2, int i12) {
        if (i11 <= 16777215) {
            parcel.enforceInterface(getInterfaceDescriptor());
        } else if (super.onTransact(i11, parcel, parcel2, i12)) {
            return true;
        }
        return Y0(i11, parcel, parcel2);
    }
}
