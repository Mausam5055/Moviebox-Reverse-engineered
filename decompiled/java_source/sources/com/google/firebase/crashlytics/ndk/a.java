package com.google.firebase.crashlytics.ndk;

import android.app.ActivityManager;
import android.app.ApplicationExitInfo;
import android.content.Context;
import android.os.Build;
import androidx.work.impl.utils.i;
import com.google.firebase.crashlytics.internal.common.CommonUtils;
import com.google.firebase.crashlytics.internal.model.CrashlyticsReport;
import java.io.BufferedWriter;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStreamWriter;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Base64;
import java.util.Iterator;
import java.util.List;
import java.util.zip.GZIPOutputStream;

/* JADX INFO: loaded from: classes4.dex */
public class a {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final Charset f31775d = Charset.forName("UTF-8");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f31776a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final e f31777b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final vb.g f31778c;

    a(Context context, e eVar, vb.g gVar) {
        this.f31776a = context;
        this.f31777b = eVar;
        this.f31778c = gVar;
    }

    private static CrashlyticsReport.a a(ApplicationExitInfo applicationExitInfo) {
        return CrashlyticsReport.a.a().c(applicationExitInfo.getImportance()).e(applicationExitInfo.getProcessName()).g(applicationExitInfo.getReason()).i(applicationExitInfo.getTimestamp()).d(applicationExitInfo.getPid()).f(applicationExitInfo.getPss()).h(applicationExitInfo.getRss()).j(i(applicationExitInfo)).a();
    }

    public static String b(InputStream inputStream) throws IOException {
        if (inputStream == null) {
            return null;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[8192];
        while (true) {
            int i11 = inputStream.read(bArr);
            if (i11 == -1) {
                return r(byteArrayOutputStream.toByteArray());
            }
            byteArrayOutputStream.write(bArr, 0, i11);
        }
    }

    private CrashlyticsReport.a c(String str) {
        if (Build.VERSION.SDK_INT >= 31) {
            return f(str);
        }
        return null;
    }

    private f.c e(String str, File file) {
        return new f.c(h(file, ".dmp"), c(str));
    }

    private CrashlyticsReport.a f(String str) {
        List historicalProcessExitReasons = ((ActivityManager) this.f31776a.getSystemService("activity")).getHistoricalProcessExitReasons(null, 0, 0);
        File fileQ = this.f31778c.q(str, "start-time");
        return g(fileQ == null ? System.currentTimeMillis() : fileQ.lastModified(), historicalProcessExitReasons);
    }

    private CrashlyticsReport.a g(long j11, List list) {
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            ApplicationExitInfo applicationExitInfoA = i.a(it.next());
            if (applicationExitInfoA.getReason() == 5 && applicationExitInfoA.getTimestamp() >= j11) {
                arrayList.add(applicationExitInfoA);
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return a(i.a(arrayList.get(0)));
    }

    private static File h(File file, String str) {
        File[] fileArrListFiles = file.listFiles();
        if (fileArrListFiles == null) {
            return null;
        }
        for (File file2 : fileArrListFiles) {
            if (file2.getName().endsWith(str)) {
                return file2;
            }
        }
        return null;
    }

    private static String i(ApplicationExitInfo applicationExitInfo) {
        try {
            return b(applicationExitInfo.getTraceInputStream());
        } catch (IOException unused) {
            ob.g.f().k("Failed to get input stream from ApplicationExitInfo");
            return null;
        }
    }

    private static void o(vb.g gVar, String str, String str2, String str3) throws Throwable {
        q(new File(gVar.k(str), str3), str2);
    }

    private static void q(File file, String str) throws Throwable {
        BufferedWriter bufferedWriter = null;
        try {
            BufferedWriter bufferedWriter2 = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(file), f31775d));
            try {
                bufferedWriter2.write(str);
                CommonUtils.f(bufferedWriter2, "Failed to close " + file);
            } catch (IOException unused) {
                bufferedWriter = bufferedWriter2;
                CommonUtils.f(bufferedWriter, "Failed to close " + file);
            } catch (Throwable th2) {
                th = th2;
                bufferedWriter = bufferedWriter2;
                CommonUtils.f(bufferedWriter, "Failed to close " + file);
                throw th;
            }
        } catch (IOException unused2) {
        } catch (Throwable th3) {
            th = th3;
        }
    }

    private static String r(byte[] bArr) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
            try {
                gZIPOutputStream.write(bArr);
                gZIPOutputStream.finish();
                String strEncodeToString = Base64.getEncoder().encodeToString(byteArrayOutputStream.toByteArray());
                gZIPOutputStream.close();
                byteArrayOutputStream.close();
                return strEncodeToString;
            } catch (Throwable th2) {
                try {
                    gZIPOutputStream.close();
                } catch (Throwable th3) {
                    th2.addSuppressed(th3);
                }
                throw th2;
            }
        } catch (Throwable th4) {
            try {
                byteArrayOutputStream.close();
            } catch (Throwable th5) {
                th4.addSuppressed(th5);
            }
            throw th4;
        }
    }

    public f d(String str) {
        File fileK = this.f31778c.k(str);
        File file = new File(fileK, "pending");
        ob.g.f().i("Minidump directory: " + file.getAbsolutePath());
        File fileH = h(file, ".dmp");
        ob.g gVarF = ob.g.f();
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Minidump file ");
        sb2.append((fileH == null || !fileH.exists()) ? "does not exist" : "exists");
        gVarF.i(sb2.toString());
        f.b bVar = new f.b();
        if (fileK != null && fileK.exists() && file.exists()) {
            bVar.l(e(str, file)).k(h(fileK, ".device_info")).n(new File(fileK, "session.json")).h(new File(fileK, "app.json")).j(new File(fileK, "device.json")).m(new File(fileK, "os.json"));
        }
        return bVar.i();
    }

    public boolean j(String str) {
        f.c cVar = d(str).f31789a;
        return cVar != null && cVar.a();
    }

    public boolean k(String str, String str2, long j11, sb.e eVar) throws Throwable {
        File fileK = this.f31778c.k(str);
        if (fileK == null) {
            return false;
        }
        try {
            if (!this.f31777b.a(fileK.getCanonicalPath(), this.f31776a.getAssets())) {
                return false;
            }
            l(str, str2, j11);
            m(str, eVar.a());
            p(str, eVar.d());
            n(str, eVar.c());
            return true;
        } catch (IOException e11) {
            ob.g.f().e("Error initializing Crashlytics NDK", e11);
            return false;
        }
    }

    public void l(String str, String str2, long j11) throws Throwable {
        o(this.f31778c, str, h.b(str, str2, j11), "session.json");
    }

    public void m(String str, sb.e.a aVar) throws Throwable {
        o(this.f31778c, str, h.c(aVar.a(), aVar.f(), aVar.g(), aVar.e(), aVar.c(), aVar.d().d(), aVar.d().e()), "app.json");
    }

    public void n(String str, sb.e.b bVar) throws Throwable {
        o(this.f31778c, str, h.d(bVar.a(), bVar.g(), bVar.b(), bVar.j(), bVar.d(), bVar.e(), bVar.i(), bVar.f(), bVar.h()), "device.json");
    }

    public void p(String str, sb.e.c cVar) throws Throwable {
        o(this.f31778c, str, h.e(cVar.d(), cVar.c(), cVar.b()), "os.json");
    }
}
