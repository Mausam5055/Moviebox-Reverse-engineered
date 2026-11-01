package com.transsion.subtitle_download.task;

import android.app.Application;
import android.os.Environment;
import com.blankj.utilcode.util.Utils;
import com.transsion.subtitle_download.SubtitleDownloadManager;
import com.transsion.subtitle_download.db.SubtitleDownloadDatabase;
import com.transsion.subtitle_download.db.SubtitleDownloadTable;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.concurrent.TimeUnit;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Unit;
import kotlin.io.CloseableKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.ResponseBody;

/* JADX INFO: loaded from: classes6.dex */
public abstract class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f55016a = new a(0 == true ? 1 : 0);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f55017b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final String f55018c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final Lazy f55019d;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final OkHttpClient b() {
            return (OkHttpClient) b.f55019d.getValue();
        }

        public final String c() {
            return b.f55017b;
        }

        public final String d() {
            return b.f55018c;
        }
    }

    /* JADX INFO: renamed from: com.transsion.subtitle_download.task.b$b, reason: collision with other inner class name */
    public static final class C0674b implements Callback {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ SubtitleDownloadTable f55021b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ Function0 f55022c;

        C0674b(SubtitleDownloadTable subtitleDownloadTable, Function0 function0) {
            this.f55021b = subtitleDownloadTable;
            this.f55022c = function0;
        }

        @Override // okhttp3.Callback
        public void onFailure(Call call, IOException e11) {
            Intrinsics.h(call, "call");
            Intrinsics.h(e11, "e");
            b.this.h(this.f55021b, new RuntimeException(e11.getMessage()));
            this.f55022c.invoke();
        }

        @Override // okhttp3.Callback
        public void onResponse(Call call, Response response) {
            int iCode;
            Intrinsics.h(call, "call");
            Intrinsics.h(response, "response");
            if (response.isSuccessful()) {
                b.this.i(response, this.f55021b);
                this.f55022c.invoke();
            } else if (response.code() != 404 && 400 <= (iCode = response.code()) && iCode < 600) {
                b.this.g(response, this.f55021b, this.f55022c);
            } else {
                b.this.h(this.f55021b, new RuntimeException(response.message()));
                this.f55022c.invoke();
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    static {
        File externalFilesDir = Utils.a().getExternalFilesDir(Environment.DIRECTORY_DOWNLOADS);
        String absolutePath = externalFilesDir != null ? externalFilesDir.getAbsolutePath() : null;
        char c11 = File.separatorChar;
        f55017b = absolutePath + c11 + "subtitle";
        File externalFilesDir2 = Utils.a().getExternalFilesDir(Environment.DIRECTORY_DOWNLOADS);
        f55018c = (externalFilesDir2 != null ? externalFilesDir2.getAbsolutePath() : null) + c11 + "subtitle_zip";
        f55019d = LazyKt.b(new Function0() { // from class: com.transsion.subtitle_download.task.a
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return b.f();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final OkHttpClient f() {
        OkHttpClient.Builder builder = new OkHttpClient.Builder();
        TimeUnit timeUnit = TimeUnit.SECONDS;
        return builder.connectTimeout(30L, timeUnit).writeTimeout(30L, timeUnit).readTimeout(30L, timeUnit).cache(null).build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void g(Response response, SubtitleDownloadTable subtitleDownloadTable, Function0 function0) {
        h(subtitleDownloadTable, new RuntimeException(response.message()));
        function0.invoke();
    }

    public final void h(SubtitleDownloadTable dbBean, Exception e11) {
        Intrinsics.h(dbBean, "dbBean");
        Intrinsics.h(e11, "e");
        dbBean.setFailCount(dbBean.getFailCount() + 1);
        com.transsion.subtitle_download.utils.b bVar = com.transsion.subtitle_download.utils.b.f55044a;
        bVar.b(l() + " --> disposeOnFailure() --> e = " + e11.getMessage() + " -- getSubtitleInfo = " + dbBean.getSubtitleInfo() + " --> dbBean.failCount = " + dbBean.getFailCount());
        dbBean.setStatus(6);
        if (dbBean.getType() == 2 || dbBean.getType() == 4 || dbBean.getType() == 5 || dbBean.getFailCount() > 5) {
            bVar.b(l() + " --> disposeOnFailure() --> delete(dbBean) --> 如果是搜索字幕，下载失败就从数据库移除 --> getSubtitleInfo = " + dbBean.getSubtitleInfo() + " --> failCount = " + dbBean.getFailCount());
            SubtitleDownloadDatabase.Companion companion = SubtitleDownloadDatabase.INSTANCE;
            Application applicationA = Utils.a();
            Intrinsics.g(applicationA, "getApp(...)");
            companion.b(applicationA).l0().g(dbBean);
        } else {
            SubtitleDownloadDatabase.Companion companion2 = SubtitleDownloadDatabase.INSTANCE;
            Application applicationA2 = Utils.a();
            Intrinsics.g(applicationA2, "getApp(...)");
            companion2.b(applicationA2).l0().f(dbBean);
        }
        SubtitleDownloadManager.f54998a.o(e11, dbBean);
    }

    public abstract void i(Response response, SubtitleDownloadTable subtitleDownloadTable);

    public boolean j(Response response, String destination, long j11, SubtitleDownloadTable dbBean, Function1 progressCallback, Function0 completeCallback) {
        Intrinsics.h(response, "response");
        Intrinsics.h(destination, "destination");
        Intrinsics.h(dbBean, "dbBean");
        Intrinsics.h(progressCallback, "progressCallback");
        Intrinsics.h(completeCallback, "completeCallback");
        if (j11 <= 0 && !dbBean.isOpenSbNewApi()) {
            h(dbBean, new RuntimeException(l() + " --> disposeOutputStream --> length <= 0 --> length = " + j11));
            return false;
        }
        com.transsion.subtitle_download.utils.e eVar = com.transsion.subtitle_download.utils.e.f55047a;
        eVar.a(f55017b);
        eVar.a(f55018c);
        try {
            ResponseBody responseBodyBody = response.body();
            InputStream inputStreamByteStream = responseBodyBody != null ? responseBodyBody.byteStream() : null;
            try {
                FileOutputStream fileOutputStream = new FileOutputStream(destination);
                try {
                    byte[] bArr = new byte[102400];
                    dbBean.setStatus(2);
                    int i11 = 0;
                    int i12 = 0;
                    while (true) {
                        if (inputStreamByteStream != null && (i11 = inputStreamByteStream.read(bArr)) == -1) {
                            Unit unit = Unit.f67061a;
                            CloseableKt.a(fileOutputStream, null);
                            CloseableKt.a(inputStreamByteStream, null);
                            return true;
                        }
                        fileOutputStream.write(bArr, 0, i11);
                        i12 += i11;
                        int i13 = (int) (((i12 * 1.0f) / j11) * 100);
                        progressCallback.invoke(Integer.valueOf(i13));
                        if (i13 >= 100) {
                            completeCallback.invoke();
                        }
                        try {
                            throw th;
                        } catch (Throwable th2) {
                            CloseableKt.a(inputStreamByteStream, th);
                            throw th2;
                        }
                    }
                } catch (Throwable th3) {
                    try {
                        throw th3;
                    } catch (Throwable th4) {
                        CloseableKt.a(fileOutputStream, th3);
                        throw th4;
                    }
                }
            } catch (Throwable th5) {
                throw th5;
            }
        } catch (Exception e11) {
            h(dbBean, new RuntimeException(l() + " --> disposeOutputStream --> 字幕下载出问题了,e = " + e11.getMessage()));
            return false;
        }
    }

    public final void k(SubtitleDownloadTable dbBean, Function0 callback) {
        Intrinsics.h(dbBean, "dbBean");
        Intrinsics.h(callback, "callback");
        com.transsion.subtitle_download.utils.b bVar = com.transsion.subtitle_download.utils.b.f55044a;
        bVar.a(l() + " --> download() --> 字幕下载 --> 开始执行下载任务了 --> getSubtitleInfo = " + dbBean.getSubtitleInfo());
        bVar.a("开始执行下载任务了 --> url = " + dbBean.getUrl());
        Request.Builder builder = new Request.Builder();
        String url = dbBean.getUrl();
        if (url == null) {
            url = "";
        }
        f55016a.b().newCall(builder.url(url).build()).enqueue(new C0674b(dbBean, callback));
    }

    public final String l() {
        String simpleName = getClass().getSimpleName();
        Intrinsics.g(simpleName, "getSimpleName(...)");
        return simpleName;
    }
}
