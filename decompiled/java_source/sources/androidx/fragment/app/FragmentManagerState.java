package androidx.fragment.app;

import android.annotation.SuppressLint;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
@SuppressLint({"BanParcelableUsage"})
final class FragmentManagerState implements Parcelable {
    public static final Parcelable.Creator<FragmentManagerState> CREATOR = new a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    ArrayList f9359a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    ArrayList f9360b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    BackStackRecordState[] f9361c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    int f9362d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    String f9363e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    ArrayList f9364f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    ArrayList f9365g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    ArrayList f9366h;

    class a implements Parcelable.Creator {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public FragmentManagerState createFromParcel(Parcel parcel) {
            return new FragmentManagerState(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public FragmentManagerState[] newArray(int i11) {
            return new FragmentManagerState[i11];
        }
    }

    public FragmentManagerState() {
        this.f9363e = null;
        this.f9364f = new ArrayList();
        this.f9365g = new ArrayList();
    }

    public FragmentManagerState(Parcel parcel) {
        this.f9363e = null;
        this.f9364f = new ArrayList();
        this.f9365g = new ArrayList();
        this.f9359a = parcel.createStringArrayList();
        this.f9360b = parcel.createStringArrayList();
        this.f9361c = (BackStackRecordState[]) parcel.createTypedArray(BackStackRecordState.CREATOR);
        this.f9362d = parcel.readInt();
        this.f9363e = parcel.readString();
        this.f9364f = parcel.createStringArrayList();
        this.f9365g = parcel.createTypedArrayList(BackStackState.CREATOR);
        this.f9366h = parcel.createTypedArrayList(FragmentManager.LaunchedFragmentInfo.CREATOR);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i11) {
        parcel.writeStringList(this.f9359a);
        parcel.writeStringList(this.f9360b);
        parcel.writeTypedArray(this.f9361c, i11);
        parcel.writeInt(this.f9362d);
        parcel.writeString(this.f9363e);
        parcel.writeStringList(this.f9364f);
        parcel.writeTypedList(this.f9365g);
        parcel.writeTypedList(this.f9366h);
    }
}
