package com.transsion.transfer.impl.client;

import com.transsion.transfer.androidasync.http.AsyncHttpClient;
import com.transsion.transfer.impl.TaskState;
import com.transsion.transfer.impl.entity.FileData;
import com.transsnet.flow.event.AppScopeVMlProvider;
import com.transsnet.flow.event.FlowEventBus;
import java.io.File;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt;

/* JADX INFO: loaded from: classes6.dex */
public final class o {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static final a f55725r = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final AsyncHttpClient f55726a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f55727b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f55728c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f55729d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final com.transsion.transfer.impl.f f55730e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Function2 f55731f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f55732g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private com.transsion.transfer.androidasync.future.f f55733h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private long f55734i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final List f55735j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final List f55736k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final List f55737l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final List f55738m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final Map f55739n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private boolean f55740o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private Long f55741p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final c f55742q;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public static final class b extends AsyncHttpClient.g {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ FileData f55744b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ long f55745c;

        b(FileData fileData, long j11) {
            this.f55744b = fileData;
            this.f55745c = j11;
        }

        @Override // com.transsion.transfer.androidasync.http.AsyncHttpClient.i, dv.b
        public void a(com.transsion.transfer.androidasync.http.k kVar, long j11, long j12) {
            if (o.this.f55732g && kVar != null) {
                kVar.close();
            }
            super.a(kVar, j11, j12);
            if (System.currentTimeMillis() - o.this.f55734i < 2000) {
                return;
            }
            o.this.f55734i = System.currentTimeMillis();
            com.transsion.transfer.impl.f fVar = o.this.f55730e;
            String fileRemotePath = this.f55744b.getFileRemotePath();
            long j13 = this.f55745c;
            fVar.B(fileRemotePath, j11 + j13, j12 + j13);
        }

        @Override // com.transsion.transfer.androidasync.http.AsyncHttpClient.i, dv.b
        public void b(com.transsion.transfer.androidasync.http.k kVar) {
            o.this.f55730e.I(this.f55744b.getFileRemotePath(), TaskState.TRANSFERRING, this.f55745c, this.f55744b.getFileSize(), 0L, null);
        }

        @Override // bv.g
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public void c(Exception exc, com.transsion.transfer.androidasync.http.k kVar, File file) throws UnsupportedEncodingException {
            o.this.f55740o = false;
            o.this.f55742q.a(this.f55744b, kVar != null ? Integer.valueOf(kVar.b()) : null, exc);
        }
    }

    public static final class c implements Function3 {
        c() {
        }

