package com.google.android.libraries.places.internal;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.Socket;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class zzbwh {
    public static final zzbwc zza(zzbwq zzbwqVar) {
        Intrinsics.h(zzbwqVar, "<this>");
        return new zzbwk(zzbwqVar);
    }

    public static final zzbwd zzb(zzbws zzbwsVar) {
        Intrinsics.h(zzbwsVar, "<this>");
        return new zzbwl(zzbwsVar);
    }

    public static final zzbwq zzc(Socket socket) throws IOException {
        int i11 = zzbwi.zza;
        Intrinsics.h(socket, "<this>");
        zzbwr zzbwrVar = new zzbwr(socket);
        OutputStream outputStream = socket.getOutputStream();
        Intrinsics.g(outputStream, "getOutputStream(...)");
        zzbwj sink = new zzbwj(outputStream, zzbwrVar);
        Intrinsics.h(sink, "sink");
        return new zzbvx(zzbwrVar, sink);
    }

    public static final zzbws zzd(Socket socket) throws IOException {
        int i11 = zzbwi.zza;
        Intrinsics.h(socket, "<this>");
        zzbwr zzbwrVar = new zzbwr(socket);
        InputStream inputStream = socket.getInputStream();
        Intrinsics.g(inputStream, "getInputStream(...)");
        zzbwg source = new zzbwg(inputStream, zzbwrVar);
        Intrinsics.h(source, "source");
        return new zzbvy(zzbwrVar, source);
    }
}
