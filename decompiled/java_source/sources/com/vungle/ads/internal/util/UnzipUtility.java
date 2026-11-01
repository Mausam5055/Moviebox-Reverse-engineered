package com.vungle.ads.internal.util;

import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.List;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import kotlin.Metadata;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes7.dex */
public final class UnzipUtility {
    private static final int BUFFER_SIZE = 4096;
    public static final UnzipUtility INSTANCE = new UnzipUtility();
    private static final String TAG = UnzipUtility.class.getCanonicalName();

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vungle/ads/internal/util/UnzipUtility$ZipSecurityException;", "Ljava/io/IOException;", "message", "", "(Ljava/lang/String;)V", "vungle-ads_release"}, k = 1, mv = {1, 7, 1}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final class ZipSecurityException extends IOException {
        public ZipSecurityException(String str) {
            super(str);
        }
    }

    public interface a {
        boolean matches(String str);
    }

    private UnzipUtility() {
    }

    public static /* synthetic */ List unzip$default(UnzipUtility unzipUtility, String str, String str2, a aVar, int i11, Object obj) throws IOException {
        if ((i11 & 4) != 0) {
            aVar = null;
        }
        return unzipUtility.unzip(str, str2, aVar);
    }

    private final String validateFilename(String str, String str2) throws IOException {
        String canonicalPath = new File(str).getCanonicalPath();
        String canonicalID = new File(str2).getCanonicalPath();
        Intrinsics.g(canonicalPath, "canonicalPath");
        Intrinsics.g(canonicalID, "canonicalID");
        if (StringsKt.W(canonicalPath, canonicalID, false, 2, null)) {
            return canonicalPath;
        }
        o.a aVar = o.Companion;
        String TAG2 = TAG;
        Intrinsics.g(TAG2, "TAG");
        aVar.e(TAG2, "File is outside extraction target directory.");
        throw new ZipSecurityException("File is outside extraction target directory.");
    }

    public final void extractFile(InputStream zipIn, String str) throws Throwable {
        FileOutputStream fileOutputStream;
        Throwable th2;
        BufferedOutputStream bufferedOutputStream;
        Intrinsics.h(zipIn, "zipIn");
        File file = new File(str);
        g.delete(file);
        File parentFile = file.getParentFile();
        if (parentFile != null && !parentFile.exists()) {
            parentFile.mkdirs();
        }
        try {
            fileOutputStream = new FileOutputStream(str);
            try {
                bufferedOutputStream = new BufferedOutputStream(fileOutputStream);
                try {
                    byte[] bArr = new byte[4096];
                    while (true) {
                        int i11 = zipIn.read(bArr);
                        if (i11 == -1) {
                            g gVar = g.INSTANCE;
                            gVar.closeQuietly(zipIn);
                            gVar.closeQuietly(bufferedOutputStream);
                            gVar.closeQuietly(fileOutputStream);
                            return;
                        }
                        bufferedOutputStream.write(bArr, 0, i11);
                    }
                } catch (Throwable th3) {
                    th2 = th3;
                    g gVar2 = g.INSTANCE;
                    gVar2.closeQuietly(zipIn);
                    gVar2.closeQuietly(bufferedOutputStream);
                    gVar2.closeQuietly(fileOutputStream);
                    throw th2;
                }
            } catch (Throwable th4) {
                th2 = th4;
                bufferedOutputStream = null;
            }
        } catch (Throwable th5) {
            fileOutputStream = null;
            th2 = th5;
            bufferedOutputStream = null;
        }
    }

    @JvmOverloads
    public final List<File> unzip(String str, String destDirectory) throws IOException {
        Intrinsics.h(destDirectory, "destDirectory");
        return unzip$default(this, str, destDirectory, null, 4, null);
    }

    @JvmOverloads
    public final List<File> unzip(String str, String destDirectory, a aVar) throws Throwable {
        Intrinsics.h(destDirectory, "destDirectory");
        if (str == null || str.length() == 0) {
            throw new IOException("Path is empty");
        }
        File file = new File(str);
        if (!file.exists()) {
            throw new IOException("File does not exist");
        }
        File file2 = new File(destDirectory);
        if (!file2.exists()) {
            file2.mkdirs();
        }
        ArrayList arrayList = new ArrayList();
        ZipFile zipFile = null;
        try {
            ZipFile zipFile2 = new ZipFile(file);
            try {
                Enumeration<? extends ZipEntry> enumerationEntries = zipFile2.entries();
                while (enumerationEntries.hasMoreElements()) {
                    ZipEntry zipEntryNextElement = enumerationEntries.nextElement();
                    String str2 = destDirectory + File.separator + zipEntryNextElement.getName();
                    if (aVar == null || aVar.matches(str2)) {
                        validateFilename(str2, destDirectory);
                        if (zipEntryNextElement.isDirectory()) {
                            File file3 = new File(str2);
                            if (!file3.exists()) {
                                file3.mkdirs();
                            }
                        } else {
                            InputStream inputStream = zipFile2.getInputStream(zipEntryNextElement);
                            Intrinsics.g(inputStream, "zipFile.getInputStream(entry)");
                            extractFile(inputStream, str2);
                            arrayList.add(new File(str2));
                        }
                    }
                }
                try {
                    zipFile2.close();
                } catch (IOException unused) {
                }
                return arrayList;
            } catch (Throwable th2) {
                th = th2;
                zipFile = zipFile2;
                if (zipFile != null) {
                    try {
                        zipFile.close();
                    } catch (IOException unused2) {
                    }
                }
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }
}
