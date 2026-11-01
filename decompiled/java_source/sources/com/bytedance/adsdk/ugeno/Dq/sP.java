package com.bytedance.adsdk.ugeno.Dq;

import android.database.DataSetObservable;
import android.database.DataSetObserver;
import android.os.Parcelable;
import android.view.View;
import android.view.ViewGroup;

/* JADX INFO: loaded from: classes2.dex */
public abstract class sP {
    private final DataSetObservable Sj = new DataSetObservable();
    private DataSetObserver sP;

    public float Sj(int i11) {
        return 1.0f;
    }

    public abstract int Sj();

    public int Sj(Object obj) {
        return -1;
    }

    @Deprecated
    public Object Sj(View view, int i11) {
        throw new UnsupportedOperationException("Required method instantiateItem was not overridden");
    }

    public Object Sj(ViewGroup viewGroup, int i11) {
        return Sj((View) viewGroup, i11);
    }

    void Sj(DataSetObserver dataSetObserver) {
        synchronized (this) {
            this.sP = dataSetObserver;
        }
    }

    @Deprecated
    public void Sj(View view, int i11, Object obj) {
        throw new UnsupportedOperationException("Required method destroyItem was not overridden");
    }

    public void Sj(ViewGroup viewGroup, int i11, Object obj) {
        Sj((View) viewGroup, i11, obj);
    }

    public abstract boolean Sj(View view, Object obj);

    public void TKC() {
        synchronized (this) {
            try {
                DataSetObserver dataSetObserver = this.sP;
                if (dataSetObserver != null) {
                    dataSetObserver.onChanged();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        this.Sj.notifyChanged();
    }

    public Parcelable sP() {
        return null;
    }
}
