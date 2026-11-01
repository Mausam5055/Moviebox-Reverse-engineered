package i3;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class d {
    public byte[] a(List list, long j11) {
        ArrayList<? extends Parcelable> arrayListB = androidx.media3.common.util.h.b(list, new com.google.common.base.f() { // from class: i3.c
            @Override // com.google.common.base.f
            public final Object apply(Object obj) {
                return ((u1.a) obj).d();
            }
        });
        Bundle bundle = new Bundle();
        bundle.putParcelableArrayList("c", arrayListB);
        bundle.putLong(DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, j11);
        Parcel parcelObtain = Parcel.obtain();
        parcelObtain.writeBundle(bundle);
        byte[] bArrMarshall = parcelObtain.marshall();
        parcelObtain.recycle();
        return bArrMarshall;
    }
}
