package com.transsion.transfer.impl.client;

import com.transsion.transfer.androidasync.http.AsyncHttpClient;
import com.transsion.transfer.impl.entity.FileData;
import java.io.File;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes6.dex */
public final class n {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final a f55712i = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final AsyncHttpClient f55713a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f55714b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f55715c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f55716d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final com.transsion.transfer.impl.f f55717e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final List f55718f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final List f55719g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f55720h;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public static final class b extends AsyncHttpClient.g {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ File f55722b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ File f55723c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ FileData f55724d;

        b(File file, File file2, FileData fileData) {
            this.f55722b = file;
            this.f55723c = file2;
            this.f55724d = fileData;
        }

        @Override // com.transsion.transfer.androidasync.http.AsyncHttpClient.i, dv.b
        public void a(com.transsion.transfer.androidasync.http.k kVar, long j11, long j12) {
            super.a(kVar, j11, j12);
        }

        @Override // com.transsion.transfer.androidasync.http.AsyncHttpClient.i, dv.b
        public void b(com.transsion.transfer.androidasync.http.k kVar) {
        }

        @Override // bv.g
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public void c(Exception exc, com.transsion.transfer.androidasync.http.k kVar, File file) {
            Boolean boolValueOf = file != null ? Boolean.valueOf(file.exists()) : null;
            Long lValueOf = file != null ? Long.valueOf(file.length()) : null;
            String message = exc != null ? exc.getMessage() : null;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("onCompleted: exist:");
            sb2.append(boolValueOf);
            sb2.append(" , length:");
            sb2.append(lValueOf);
            sb2.append(" , e:");
            sb2.append(message);
            n.this.f55720h = false;
            if (exc == null) {
                this.f55722b.renameTo(this.f55723c);
                n.this.f55717e.o(this.f55724d.getFileRemotePath());
            }
            n.this.f55719g.remove(this.f55724d);
            n.this.f();
        }
    }

    public n(AsyncHttpClient httpClient, String clientIp, String transferId, String urlPath, com.transsion.transfer.impl.f listener) {
        Intrinsics.h(httpClient, "httpClient");
        Intrinsics.h(clientIp, "clientIp");
        Intrinsics.h(transferId, "transferId");
        Intrinsics.h(urlPath, "urlPath");
        Intrinsics.h(listener, "listener");
        this.f55713a = httpClient;
        this.f55714b = clientIp;
        this.f55715c = transferId;
        this.f55716d = urlPath;
        this.f55717e = listener;
        this.f55718f = new ArrayList();
        this.f55719g = new ArrayList();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void f() {
        Object objM454constructorimpl;
        if (this.f55719g.isEmpty() && !this.f55718f.isEmpty()) {
            this.f55719g.add(this.f55718f.remove(0));
        }
        if (this.f55719g.isEmpty() || this.f55720h) {
            return;
        }
        try {
            Result.Companion companion = Result.INSTANCE;
            g((FileData) this.f55719g.get(0));
            objM454constructorimpl = Result.m454constructorimpl(Unit.f67061a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
        }
        Result.m453boximpl(objM454constructorimpl);
    }

    private final void g(FileData fileData) throws UnsupportedEncodingException {
        File tempCoverFile = fileData.getTempCoverFile();
        File coverFile = fileData.getCoverFile();
        if (!StringsKt.W(fileData.getCoverUrl(), "/", false, 2, null) || coverFile.exists()) {
            this.f55717e.o(fileData.getFileRemotePath());
            this.f55719g.remove(fileData);
            f();
            return;
        }
        this.f55720h = true;
        String coverUrl = fileData.getCoverUrl();
        String absolutePath = tempCoverFile.getAbsolutePath();
        this.f55713a.t(TransferClient.f55665t.c(this.f55716d + "/client/fetchFile?file=" + jv.a.b(coverUrl), this.f55714b, this.f55715c), absolutePath, new b(tempCoverFile, coverFile, fileData));
    }

    public final synchronized void e(List files) {
        Intrinsics.h(files, "files");
        this.f55718f.addAll(files);
        f();
    }
}
