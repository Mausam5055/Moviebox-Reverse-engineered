package androidx.media;

import android.media.session.MediaSessionManager;

/* JADX INFO: loaded from: classes.dex */
final class h extends i {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final MediaSessionManager.RemoteUserInfo f9775d;

    h(MediaSessionManager.RemoteUserInfo remoteUserInfo) {
        super(remoteUserInfo.getPackageName(), remoteUserInfo.getPid(), remoteUserInfo.getUid());
        this.f9775d = remoteUserInfo;
    }

    h(String str, int i11, int i12) {
        super(str, i11, i12);
        this.f9775d = d.a(str, i11, i12);
    }

    static String a(MediaSessionManager.RemoteUserInfo remoteUserInfo) {
        return remoteUserInfo.getPackageName();
    }
}