        /* JADX WARN: Code duplicated, block: B:35:0x017c  */
        /* JADX WARN: Code duplicated, block: B:38:0x018e  */
        /* JADX WARN: Code duplicated, block: B:44:0x01a9  */
        /* JADX WARN: Code duplicated, block: B:51:0x01d0  */
        /* JADX WARN: Code duplicated, block: B:54:0x01e6  */
        /* JADX WARN: Code duplicated, block: B:55:0x01eb  */
        /* JADX WARN: Code duplicated, block: B:58:0x020a  */
        /* JADX WARN: Code duplicated, block: B:60:0x020f  */
        /* JADX WARN: Code duplicated, block: B:68:0x01a4 A[SYNTHETIC] */
        public void a(FileData data, Integer num, Exception exc) throws UnsupportedEncodingException {
            Iterator it;
            Object next;
            FileData fileData;
            TaskState taskState;
            String message;
            Intrinsics.h(data, "data");
            long jCurrentTimeMillis = System.currentTimeMillis();
            Long l11 = o.this.f55741p;
            long jLongValue = jCurrentTimeMillis - (l11 != null ? l11.longValue() : 0L);
            Object obj = null;
            o.this.f55741p = null;
            if (exc == null) {
                IntRange intRange = new IntRange(200, 299);
                if (num == null || !intRange.o(num.intValue())) {
                    it = o.this.f55736k.iterator();
                    do {
                        if (it.hasNext()) {
                            next = null;
                            break;
                        }
                        next = it.next();
                    } while (!Intrinsics.c(((FileData) next).getFileRemotePath(), data.getFileRemotePath()));
                    fileData = (FileData) next;
                    if (fileData != null) {
                        o oVar = o.this;
                        oVar.f55736k.remove(fileData);
                        oVar.f55737l.add(fileData);
                        com.transsion.transfer.impl.f fVar = oVar.f55730e;
                        String fileRemotePath = fileData.getFileRemotePath();
                        if (num == null && num.intValue() == 404) {
                            taskState = TaskState.NO_FILE;
                        } else {
                            taskState = TaskState.ERROR;
                        }
                        TaskState taskState2 = taskState;
                        long length = new File(fileData.getFileReceiveCachePath()).length();
                        long fileSize = fileData.getFileSize();
                        if (exc != null) {
                            message = exc.getMessage();
                        } else {
                            message = null;
                        }
                        fVar.I(fileRemotePath, taskState2, length, fileSize, jLongValue, "errorCode:" + num + ", errorMsg:" + message);
                    }
                    if (exc != null) {
                        exc.printStackTrace();
                    }
                    String message2 = exc != null ? exc.getMessage() : null;
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("invoke: send file error:");
                    sb2.append(message2);
                    sb2.append(", skip it and send next");
                } else {
                    for (Object obj2 : o.this.f55736k) {
                        if (Intrinsics.c(((FileData) obj2).getFileRemotePath(), data.getFileRemotePath())) {
                            obj = obj2;
                            break;
                        }
                    }
                    FileData fileData2 = (FileData) obj;
                    if (fileData2 != null) {
                        File finalFile = fileData2.getFinalFile();
                        o.this.f55736k.remove(fileData2);
                        if (fileData2.verifyFile()) {
                            jv.e eVar = new jv.e(fileData2);
                            FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
                            String name = jv.e.class.getName();
                            Intrinsics.g(name, "getName(...)");
                            flowEventBus.postEvent(name, eVar, 0L);
                            o.this.f55738m.add(fileData2);
                            o.this.f55730e.I(fileData2.getFileRemotePath(), TaskState.FINISH, finalFile.length(), fileData2.getFileSize(), jLongValue, null);
                            Function2 function2 = o.this.f55731f;
                            List list = o.this.f55738m;
                            ArrayList arrayList = new ArrayList(CollectionsKt.v(list, 10));
                            Iterator it2 = list.iterator();
                            while (it2.hasNext()) {
                                arrayList.add(((FileData) it2.next()).getFileRemotePath());
                            }
                            function2.invoke(CollectionsKt.U0(arrayList), Boolean.valueOf(o.this.f55735j.isEmpty()));
                        } else {
                            Integer num2 = (Integer) o.this.f55739n.get(fileData2.getFileRemotePath());
                            int iIntValue = num2 != null ? num2.intValue() : 0;
                            if (iIntValue > 1) {
                                o.this.f55730e.I(fileData2.getFileRemotePath(), TaskState.ERROR, fileData2.getDownloadedSize(), fileData2.getFileSize(), jLongValue, "verify file failed");
                                long fileSize2 = fileData2.getFileSize();
                                long length2 = finalFile.length();
                                StringBuilder sb3 = new StringBuilder();
                                sb3.append("invoke: verify file fail，fileSize:");
                                sb3.append(fileSize2);
                                sb3.append(", saveFile.size:");
                                sb3.append(length2);
                                sb3.append(", and delete cache file ,and retry");
                                fileData2.clearFile();
                            } else {
                                o.this.f55739n.put(fileData2.getFileRemotePath(), Integer.valueOf(iIntValue + 1));
                                o.this.f55736k.add(fileData2);
                            }
                        }
                    }
                }
            } else {
                it = o.this.f55736k.iterator();
                do {
                    if (it.hasNext()) {
                        next = null;
                        break;
                    }
                    next = it.next();
                } while (!Intrinsics.c(((FileData) next).getFileRemotePath(), data.getFileRemotePath()));
                fileData = (FileData) next;
                if (fileData != null) {
                    o oVar2 = o.this;
                    oVar2.f55736k.remove(fileData);
                    oVar2.f55737l.add(fileData);
                    com.transsion.transfer.impl.f fVar2 = oVar2.f55730e;
                    String fileRemotePath2 = fileData.getFileRemotePath();
                    if (num == null) {
                        taskState = TaskState.ERROR;
                    } else {
                        taskState = TaskState.NO_FILE;
                    }
                    TaskState taskState3 = taskState;
                    long length3 = new File(fileData.getFileReceiveCachePath()).length();
                    long fileSize3 = fileData.getFileSize();
                    if (exc != null) {
                        message = exc.getMessage();
                    } else {
                        message = null;
                    }
                    fVar2.I(fileRemotePath2, taskState3, length3, fileSize3, jLongValue, "errorCode:" + num + ", errorMsg:" + message);
                }
                if (exc != null) {
                    exc.printStackTrace();
                }
                if (exc != null) {
                }
                StringBuilder sb4 = new StringBuilder();
                sb4.append("invoke: send file error:");
                sb4.append(message2);
                sb4.append(", skip it and send next");
            }
            o.this.r();
        }

