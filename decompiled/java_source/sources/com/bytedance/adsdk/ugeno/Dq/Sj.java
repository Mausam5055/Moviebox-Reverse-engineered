package com.bytedance.adsdk.ugeno.Dq;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes2.dex */
public abstract class Sj implements Parcelable {
    private final Parcelable sP;
    public static final Sj Sj = new Sj() { // from class: com.bytedance.adsdk.ugeno.Dq.Sj.1
    };
    public static final Parcelable.Creator<Sj> CREATOR = new Parcelable.ClassLoaderCreator<Sj>() { // from class: com.bytedance.adsdk.ugeno.Dq.Sj.2
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: Sj, reason: merged with bridge method [inline-methods] */
        public Sj createFromParcel(Parcel parcel) {
            return createFromParcel(parcel, null);
        }

        @Override // android.os.Parcelable.ClassLoaderCreator
        /* JADX INFO: renamed from: Sj, reason: merged with bridge method [inline-methods] */
        public Sj createFromParcel(Parcel parcel, ClassLoader classLoader) {
            if (parcel.readParcelable(classLoader) == null) {
                return Sj.Sj;
            }
            throw new IllegalStateException("superState must be null");
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: Sj, reason: merged with bridge method [inline-methods] */
        public Sj[] newArray(int i11) {
            return new Sj[i11];
        }
    };

    private Sj() {
        this.sP = null;
    }

    protected Sj(Parcel parcel, ClassLoader classLoader) {
        Parcelable parcelable = parcel.readParcelable(classLoader);
        this.sP = parcelable == null ? Sj : parcelable;
    }

    protected Sj(Parcelable parcelable) {
        if (parcelable == null) {
            throw new IllegalArgumentException("superState must not be null");
        }
        this.sP = parcelable == Sj ? null : parcelable;
    }

    public final Parcelable Sj() {
        return this.sP;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i11) {
        parcel.writeParcelable(this.sP, i11);
    }
}
