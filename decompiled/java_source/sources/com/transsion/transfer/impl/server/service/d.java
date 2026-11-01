package com.transsion.transfer.impl.server.service;

import com.transsion.transfer.androidasync.http.server.q;
import com.transsion.transfer.impl.i;
import kotlin.Triple;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class d implements q {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final a f55811c = new a(null);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final String f55812d = "Transfer-" + d.class.getName();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final com.transsion.transfer.impl.g f55813a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private i f55814b;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public d(com.transsion.transfer.impl.g fileHandler, i listener) {
        Intrinsics.h(fileHandler, "fileHandler");
        Intrinsics.h(listener, "listener");
        this.f55813a = fileHandler;
        this.f55814b = listener;
    }

    @Override // com.transsion.transfer.androidasync.http.server.q
    public void b(com.transsion.transfer.androidasync.http.server.b bVar, com.transsion.transfer.androidasync.http.server.d dVar) {
        try {
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
            this.f55814b.d(str);
            String strA = aVar.a(0, "noitfy cliente server create success", "");
            StringBuilder sb2 = new StringBuilder();
            sb2.append("createResponseJsonObj: ");
            sb2.append(strA);
            if (dVar != null) {
                dVar.send(strA);
            }
        } catch (Exception e11) {
            if (dVar != null) {
                dVar.send(iv.c.f65619d.a(500, "server error:" + e11.getMessage(), ""));
            }
        }
    }
}
