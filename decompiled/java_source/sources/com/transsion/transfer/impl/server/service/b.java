package com.transsion.transfer.impl.server.service;

import com.transsion.transfer.androidasync.http.server.q;
import com.transsion.transfer.impl.entity.FileData;
import com.transsion.transfer.impl.i;
import java.util.Iterator;
import java.util.List;
import kotlin.Triple;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class b implements q {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final a f55803c = new a(null);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final String f55804d = "Transfer-" + b.class.getName();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final com.transsion.transfer.impl.g f55805a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private i f55806b;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final String a() {
            return b.f55804d;
        }
    }

    public b(com.transsion.transfer.impl.g fileHandler, i listener) {
        Intrinsics.h(fileHandler, "fileHandler");
        Intrinsics.h(listener, "listener");
        this.f55805a = fileHandler;
        this.f55806b = listener;
    }

    @Override // com.transsion.transfer.androidasync.http.server.q
    public void b(com.transsion.transfer.androidasync.http.server.b bVar, com.transsion.transfer.androidasync.http.server.d dVar) {
        iv.c.a aVar = iv.c.f65619d;
        Triple tripleC = aVar.c(bVar != null ? bVar.getHeaders() : null);
        int iIntValue = ((Number) tripleC.getSecond()).intValue();
        String str = (String) tripleC.getThird();
        if (iIntValue < 1) {
            if (dVar != null) {
                dVar.send(aVar.a(-1, "protocol version compatible error", ""));
                return;
            }
            return;
        }
        List listD = mv.b.f70015a.d();
        String strA = aVar.a(0, "", listD);
        Iterator it = listD.iterator();
        while (it.hasNext()) {
            String fileRemotePath = ((FileData) it.next()).getFileRemotePath();
            StringBuilder sb2 = new StringBuilder();
            sb2.append("onRequest: ");
            sb2.append(fileRemotePath);
        }
        StringBuilder sb3 = new StringBuilder();
        sb3.append("createResponseJsonObj: ");
        sb3.append(strA);
        if (dVar != null) {
            dVar.send(strA);
        }
        this.f55806b.n(str, listD);
    }
}
