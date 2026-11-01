package androidx.databinding;

import android.os.Parcel;
import android.os.Parcelable;
import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public class ObservableDouble extends b implements Parcelable, Serializable {
    public static final Parcelable.Creator<ObservableDouble> CREATOR = new a();
    static final long serialVersionUID = 1;
    private double mValue;

    class a implements Parcelable.Creator {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public ObservableDouble createFromParcel(Parcel parcel) {
            return new ObservableDouble(parcel.readDouble());
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public ObservableDouble[] newArray(int i11) {
            return new ObservableDouble[i11];
        }
    }

    public ObservableDouble() {
    }

    public ObservableDouble(double d11) {
        this.mValue = d11;
    }

    public ObservableDouble(i... iVarArr) {
        super(iVarArr);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public double get() {
        return this.mValue;
    }

    public void set(double d11) {
        if (d11 != this.mValue) {
            this.mValue = d11;
            notifyChange();
        }
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i11) {
        parcel.writeDouble(this.mValue);
    }
}
