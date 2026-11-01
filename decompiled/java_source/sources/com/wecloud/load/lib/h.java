package com.wecloud.load.lib;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.function.BiConsumer;
import java.util.function.IntConsumer;
import java.util.stream.IntStream;

/* JADX INFO: loaded from: classes7.dex */
public interface h extends IInterface {

    public static abstract class a extends Binder implements h {

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: com.wecloud.load.lib.h$a$a, reason: collision with other inner class name */
        static class C0720a implements h {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private IBinder f60844a;

            C0720a(IBinder iBinder) {
                this.f60844a = iBinder;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static /* synthetic */ void Z0(Parcel parcel, String str, String str2) {
                parcel.writeString(str);
                parcel.writeString(str2);
            }

            @Override // com.wecloud.load.lib.h
            public void R(String str, String str2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.wecloud.load.lib.ISoLoadCallback");
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    this.f60844a.transact(5, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f60844a;
            }

            @Override // com.wecloud.load.lib.h
            public void e(String str, int i11) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.wecloud.load.lib.ISoLoadCallback");
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i11);
                    this.f60844a.transact(4, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.wecloud.load.lib.h
            public void n0(int i11, int i12, int i13) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.wecloud.load.lib.ISoLoadCallback");
                    parcelObtain.writeInt(i11);
                    parcelObtain.writeInt(i12);
                    parcelObtain.writeInt(i13);
                    this.f60844a.transact(2, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.wecloud.load.lib.h
            public void onError(int i11, String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.wecloud.load.lib.ISoLoadCallback");
                    parcelObtain.writeInt(i11);
                    parcelObtain.writeString(str);
                    this.f60844a.transact(3, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.wecloud.load.lib.h
            public void q0(int i11, int i12, int i13, List list, Map map) {
                final Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.wecloud.load.lib.ISoLoadCallback");
                    parcelObtain.writeInt(i11);
                    parcelObtain.writeInt(i12);
                    parcelObtain.writeInt(i13);
                    parcelObtain.writeStringList(list);
                    if (map == null) {
                        parcelObtain.writeInt(-1);
                    } else {
                        parcelObtain.writeInt(map.size());
                        map.forEach(new BiConsumer() { // from class: com.wecloud.load.lib.g
                            @Override // java.util.function.BiConsumer
                            public final void accept(Object obj, Object obj2) {
                                h.a.C0720a.Z0(parcelObtain, (String) obj, (String) obj2);
                            }
                        });
                    }
                    this.f60844a.transact(1, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public a() {
            attachInterface(this, "com.wecloud.load.lib.ISoLoadCallback");
        }

        public static h Z0(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.wecloud.load.lib.ISoLoadCallback");
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof h)) ? new C0720a(iBinder) : (h) iInterfaceQueryLocalInterface;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void a1(Parcel parcel, Map map, int i11) {
            map.put(parcel.readString(), parcel.readString());
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i11, final Parcel parcel, Parcel parcel2, int i12) {
            if (i11 >= 1 && i11 <= 16777215) {
                parcel.enforceInterface("com.wecloud.load.lib.ISoLoadCallback");
            }
            if (i11 == 1598968902) {
                parcel2.writeString("com.wecloud.load.lib.ISoLoadCallback");
                return true;
            }
            if (i11 == 1) {
                int i13 = parcel.readInt();
                int i14 = parcel.readInt();
                int i15 = parcel.readInt();
                ArrayList<String> arrayListCreateStringArrayList = parcel.createStringArrayList();
                int i16 = parcel.readInt();
                final HashMap map = i16 < 0 ? null : new HashMap();
                IntStream.range(0, i16).forEach(new IntConsumer() { // from class: com.wecloud.load.lib.e
                    @Override // java.util.function.IntConsumer
                    public final void accept(int i17) {
                        h.a.a1(parcel, map, i17);
                    }
                });
                q0(i13, i14, i15, arrayListCreateStringArrayList, map);
                parcel2.writeNoException();
            } else if (i11 == 2) {
                n0(parcel.readInt(), parcel.readInt(), parcel.readInt());
                parcel2.writeNoException();
            } else if (i11 == 3) {
                onError(parcel.readInt(), parcel.readString());
                parcel2.writeNoException();
            } else if (i11 == 4) {
                e(parcel.readString(), parcel.readInt());
                parcel2.writeNoException();
            } else {
                if (i11 != 5) {
                    return super.onTransact(i11, parcel, parcel2, i12);
                }
                R(parcel.readString(), parcel.readString());
                parcel2.writeNoException();
            }
            return true;
        }
    }

    void R(String str, String str2);

    void e(String str, int i11);

    void n0(int i11, int i12, int i13);

    void onError(int i11, String str);

    void q0(int i11, int i12, int i13, List list, Map map);
}
