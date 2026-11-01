package com.transsion.transfer.impl;

import android.app.Application;
import android.os.Environment;
import androidx.p009lifecycle.LiveData;
import androidx.p009lifecycle.u0;
import com.blankj.utilcode.util.Utils;
import com.transsion.transfer.impl.client.TransferClient;
import com.transsion.transfer.impl.entity.FileData;
import java.io.File;
import java.util.List;
import kotlin.Pair;
import kotlin.Triple;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes6.dex */
public final class ClientViewModel extends androidx.p009lifecycle.b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Application f55603b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final androidx.p009lifecycle.b0 f55604c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final jv.b f55605d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final jv.b f55606e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final jv.b f55607f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final jv.b f55608g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private String f55609h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final a f55610i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final b f55611j;

    public static final class a implements Function3 {
        a() {
        }

        public void a(String str, boolean z10, String str2) {
            ClientViewModel.this.f55609h = str;
            ClientViewModel.this.f55604c.n(Boolean.valueOf(z10));
            if (z10) {
                return;
            }
            kv.b.f68395a.j(str2, TransferClient.f55665t.k());
        }

        @Override // kotlin.jvm.functions.Function3
        public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2, Object obj3) {
            a((String) obj, ((Boolean) obj2).booleanValue(), (String) obj3);
            return Unit.f67061a;
        }
    }

    public static final class b implements f {
        b() {
        }

        @Override // com.transsion.transfer.impl.f
        public void B(String remoteFilePath, long j11, long j12) {
            Intrinsics.h(remoteFilePath, "remoteFilePath");
            ClientViewModel.this.f55607f.n(new Pair(remoteFilePath, new Triple(TaskState.TRANSFERRING, Long.valueOf(j11), Long.valueOf(j12))));
        }

        @Override // com.transsion.transfer.impl.f
        public void I(String remoteFilePath, TaskState state, long j11, long j12, long j13, String str) {
            Intrinsics.h(remoteFilePath, "remoteFilePath");
            Intrinsics.h(state, "state");
            if (state == TaskState.CONNECTING) {
                kv.b.f68395a.h(remoteFilePath, j12, TransferClient.f55665t.k());
            } else if (state == TaskState.FINISH) {
                kv.b.f68395a.g(remoteFilePath, true, null, j12, j13, TransferClient.f55665t.k());
            } else if (state == TaskState.ERROR || state == TaskState.NO_FILE) {
                kv.b.f68395a.g(remoteFilePath, false, "file no found", j11, j13, TransferClient.f55665t.k());
            }
            ClientViewModel.this.f55607f.n(new Pair(remoteFilePath, new Triple(state, Long.valueOf(j11), Long.valueOf(j12))));
        }

        @Override // com.transsion.transfer.impl.f
        public void M() {
            ClientViewModel.this.f55604c.n(Boolean.FALSE);
            kv.b.f68395a.j("normal", TransferClient.f55665t.k());
        }

        @Override // com.transsion.transfer.impl.f
        public void j(int i11) {
            ClientViewModel.this.f55606e.n(Integer.valueOf(i11));
        }

        @Override // com.transsion.transfer.impl.f
        public void o(String remoteFilePath) {
            Intrinsics.h(remoteFilePath, "remoteFilePath");
            ClientViewModel.this.f55607f.n(new Pair(remoteFilePath, null));
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ClientViewModel(Application application) {
        super(application);
        Intrinsics.h(application, "application");
        this.f55603b = application;
        this.f55604c = new androidx.p009lifecycle.b0();
        this.f55605d = new jv.b();
        this.f55606e = new jv.b();
        this.f55607f = new jv.b();
        this.f55608g = new jv.b();
        this.f55610i = new a();
        this.f55611j = new b();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit A(Function1 function1, Exception exc) {
        String message = exc != null ? exc.getMessage() : null;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("sendServerCreateNotify:  ");
        sb2.append(message);
        function1.invoke(Boolean.valueOf(exc == null));
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit D(List it) {
        Intrinsics.h(it, "it");
        kv.b.f68395a.m(it.size(), TransferClient.f55665t.k());
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit l(ClientViewModel clientViewModel, Function2 function2, boolean z10, String error) {
        Intrinsics.h(error, "error");
        clientViewModel.f55604c.n(Boolean.valueOf(z10));
        kotlinx.coroutines.k.d(u0.a(clientViewModel), y0.c(), null, new ClientViewModel$connect$2$1(function2, z10, error, null), 2, null);
        return Unit.f67061a;
    }

    private final File m() {
        return new File(Utils.a().getExternalFilesDir(Environment.DIRECTORY_DOWNLOADS), "transfer");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit t(ClientViewModel clientViewModel, List list, Exception exc) {
        if (exc == null) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("getTransferList: ");
            sb2.append(list);
            clientViewModel.f55605d.n(list);
        } else {
            exc.printStackTrace();
            String message = exc.getMessage();
            StringBuilder sb3 = new StringBuilder();
            sb3.append("getTransferList error: ");
            sb3.append(message);
            sb3.append(" ");
        }
        return Unit.f67061a;
    }

    public final void B(Function0 callback) {
        Intrinsics.h(callback, "callback");
        TransferClient.a aVar = TransferClient.f55665t;
        if (!aVar.g()) {
            callback.invoke();
            return;
        }
        e eVarI = aVar.i();
        eVarI.k(this.f55611j);
        eVarI.b(this.f55610i);
        eVarI.c(callback);
    }

    public final void C(List files) {
        Intrinsics.h(files, "files");
        if (files.isEmpty()) {
            return;
        }
        TransferClient.a aVar = TransferClient.f55665t;
        if (aVar.g()) {
            e eVarI = aVar.i();
            eVarI.k(this.f55611j);
            eVarI.b(this.f55610i);
            String absolutePath = m().getAbsolutePath();
            Intrinsics.g(absolutePath, "getAbsolutePath(...)");
            eVarI.i(absolutePath, files, new Function1() { // from class: com.transsion.transfer.impl.a
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return ClientViewModel.D((List) obj);
                }
            });
        }
    }

    public final void k(final Function2 function2) {
        TransferClient.a aVar = TransferClient.f55665t;
        if (!aVar.g()) {
            if (function2 != null) {
                function2.invoke(Boolean.FALSE, "no connect info");
            }
        } else {
            e eVarI = aVar.i();
            eVarI.k(this.f55611j);
            eVarI.b(this.f55610i);
            eVarI.d(new Function2() { // from class: com.transsion.transfer.impl.c
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return ClientViewModel.l(this.f55662a, function2, ((Boolean) obj).booleanValue(), (String) obj2);
                }
            });
        }
    }

    public final LiveData n() {
        return this.f55606e;
    }

    public final LiveData o() {
        return this.f55604c;
    }

    @Override // androidx.p009lifecycle.t0
    protected void onCleared() {
        super.onCleared();
        TransferClient.a aVar = TransferClient.f55665t;
        if (aVar.g()) {
            e eVarI = aVar.i();
            eVarI.g(this.f55611j);
            eVarI.b(null);
        }
    }

    public final String p() {
        TransferClient.a aVar = TransferClient.f55665t;
        if (!aVar.g()) {
            return "";
        }
        e eVarI = aVar.i();
        eVarI.k(this.f55611j);
        eVarI.b(this.f55610i);
        String strJ = eVarI.j();
        if (strJ != null) {
            this.f55609h = strJ;
        }
        return strJ;
    }

    public final LiveData q() {
        return this.f55608g;
    }

    public final int r() {
        return mv.a.f70013a.e().size();
    }

    public final void s(boolean z10) {
        mv.a aVar = mv.a.f70013a;
        if (!aVar.h() && !z10) {
            this.f55605d.n(aVar.d());
            return;
        }
        TransferClient.a aVar2 = TransferClient.f55665t;
        if (aVar2.g()) {
            kv.b.f68395a.i(aVar2.k());
            e eVarI = aVar2.i();
            eVarI.k(this.f55611j);
            eVarI.b(this.f55610i);
            String absolutePath = m().getAbsolutePath();
            Intrinsics.g(absolutePath, "getAbsolutePath(...)");
            eVarI.e(absolutePath, new Function2() { // from class: com.transsion.transfer.impl.b
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return ClientViewModel.t(this.f55660a, (List) obj, (Exception) obj2);
                }
            });
        }
    }

    public final LiveData u() {
        return this.f55605d;
    }

    public final LiveData v() {
        return this.f55607f;
    }

    public final int w() {
        mv.a aVar = mv.a.f70013a;
        return aVar.f().size() + aVar.g().size();
    }

    public final boolean x() {
        TransferClient.a aVar = TransferClient.f55665t;
        if (!aVar.g()) {
            return false;
        }
        e eVarI = aVar.i();
        eVarI.k(this.f55611j);
        eVarI.b(this.f55610i);
        return eVarI.h();
    }

    public final void y(FileData fileData) {
        Intrinsics.h(fileData, "fileData");
        TransferClient.a aVar = TransferClient.f55665t;
        if (aVar.g()) {
            e eVarI = aVar.i();
            eVarI.k(this.f55611j);
            eVarI.b(this.f55610i);
            eVarI.f(fileData);
        }
    }

    public final void z(final Function1 callback) {
        Intrinsics.h(callback, "callback");
        TransferClient.a aVar = TransferClient.f55665t;
        if (aVar.g()) {
            e eVarI = aVar.i();
            eVarI.k(this.f55611j);
            eVarI.b(this.f55610i);
            eVarI.a(new Function1() { // from class: com.transsion.transfer.impl.d
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return ClientViewModel.A(callback, (Exception) obj);
                }
            });
        }
    }
}
