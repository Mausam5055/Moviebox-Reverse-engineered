package ba;

import android.os.Bundle;
import android.os.Parcel;
import com.google.common.collect.ImmutableList;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes3.dex */
public final class c {
    public ImmutableList a(byte[] bArr) {
        Parcel parcelObtain = Parcel.obtain();
        parcelObtain.unmarshall(bArr, 0, bArr.length);
        parcelObtain.setDataPosition(0);
        Bundle bundle = parcelObtain.readBundle(Bundle.class.getClassLoader());
        parcelObtain.recycle();
        return com.google.android.exoplayer2.util.d.b(b.f16250s, (ArrayList) com.google.android.exoplayer2.util.a.e(bundle.getParcelableArrayList("c")));
    }
}
