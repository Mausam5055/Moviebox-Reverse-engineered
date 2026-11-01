package androidx.versionedparcelable;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.SparseIntArray;

/* JADX INFO: loaded from: classes2.dex */
class b extends VersionedParcel {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final SparseIntArray f15223d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Parcel f15224e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final int f15225f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final int f15226g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final String f15227h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f15228i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f15229j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f15230k;

    b(Parcel parcel) {
        this(parcel, parcel.dataPosition(), parcel.dataSize(), "", new androidx.collection.a(), new androidx.collection.a(), new androidx.collection.a());
    }

    private b(Parcel parcel, int i11, int i12, String str, androidx.collection.a aVar, androidx.collection.a aVar2, androidx.collection.a aVar3) {
        super(aVar, aVar2, aVar3);
        this.f15223d = new SparseIntArray();
        this.f15228i = -1;
        this.f15230k = -1;
        this.f15224e = parcel;
        this.f15225f = i11;
        this.f15226g = i12;
        this.f15229j = i11;
        this.f15227h = str;
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public void A(byte[] bArr) {
        if (bArr == null) {
            this.f15224e.writeInt(-1);
        } else {
            this.f15224e.writeInt(bArr.length);
            this.f15224e.writeByteArray(bArr);
        }
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    protected void C(CharSequence charSequence) {
        TextUtils.writeToParcel(charSequence, this.f15224e, 0);
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public void E(int i11) {
        this.f15224e.writeInt(i11);
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public void G(Parcelable parcelable) {
        this.f15224e.writeParcelable(parcelable, 0);
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public void I(String str) {
        this.f15224e.writeString(str);
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public void a() {
        int i11 = this.f15228i;
        if (i11 >= 0) {
            int i12 = this.f15223d.get(i11);
            int iDataPosition = this.f15224e.dataPosition();
            this.f15224e.setDataPosition(i12);
            this.f15224e.writeInt(iDataPosition - i12);
            this.f15224e.setDataPosition(iDataPosition);
        }
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    protected VersionedParcel b() {
        Parcel parcel = this.f15224e;
        int iDataPosition = parcel.dataPosition();
        int i11 = this.f15229j;
        if (i11 == this.f15225f) {
            i11 = this.f15226g;
        }
        return new b(parcel, iDataPosition, i11, this.f15227h + "  ", this.f15220a, this.f15221b, this.f15222c);
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public boolean g() {
        return this.f15224e.readInt() != 0;
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public byte[] i() {
        int i11 = this.f15224e.readInt();
        if (i11 < 0) {
            return null;
        }
        byte[] bArr = new byte[i11];
        this.f15224e.readByteArray(bArr);
        return bArr;
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    protected CharSequence k() {
        return (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(this.f15224e);
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public boolean m(int i11) {
        while (this.f15229j < this.f15226g) {
            int i12 = this.f15230k;
            if (i12 == i11) {
                return true;
            }
            if (String.valueOf(i12).compareTo(String.valueOf(i11)) > 0) {
                return false;
            }
            this.f15224e.setDataPosition(this.f15229j);
            int i13 = this.f15224e.readInt();
            this.f15230k = this.f15224e.readInt();
            this.f15229j += i13;
        }
        return this.f15230k == i11;
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public int o() {
        return this.f15224e.readInt();
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public Parcelable q() {
        return this.f15224e.readParcelable(getClass().getClassLoader());
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public String s() {
        return this.f15224e.readString();
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public void w(int i11) {
        a();
        this.f15228i = i11;
        this.f15223d.put(i11, this.f15224e.dataPosition());
        E(0);
        E(i11);
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public void y(boolean z10) {
        this.f15224e.writeInt(z10 ? 1 : 0);
    }
}
