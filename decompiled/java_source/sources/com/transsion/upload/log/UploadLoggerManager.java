package com.transsion.upload.log;

import android.app.ActivityManager;
import android.app.Application;
import android.content.Context;
import android.util.Log;
import com.blankj.utilcode.util.Utils;
import com.blankj.utilcode.util.i;
import com.blankj.utilcode.util.w;
import com.transsion.upload.bean.UploadFileType;
import com.transsion.upload.bean.UploadTstTokenStorageType;
import cw.a;
import cw.b;
import cw.c;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import kotlin.KotlinNothingValueException;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.k;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes6.dex */
public final class UploadLoggerManager {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final UploadLoggerManager f56636a = new UploadLoggerManager();

    private UploadLoggerManager() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void c(String str, String str2) {
        try {
            File file = new File(str2);
            if (file.exists()) {
                file.delete();
            }
            File file2 = new File(str);
            if (file2.exists()) {
                b bVarC = c.f60931a.c();
                String strB = bVarC != null ? bVarC.b() : null;
                File[] fileArrListFiles = file2.listFiles();
                if (fileArrListFiles != null) {
                    for (File file3 : fileArrListFiles) {
                        file3.delete();
                        if (!Intrinsics.c(file3.getName(), strB)) {
                            file3.delete();
                        }
                    }
                }
            }
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    /* JADX WARN: Code duplicated, block: B:53:0x00c5  */
    /* JADX WARN: Code duplicated, block: B:55:0x00ca  */
    private final void d() throws Throwable {
        List<String> listC;
        BufferedOutputStream bufferedOutputStream;
        b bVarC = c.f60931a.c();
        if (bVarC == null || (listC = bVarC.c()) == null) {
            return;
        }
        for (String str : listC) {
            Application applicationA = Utils.a();
            if (applicationA != null) {
                Intrinsics.g(applicationA, "getApp()");
                BufferedInputStream bufferedInputStream = null;
                try {
                    File databasePath = applicationA.getDatabasePath(str);
                    if (databasePath.exists()) {
                        b bVarC2 = c.f60931a.c();
                        String strD = bVarC2 != null ? bVarC2.d() : null;
                        File file = new File(strD);
                        if (!file.exists()) {
                            file.mkdirs();
                        }
                        byte[] bArr = new byte[4096];
                        File file2 = new File(strD + File.separator + str);
                        BufferedInputStream bufferedInputStream2 = new BufferedInputStream(new FileInputStream(databasePath));
                        try {
                            bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(file2));
                            while (true) {
                                try {
                                    int i11 = bufferedInputStream2.read(bArr, 0, 4096);
                                    if (i11 == -1) {
                                        break;
                                    } else {
                                        bufferedOutputStream.write(bArr, 0, i11);
                                    }
                                } catch (Exception e11) {
                                    bufferedInputStream = bufferedInputStream2;
                                    e = e11;
                                    try {
                                        e.printStackTrace();
                                        if (bufferedInputStream != null) {
                                            bufferedInputStream.close();
                                        }
                                        if (bufferedOutputStream != null) {
                                        }
                                    } catch (Throwable th2) {
                                        th = th2;
                                        if (bufferedInputStream != null) {
                                            bufferedInputStream.close();
                                        }
                                        if (bufferedOutputStream != null) {
                                            bufferedOutputStream.close();
                                        }
                                        throw th;
                                    }
                                } catch (Throwable th3) {
                                    th = th3;
                                    bufferedInputStream = bufferedInputStream2;
                                    if (bufferedInputStream != null) {
                                        bufferedInputStream.close();
                                    }
                                    if (bufferedOutputStream != null) {
                                        bufferedOutputStream.close();
                                    }
                                    throw th;
                                }
                            }
                            bufferedInputStream = bufferedInputStream2;
                        } catch (Exception e12) {
                            bufferedInputStream = bufferedInputStream2;
                            e = e12;
                            bufferedOutputStream = null;
                        } catch (Throwable th4) {
                            th = th4;
                            bufferedOutputStream = null;
                        }
                    } else {
                        bufferedOutputStream = null;
                    }
                    if (bufferedInputStream != null) {
                        bufferedInputStream.close();
                    }
                    if (bufferedOutputStream != null) {
                        bufferedOutputStream.close();
                    }
                } catch (Exception e13) {
                    e = e13;
                    bufferedOutputStream = null;
                } catch (Throwable th5) {
                    th = th5;
                    bufferedOutputStream = null;
                }
            }
        }
    }

    private final void e() throws Throwable {
        if (Utils.a() == null) {
            return;
        }
        PrintWriter printWriter = null;
        try {
            UploadLoggerManager uploadLoggerManager = f56636a;
            String strF = uploadLoggerManager.f();
            StringBuilder sb2 = new StringBuilder();
            sb2.append("headerInfo ");
            sb2.append(strF);
            b bVarC = c.f60931a.c();
            String strD = bVarC != null ? bVarC.d() : null;
            File file = new File(strD);
            if (!file.exists()) {
                file.mkdirs();
            }
            Date date = new Date(System.currentTimeMillis());
            String str = new SimpleDateFormat("yyyy-MM-dd", Locale.getDefault()).format(date);
            PrintWriter printWriter2 = new PrintWriter(new BufferedWriter(new FileWriter(new File(strD + File.separator + "deviceInfo" + str + ".txt"), true)));
            try {
                printWriter2.println(new SimpleDateFormat("yyyy-MM-dd hh-mm-ss", Locale.getDefault()).format(date));
                printWriter2.println("headerInfo = " + strF);
                uploadLoggerManager.j(printWriter2);
                printWriter2.close();
            } catch (Throwable th2) {
                th = th2;
                printWriter = printWriter2;
                if (printWriter != null) {
                    printWriter.close();
                }
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    private final String f() {
        try {
            Result.Companion companion = Result.INSTANCE;
            b bVarC = c.f60931a.c();
            if (bVarC != null) {
                return bVarC.a();
            }
            return null;
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            if (Result.m457exceptionOrNullimpl(Result.m454constructorimpl(ResultKt.a(th2))) != null) {
                return null;
            }
            throw new KotlinNothingValueException();
        }
    }

    private final ActivityManager.MemoryInfo h(Context context) {
        Object systemService = context.getSystemService("activity");
        Intrinsics.f(systemService, "null cannot be cast to non-null type android.app.ActivityManager");
        ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
        ((ActivityManager) systemService).getMemoryInfo(memoryInfo);
        return memoryInfo;
    }

    private final void j(PrintWriter printWriter) {
        Object objM454constructorimpl;
        try {
            Result.Companion companion = Result.INSTANCE;
            Application applicationA = Utils.a();
            Intrinsics.g(applicationA, "getApp()");
            ActivityManager.MemoryInfo memoryInfoH = h(applicationA);
            String strB = i.b(memoryInfoH.totalMem, 2);
            String strB2 = i.b(memoryInfoH.availMem, 2);
            String strB3 = i.b(memoryInfoH.threshold, 2);
            String strA = i.a(w.b());
            String strA2 = i.a(w.a());
            int iAvailableProcessors = Runtime.getRuntime().availableProcessors();
            if (printWriter != null) {
                printWriter.println("memoryInfo totalMem=" + strB + " availMem=" + strB2 + " threshold=" + strB3 + " totalSize=" + strA + " availableSize=" + strA2 + " coreSize=" + iAvailableProcessors);
            }
            objM454constructorimpl = Result.m454constructorimpl(Integer.valueOf(Log.d("UploadLoggerManager", "memoryInfo totalMem=" + strB + " availMem=" + strB2 + " threshold=" + strB3 + " totalSize=" + strA + " availableSize=" + strA2 + " coreSize=" + iAvailableProcessors)));
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
        }
        Result.m457exceptionOrNullimpl(objM454constructorimpl);
    }

    public static /* synthetic */ void l(UploadLoggerManager uploadLoggerManager, a aVar, int i11, Object obj) throws Throwable {
        if ((i11 & 1) != 0) {
            aVar = null;
        }
        uploadLoggerManager.k(aVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void m(String str, String str2, String str3, a aVar, String str4, Function1 function1) {
        k.d(o0.a(y0.b()), null, null, new UploadLoggerManager$reportUploadLogsResult$1(str, str4, aVar, str2, function1, str3, null), 3, null);
    }

    private final void n() {
        k.d(o0.a(y0.b()), null, null, new UploadLoggerManager$requestConfig$1(null), 3, null);
    }

    public final void g() {
        b bVarC = c.f60931a.c();
        if (bVarC == null || !bVarC.i()) {
            return;
        }
        n();
    }

    public final synchronized void i(final a aVar) {
        String path;
        try {
            try {
                b bVarC = c.f60931a.c();
                final String strD = bVarC != null ? bVarC.d() : null;
                File parentFile = new File(strD).getParentFile();
                if (parentFile != null && (path = parentFile.getPath()) != null) {
                    final String str = path + File.separator + "logger.zip";
                    File file = new File(str);
                    if (file.exists()) {
                        file.delete();
                    }
                    ew.b.f62033a.a(strD, str, new Function1<Boolean, Unit>() { // from class: com.transsion.upload.log.UploadLoggerManager$packLoggerFile$1$1
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(1);
                        }

                        @Override // kotlin.jvm.functions.Function1
                        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                            invoke(((Boolean) obj).booleanValue());
                            return Unit.f67061a;
                        }

                        public final void invoke(boolean z10) {
                            StringBuilder sb2 = new StringBuilder();
                            sb2.append("logger compress result=");
                            sb2.append(z10);
                            if (!z10) {
                                a aVar2 = aVar;
                                if (aVar2 != null) {
                                    a.C0724a.a(aVar2, strD, "压缩失败", "", null, 8, null);
                                    return;
                                }
                                return;
                            }
                            c cVar = c.f60931a;
                            final String str2 = str;
                            UploadFileType uploadFileType = UploadFileType.OBJECT_NAME_LOGGER;
                            final a aVar3 = aVar;
                            final String str3 = strD;
                            cVar.f(str2, uploadFileType, false, new a() { // from class: com.transsion.upload.log.UploadLoggerManager$packLoggerFile$1$1.1
                                @Override // cw.a
                                public void a(String localFilePath, long j11, long j12) {
                                    Intrinsics.h(localFilePath, "localFilePath");
                                    a aVar4 = aVar3;
                                    if (aVar4 != null) {
                                        aVar4.a(localFilePath, j11, j12);
                                    }
                                }

                                @Override // cw.a
                                public void b(String localFilePath, final String url, String bucket) {
                                    Intrinsics.h(localFilePath, "localFilePath");
                                    Intrinsics.h(url, "url");
                                    Intrinsics.h(bucket, "bucket");
                                    StringBuilder sb3 = new StringBuilder();
                                    sb3.append("upload file success url=");
                                    sb3.append(url);
                                    UploadLoggerManager uploadLoggerManager = UploadLoggerManager.f56636a;
                                    String str4 = str3;
                                    String str5 = str2;
                                    final a aVar4 = aVar3;
                                    uploadLoggerManager.m(url, str4, str5, aVar4, bucket, new Function1<String, Unit>() { // from class: com.transsion.upload.log.UploadLoggerManager$packLoggerFile$1$1$1$onSuccess$1
                                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                        {
                                            super(1);
                                        }

                                        @Override // kotlin.jvm.functions.Function1
                                        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                                            invoke((String) obj);
                                            return Unit.f67061a;
                                        }

                                        public final void invoke(String logId) {
                                            Intrinsics.h(logId, "logId");
                                            a aVar5 = aVar4;
                                            if (aVar5 != null) {
                                                aVar5.b(logId, url, "");
                                            }
                                        }
                                    });
                                }

                                @Override // cw.a
                                public void c(String str4, String str5, String str6, UploadTstTokenStorageType uploadTstTokenStorageType) {
                                    a aVar4 = aVar3;
                                    if (aVar4 != null) {
                                        aVar4.c(str4, str5, str6, uploadTstTokenStorageType);
                                    }
                                }
                            });
                        }
                    });
                }
            } catch (Exception unused) {
                if (aVar != null) {
                    a.C0724a.a(aVar, "", "packLoggerFile() 异常", "", null, 8, null);
                }
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public final void k(a aVar) throws Throwable {
        try {
            d();
            e();
            i(aVar);
        } catch (Exception unused) {
            if (aVar != null) {
                a.C0724a.a(aVar, "", "", "", null, 8, null);
            }
        }
    }
}
