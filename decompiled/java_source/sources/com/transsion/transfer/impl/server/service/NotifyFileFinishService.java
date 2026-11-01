package com.transsion.transfer.impl.server.service;

import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.transsion.transfer.androidasync.http.server.q;
import com.transsion.transfer.impl.TaskState;
import com.transsion.transfer.impl.i;
import java.io.File;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Triple;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class NotifyFileFinishService implements q {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final a f55788d = new a(null);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final String f55789e = "Transfer-" + NotifyFileFinishService.class.getName();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final com.transsion.transfer.impl.g f55790a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private i f55791b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Lazy f55792c;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public NotifyFileFinishService(com.transsion.transfer.impl.g fileHandler, i listener) {
        Intrinsics.h(fileHandler, "fileHandler");
        Intrinsics.h(listener, "listener");
        this.f55790a = fileHandler;
        this.f55791b = listener;
        this.f55792c = LazyKt.b(new Function0() { // from class: com.transsion.transfer.impl.server.service.f
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return NotifyFileFinishService.d();
            }
        });
    }

    private final Gson c() {
        return (Gson) this.f55792c.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Gson d() {
        return new Gson();
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
            cv.f fVar = bVar != null ? (cv.f) bVar.D() : null;
            if (!(fVar instanceof cv.f)) {
                fVar = null;
            }
            List list = (List) c().fromJson(fVar != null ? fVar.a() : null, new TypeToken<List<String>>() { // from class: com.transsion.transfer.impl.server.service.NotifyFileFinishService$onRequest$array$1
            }.getType());
            if (list != null) {
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    File file = new File((String) it.next());
                    if (file.exists()) {
                        i iVar = this.f55791b;
                        String absolutePath = file.getAbsolutePath();
                        Intrinsics.g(absolutePath, "getAbsolutePath(...)");
                        iVar.K(str, absolutePath, TaskState.FINISH, file.length(), file.length());
                    }
                }
            }
            String strA = iv.c.f65619d.a(0, "noitfy server success", "");
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
