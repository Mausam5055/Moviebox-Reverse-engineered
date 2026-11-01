package iv;

import com.google.gson.Gson;
import com.transsion.transfer.androidasync.http.Headers;
import com.transsion.transfer.androidasync.http.server.q;
import com.transsion.transfer.impl.i;
import com.transsion.transfer.impl.server.service.NotifyFileErrorService;
import com.transsion.transfer.impl.server.service.NotifyFileFinishService;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Triple;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public final class c {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final a f65619d = new a(null);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final String f65620e = c.class.getName();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final Lazy f65621f = LazyKt.b(new Function0() { // from class: iv.a
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return c.f();
        }
    });

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final com.transsion.transfer.impl.g f65622a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private i f65623b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Lazy f65624c;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private final Gson b() {
            return (Gson) c.f65621f.getValue();
        }

        public final String a(int i11, String errorMsg, Object obj) {
            Intrinsics.h(errorMsg, "errorMsg");
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            linkedHashMap.put("code", Integer.valueOf(i11));
            linkedHashMap.put("errorMsg", errorMsg);
            if (obj == null) {
                linkedHashMap.put("data", "");
            } else {
                linkedHashMap.put("data", obj);
            }
            String json = b().toJson(linkedHashMap);
            Intrinsics.e(json);
            return json;
        }

        public final Triple c(Headers headers) {
            String strC;
            String strC2;
            String strC3;
            String str = "";
            if (headers == null || (strC = headers.c("transferId")) == null) {
                strC = "";
            }
            int i11 = (headers == null || (strC3 = headers.c("transferProtocolVersion")) == null) ? 1 : Integer.parseInt(strC3);
            if (headers != null && (strC2 = headers.c("clientIp")) != null) {
                str = strC2;
            }
            return new Triple(strC, Integer.valueOf(i11), str);
        }
    }

    public static final class b {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public static final a f65625d = new a(null);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String f65626a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final String f65627b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final q f65628c;

        public static final class a {
            private a() {
            }

            public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }
        }

        public b(String method, String path, q requestCallback) {
            Intrinsics.h(method, "method");
            Intrinsics.h(path, "path");
            Intrinsics.h(requestCallback, "requestCallback");
            this.f65626a = method;
            this.f65627b = path;
            this.f65628c = requestCallback;
        }

        public final String a() {
            return this.f65626a;
        }

        public final String b() {
            return this.f65627b;
        }

        public final q c() {
            return this.f65628c;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            return Intrinsics.c(this.f65626a, bVar.f65626a) && Intrinsics.c(this.f65627b, bVar.f65627b) && Intrinsics.c(this.f65628c, bVar.f65628c);
        }

        public int hashCode() {
            return (((this.f65626a.hashCode() * 31) + this.f65627b.hashCode()) * 31) + this.f65628c.hashCode();
        }

        public String toString() {
            return "Service(method=" + this.f65626a + ", path=" + this.f65627b + ", requestCallback=" + this.f65628c + ")";
        }
    }

    public c(com.transsion.transfer.impl.g fileHandler, i listener) {
        Intrinsics.h(fileHandler, "fileHandler");
        Intrinsics.h(listener, "listener");
        this.f65622a = fileHandler;
        this.f65623b = listener;
        this.f65624c = LazyKt.b(new Function0() { // from class: iv.b
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return c.g(this.f65618a);
            }
        });
    }

    private final List d() {
        return (List) this.f65624c.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Gson f() {
        return new Gson();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List g(c cVar) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new b("get", "/client/getTransferFilesList", new com.transsion.transfer.impl.server.service.b(cVar.f65622a, cVar.f65623b)));
        arrayList.add(new b("get", "/client/fetchFile*", new com.transsion.transfer.impl.server.service.a(cVar.f65622a, cVar.f65623b)));
        arrayList.add(new b("get", "/client/notifyServerCreate", new com.transsion.transfer.impl.server.service.d(cVar.f65622a, cVar.f65623b)));
        arrayList.add(new b("get", "/client/notifyClientClose", new com.transsion.transfer.impl.server.service.c(cVar.f65622a, cVar.f65623b)));
        arrayList.add(new b("get", "/client/notifyServerSendComplete", new com.transsion.transfer.impl.server.service.g(cVar.f65622a, cVar.f65623b)));
        arrayList.add(new b("post", "/client/notifyFileTaskFinish", new NotifyFileFinishService(cVar.f65622a, cVar.f65623b)));
        arrayList.add(new b("post", "/client/notifyFileTaskError", new NotifyFileErrorService(cVar.f65622a, cVar.f65623b)));
        return arrayList;
    }

    public final List e() {
        return d();
    }
}