        @Override // kotlin.jvm.functions.Function3
        public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2, Object obj3) throws UnsupportedEncodingException {
            a((FileData) obj, (Integer) obj2, (Exception) obj3);
            return Unit.f67061a;
        }
    }

    public o(AsyncHttpClient httpClient, String clientIp, String transferId, String urlPath, com.transsion.transfer.impl.f listener, Function2 completeListener) {
        Intrinsics.h(httpClient, "httpClient");
        Intrinsics.h(clientIp, "clientIp");
        Intrinsics.h(transferId, "transferId");
        Intrinsics.h(urlPath, "urlPath");
        Intrinsics.h(listener, "listener");
        Intrinsics.h(completeListener, "completeListener");
        this.f55726a = httpClient;
        this.f55727b = clientIp;
        this.f55728c = transferId;
        this.f55729d = urlPath;
        this.f55730e = listener;
        this.f55731f = completeListener;
        this.f55735j = new ArrayList();
        this.f55736k = new ArrayList();
        this.f55737l = new ArrayList();
        this.f55738m = new ArrayList();
        this.f55739n = new LinkedHashMap();
        this.f55741p = 0L;
        this.f55742q = new c();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void r() throws UnsupportedEncodingException {
        if (this.f55732g) {
            return;
        }
        if (this.f55736k.isEmpty() && !this.f55735j.isEmpty()) {
            this.f55736k.add(this.f55735j.remove(0));
        }
        if (this.f55736k.isEmpty() || this.f55740o) {
            return;
        }
        s((FileData) this.f55736k.get(0));
    }

    private final void s(FileData fileData) throws UnsupportedEncodingException {
        File parentFile = new File(fileData.getFileReceiveCachePath()).getParentFile();
        if ((parentFile != null ? parentFile.getFreeSpace() : 0L) < fileData.getFileSize()) {
            this.f55730e.I(fileData.getFileRemotePath(), TaskState.SPACE_LIMIT, 0L, fileData.getFileSize(), 0L, null);
            this.f55736k.remove(fileData);
            r();
            return;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("receiveFile:start:");
        sb2.append(fileData);
        sb2.append(" ");
        this.f55740o = true;
        FileData.Companion companion = FileData.INSTANCE;
        TaskState taskState = TaskState.CONNECTING;
        fileData.setState(companion.a(taskState));
        fileData.filePrepare();
        File tempFile = fileData.getTempFile();
        File tempBackFile = tempFile.exists() ? fileData.getTempBackFile() : tempFile;
        long length = tempFile.exists() ? tempFile.length() : 0L;
        this.f55741p = Long.valueOf(System.currentTimeMillis());
        this.f55730e.I(fileData.getFileRemotePath(), taskState, length, fileData.getFileSize(), 0L, null);
        AsyncHttpClient asyncHttpClient = this.f55726a;
        com.transsion.transfer.androidasync.http.h hVarC = TransferClient.f55665t.c(this.f55729d + "/client/fetchFile?file=" + jv.a.b(fileData.getFileRemotePath()), this.f55727b, this.f55728c);
        StringBuilder sb3 = new StringBuilder();
        sb3.append("transferFile: bytes=");
        sb3.append(length);
        sb3.append("-");
        StringBuilder sb4 = new StringBuilder();
        sb4.append("transferFile: fileData=");
        sb4.append(fileData);
        hVarC.h().a("Range", "bytes=" + length + "-");
        Unit unit = Unit.f67061a;
        this.f55733h = asyncHttpClient.t(hVarC, tempBackFile.getAbsolutePath(), new b(fileData, length));
    }

    public final void p(List files) {
        Object obj;
        Object next;
        Intrinsics.h(files, "files");
        this.f55732g = false;
        ArrayList arrayList = new ArrayList();
        List<FileData> list = files;
        for (FileData fileData : list) {
            Iterator it = this.f55736k.iterator();
            do {
                obj = null;
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
            } while (!Intrinsics.c(fileData.getFileRemotePath(), ((FileData) next).getFileRemotePath()));
            if (next == null) {
                for (Object obj2 : this.f55735j) {
                    if (Intrinsics.c(fileData.getFileRemotePath(), ((FileData) obj2).getFileRemotePath())) {
                        obj = obj2;
                        break;
                    }
                }
                if (obj != null) {
                }
            }
            arrayList.add(fileData);
        }
        if (!arrayList.isEmpty()) {
            files.removeAll(arrayList);
        }
        List list2 = this.f55735j;
        LinkedHashMap linkedHashMap = new LinkedHashMap(RangesKt.f(MapsKt.e(CollectionsKt.v(list2, 10)), 16));
        for (Object obj3 : list2) {
            linkedHashMap.put(((FileData) obj3).getFileRemotePath(), obj3);
        }
        LinkedHashMap linkedHashMap2 = new LinkedHashMap(RangesKt.f(MapsKt.e(CollectionsKt.v(list, 10)), 16));
        for (Object obj4 : list) {
            linkedHashMap2.put(((FileData) obj4).getFileRemotePath(), obj4);
        }
        List listR0 = CollectionsKt.R0(MapsKt.o(linkedHashMap, linkedHashMap2).values());
        this.f55735j.clear();
        this.f55735j.addAll(listR0);
        r();
    }

    public final void q() {
        com.transsion.transfer.androidasync.future.f fVar = this.f55733h;
        if (fVar != null) {
            fVar.cancel(true);
        }
        this.f55732g = true;
        this.f55736k.clear();
        this.f55735j.clear();
        this.f55738m.clear();
        this.f55737l.clear();
        this.f55739n.clear();
    }

    public final void t(FileData fileData) {
        if (fileData != null) {
            if (!this.f55736k.contains(fileData)) {
                this.f55735j.remove(fileData);
            }
            this.f55736k.remove(fileData);
            this.f55736k.add(0, fileData);
        }
        r();
    }
}
