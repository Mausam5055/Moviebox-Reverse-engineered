package qf;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* JADX INFO: loaded from: classes5.dex */
public interface a extends IInterface {

    /* JADX INFO: renamed from: qf.a$a, reason: collision with other inner class name */
    public static abstract class AbstractBinderC0894a extends Binder implements a {
        public AbstractBinderC0894a() {
            attachInterface(this, "com.tencent.tinker.lib.IForeService");
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i11, Parcel parcel, Parcel parcel2, int i12) {
            if (i11 != 1) {
                if (i11 != 1598968902) {
                    return super.onTransact(i11, parcel, parcel2, i12);
                }
                parcel2.writeString("com.tencent.tinker.lib.IForeService");
                return true;
            }
            parcel.enforceInterface("com.tencent.tinker.lib.IForeService");
            J0();
            parcel2.writeNoException();
            return true;
        }
    }

    void J0();
}
