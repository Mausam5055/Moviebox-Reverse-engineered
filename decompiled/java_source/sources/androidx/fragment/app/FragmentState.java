package androidx.fragment.app;

import android.annotation.SuppressLint;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.p009lifecycle.Lifecycle;

/* JADX INFO: loaded from: classes.dex */
@SuppressLint({"BanParcelableUsage"})
final class FragmentState implements Parcelable {
    public static final Parcelable.Creator<FragmentState> CREATOR = new a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final String f9367a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final String f9368b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final boolean f9369c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final int f9370d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final int f9371e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    final String f9372f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    final boolean f9373g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    final boolean f9374h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    final boolean f9375i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    final Bundle f9376j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    final boolean f9377k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    final int f9378l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    Bundle f9379m;

    class a implements Parcelable.Creator {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public FragmentState createFromParcel(Parcel parcel) {
            return new FragmentState(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public FragmentState[] newArray(int i11) {
            return new FragmentState[i11];
        }
    }

    FragmentState(Parcel parcel) {
        this.f9367a = parcel.readString();
        this.f9368b = parcel.readString();
        this.f9369c = parcel.readInt() != 0;
        this.f9370d = parcel.readInt();
        this.f9371e = parcel.readInt();
        this.f9372f = parcel.readString();
        this.f9373g = parcel.readInt() != 0;
        this.f9374h = parcel.readInt() != 0;
        this.f9375i = parcel.readInt() != 0;
        this.f9376j = parcel.readBundle();
        this.f9377k = parcel.readInt() != 0;
        this.f9379m = parcel.readBundle();
        this.f9378l = parcel.readInt();
    }

    FragmentState(Fragment fragment) {
        this.f9367a = fragment.getClass().getName();
        this.f9368b = fragment.mWho;
        this.f9369c = fragment.mFromLayout;
        this.f9370d = fragment.mFragmentId;
        this.f9371e = fragment.mContainerId;
        this.f9372f = fragment.mTag;
        this.f9373g = fragment.mRetainInstance;
        this.f9374h = fragment.mRemoving;
        this.f9375i = fragment.mDetached;
        this.f9376j = fragment.mArguments;
        this.f9377k = fragment.mHidden;
        this.f9378l = fragment.mMaxState.ordinal();
    }

    Fragment a(h hVar, ClassLoader classLoader) {
        Fragment fragmentInstantiate = hVar.instantiate(classLoader, this.f9367a);
        Bundle bundle = this.f9376j;
        if (bundle != null) {
            bundle.setClassLoader(classLoader);
        }
        fragmentInstantiate.setArguments(this.f9376j);
        fragmentInstantiate.mWho = this.f9368b;
        fragmentInstantiate.mFromLayout = this.f9369c;
        fragmentInstantiate.mRestored = true;
        fragmentInstantiate.mFragmentId = this.f9370d;
        fragmentInstantiate.mContainerId = this.f9371e;
        fragmentInstantiate.mTag = this.f9372f;
        fragmentInstantiate.mRetainInstance = this.f9373g;
        fragmentInstantiate.mRemoving = this.f9374h;
        fragmentInstantiate.mDetached = this.f9375i;
        fragmentInstantiate.mHidden = this.f9377k;
        fragmentInstantiate.mMaxState = Lifecycle.State.values()[this.f9378l];
        Bundle bundle2 = this.f9379m;
        if (bundle2 != null) {
            fragmentInstantiate.mSavedFragmentState = bundle2;
        } else {
            fragmentInstantiate.mSavedFragmentState = new Bundle();
        }
        return fragmentInstantiate;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder(128);
        sb2.append("FragmentState{");
        sb2.append(this.f9367a);
        sb2.append(" (");
        sb2.append(this.f9368b);
        sb2.append(")}:");
        if (this.f9369c) {
            sb2.append(" fromLayout");
        }
        if (this.f9371e != 0) {
            sb2.append(" id=0x");
            sb2.append(Integer.toHexString(this.f9371e));
        }
        String str = this.f9372f;
        if (str != null && !str.isEmpty()) {
            sb2.append(" tag=");
            sb2.append(this.f9372f);
        }
        if (this.f9373g) {
            sb2.append(" retainInstance");
        }
        if (this.f9374h) {
            sb2.append(" removing");
        }
        if (this.f9375i) {
            sb2.append(" detached");
        }
        if (this.f9377k) {
            sb2.append(" hidden");
        }
        return sb2.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i11) {
        parcel.writeString(this.f9367a);
        parcel.writeString(this.f9368b);
        parcel.writeInt(this.f9369c ? 1 : 0);
        parcel.writeInt(this.f9370d);
        parcel.writeInt(this.f9371e);
        parcel.writeString(this.f9372f);
        parcel.writeInt(this.f9373g ? 1 : 0);
        parcel.writeInt(this.f9374h ? 1 : 0);
        parcel.writeInt(this.f9375i ? 1 : 0);
        parcel.writeBundle(this.f9376j);
        parcel.writeInt(this.f9377k ? 1 : 0);
        parcel.writeBundle(this.f9379m);
        parcel.writeInt(this.f9378l);
    }
}
