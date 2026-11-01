package com.mbridge.msdk.tracker.network.toolbox;

import androidx.annotation.NonNull;
import com.google.android.gms.common.internal.ImagesContract;
import com.mbridge.msdk.tracker.network.p;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class j implements com.mbridge.msdk.thrid.okhttp.m {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f38672b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f38673c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final p f38674d;

    public j(String str, String str2, p pVar) {
        this.f38672b = str;
        this.f38673c = str2;
        this.f38674d = pVar;
    }

    private List<InetAddress> a(String str, UnknownHostException unknownHostException) throws UnknownHostException {
        p pVar = this.f38674d;
        if (pVar != null) {
            pVar.c(ImagesContract.LOCAL);
        }
        return i.b().a(str, unknownHostException);
    }

    @Override // com.mbridge.msdk.thrid.okhttp.m
    @NonNull
    public List<InetAddress> a(@NonNull String str) throws UnknownHostException {
        try {
            List<InetAddress> listA = com.mbridge.msdk.thrid.okhttp.m.f38281a.a(str);
            return (listA.isEmpty() && i.b().c(this.f38672b, this.f38673c, str)) ? a(str, new UnknownHostException("DNS result is empty")) : listA;
        } catch (UnknownHostException e11) {
            if (i.b().c(this.f38672b, this.f38673c, str)) {
                return a(str, new UnknownHostException(e11.getMessage()));
            }
            throw e11;
        }
    }
}
