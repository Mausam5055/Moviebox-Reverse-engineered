package androidx.core.app;

import android.app.PendingIntent;
import androidx.core.graphics.drawable.IconCompat;
import androidx.versionedparcelable.VersionedParcel;

/* JADX INFO: loaded from: classes.dex */
public class RemoteActionCompatParcelizer {
    public static RemoteActionCompat read(VersionedParcel versionedParcel) {
        RemoteActionCompat remoteActionCompat = new RemoteActionCompat();
        remoteActionCompat.f8056a = (IconCompat) versionedParcel.v(remoteActionCompat.f8056a, 1);
        remoteActionCompat.f8057b = versionedParcel.l(remoteActionCompat.f8057b, 2);
        remoteActionCompat.f8058c = versionedParcel.l(remoteActionCompat.f8058c, 3);
        remoteActionCompat.f8059d = (PendingIntent) versionedParcel.r(remoteActionCompat.f8059d, 4);
        remoteActionCompat.f8060e = versionedParcel.h(remoteActionCompat.f8060e, 5);
        remoteActionCompat.f8061f = versionedParcel.h(remoteActionCompat.f8061f, 6);
        return remoteActionCompat;
    }

    public static void write(RemoteActionCompat remoteActionCompat, VersionedParcel versionedParcel) {
        versionedParcel.x(false, false);
        versionedParcel.M(remoteActionCompat.f8056a, 1);
        versionedParcel.D(remoteActionCompat.f8057b, 2);
        versionedParcel.D(remoteActionCompat.f8058c, 3);
        versionedParcel.H(remoteActionCompat.f8059d, 4);
        versionedParcel.z(remoteActionCompat.f8060e, 5);
        versionedParcel.z(remoteActionCompat.f8061f, 6);
    }
}
