package iv;

import android.content.Context;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import com.transsion.transfer.androidasync.AsyncServer;
import com.transsion.transfer.androidasync.http.b0;
import com.transsion.transfer.androidasync.http.server.AsyncHttpServer;
import com.transsion.transfer.impl.PingPongHelper;
import com.transsion.transfer.impl.TaskState;
import com.transsion.transfer.impl.entity.FileData;
import com.transsion.transfer.impl.i;
import java.io.UnsupportedEncodingException;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public final class h implements com.transsion.transfer.impl.h {

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static final a f65636s = new a(null);

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private static final String f65637t = h.class.getName();

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private static volatile com.transsion.transfer.impl.h f65638u;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f65639a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f65640b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f65641c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private com.transsion.transfer.impl.g f65642d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f65643e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Handler f65644f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private d f65645g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final AsyncHttpServer f65646h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final CopyOnWriteArrayList f65647i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final CopyOnWriteArrayList f65648j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final Lazy f65649k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final PingPongHelper.a f65650l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final Runnable f65651m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final ConcurrentHashMap f65652n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final ConcurrentHashMap f65653o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final ConcurrentHashMap f65654p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final ConcurrentHashMap f65655q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final CopyOnWriteArrayList f65656r;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final void a() {
            com.transsion.transfer.impl.h hVar = h.f65638u;
            if (hVar != null) {
                hVar.d();
            }
            h.f65638u = null;
        }

        public final com.transsion.transfer.impl.h b(Context context) {
            Intrinsics.h(context, "context");
            com.transsion.transfer.impl.h hVar = h.f65638u;
            if (hVar == null) {
                synchronized (this) {
                    hVar = new h(context, null);
                    h.f65638u = hVar;
                }
            }
            return hVar;
        }
    }

    public static final class b implements i {
        b() {
        }

        @Override // com.transsion.transfer.impl.i
        public void K(String clientIp, String remoteFilePath, TaskState state, long j11, long j12) {
            Object obj;
            Object next;
            Intrinsics.h(clientIp, "clientIp");
            Intrinsics.h(remoteFilePath, "remoteFilePath");
            Intrinsics.h(state, "state");
            Iterator it = mv.b.f70015a.d().iterator();
            do {
                obj = null;
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
            } while (!Intrinsics.c(remoteFilePath, ((FileData) next).getFileRemotePath()));
            FileData fileData = (FileData) next;
            if (fileData != null) {
                h hVar = h.this;
                if (fileData.getState() != 5 && fileData.getState() != 6 && fileData.getState() != 3 && fileData.getState() != 4) {
                    fileData.setState(FileData.INSTANCE.a(state));
                    fileData.setDownloadSize(j11);
                    fileData.setFileSize(j12);
                }
                Iterator it2 = hVar.f65647i.iterator();
                while (it2.hasNext()) {
                    ((i) it2.next()).K(clientIp, remoteFilePath, state, j11, j12);
                }
            }
            for (Object obj2 : mv.b.f70015a.d()) {
                if (Intrinsics.c(remoteFilePath, ((FileData) obj2).getCoverUrl())) {
                    obj = obj2;
                    break;
                }
            }
            if (((FileData) obj) != null) {
                Iterator it3 = h.this.f65647i.iterator();
                while (it3.hasNext()) {
                    ((i) it3.next()).K(clientIp, remoteFilePath, state, j11, j12);
                }
            }
        }

        @Override // com.transsion.transfer.impl.i
        public void d(String clientIp) {
            Intrinsics.h(clientIp, "clientIp");
            Iterator it = h.this.f65647i.iterator();
            while (it.hasNext()) {
                ((i) it.next()).d(clientIp);
            }
        }

        @Override // com.transsion.transfer.impl.i
        public void h(String clientIp, String remoteFilePath, long j11, long j12) {
            Object next;
            Intrinsics.h(clientIp, "clientIp");
            Intrinsics.h(remoteFilePath, "remoteFilePath");
            Iterator it = mv.b.f70015a.d().iterator();
            do {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
            } while (!Intrinsics.c(((FileData) next).getFileRemotePath(), remoteFilePath));
            FileData fileData = (FileData) next;
            if (fileData != null) {
                fileData.setState(2);
                fileData.setDownloadSize(j11);
                fileData.setFileSize(j12);
            }
            Iterator it2 = h.this.f65647i.iterator();
            while (it2.hasNext()) {
                ((i) it2.next()).h(clientIp, remoteFilePath, j11, j12);
            }
        }

        @Override // com.transsion.transfer.impl.i
        public void m(String clientIp) {
            Object next;
            Intrinsics.h(clientIp, "clientIp");
            Iterator it = h.this.f65647i.iterator();
            while (it.hasNext()) {
                ((i) it.next()).m(clientIp);
            }
            Iterator it2 = mv.b.f70015a.d().iterator();
            do {
                if (!it2.hasNext()) {
                    next = null;
                    break;
                }
                next = it2.next();
            } while (((FileData) next).getState() != 2);
            FileData fileData = (FileData) next;
            if (fileData != null) {
                fileData.setState(4);
            }
        }

        @Override // com.transsion.transfer.impl.i
        public void n(String clientIp, List files) {
            Intrinsics.h(clientIp, "clientIp");
            Intrinsics.h(files, "files");
            Iterator it = h.this.f65647i.iterator();
            while (it.hasNext()) {
                ((i) it.next()).n(clientIp, files);
            }
        }

        @Override // com.transsion.transfer.impl.i
        public void p(String clientIp) {
            Intrinsics.h(clientIp, "clientIp");
            for (FileData fileData : mv.b.f70015a.d()) {
                if (fileData.getState() != 4 && fileData.getState() != 3 && fileData.getState() != 7) {
                    fileData.setState(5);
                }
            }
            b0 b0Var = (b0) h.this.f65652n.get(clientIp);
            if (b0Var != null) {
                b0Var.close();
            }
            Iterator it = h.this.f65647i.iterator();
            while (it.hasNext()) {
                ((i) it.next()).p(clientIp);
            }
        }
    }

    public static final class c implements PingPongHelper.a {
        c() {
        }

        @Override // com.transsion.transfer.impl.PingPongHelper.a
        public void a(String remoteIp, b0 socket) {
            Intrinsics.h(remoteIp, "remoteIp");
            Intrinsics.h(socket, "socket");
            String unused = h.f65637t;
            int iHashCode = h.this.hashCode();
            StringBuilder sb2 = new StringBuilder();
            sb2.append("server detach socket has closed, clientIp: ");
            sb2.append(remoteIp);
            sb2.append(", ");
            sb2.append(iHashCode);
            sb2.append(", delay check again");
            if (h.this.f65643e) {
                h.this.f65656r.add(remoteIp);
                h.this.f65644f.postDelayed(h.this.f65651m, 3000L);
            }
        }
    }

    public static final class d implements com.transsion.transfer.impl.g {
        d() {
        }

        @Override // com.transsion.transfer.impl.g
        public void a(String clientIp, String clientDeviceName) {
            Intrinsics.h(clientIp, "clientIp");
            Intrinsics.h(clientDeviceName, "clientDeviceName");
            String unused = h.f65637t;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("notifyClientInfoUpdate:clientIp:");
            sb2.append(clientIp);
            sb2.append(", clientDeviceName:");
            sb2.append(clientDeviceName);
            com.transsion.transfer.impl.g gVar = h.this.f65642d;
            if (gVar != null) {
                gVar.a(clientIp, clientDeviceName);
            }
        }

        @Override // com.transsion.transfer.impl.g
        public String b() {
            String strB;
            com.transsion.transfer.impl.g gVar = h.this.f65642d;
            if (gVar != null && (strB = gVar.b()) != null) {
                return strB;
            }
            String MODEL = Build.MODEL;
            Intrinsics.g(MODEL, "MODEL");
            return MODEL;
        }
    }

    private h(Context context) {
        this.f65639a = context;
        this.f65641c = "";
        this.f65644f = new Handler(Looper.getMainLooper());
        this.f65645g = new d();
        AsyncHttpServer asyncHttpServer = new AsyncHttpServer();
        asyncHttpServer.j("/pingpong*", "socket_connect", new AsyncHttpServer.a() { // from class: iv.d
            @Override // com.transsion.transfer.androidasync.http.server.AsyncHttpServer.a
            public final void a(b0 b0Var, com.transsion.transfer.androidasync.http.server.b bVar) throws UnsupportedEncodingException {
                h.C(this.f65629a, b0Var, bVar);
            }
        });
        this.f65646h = asyncHttpServer;
        this.f65647i = new CopyOnWriteArrayList();
        this.f65648j = new CopyOnWriteArrayList();
        this.f65649k = LazyKt.b(new Function0() { // from class: iv.e
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return h.z(this.f65630a);
            }
        });
        this.f65650l = new c();
        this.f65651m = new Runnable() { // from class: iv.f
            @Override // java.lang.Runnable
            public final void run() {
                h.y(this.f65631a);
            }
        };
        this.f65652n = new ConcurrentHashMap();
        this.f65653o = new ConcurrentHashMap();
        this.f65654p = new ConcurrentHashMap();
        this.f65655q = new ConcurrentHashMap();
        this.f65656r = new CopyOnWriteArrayList();
    }

    public /* synthetic */ h(Context context, DefaultConstructorMarker defaultConstructorMarker) {
        this(context);
    }

    private final iv.c A() {
        return (iv.c) this.f65649k.getValue();
    }

    private final void B(String str) throws UnsupportedEncodingException {
        b0 b0Var = (b0) this.f65652n.get(str);
        StringBuilder sb2 = new StringBuilder();
        sb2.append("notifyClientCMD: clientIp:");
        sb2.append(str);
        sb2.append(" , socket:");
        sb2.append(b0Var);
        if (b0Var != null) {
            b0Var.send("cmd=-2?deviceName=" + jv.a.b(this.f65645g.b()));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void C(final h hVar, final b0 b0Var, com.transsion.transfer.androidasync.http.server.b bVar) throws UnsupportedEncodingException {
        b0 b0Var2;
        final String string = bVar.h().getString("clientIp");
        final String string2 = bVar.h().getString("transferId");
        Intrinsics.e(string2);
        hVar.f65641c = string2;
        String string3 = bVar.h().getString("deviceName");
        Intrinsics.g(string3, "getString(...)");
        String strA = jv.a.a(string3);
        StringBuilder sb2 = new StringBuilder();
        sb2.append("find client connect, clientIp:");
        sb2.append(string);
        sb2.append(", clientDeviceName");
        sb2.append(strA);
        sb2.append(", transferId:");
        sb2.append(string2);
        int size = hVar.f65652n.size();
        ConcurrentHashMap concurrentHashMap = hVar.f65652n;
        StringBuilder sb3 = new StringBuilder();
        sb3.append("find client connect, clientSocketMap: ");
        sb3.append(size);
        sb3.append(", ");
        sb3.append(concurrentHashMap);
        hVar.f65656r.remove(string);
        hVar.f65643e = true;
        hVar.f65644f.removeCallbacks(hVar.f65651m);
        if (hVar.f65652n.contains(string) && (b0Var2 = (b0) hVar.f65652n.remove(string)) != null) {
            PingPongHelper.a aVar = (PingPongHelper.a) hVar.f65654p.remove(b0Var2);
            if (aVar != null) {
                Intrinsics.e(string);
                aVar.a(string, b0Var2);
            }
            b0Var2.close();
        }
        int size2 = hVar.f65648j.size();
        CopyOnWriteArrayList copyOnWriteArrayList = hVar.f65648j;
        StringBuilder sb4 = new StringBuilder();
        sb4.append("find client connect, clientConnectListeners:");
        sb4.append(size2);
        sb4.append(", ");
        sb4.append(copyOnWriteArrayList);
        sb4.append(" , ");
        sb4.append(hVar);
        for (Function4 function4 : hVar.f65648j) {
            Intrinsics.e(string);
            Intrinsics.e(string2);
            function4.invoke(string, string2, Boolean.TRUE, null);
        }
        hVar.f65653o.put(string, strA);
        hVar.f65652n.put(string, b0Var);
        d dVar = hVar.f65645g;
        StringBuilder sb5 = new StringBuilder();
        sb5.append("find client connect, proxyFileHandler:");
        sb5.append(dVar);
        d dVar2 = hVar.f65645g;
        Intrinsics.e(string);
        dVar2.a(string, strA);
        ConcurrentHashMap concurrentHashMap2 = hVar.f65655q;
        Intrinsics.e(b0Var);
        PingPongHelper pingPongHelper = new PingPongHelper(string, true, b0Var, hVar.f65650l);
        pingPongHelper.n();
        concurrentHashMap2.put(b0Var, pingPongHelper);
        b0Var.p(new bv.a() { // from class: iv.g
            @Override // bv.a
            public final void g(Exception exc) {
                h.D(string, hVar, b0Var, string2, exc);
            }
        });
        hVar.B(string);
        hVar.f65640b = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void D(String str, h hVar, b0 b0Var, String str2, Exception exc) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("server socket close callback ip: ");
        sb2.append(str);
        PingPongHelper.a aVar = hVar.f65650l;
        Intrinsics.e(str);
        Intrinsics.e(b0Var);
        aVar.a(str, b0Var);
        for (Function4 function4 : hVar.f65648j) {
            Intrinsics.e(str2);
            function4.invoke(str, str2, Boolean.FALSE, "normal");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void y(h hVar) {
        if (hVar.f65656r.isEmpty()) {
            return;
        }
        for (i iVar : hVar.f65647i) {
            String str = (String) CollectionsKt.i0(hVar.f65656r);
            if (str == null) {
                str = "";
            }
            iVar.p(str);
        }
        f65636s.a();
        hVar.f65643e = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final iv.c z(h hVar) {
        return new iv.c(hVar.f65645g, hVar.new b());
    }

    @Override // com.transsion.transfer.impl.h
    public void a(i listener) {
        Intrinsics.h(listener, "listener");
        this.f65647i.remove(listener);
        this.f65647i.add(listener);
    }

    @Override // com.transsion.transfer.impl.h
    public void b(Function4 listener) {
        Intrinsics.h(listener, "listener");
        this.f65648j.remove(listener);
        this.f65648j.add(listener);
    }

    @Override // com.transsion.transfer.impl.h
    public List c() {
        Set setKeySet = this.f65652n.keySet();
        Intrinsics.g(setKeySet, "<get-keys>(...)");
        return CollectionsKt.U0(CollectionsKt.R0(setKeySet));
    }

    @Override // com.transsion.transfer.impl.h
    public void d() {
        for (Map.Entry entry : this.f65652n.entrySet()) {
            ((b0) entry.getValue()).send("cmd=-1");
            ((b0) entry.getValue()).close();
        }
        this.f65652n.clear();
        this.f65653o.clear();
        this.f65654p.clear();
        for (Map.Entry entry2 : this.f65655q.entrySet()) {
            ((b0) entry2.getKey()).close();
            ((PingPongHelper) entry2.getValue()).o();
        }
        this.f65655q.clear();
        this.f65648j.clear();
        AsyncServer.r().L();
        this.f65646h.u();
        this.f65640b = false;
    }

    @Override // com.transsion.transfer.impl.h
    public void e(com.transsion.transfer.impl.g gVar) {
        this.f65642d = gVar;
    }

    @Override // com.transsion.transfer.impl.h
    public void f(String clientIp, int i11) {
        Intrinsics.h(clientIp, "clientIp");
        b0 b0Var = (b0) this.f65652n.get(clientIp);
        StringBuilder sb2 = new StringBuilder();
        sb2.append("notifyClientCMD: clientIp:");
        sb2.append(clientIp);
        sb2.append(" , socket:");
        sb2.append(b0Var);
        sb2.append(", cmd:");
        sb2.append(i11);
        if (b0Var != null) {
            b0Var.send("cmd=" + i11);
        }
    }

    @Override // com.transsion.transfer.impl.h
    public void g(i listener) {
        Intrinsics.h(listener, "listener");
        this.f65647i.remove(listener);
    }

    @Override // com.transsion.transfer.impl.h
    public void h(Function4 listener) {
        Intrinsics.h(listener, "listener");
        this.f65648j.remove(listener);
    }

    @Override // com.transsion.transfer.impl.h
    public List i() {
        Collection collectionValues = this.f65653o.values();
        Intrinsics.g(collectionValues, "<get-values>(...)");
        return CollectionsKt.U0(CollectionsKt.R0(collectionValues));
    }

    @Override // com.transsion.transfer.impl.h
    public boolean isRunning() {
        return this.f65640b;
    }

    @Override // com.transsion.transfer.impl.h
    public String j() {
        return this.f65641c;
    }

    @Override // com.transsion.transfer.impl.h
    public void open() {
        if (this.f65640b) {
            return;
        }
        for (iv.c.b bVar : A().e()) {
            String strA = bVar.a();
            String strB = bVar.b();
            StringBuilder sb2 = new StringBuilder();
            sb2.append("open: ");
            sb2.append(strA);
            sb2.append(", ");
            sb2.append(strB);
            if (Intrinsics.c(bVar.a(), "get")) {
                this.f65646h.f(bVar.b(), bVar.c());
            } else if (Intrinsics.c(bVar.a(), "post")) {
                this.f65646h.i(bVar.b(), bVar.c());
            }
        }
        this.f65646h.o(AsyncServer.r(), 9890);
    }
}
