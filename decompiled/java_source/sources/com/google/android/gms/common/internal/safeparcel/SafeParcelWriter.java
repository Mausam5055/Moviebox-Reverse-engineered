package com.google.android.gms.common.internal.safeparcel;

import android.app.PendingIntent;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.SparseArray;
import android.util.SparseBooleanArray;
import android.util.SparseIntArray;
import android.util.SparseLongArray;
import androidx.annotation.NonNull;
import com.tn.lib.view.FlowLayout;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class SafeParcelWriter {
    private SafeParcelWriter() {
    }

    public static int beginObjectHeader(@NonNull Parcel parcel) {
        return zza(parcel, 20293);
    }

    public static void finishObjectHeader(@NonNull Parcel parcel, int i11) {
        zzb(parcel, i11);
    }

    public static void writeBigDecimal(@NonNull Parcel parcel, int i11, @NonNull BigDecimal bigDecimal, boolean z10) {
        if (bigDecimal == null) {
            if (z10) {
                zzc(parcel, i11, 0);
            }
        } else {
            int iZza = zza(parcel, i11);
            parcel.writeByteArray(bigDecimal.unscaledValue().toByteArray());
            parcel.writeInt(bigDecimal.scale());
            zzb(parcel, iZza);
        }
    }

    public static void writeBigDecimalArray(@NonNull Parcel parcel, int i11, @NonNull BigDecimal[] bigDecimalArr, boolean z10) {
        if (bigDecimalArr == null) {
            if (z10) {
                zzc(parcel, i11, 0);
                return;
            }
            return;
        }
        int iZza = zza(parcel, i11);
        int length = bigDecimalArr.length;
        parcel.writeInt(length);
        for (int i12 = 0; i12 < length; i12++) {
            parcel.writeByteArray(bigDecimalArr[i12].unscaledValue().toByteArray());
            parcel.writeInt(bigDecimalArr[i12].scale());
        }
        zzb(parcel, iZza);
    }

    public static void writeBigInteger(@NonNull Parcel parcel, int i11, @NonNull BigInteger bigInteger, boolean z10) {
        if (bigInteger == null) {
            if (z10) {
                zzc(parcel, i11, 0);
            }
        } else {
            int iZza = zza(parcel, i11);
            parcel.writeByteArray(bigInteger.toByteArray());
            zzb(parcel, iZza);
        }
    }

    public static void writeBigIntegerArray(@NonNull Parcel parcel, int i11, @NonNull BigInteger[] bigIntegerArr, boolean z10) {
        if (bigIntegerArr == null) {
            if (z10) {
                zzc(parcel, i11, 0);
                return;
            }
            return;
        }
        int iZza = zza(parcel, i11);
        parcel.writeInt(bigIntegerArr.length);
        for (BigInteger bigInteger : bigIntegerArr) {
            parcel.writeByteArray(bigInteger.toByteArray());
        }
        zzb(parcel, iZza);
    }

    public static void writeBoolean(@NonNull Parcel parcel, int i11, boolean z10) {
        zzc(parcel, i11, 4);
        parcel.writeInt(z10 ? 1 : 0);
    }

    public static void writeBooleanArray(@NonNull Parcel parcel, int i11, @NonNull boolean[] zArr, boolean z10) {
        if (zArr == null) {
            if (z10) {
                zzc(parcel, i11, 0);
            }
        } else {
            int iZza = zza(parcel, i11);
            parcel.writeBooleanArray(zArr);
            zzb(parcel, iZza);
        }
    }

    public static void writeBooleanList(@NonNull Parcel parcel, int i11, @NonNull List<Boolean> list, boolean z10) {
        if (list == null) {
            if (z10) {
                zzc(parcel, i11, 0);
                return;
            }
            return;
        }
        int iZza = zza(parcel, i11);
        int size = list.size();
        parcel.writeInt(size);
        for (int i12 = 0; i12 < size; i12++) {
            parcel.writeInt(list.get(i12).booleanValue() ? 1 : 0);
        }
        zzb(parcel, iZza);
    }

    public static void writeBooleanObject(@NonNull Parcel parcel, int i11, @NonNull Boolean bool, boolean z10) {
        if (bool != null) {
            zzc(parcel, i11, 4);
            parcel.writeInt(bool.booleanValue() ? 1 : 0);
        } else if (z10) {
            zzc(parcel, i11, 0);
        }
    }

    public static void writeBundle(@NonNull Parcel parcel, int i11, @NonNull Bundle bundle, boolean z10) {
        if (bundle == null) {
            if (z10) {
                zzc(parcel, i11, 0);
            }
        } else {
            int iZza = zza(parcel, i11);
            parcel.writeBundle(bundle);
            zzb(parcel, iZza);
        }
    }

    public static void writeByte(@NonNull Parcel parcel, int i11, byte b11) {
        zzc(parcel, i11, 4);
        parcel.writeInt(b11);
    }

    public static void writeByteArray(@NonNull Parcel parcel, int i11, @NonNull byte[] bArr, boolean z10) {
        if (bArr == null) {
            if (z10) {
                zzc(parcel, i11, 0);
            }
        } else {
            int iZza = zza(parcel, i11);
            parcel.writeByteArray(bArr);
            zzb(parcel, iZza);
        }
    }

    public static void writeByteArrayArray(@NonNull Parcel parcel, int i11, @NonNull byte[][] bArr, boolean z10) {
        if (bArr == null) {
            if (z10) {
                zzc(parcel, i11, 0);
                return;
            }
            return;
        }
        int iZza = zza(parcel, i11);
        parcel.writeInt(bArr.length);
        for (byte[] bArr2 : bArr) {
            parcel.writeByteArray(bArr2);
        }
        zzb(parcel, iZza);
    }

    public static void writeByteArraySparseArray(@NonNull Parcel parcel, int i11, @NonNull SparseArray<byte[]> sparseArray, boolean z10) {
        if (sparseArray == null) {
            if (z10) {
                zzc(parcel, i11, 0);
                return;
            }
            return;
        }
        int iZza = zza(parcel, i11);
        int size = sparseArray.size();
        parcel.writeInt(size);
        for (int i12 = 0; i12 < size; i12++) {
            parcel.writeInt(sparseArray.keyAt(i12));
            parcel.writeByteArray(sparseArray.valueAt(i12));
        }
        zzb(parcel, iZza);
    }

    public static void writeChar(@NonNull Parcel parcel, int i11, char c11) {
        zzc(parcel, i11, 4);
        parcel.writeInt(c11);
    }

    public static void writeCharArray(@NonNull Parcel parcel, int i11, @NonNull char[] cArr, boolean z10) {
        if (cArr == null) {
            if (z10) {
                zzc(parcel, i11, 0);
            }
        } else {
            int iZza = zza(parcel, i11);
            parcel.writeCharArray(cArr);
            zzb(parcel, iZza);
        }
    }

    public static void writeDouble(@NonNull Parcel parcel, int i11, double d11) {
        zzc(parcel, i11, 8);
        parcel.writeDouble(d11);
    }

    public static void writeDoubleArray(@NonNull Parcel parcel, int i11, @NonNull double[] dArr, boolean z10) {
        if (dArr == null) {
            if (z10) {
                zzc(parcel, i11, 0);
            }
        } else {
            int iZza = zza(parcel, i11);
            parcel.writeDoubleArray(dArr);
            zzb(parcel, iZza);
        }
    }

    public static void writeDoubleList(@NonNull Parcel parcel, int i11, @NonNull List<Double> list, boolean z10) {
        if (list == null) {
            if (z10) {
                zzc(parcel, i11, 0);
                return;
            }
            return;
        }
        int iZza = zza(parcel, i11);
        int size = list.size();
        parcel.writeInt(size);
        for (int i12 = 0; i12 < size; i12++) {
            parcel.writeDouble(list.get(i12).doubleValue());
        }
        zzb(parcel, iZza);
    }

    public static void writeDoubleObject(@NonNull Parcel parcel, int i11, @NonNull Double d11, boolean z10) {
        if (d11 != null) {
            zzc(parcel, i11, 8);
            parcel.writeDouble(d11.doubleValue());
        } else if (z10) {
            zzc(parcel, i11, 0);
        }
    }

    public static void writeDoubleSparseArray(@NonNull Parcel parcel, int i11, @NonNull SparseArray<Double> sparseArray, boolean z10) {
        if (sparseArray == null) {
            if (z10) {
                zzc(parcel, i11, 0);
                return;
            }
            return;
        }
        int iZza = zza(parcel, i11);
        int size = sparseArray.size();
        parcel.writeInt(size);
        for (int i12 = 0; i12 < size; i12++) {
            parcel.writeInt(sparseArray.keyAt(i12));
            parcel.writeDouble(sparseArray.valueAt(i12).doubleValue());
        }
        zzb(parcel, iZza);
    }

    public static void writeFloat(@NonNull Parcel parcel, int i11, float f11) {
        zzc(parcel, i11, 4);
        parcel.writeFloat(f11);
    }

    public static void writeFloatArray(@NonNull Parcel parcel, int i11, @NonNull float[] fArr, boolean z10) {
        if (fArr == null) {
            if (z10) {
                zzc(parcel, i11, 0);
            }
        } else {
            int iZza = zza(parcel, i11);
            parcel.writeFloatArray(fArr);
            zzb(parcel, iZza);
        }
    }

    public static void writeFloatList(@NonNull Parcel parcel, int i11, @NonNull List<Float> list, boolean z10) {
        if (list == null) {
            if (z10) {
                zzc(parcel, i11, 0);
                return;
            }
            return;
        }
        int iZza = zza(parcel, i11);
        int size = list.size();
        parcel.writeInt(size);
        for (int i12 = 0; i12 < size; i12++) {
            parcel.writeFloat(list.get(i12).floatValue());
        }
        zzb(parcel, iZza);
    }

    public static void writeFloatObject(@NonNull Parcel parcel, int i11, @NonNull Float f11, boolean z10) {
        if (f11 != null) {
            zzc(parcel, i11, 4);
            parcel.writeFloat(f11.floatValue());
        } else if (z10) {
            zzc(parcel, i11, 0);
        }
    }

    public static void writeFloatSparseArray(@NonNull Parcel parcel, int i11, @NonNull SparseArray<Float> sparseArray, boolean z10) {
        if (sparseArray == null) {
            if (z10) {
                zzc(parcel, i11, 0);
                return;
            }
            return;
        }
        int iZza = zza(parcel, i11);
        int size = sparseArray.size();
        parcel.writeInt(size);
        for (int i12 = 0; i12 < size; i12++) {
            parcel.writeInt(sparseArray.keyAt(i12));
            parcel.writeFloat(sparseArray.valueAt(i12).floatValue());
        }
        zzb(parcel, iZza);
    }

    public static void writeIBinder(@NonNull Parcel parcel, int i11, @NonNull IBinder iBinder, boolean z10) {
        if (iBinder == null) {
            if (z10) {
                zzc(parcel, i11, 0);
            }
        } else {
            int iZza = zza(parcel, i11);
            parcel.writeStrongBinder(iBinder);
            zzb(parcel, iZza);
        }
    }

    public static void writeIBinderArray(@NonNull Parcel parcel, int i11, @NonNull IBinder[] iBinderArr, boolean z10) {
        if (iBinderArr == null) {
            if (z10) {
                zzc(parcel, i11, 0);
            }
        } else {
            int iZza = zza(parcel, i11);
            parcel.writeBinderArray(iBinderArr);
            zzb(parcel, iZza);
        }
    }

    public static void writeIBinderList(@NonNull Parcel parcel, int i11, @NonNull List<IBinder> list, boolean z10) {
        if (list == null) {
            if (z10) {
                zzc(parcel, i11, 0);
            }
        } else {
            int iZza = zza(parcel, i11);
            parcel.writeBinderList(list);
            zzb(parcel, iZza);
        }
    }

    public static void writeIBinderSparseArray(@NonNull Parcel parcel, int i11, @NonNull SparseArray<IBinder> sparseArray, boolean z10) {
        if (sparseArray == null) {
            if (z10) {
                zzc(parcel, i11, 0);
                return;
            }
            return;
        }
        int iZza = zza(parcel, i11);
        int size = sparseArray.size();
        parcel.writeInt(size);
        for (int i12 = 0; i12 < size; i12++) {
            parcel.writeInt(sparseArray.keyAt(i12));
            parcel.writeStrongBinder(sparseArray.valueAt(i12));
        }
        zzb(parcel, iZza);
    }

    public static void writeInt(@NonNull Parcel parcel, int i11, int i12) {
        zzc(parcel, i11, 4);
        parcel.writeInt(i12);
    }

    public static void writeIntArray(@NonNull Parcel parcel, int i11, @NonNull int[] iArr, boolean z10) {
        if (iArr == null) {
            if (z10) {
                zzc(parcel, i11, 0);
            }
        } else {
            int iZza = zza(parcel, i11);
            parcel.writeIntArray(iArr);
            zzb(parcel, iZza);
        }
    }

    public static void writeIntegerList(@NonNull Parcel parcel, int i11, @NonNull List<Integer> list, boolean z10) {
        if (list == null) {
            if (z10) {
                zzc(parcel, i11, 0);
                return;
            }
            return;
        }
        int iZza = zza(parcel, i11);
        int size = list.size();
        parcel.writeInt(size);
        for (int i12 = 0; i12 < size; i12++) {
            parcel.writeInt(list.get(i12).intValue());
        }
        zzb(parcel, iZza);
    }

    public static void writeIntegerObject(@NonNull Parcel parcel, int i11, @NonNull Integer num, boolean z10) {
        if (num != null) {
            zzc(parcel, i11, 4);
            parcel.writeInt(num.intValue());
        } else if (z10) {
            zzc(parcel, i11, 0);
        }
    }

    public static void writeList(@NonNull Parcel parcel, int i11, @NonNull List list, boolean z10) {
        if (list == null) {
            if (z10) {
                zzc(parcel, i11, 0);
            }
        } else {
            int iZza = zza(parcel, i11);
            parcel.writeList(list);
            zzb(parcel, iZza);
        }
    }

    public static void writeLong(@NonNull Parcel parcel, int i11, long j11) {
        zzc(parcel, i11, 8);
        parcel.writeLong(j11);
    }

    public static void writeLongArray(@NonNull Parcel parcel, int i11, @NonNull long[] jArr, boolean z10) {
        if (jArr == null) {
            if (z10) {
                zzc(parcel, i11, 0);
            }
        } else {
            int iZza = zza(parcel, i11);
            parcel.writeLongArray(jArr);
            zzb(parcel, iZza);
        }
    }

    public static void writeLongList(@NonNull Parcel parcel, int i11, @NonNull List<Long> list, boolean z10) {
        if (list == null) {
            if (z10) {
                zzc(parcel, i11, 0);
                return;
            }
            return;
        }
        int iZza = zza(parcel, i11);
        int size = list.size();
        parcel.writeInt(size);
        for (int i12 = 0; i12 < size; i12++) {
            parcel.writeLong(list.get(i12).longValue());
        }
        zzb(parcel, iZza);
    }

    public static void writeLongObject(@NonNull Parcel parcel, int i11, @NonNull Long l11, boolean z10) {
        if (l11 != null) {
            zzc(parcel, i11, 8);
            parcel.writeLong(l11.longValue());
        } else if (z10) {
            zzc(parcel, i11, 0);
        }
    }

    public static void writeParcel(@NonNull Parcel parcel, int i11, @NonNull Parcel parcel2, boolean z10) {
        if (parcel2 == null) {
            if (z10) {
                zzc(parcel, i11, 0);
            }
        } else {
            int iZza = zza(parcel, i11);
            parcel.appendFrom(parcel2, 0, parcel2.dataSize());
            zzb(parcel, iZza);
        }
    }

    public static void writeParcelArray(@NonNull Parcel parcel, int i11, @NonNull Parcel[] parcelArr, boolean z10) {
        if (parcelArr == null) {
            if (z10) {
                zzc(parcel, i11, 0);
                return;
            }
            return;
        }
        int iZza = zza(parcel, i11);
        parcel.writeInt(parcelArr.length);
        for (Parcel parcel2 : parcelArr) {
            if (parcel2 != null) {
                parcel.writeInt(parcel2.dataSize());
                parcel.appendFrom(parcel2, 0, parcel2.dataSize());
            } else {
                parcel.writeInt(0);
            }
        }
        zzb(parcel, iZza);
    }

    public static void writeParcelList(@NonNull Parcel parcel, int i11, @NonNull List<Parcel> list, boolean z10) {
        if (list == null) {
            if (z10) {
                zzc(parcel, i11, 0);
                return;
            }
            return;
        }
        int iZza = zza(parcel, i11);
        int size = list.size();
        parcel.writeInt(size);
        for (int i12 = 0; i12 < size; i12++) {
            Parcel parcel2 = list.get(i12);
            if (parcel2 != null) {
                parcel.writeInt(parcel2.dataSize());
                parcel.appendFrom(parcel2, 0, parcel2.dataSize());
            } else {
                parcel.writeInt(0);
            }
        }
        zzb(parcel, iZza);
    }

    public static void writeParcelSparseArray(@NonNull Parcel parcel, int i11, @NonNull SparseArray<Parcel> sparseArray, boolean z10) {
        if (sparseArray == null) {
            if (z10) {
                zzc(parcel, i11, 0);
                return;
            }
            return;
        }
        int iZza = zza(parcel, i11);
        int size = sparseArray.size();
        parcel.writeInt(size);
        for (int i12 = 0; i12 < size; i12++) {
            parcel.writeInt(sparseArray.keyAt(i12));
            Parcel parcelValueAt = sparseArray.valueAt(i12);
            if (parcelValueAt != null) {
                parcel.writeInt(parcelValueAt.dataSize());
                parcel.appendFrom(parcelValueAt, 0, parcelValueAt.dataSize());
            } else {
                parcel.writeInt(0);
            }
        }
        zzb(parcel, iZza);
    }

    public static void writeParcelable(@NonNull Parcel parcel, int i11, @NonNull Parcelable parcelable, int i12, boolean z10) {
        if (parcelable == null) {
            if (z10) {
                zzc(parcel, i11, 0);
            }
        } else {
            int iZza = zza(parcel, i11);
            parcelable.writeToParcel(parcel, i12);
            zzb(parcel, iZza);
        }
    }

    public static void writePendingIntent(@NonNull Parcel parcel, int i11, @NonNull PendingIntent pendingIntent, boolean z10) {
        if (pendingIntent == null) {
            if (z10) {
                zzc(parcel, i11, 0);
            }
        } else {
            int iZza = zza(parcel, i11);
            PendingIntent.writePendingIntentOrNullToParcel(pendingIntent, parcel);
            zzb(parcel, iZza);
        }
    }

    public static void writeShort(@NonNull Parcel parcel, int i11, short s11) {
        zzc(parcel, i11, 4);
        parcel.writeInt(s11);
    }

    public static void writeSparseBooleanArray(@NonNull Parcel parcel, int i11, @NonNull SparseBooleanArray sparseBooleanArray, boolean z10) {
        if (sparseBooleanArray == null) {
            if (z10) {
                zzc(parcel, i11, 0);
            }
        } else {
            int iZza = zza(parcel, i11);
            parcel.writeSparseBooleanArray(sparseBooleanArray);
            zzb(parcel, iZza);
        }
    }

    public static void writeSparseIntArray(@NonNull Parcel parcel, int i11, @NonNull SparseIntArray sparseIntArray, boolean z10) {
        if (sparseIntArray == null) {
            if (z10) {
                zzc(parcel, i11, 0);
                return;
            }
            return;
        }
        int iZza = zza(parcel, i11);
        int size = sparseIntArray.size();
        parcel.writeInt(size);
        for (int i12 = 0; i12 < size; i12++) {
            parcel.writeInt(sparseIntArray.keyAt(i12));
            parcel.writeInt(sparseIntArray.valueAt(i12));
        }
        zzb(parcel, iZza);
    }

    public static void writeSparseLongArray(@NonNull Parcel parcel, int i11, @NonNull SparseLongArray sparseLongArray, boolean z10) {
        if (sparseLongArray == null) {
            if (z10) {
                zzc(parcel, i11, 0);
                return;
            }
            return;
        }
        int iZza = zza(parcel, i11);
        int size = sparseLongArray.size();
        parcel.writeInt(size);
        for (int i12 = 0; i12 < size; i12++) {
            parcel.writeInt(sparseLongArray.keyAt(i12));
            parcel.writeLong(sparseLongArray.valueAt(i12));
        }
        zzb(parcel, iZza);
    }

    public static void writeString(@NonNull Parcel parcel, int i11, @NonNull String str, boolean z10) {
        if (str == null) {
            if (z10) {
                zzc(parcel, i11, 0);
            }
        } else {
            int iZza = zza(parcel, i11);
            parcel.writeString(str);
            zzb(parcel, iZza);
        }
    }

    public static void writeStringArray(@NonNull Parcel parcel, int i11, @NonNull String[] strArr, boolean z10) {
        if (strArr == null) {
            if (z10) {
                zzc(parcel, i11, 0);
            }
        } else {
            int iZza = zza(parcel, i11);
            parcel.writeStringArray(strArr);
            zzb(parcel, iZza);
        }
    }

    public static void writeStringList(@NonNull Parcel parcel, int i11, @NonNull List<String> list, boolean z10) {
        if (list == null) {
            if (z10) {
                zzc(parcel, i11, 0);
            }
        } else {
            int iZza = zza(parcel, i11);
            parcel.writeStringList(list);
            zzb(parcel, iZza);
        }
    }

    public static void writeStringSparseArray(@NonNull Parcel parcel, int i11, @NonNull SparseArray<String> sparseArray, boolean z10) {
        if (sparseArray == null) {
            if (z10) {
                zzc(parcel, i11, 0);
                return;
            }
            return;
        }
        int iZza = zza(parcel, i11);
        int size = sparseArray.size();
        parcel.writeInt(size);
        for (int i12 = 0; i12 < size; i12++) {
            parcel.writeInt(sparseArray.keyAt(i12));
            parcel.writeString(sparseArray.valueAt(i12));
        }
        zzb(parcel, iZza);
    }

    public static <T extends Parcelable> void writeTypedArray(@NonNull Parcel parcel, int i11, @NonNull T[] tArr, int i12, boolean z10) {
        if (tArr == null) {
            if (z10) {
                zzc(parcel, i11, 0);
                return;
            }
            return;
        }
        int iZza = zza(parcel, i11);
        parcel.writeInt(tArr.length);
        for (T t11 : tArr) {
            if (t11 == null) {
                parcel.writeInt(0);
            } else {
                zzd(parcel, t11, i12);
            }
        }
        zzb(parcel, iZza);
    }

    public static <T extends Parcelable> void writeTypedList(@NonNull Parcel parcel, int i11, @NonNull List<T> list, boolean z10) {
        if (list == null) {
            if (z10) {
                zzc(parcel, i11, 0);
                return;
            }
            return;
        }
        int iZza = zza(parcel, i11);
        int size = list.size();
        parcel.writeInt(size);
        for (int i12 = 0; i12 < size; i12++) {
            T t11 = list.get(i12);
            if (t11 == null) {
                parcel.writeInt(0);
            } else {
                zzd(parcel, t11, 0);
            }
        }
        zzb(parcel, iZza);
    }

    public static <T extends Parcelable> void writeTypedSparseArray(@NonNull Parcel parcel, int i11, @NonNull SparseArray<T> sparseArray, boolean z10) {
        if (sparseArray == null) {
            if (z10) {
                zzc(parcel, i11, 0);
                return;
            }
            return;
        }
        int iZza = zza(parcel, i11);
        int size = sparseArray.size();
        parcel.writeInt(size);
        for (int i12 = 0; i12 < size; i12++) {
            parcel.writeInt(sparseArray.keyAt(i12));
            T tValueAt = sparseArray.valueAt(i12);
            if (tValueAt == null) {
                parcel.writeInt(0);
            } else {
                zzd(parcel, tValueAt, 0);
            }
        }
        zzb(parcel, iZza);
    }

    private static int zza(Parcel parcel, int i11) {
        parcel.writeInt(i11 | FlowLayout.SPACING_AUTO);
        parcel.writeInt(0);
        return parcel.dataPosition();
    }

    private static void zzb(Parcel parcel, int i11) {
        int iDataPosition = parcel.dataPosition();
        parcel.setDataPosition(i11 - 4);
        parcel.writeInt(iDataPosition - i11);
        parcel.setDataPosition(iDataPosition);
    }

    private static void zzc(Parcel parcel, int i11, int i12) {
        parcel.writeInt(i11 | (i12 << 16));
    }

    private static void zzd(Parcel parcel, Parcelable parcelable, int i11) {
        int iDataPosition = parcel.dataPosition();
        parcel.writeInt(1);
        int iDataPosition2 = parcel.dataPosition();
        parcelable.writeToParcel(parcel, i11);
        int iDataPosition3 = parcel.dataPosition();
        parcel.setDataPosition(iDataPosition);
        parcel.writeInt(iDataPosition3 - iDataPosition2);
        parcel.setDataPosition(iDataPosition3);
    }
}
