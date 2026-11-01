package androidx.fragment.app;

import android.annotation.SuppressLint;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.Log;
import androidx.p009lifecycle.Lifecycle;
import java.util.ArrayList;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
@SuppressLint({"BanParcelableUsage"})
final class BackStackRecordState implements Parcelable {
    public static final Parcelable.Creator<BackStackRecordState> CREATOR = new a();
    private static final String TAG = "FragmentManager";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final int[] f9214a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final ArrayList f9215b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final int[] f9216c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final int[] f9217d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final int f9218e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    final String f9219f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    final int f9220g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    final int f9221h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    final CharSequence f9222i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    final int f9223j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    final CharSequence f9224k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    final ArrayList f9225l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    final ArrayList f9226m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    final boolean f9227n;

    class a implements Parcelable.Creator {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public BackStackRecordState createFromParcel(Parcel parcel) {
            return new BackStackRecordState(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public BackStackRecordState[] newArray(int i11) {
            return new BackStackRecordState[i11];
        }
    }

    BackStackRecordState(Parcel parcel) {
        this.f9214a = parcel.createIntArray();
        this.f9215b = parcel.createStringArrayList();
        this.f9216c = parcel.createIntArray();
        this.f9217d = parcel.createIntArray();
        this.f9218e = parcel.readInt();
        this.f9219f = parcel.readString();
        this.f9220g = parcel.readInt();
        this.f9221h = parcel.readInt();
        Parcelable.Creator creator = TextUtils.CHAR_SEQUENCE_CREATOR;
        this.f9222i = (CharSequence) creator.createFromParcel(parcel);
        this.f9223j = parcel.readInt();
        this.f9224k = (CharSequence) creator.createFromParcel(parcel);
        this.f9225l = parcel.createStringArrayList();
        this.f9226m = parcel.createStringArrayList();
        this.f9227n = parcel.readInt() != 0;
    }

    BackStackRecordState(androidx.fragment.app.a aVar) {
        int size = aVar.f9478c.size();
        this.f9214a = new int[size * 6];
        if (!aVar.f9484i) {
            throw new IllegalStateException("Not on back stack");
        }
        this.f9215b = new ArrayList(size);
        this.f9216c = new int[size];
        this.f9217d = new int[size];
        int i11 = 0;
        for (int i12 = 0; i12 < size; i12++) {
            w.a aVar2 = (w.a) aVar.f9478c.get(i12);
            int i13 = i11 + 1;
            this.f9214a[i11] = aVar2.f9495a;
            ArrayList arrayList = this.f9215b;
            Fragment fragment = aVar2.f9496b;
            arrayList.add(fragment != null ? fragment.mWho : null);
            int[] iArr = this.f9214a;
            iArr[i13] = aVar2.f9497c ? 1 : 0;
            iArr[i11 + 2] = aVar2.f9498d;
            iArr[i11 + 3] = aVar2.f9499e;
            int i14 = i11 + 5;
            iArr[i11 + 4] = aVar2.f9500f;
            i11 += 6;
            iArr[i14] = aVar2.f9501g;
            this.f9216c[i12] = aVar2.f9502h.ordinal();
            this.f9217d[i12] = aVar2.f9503i.ordinal();
        }
        this.f9218e = aVar.f9483h;
        this.f9219f = aVar.f9486k;
        this.f9220g = aVar.f9424v;
        this.f9221h = aVar.f9487l;
        this.f9222i = aVar.f9488m;
        this.f9223j = aVar.f9489n;
        this.f9224k = aVar.f9490o;
        this.f9225l = aVar.f9491p;
        this.f9226m = aVar.f9492q;
        this.f9227n = aVar.f9493r;
    }

    private void a(androidx.fragment.app.a aVar) {
        int i11 = 0;
        int i12 = 0;
        while (true) {
            boolean z10 = true;
            if (i11 >= this.f9214a.length) {
                aVar.f9483h = this.f9218e;
                aVar.f9486k = this.f9219f;
                aVar.f9484i = true;
                aVar.f9487l = this.f9221h;
                aVar.f9488m = this.f9222i;
                aVar.f9489n = this.f9223j;
                aVar.f9490o = this.f9224k;
                aVar.f9491p = this.f9225l;
                aVar.f9492q = this.f9226m;
                aVar.f9493r = this.f9227n;
                return;
            }
            w.a aVar2 = new w.a();
            int i13 = i11 + 1;
            aVar2.f9495a = this.f9214a[i11];
            if (FragmentManager.M0(2)) {
                Log.v(TAG, "Instantiate " + aVar + " op #" + i12 + " base fragment #" + this.f9214a[i13]);
            }
            aVar2.f9502h = Lifecycle.State.values()[this.f9216c[i12]];
            aVar2.f9503i = Lifecycle.State.values()[this.f9217d[i12]];
            int[] iArr = this.f9214a;
            int i14 = i11 + 2;
            if (iArr[i13] == 0) {
                z10 = false;
            }
            aVar2.f9497c = z10;
            int i15 = iArr[i14];
            aVar2.f9498d = i15;
            int i16 = iArr[i11 + 3];
            aVar2.f9499e = i16;
            int i17 = i11 + 5;
            int i18 = iArr[i11 + 4];
            aVar2.f9500f = i18;
            i11 += 6;
            int i19 = iArr[i17];
            aVar2.f9501g = i19;
            aVar.f9479d = i15;
            aVar.f9480e = i16;
            aVar.f9481f = i18;
            aVar.f9482g = i19;
            aVar.f(aVar2);
            i12++;
        }
    }

    public androidx.fragment.app.a b(FragmentManager fragmentManager) {
        androidx.fragment.app.a aVar = new androidx.fragment.app.a(fragmentManager);
        a(aVar);
        aVar.f9424v = this.f9220g;
        for (int i11 = 0; i11 < this.f9215b.size(); i11++) {
            String str = (String) this.f9215b.get(i11);
            if (str != null) {
                ((w.a) aVar.f9478c.get(i11)).f9496b = fragmentManager.h0(str);
            }
        }
        aVar.z(1);
        return aVar;
    }

    public androidx.fragment.app.a c(FragmentManager fragmentManager, Map map) {
        androidx.fragment.app.a aVar = new androidx.fragment.app.a(fragmentManager);
        a(aVar);
        for (int i11 = 0; i11 < this.f9215b.size(); i11++) {
            String str = (String) this.f9215b.get(i11);
            if (str != null) {
                Fragment fragment = (Fragment) map.get(str);
                if (fragment == null) {
                    throw new IllegalStateException("Restoring FragmentTransaction " + this.f9219f + " failed due to missing saved state for Fragment (" + str + ")");
                }
                ((w.a) aVar.f9478c.get(i11)).f9496b = fragment;
            }
        }
        return aVar;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i11) {
        parcel.writeIntArray(this.f9214a);
        parcel.writeStringList(this.f9215b);
        parcel.writeIntArray(this.f9216c);
        parcel.writeIntArray(this.f9217d);
        parcel.writeInt(this.f9218e);
        parcel.writeString(this.f9219f);
        parcel.writeInt(this.f9220g);
        parcel.writeInt(this.f9221h);
        TextUtils.writeToParcel(this.f9222i, parcel, 0);
        parcel.writeInt(this.f9223j);
        TextUtils.writeToParcel(this.f9224k, parcel, 0);
        parcel.writeStringList(this.f9225l);
        parcel.writeStringList(this.f9226m);
        parcel.writeInt(this.f9227n ? 1 : 0);
    }
}
