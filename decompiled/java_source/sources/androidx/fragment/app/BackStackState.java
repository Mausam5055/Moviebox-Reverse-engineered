package androidx.fragment.app;

import android.annotation.SuppressLint;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
@SuppressLint({"BanParcelableUsage"})
class BackStackState implements Parcelable {
    public static final Parcelable.Creator<BackStackState> CREATOR = new a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final List f9228a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final List f9229b;

    class a implements Parcelable.Creator {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public BackStackState createFromParcel(Parcel parcel) {
            return new BackStackState(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public BackStackState[] newArray(int i11) {
            return new BackStackState[i11];
        }
    }

    BackStackState(Parcel parcel) {
        this.f9228a = parcel.createStringArrayList();
        this.f9229b = parcel.createTypedArrayList(BackStackRecordState.CREATOR);
    }

    BackStackState(List list, List list2) {
        this.f9228a = list;
        this.f9229b = list2;
    }

    List a(FragmentManager fragmentManager, Map map) {
        HashMap map2 = new HashMap(this.f9228a.size());
        for (String str : this.f9228a) {
            Fragment fragment = (Fragment) map.get(str);
            if (fragment != null) {
                map2.put(fragment.mWho, fragment);
            } else {
                FragmentState fragmentStateB = fragmentManager.x0().B(str, null);
                if (fragmentStateB != null) {
                    Fragment fragmentA = fragmentStateB.a(fragmentManager.w0(), fragmentManager.z0().f().getClassLoader());
                    map2.put(fragmentA.mWho, fragmentA);
                }
            }
        }
        ArrayList arrayList = new ArrayList();
        Iterator it = this.f9229b.iterator();
        while (it.hasNext()) {
            arrayList.add(((BackStackRecordState) it.next()).c(fragmentManager, map2));
        }
        return arrayList;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i11) {
        parcel.writeStringList(this.f9228a);
        parcel.writeTypedList(this.f9229b);
    }
}
