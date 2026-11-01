package com.google.android.libraries.places.internal;

import java.net.Socket;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
final class zzbwr extends zzbvz {
    private final Socket zzd;

    public zzbwr(Socket socket) {
        Intrinsics.h(socket, "socket");
        this.zzd = socket;
    }
}
