package com.google.android.exoplayer2;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.common.collect.ImmutableList;
import java.util.Collection;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final class j extends Binder {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final int f25142b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ImmutableList f25143a;

    static {
        f25142b = com.google.android.exoplayer2.util.p0.f27626a >= 30 ? IBinder.getSuggestedMaxIpcSizeBytes() : 65536;
    }

    public j(List list) {
        this.f25143a = ImmutableList.copyOf((Collection) list);
    }

    public static ImmutableList a(IBinder iBinder) {
        int i11;
        ImmutableList.a aVarBuilder = ImmutableList.builder();
        int i12 = 0;
        int i13 = 1;
        while (i13 != 0) {
            Parcel parcelObtain = Parcel.obtain();
            Parcel parcelObtain2 = Parcel.obtain();
            try {
                parcelObtain.writeInt(i12);
                try {
                    iBinder.transact(1, parcelObtain, parcelObtain2, 0);
                    while (true) {
                        i11 = parcelObtain2.readInt();
                        if (i11 == 1) {
                            aVarBuilder.a((Bundle) com.google.android.exoplayer2.util.a.e(parcelObtain2.readBundle()));
                            i12++;
                        }
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    i13 = i11;
                } catch (RemoteException e11) {
                    throw new RuntimeException(e11);
                }
            } catch (Throwable th2) {
                parcelObtain2.recycle();
                parcelObtain.recycle();
                throw th2;
            }
        }
        return aVarBuilder.e();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.os.Binder
    protected boolean onTransact(int i11, Parcel parcel, Parcel parcel2, int i12) {
        if (i11 != 1) {
            return super.onTransact(i11, parcel, parcel2, i12);
        }
        if (parcel2 == null) {
            return false;
        }
        int size = this.f25143a.size();
        int i13 = parcel.readInt();
        while (i13 < size && parcel2.dataSize() < f25142b) {
            parcel2.writeInt(1);
            parcel2.writeBundle((Bundle) this.f25143a.get(i13));
            i13++;
        }
        parcel2.writeInt(i13 < size ? 2 : 0);
        return true;
    }
}
