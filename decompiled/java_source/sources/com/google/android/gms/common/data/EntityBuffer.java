package com.google.android.gms.common.data;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Preconditions;
import com.google.errorprone.annotations.ResultIgnorabilityUnspecified;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes3.dex */
@KeepForSdk
public abstract class EntityBuffer<T> extends AbstractDataBuffer<T> {
    private boolean zaa;
    private ArrayList zab;

    @KeepForSdk
    protected EntityBuffer(@NonNull DataHolder dataHolder) {
        super(dataHolder);
        this.zaa = false;
    }

    private final void zab() {
        synchronized (this) {
            try {
                if (!this.zaa) {
                    int count = ((DataHolder) Preconditions.checkNotNull(this.mDataHolder)).getCount();
                    ArrayList arrayList = new ArrayList();
                    this.zab = arrayList;
                    if (count > 0) {
                        arrayList.add(0);
                        String primaryDataMarkerColumn = getPrimaryDataMarkerColumn();
                        String string = this.mDataHolder.getString(primaryDataMarkerColumn, 0, this.mDataHolder.getWindowIndex(0));
                        for (int i11 = 1; i11 < count; i11++) {
                            int windowIndex = this.mDataHolder.getWindowIndex(i11);
                            String string2 = this.mDataHolder.getString(primaryDataMarkerColumn, i11, windowIndex);
                            if (string2 == null) {
                                throw new NullPointerException("Missing value for markerColumn: " + primaryDataMarkerColumn + ", at row: " + i11 + ", for window: " + windowIndex);
                            }
                            if (!string2.equals(string)) {
                                this.zab.add(Integer.valueOf(i11));
                                string = string2;
                            }
                        }
                    }
                    this.zaa = true;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // com.google.android.gms.common.data.AbstractDataBuffer, com.google.android.gms.common.data.DataBuffer
    @NonNull
    @ResultIgnorabilityUnspecified
    @KeepForSdk
    public final T get(int i11) {
        int iIntValue;
        int iIntValue2;
        zab();
        int iZaa = zaa(i11);
        int i12 = 0;
        if (i11 >= 0 && i11 != this.zab.size()) {
            if (i11 == this.zab.size() - 1) {
                iIntValue = ((DataHolder) Preconditions.checkNotNull(this.mDataHolder)).getCount();
                iIntValue2 = ((Integer) this.zab.get(i11)).intValue();
            } else {
                iIntValue = ((Integer) this.zab.get(i11 + 1)).intValue();
                iIntValue2 = ((Integer) this.zab.get(i11)).intValue();
            }
            int i13 = iIntValue - iIntValue2;
            if (i13 == 1) {
                int iZaa2 = zaa(i11);
                int windowIndex = ((DataHolder) Preconditions.checkNotNull(this.mDataHolder)).getWindowIndex(iZaa2);
                String childDataMarkerColumn = getChildDataMarkerColumn();
                if (childDataMarkerColumn == null || this.mDataHolder.getString(childDataMarkerColumn, iZaa2, windowIndex) != null) {
                    i12 = 1;
                }
            } else {
                i12 = i13;
            }
        }
        return getEntry(iZaa, i12);
    }

    @Nullable
    @KeepForSdk
    protected String getChildDataMarkerColumn() {
        return null;
    }

    @Override // com.google.android.gms.common.data.AbstractDataBuffer, com.google.android.gms.common.data.DataBuffer
    @KeepForSdk
    public int getCount() {
        zab();
        return this.zab.size();
    }

    @NonNull
    @KeepForSdk
    protected abstract T getEntry(int i11, int i12);

    @NonNull
    @KeepForSdk
    protected abstract String getPrimaryDataMarkerColumn();

    final int zaa(int i11) {
        if (i11 >= 0 && i11 < this.zab.size()) {
            return ((Integer) this.zab.get(i11)).intValue();
        }
        throw new IllegalArgumentException("Position " + i11 + " is out of bounds for this buffer");
    }
}
