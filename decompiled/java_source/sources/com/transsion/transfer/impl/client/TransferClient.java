package com.transsion.transfer.impl.client;

import android.os.Build;
import com.cloud.tmc.kernel.utils.UrlUtils;
import com.google.android.gms.auth.api.proxy.AuthApiStatusCodes;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.transsion.transfer.androidasync.http.AsyncHttpClient;
import com.transsion.transfer.androidasync.http.b0;
import com.transsion.transfer.impl.PingPongHelper;
import com.transsion.transfer.impl.TaskState;
import com.transsion.transfer.impl.entity.FileData;
import com.transsion.transfer.impl.entity.TransferResponse;
import java.io.File;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Pair;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes6.dex */
public final class TransferClient implements com.transsion.transfer.impl.e {

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static final a f55665t = new a(null);

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private static final String f55666u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private static volatile com.transsion.transfer.impl.e f55667v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private static String f55668w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private static String f55669x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private static String f55670y;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f55671a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f55672b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f55673c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Lazy f55674d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Lazy f55675e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Lazy f55676f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Lazy f55677g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private volatile b0 f55678h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f55679i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final Lazy f55680j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private PingPongHelper f55681k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final Lazy f55682l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private String f55683m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private Function3 f55684n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private boolean f55685o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final PingPongHelper.a f55686p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final b f55687q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final CopyOnWriteArrayList f55688r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final h f55689s;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Unit f(Function0 function0) {
            if (function0 != null) {
                function0.invoke();
            }
            return Unit.f67061a;
        }

        private final String h() {
            return jv.d.b(System.currentTimeMillis() + "&1000&" + Build.BRAND + UrlUtils.AND_MARK + Build.MODEL + UrlUtils.AND_MARK + Build.PRODUCT);
        }

        public static /* synthetic */ void m(a aVar, String str, String str2, String str3, Function0 function0, int i11, Object obj) {
            if ((i11 & 4) != 0) {
                str3 = aVar.h();
            }
            aVar.l(str, str2, str3, function0);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Unit n(Function0 function0) {
            function0.invoke();
            TransferClient.f55667v = null;
            return Unit.f67061a;
        }

        public final com.transsion.transfer.androidasync.http.h c(String url, String clientIp, String transferId) {
            Intrinsics.h(url, "url");
            Intrinsics.h(clientIp, "clientIp");
            Intrinsics.h(transferId, "transferId");
            com.transsion.transfer.androidasync.http.h hVar = new com.transsion.transfer.androidasync.http.h(url);
            hVar.c("clientIp", clientIp);
            hVar.c("transferId", transferId);
            hVar.c("transferProtocolVersion", "1");
            hVar.y(AuthApiStatusCodes.AUTH_API_INVALID_CREDENTIALS);
            return hVar;
        }

        public final com.transsion.transfer.androidasync.http.i d(String url, String clientIp, String transferId) {
            Intrinsics.h(url, "url");
            Intrinsics.h(clientIp, "clientIp");
            Intrinsics.h(transferId, "transferId");
            com.transsion.transfer.androidasync.http.i iVar = new com.transsion.transfer.androidasync.http.i(url);
            iVar.c("clientIp", clientIp);
            iVar.c("transferId", transferId);
            iVar.c("transferProtocolVersion", "1");
            iVar.y(AuthApiStatusCodes.AUTH_API_INVALID_CREDENTIALS);
            return iVar;
        }

        public final void e(final Function0 function0) {
            TransferClient.f55668w = null;
            TransferClient.f55669x = null;
            TransferClient.f55670y = null;
            mv.a.f70013a.b();
            if (TransferClient.f55667v == null) {
                if (function0 != null) {
                    function0.invoke();
                }
            } else {
                com.transsion.transfer.impl.e eVar = TransferClient.f55667v;
                if (eVar != null) {
                    eVar.c(new Function0() { // from class: com.transsion.transfer.impl.client.k
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return TransferClient.a.f(function0);
                        }
                    });
                }
                TransferClient.f55667v = null;
            }
        }

        public final boolean g() {
            String str;
            String str2;
            String str3 = TransferClient.f55668w;
            if (str3 == null) {
                return false;
            }
            if (!(!(str3.length() == 0)) || (str = TransferClient.f55669x) == null) {
                return false;
            }
            if (!(!(str.length() == 0)) || (str2 = TransferClient.f55670y) == null) {
                return false;
            }
            return (str2.length() == 0) ^ true;
        }

        public final com.transsion.transfer.impl.e i() {
            com.transsion.transfer.impl.e transferClient = TransferClient.f55667v;
            if (transferClient == null) {
                synchronized (this) {
                    String str = TransferClient.f55668w;
                    Intrinsics.e(str);
                    String str2 = TransferClient.f55669x;
                    Intrinsics.e(str2);
                    String str3 = TransferClient.f55670y;
                    Intrinsics.e(str3);
                    transferClient = new TransferClient(str, str2, str3, null);
                    TransferClient.f55667v = transferClient;
                }
            }
            return transferClient;
        }

        public final String j() {
            return TransferClient.f55666u;
        }

        public final String k() {
            return TransferClient.f55670y;
        }

        public final void l(String serverIpNew, String clientIpNew, String transferIdNew, final Function0 callback) {
            Intrinsics.h(serverIpNew, "serverIpNew");
            Intrinsics.h(clientIpNew, "clientIpNew");
            Intrinsics.h(transferIdNew, "transferIdNew");
            Intrinsics.h(callback, "callback");
            TransferClient.f55668w = serverIpNew;
            TransferClient.f55669x = clientIpNew;
            TransferClient.f55670y = transferIdNew;
            if (TransferClient.f55667v == null) {
                callback.invoke();
                return;
            }
            com.transsion.transfer.impl.e eVar = TransferClient.f55667v;
            if (eVar != null) {
                eVar.c(new Function0() { // from class: com.transsion.transfer.impl.client.l
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return TransferClient.a.n(callback);
                    }
                });
            }
        }
    }

    public static final class b implements Function2 {
        b() {
        }

        public void a(List list, boolean z10) {
            Intrinsics.h(list, "list");
            TransferClient.this.o0(list);
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
            a((List) obj, ((Boolean) obj2).booleanValue());
            return Unit.f67061a;
        }
    }

    public static final class c extends AsyncHttpClient.j {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Function0 f55691a;

        c(Function0 function0) {
            this.f55691a = function0;
        }

        @Override // bv.g
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public void c(Exception exc, com.transsion.transfer.androidasync.http.k kVar, String str) {
            this.f55691a.invoke();
            TransferClient.f55665t.j();
            String message = exc != null ? exc.getMessage() : null;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("onCompleted: notifyServerClientClose ,");
            sb2.append(message);
        }
    }

    public static final class d extends AsyncHttpClient.j {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Function1 f55692a;

        d(Function1 function1) {
            this.f55692a = function1;
        }

        @Override // bv.g
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public void c(Exception exc, com.transsion.transfer.androidasync.http.k kVar, String str) {
            TransferClient.f55665t.j();
            String message = exc != null ? exc.getMessage() : null;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("onCompleted: sendServerCreateNotify , e:");
            sb2.append(message);
            this.f55692a.invoke(exc);
        }
    }

    public static final class e extends AsyncHttpClient.j {
        e() {
        }

        @Override // bv.g
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public void c(Exception exc, com.transsion.transfer.androidasync.http.k kVar, String str) {
            TransferClient.f55665t.j();
            String message = exc != null ? exc.getMessage() : null;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("onCompleted: notifyServerClientSpaceLimit ,");
            sb2.append(message);
        }
    }

    public static final class f extends AsyncHttpClient.j {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ List f55693a;

        f(List list) {
            this.f55693a = list;
        }

        @Override // bv.g
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public void c(Exception exc, com.transsion.transfer.androidasync.http.k kVar, String str) {
            TransferClient.f55665t.j();
            List list = this.f55693a;
            String message = exc != null ? exc.getMessage() : null;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("onCompleted: notifyServerTaskFinish:");
            sb2.append(list);
            sb2.append(" ,");
            sb2.append(message);
        }
    }

    public static final class g implements PingPongHelper.a {
        g() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Unit c(TransferClient transferClient, boolean z10, String error) {
            Intrinsics.h(error, "error");
            if (z10) {
                TransferClient.f55665t.j();
            } else {
                TransferClient.f55665t.j();
                transferClient.f55678h = null;
                transferClient.f55689s.M();
                transferClient.e0().q();
                transferClient.f55683m = null;
            }
            return Unit.f67061a;
        }

        @Override // com.transsion.transfer.impl.PingPongHelper.a
        public void a(String remoteIp, b0 socket) throws UnsupportedEncodingException {
            Intrinsics.h(remoteIp, "remoteIp");
            Intrinsics.h(socket, "socket");
            TransferClient.f55665t.j();
            boolean z10 = TransferClient.this.f55685o;
            String str = TransferClient.this.f55671a;
            String str2 = TransferClient.this.f55672b;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("client detach socket has closed, disconnectByUser:");
            sb2.append(z10);
            sb2.append(", serverIp: ");
            sb2.append(str);
            sb2.append(", clientIp: ");
            sb2.append(str2);
            sb2.append(", start auto connect");
            socket.close();
            PingPongHelper pingPongHelper = TransferClient.this.f55681k;
            if (pingPongHelper != null) {
                pingPongHelper.o();
            }
            TransferClient.this.f55681k = null;
            if (TransferClient.this.f55685o) {
                return;
            }
            final TransferClient transferClient = TransferClient.this;
            transferClient.W(new Function2() { // from class: com.transsion.transfer.impl.client.m
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return TransferClient.g.c(transferClient, ((Boolean) obj).booleanValue(), (String) obj2);
                }
            });
        }
    }

    public static final class h implements com.transsion.transfer.impl.f {
        h() {
        }

        @Override // com.transsion.transfer.impl.f
        public void B(String remoteFilePath, long j11, long j12) {
            Object next;
            Intrinsics.h(remoteFilePath, "remoteFilePath");
            Iterator it = mv.a.f70013a.d().iterator();
            do {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
            } while (!Intrinsics.c(remoteFilePath, ((FileData) next).getFileRemotePath()));
            FileData fileData = (FileData) next;
            if (fileData != null) {
                fileData.setState(2);
                fileData.setDownloadSize(j11);
                fileData.setFileSize(j12);
            }
            Iterator it2 = TransferClient.this.f55688r.iterator();
            while (it2.hasNext()) {
                ((com.transsion.transfer.impl.f) it2.next()).B(remoteFilePath, j11, j12);
            }
        }

        @Override // com.transsion.transfer.impl.f
        public void I(String remoteFilePath, TaskState state, long j11, long j12, long j13, String str) {
            Object next;
            Intrinsics.h(remoteFilePath, "remoteFilePath");
            Intrinsics.h(state, "state");
            Iterator it = mv.a.f70013a.d().iterator();
            do {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
            } while (!Intrinsics.c(remoteFilePath, ((FileData) next).getFileRemotePath()));
            FileData fileData = (FileData) next;
            if (fileData != null && fileData.getState() != 5 && fileData.getState() != 6 && fileData.getState() != 3 && fileData.getState() != 4 && fileData.getState() != 7) {
                fileData.setState(FileData.INSTANCE.a(state));
                fileData.setDownloadSize(j11);
                fileData.setFileSize(j12);
            }
            Iterator it2 = TransferClient.this.f55688r.iterator();
            while (it2.hasNext()) {
                ((com.transsion.transfer.impl.f) it2.next()).I(remoteFilePath, state, j11, j12, j13, str);
            }
            if (state == TaskState.SPACE_LIMIT) {
                TransferClient.this.n0(remoteFilePath, 7);
            }
        }

        @Override // com.transsion.transfer.impl.f
        public void M() {
            for (FileData fileData : mv.a.f70013a.d()) {
                if (fileData.getState() != 4 && fileData.getState() != 3 && fileData.getState() != 7) {
                    fileData.setState(5);
                }
            }
            Iterator it = TransferClient.this.f55688r.iterator();
            while (it.hasNext()) {
                ((com.transsion.transfer.impl.f) it.next()).M();
            }
        }

        @Override // com.transsion.transfer.impl.f
        public void j(int i11) {
            Iterator it = TransferClient.this.f55688r.iterator();
            while (it.hasNext()) {
                ((com.transsion.transfer.impl.f) it.next()).j(i11);
            }
        }

        @Override // com.transsion.transfer.impl.f
        public void o(String remoteFilePath) {
            Intrinsics.h(remoteFilePath, "remoteFilePath");
            Iterator it = TransferClient.this.f55688r.iterator();
            while (it.hasNext()) {
                ((com.transsion.transfer.impl.f) it.next()).o(remoteFilePath);
            }
        }
    }

    static {
        String name = TransferClient.class.getName();
        Intrinsics.g(name, "getName(...)");
        f55666u = name;
    }

    private TransferClient(String str, String str2, String str3) {
        this.f55671a = str;
        this.f55672b = str2;
        this.f55673c = str3;
        this.f55674d = LazyKt.b(new Function0() { // from class: com.transsion.transfer.impl.client.a
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return TransferClient.U();
            }
        });
        this.f55675e = LazyKt.b(new Function0() { // from class: com.transsion.transfer.impl.client.b
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return TransferClient.S();
            }
        });
        this.f55676f = LazyKt.b(new Function0() { // from class: com.transsion.transfer.impl.client.c
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return TransferClient.a0(this.f55699a);
            }
        });
        this.f55677g = LazyKt.b(new Function0() { // from class: com.transsion.transfer.impl.client.d
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return TransferClient.T(this.f55700a);
            }
        });
        this.f55680j = LazyKt.b(new Function0() { // from class: com.transsion.transfer.impl.client.e
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return TransferClient.i0();
            }
        });
        this.f55682l = LazyKt.b(new Function0() { // from class: com.transsion.transfer.impl.client.f
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return TransferClient.l0(this.f55701a);
            }
        });
        this.f55686p = new g();
        this.f55687q = new b();
        this.f55688r = new CopyOnWriteArrayList();
        this.f55689s = new h();
    }

    public /* synthetic */ TransferClient(String str, String str2, String str3, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, str3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final AsyncHttpClient S() {
        return AsyncHttpClient.w();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final n T(TransferClient transferClient) {
        AsyncHttpClient asyncHttpClientB0 = transferClient.b0();
        Intrinsics.g(asyncHttpClientB0, "<get-client>(...)");
        return new n(asyncHttpClientB0, transferClient.f55672b, transferClient.f55673c, transferClient.g0(), transferClient.f55689s);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String U() {
        return Build.MODEL;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit V(TransferClient transferClient, Function0 function0) {
        b0 b0Var = transferClient.f55678h;
        if (b0Var != null) {
            b0Var.close();
        }
        transferClient.f55679i = false;
        PingPongHelper pingPongHelper = transferClient.f55681k;
        if (pingPongHelper != null) {
            pingPongHelper.o();
        }
        function0.invoke();
        transferClient.e0().q();
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void W(final Function2 function2) throws UnsupportedEncodingException {
        this.f55685o = false;
        AsyncHttpClient asyncHttpClientB0 = b0();
        String str = this.f55672b;
        String str2 = this.f55673c;
        String strD0 = d0();
        Intrinsics.g(strD0, "<get-deviceName>(...)");
        asyncHttpClientB0.L(h0("/pingpong?clientIp=" + str + "&transferId=" + str2 + "&deviceName=" + jv.a.b(strD0)), "socket_connect", new AsyncHttpClient.k() { // from class: com.transsion.transfer.impl.client.h
            @Override // com.transsion.transfer.androidasync.http.AsyncHttpClient.k
            public final void a(Exception exc, b0 b0Var) {
                TransferClient.X(this.f55704a, function2, exc, b0Var);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void X(final TransferClient transferClient, Function2 function2, Exception exc, final b0 b0Var) {
        boolean z10 = false;
        transferClient.f55679i = false;
        if (exc == null) {
            transferClient.f55678h = b0Var;
            b0 b0Var2 = transferClient.f55678h;
            if (b0Var2 != null) {
                b0Var2.J(new b0.c() { // from class: com.transsion.transfer.impl.client.i
                    @Override // com.transsion.transfer.androidasync.http.b0.c
                    public final void a(String str) {
                        TransferClient.Y(this.f55706a, str);
                    }
                });
            }
            b0 b0Var3 = transferClient.f55678h;
            if (b0Var3 != null) {
                b0Var3.p(new bv.a() { // from class: com.transsion.transfer.impl.client.j
                    @Override // bv.a
                    public final void g(Exception exc2) {
                        TransferClient.Z(this.f55707a, b0Var, exc2);
                    }
                });
            }
            String str = transferClient.f55671a;
            Intrinsics.e(b0Var);
            PingPongHelper pingPongHelper = new PingPongHelper(str, false, b0Var, transferClient.f55686p);
            pingPongHelper.n();
            transferClient.f55681k = pingPongHelper;
        } else {
            exc.printStackTrace();
            String str2 = transferClient.f55671a;
            String message = exc.getMessage();
            StringBuilder sb2 = new StringBuilder();
            sb2.append("serverIP:");
            sb2.append(str2);
            sb2.append(" connect error: ");
            sb2.append(message);
            sb2.append(" ");
        }
        if (exc == null && b0Var != null) {
            z10 = true;
        }
        Boolean boolValueOf = Boolean.valueOf(z10);
        String message2 = exc.getMessage();
        if (message2 == null) {
            message2 = "";
        }
        function2.invoke(boolValueOf, message2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void Y(TransferClient transferClient, String str) {
        Intrinsics.e(str);
        transferClient.j0(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void Z(TransferClient transferClient, b0 b0Var, Exception exc) {
        PingPongHelper pingPongHelper = transferClient.f55681k;
        if (pingPongHelper != null) {
            pingPongHelper.o();
        }
        PingPongHelper.a aVar = transferClient.f55686p;
        String str = transferClient.f55671a;
        Intrinsics.e(b0Var);
        aVar.a(str, b0Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final o a0(TransferClient transferClient) {
        AsyncHttpClient asyncHttpClientB0 = transferClient.b0();
        Intrinsics.g(asyncHttpClientB0, "<get-client>(...)");
        return new o(asyncHttpClientB0, transferClient.f55672b, transferClient.f55673c, transferClient.g0(), transferClient.f55689s, transferClient.f55687q);
    }

    private final AsyncHttpClient b0() {
        return (AsyncHttpClient) this.f55675e.getValue();
    }

    private final n c0() {
        return (n) this.f55677g.getValue();
    }

    private final String d0() {
        return (String) this.f55674d.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final o e0() {
        return (o) this.f55676f.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Gson f0() {
        return (Gson) this.f55680j.getValue();
    }

    private final String g0() {
        return (String) this.f55682l.getValue();
    }

    private final String h0(String str) {
        String str2 = g0() + str;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("getUrl baseUrl: ");
        sb2.append(str2);
        return str2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Gson i0() {
        return new Gson();
    }

    private final boolean j0(String str) {
        if (!StringsKt.W(str, "cmd", false, 2, null)) {
            return false;
        }
        try {
            List listS0 = StringsKt.S0(str, new String[]{UrlUtils.QUESTION_MARK}, false, 0, 6, null);
            int i11 = Integer.parseInt((String) StringsKt.S0((CharSequence) listS0.get(0), new String[]{UrlUtils.EQUAL_MARK}, false, 0, 6, null).get(1));
            List listS1 = listS0.size() > 1 ? StringsKt.S0((CharSequence) listS0.get(1), new String[]{UrlUtils.AND_MARK}, false, 0, 6, null) : new ArrayList();
            if (i11 < 0) {
                k0(i11, listS1);
            } else {
                this.f55689s.j(i11);
            }
        } catch (Exception e11) {
            e11.printStackTrace();
        }
        return true;
    }

    private final void k0(int i11, List list) {
        b0 b0Var;
        if (i11 != -2) {
            if (i11 == -1 && (b0Var = this.f55678h) != null) {
                b0Var.close();
                return;
            }
            return;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            List listS0 = StringsKt.S0((String) it.next(), new String[]{UrlUtils.EQUAL_MARK}, false, 0, 6, null);
            linkedHashMap.put(listS0.get(0), jv.a.a((String) listS0.get(1)));
        }
        String str = (String) linkedHashMap.get("deviceName");
        this.f55683m = str;
        Function3 function3 = this.f55684n;
        if (function3 != null) {
            function3.invoke(str, Boolean.TRUE, "client");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String l0(TransferClient transferClient) {
        return "http://" + transferClient.f55671a + ":9890";
    }

    private final void m0(Function0 function0) {
        b0().v(f55665t.c(h0("/client/notifyClientClose"), this.f55672b, this.f55673c), new c(function0));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void n0(String str, int i11) {
        AsyncHttpClient asyncHttpClientB0 = b0();
        com.transsion.transfer.androidasync.http.i iVarD = f55665t.d(h0("/client/notifyFileTaskError"), this.f55672b, this.f55673c);
        ArrayList arrayList = new ArrayList();
        arrayList.add(new Pair(str, Integer.valueOf(i11)));
        iVarD.w(new cv.f(f0().toJson(arrayList)));
        asyncHttpClientB0.v(iVarD, new e());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void o0(List list) {
        if (list.isEmpty()) {
            return;
        }
        AsyncHttpClient asyncHttpClientB0 = b0();
        com.transsion.transfer.androidasync.http.i iVarD = f55665t.d(h0("/client/notifyFileTaskFinish"), this.f55672b, this.f55673c);
        iVarD.w(new cv.f(f0().toJson(list)));
        asyncHttpClientB0.v(iVarD, new f(list));
    }

    @Override // com.transsion.transfer.impl.e
    public void a(Function1 callback) {
        Intrinsics.h(callback, "callback");
        b0().v(f55665t.c(h0("/client/notifyServerCreate"), this.f55672b, this.f55673c), new d(callback));
    }

    @Override // com.transsion.transfer.impl.e
    public void b(Function3 function3) {
        this.f55684n = function3;
    }

    @Override // com.transsion.transfer.impl.e
    public void c(final Function0 callback) {
        Intrinsics.h(callback, "callback");
        this.f55685o = true;
        m0(new Function0() { // from class: com.transsion.transfer.impl.client.g
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return TransferClient.V(this.f55702a, callback);
            }
        });
        this.f55688r.clear();
    }

    @Override // com.transsion.transfer.impl.e
    public void d(Function2 listener) throws UnsupportedEncodingException {
        b0 b0Var;
        b0 b0Var2;
        Intrinsics.h(listener, "listener");
        if ((this.f55678h == null || (b0Var2 = this.f55678h) == null || !b0Var2.isOpen()) && !this.f55679i) {
            this.f55679i = true;
            W(listener);
            return;
        }
        b0 b0Var3 = this.f55678h;
        b0 b0Var4 = this.f55678h;
        Boolean boolValueOf = b0Var4 != null ? Boolean.valueOf(b0Var4.isOpen()) : null;
        boolean z10 = this.f55679i;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("connect: socket:");
        sb2.append(b0Var3);
        sb2.append(", socket#isOpen:");
        sb2.append(boolValueOf);
        sb2.append(", socketConnecting:");
        sb2.append(z10);
        listener.invoke(Boolean.valueOf((this.f55678h == null || (b0Var = this.f55678h) == null || !b0Var.isOpen()) ? false : true), "connect is process");
    }

    @Override // com.transsion.transfer.impl.e
    public void e(final String root, final Function2 callback) {
        Intrinsics.h(root, "root");
        Intrinsics.h(callback, "callback");
        b0().v(f55665t.c(h0("/client/getTransferFilesList"), this.f55672b, this.f55673c), new AsyncHttpClient.j() { // from class: com.transsion.transfer.impl.client.TransferClient$fetchList$1
            @Override // bv.g
            /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
            public void c(Exception exc, com.transsion.transfer.androidasync.http.k kVar, String str) {
                Object objM454constructorimpl;
                TransferClient.f55665t.j();
                StringBuilder sb2 = new StringBuilder();
                sb2.append("fetchList onCompleted: result:");
                sb2.append(str);
                sb2.append(" and e:");
                sb2.append(exc);
                if (exc != null) {
                    callback.invoke(null, exc);
                    return;
                }
                TransferClient transferClient = this;
                Function2 function2 = callback;
                String str2 = root;
                try {
                    Result.Companion companion = Result.INSTANCE;
                    TransferResponse transferResponse = (TransferResponse) transferClient.f0().fromJson(str, new TypeToken<TransferResponse<List<FileData>>>() { // from class: com.transsion.transfer.impl.client.TransferClient$fetchList$1$onCompleted$1$data$1
                    }.getType());
                    if (transferResponse.getCode() == 0) {
                        for (FileData fileData : (Iterable) transferResponse.getData()) {
                            com.transsion.transfer.impl.server.service.b.f55803c.a();
                            String fileRemotePath = fileData.getFileRemotePath();
                            StringBuilder sb3 = new StringBuilder();
                            sb3.append("fetchList#onCompleted: ");
                            sb3.append(fileRemotePath);
                            if (fileData.getFileReceiveCachePath().length() == 0 || new File(fileData.getFileReceiveCachePath()).isDirectory()) {
                                String absolutePath = new File(str2, fileData.getFileName()).getAbsolutePath();
                                Intrinsics.g(absolutePath, "getAbsolutePath(...)");
                                fileData.setFileReceiveCachePath(absolutePath);
                            }
                        }
                        mv.a.f70013a.a((List) transferResponse.getData());
                        function2.invoke(transferResponse.getData(), null);
                    } else {
                        function2.invoke(null, null);
                    }
                    objM454constructorimpl = Result.m454constructorimpl(Unit.f67061a);
                } catch (Throwable th2) {
                    Result.Companion companion2 = Result.INSTANCE;
                    objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
                }
                Result.m453boximpl(objM454constructorimpl);
            }
        });
    }

    @Override // com.transsion.transfer.impl.e
    public void f(FileData fileData) {
        Intrinsics.h(fileData, "fileData");
        e0().t(fileData);
    }

    @Override // com.transsion.transfer.impl.e
    public void g(com.transsion.transfer.impl.f listener) {
        Intrinsics.h(listener, "listener");
        this.f55688r.remove(listener);
    }

    @Override // com.transsion.transfer.impl.e
    public boolean h() {
        b0 b0Var = this.f55678h;
        return b0Var != null && b0Var.isOpen();
    }

    @Override // com.transsion.transfer.impl.e
    public void i(String root, List files, Function1 notifyFileListener) {
        Intrinsics.h(root, "root");
        Intrinsics.h(files, "files");
        Intrinsics.h(notifyFileListener, "notifyFileListener");
        ArrayList arrayList = new ArrayList();
        c0().e(files);
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : files) {
            FileData fileData = (FileData) obj;
            boolean zVerifyFile = fileData.verifyFile();
            if (zVerifyFile) {
                this.f55689s.I(fileData.getFileRemotePath(), TaskState.FINISH, fileData.getFileSize(), fileData.getFileSize(), -1L, null);
                arrayList.add(fileData.getFileRemotePath());
            }
            if (!zVerifyFile) {
                arrayList2.add(obj);
            }
        }
        List listU0 = CollectionsKt.U0(arrayList2);
        notifyFileListener.invoke(CollectionsKt.U0(arrayList));
        o0(arrayList);
        StringBuilder sb2 = new StringBuilder();
        sb2.append("transferFiles: ");
        sb2.append(listU0);
        e0().p(listU0);
    }

    @Override // com.transsion.transfer.impl.e
    public String j() {
        return this.f55683m;
    }

    @Override // com.transsion.transfer.impl.e
    public void k(com.transsion.transfer.impl.f listener) {
        Intrinsics.h(listener, "listener");
        this.f55688r.remove(listener);
        this.f55688r.add(listener);
    }
}
