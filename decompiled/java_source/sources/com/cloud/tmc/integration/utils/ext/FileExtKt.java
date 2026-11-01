package com.cloud.tmc.integration.utils.ext;

import android.graphics.Bitmap;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.cloud.tmc.integration.BuildConfig;
import com.cloud.tmc.integration.utils.FileUtil;
import com.cloud.tmc.kernel.utils.func.MimeTypeKt;
import com.cloud.tmc.miniutils.util.FileUtils;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.File;
import java.nio.charset.Charset;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.io.FilesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.Charsets;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000N\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0011\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0010\u0012\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\u001a\f\u0010\u0011\u001a\u0004\u0018\u00010\u0012*\u00020\b\u001a\n\u0010\u0013\u001a\u00020\u0001*\u00020\u0002\u001a\u0014\u0010\u0014\u001a\u00020\u0001*\u00020\u00022\b\b\u0002\u0010\u0015\u001a\u00020\u0001\u001a\f\u0010\u0016\u001a\u0004\u0018\u00010\b*\u00020\u0002\u001aH\u0010\u0017\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00020\u0018*\u00020\u00022\b\b\u0002\u0010\u0015\u001a\u00020\u00012%\b\u0002\u0010\u0019\u001a\u001f\u0012\u0013\u0012\u00110\u0002¢\u0006\f\b\u001b\u0012\b\b\u001c\u0012\u0004\b\b(\u001d\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u001a¢\u0006\u0002\u0010\u001e\u001a&\u0010\u001f\u001a\u00020\u0001*\u00020\u00022\u0006\u0010 \u001a\u00020\u00022\b\b\u0002\u0010!\u001a\u00020\u00012\b\b\u0002\u0010\"\u001a\u00020\u0001\u001a\n\u0010#\u001a\u00020$*\u00020\u0002\u001a\u0012\u0010%\u001a\u00020\u0001*\u00020\u00022\u0006\u0010&\u001a\u00020\u0002\u001a\u0012\u0010%\u001a\u00020\u0001*\u00020\u00022\u0006\u0010'\u001a\u00020\b\u001a\u001c\u0010(\u001a\u00020$*\u00020\u00022\b\b\u0002\u0010)\u001a\u00020\u00012\u0006\u0010*\u001a\u00020+\u001a&\u0010,\u001a\u00020$*\u00020\u00022\b\b\u0002\u0010)\u001a\u00020\u00012\u0006\u0010-\u001a\u00020\b2\b\b\u0002\u0010.\u001a\u00020/\"\u0015\u0010\u0000\u001a\u00020\u0001*\u00020\u00028F¢\u0006\u0006\u001a\u0004\b\u0003\u0010\u0004\"\u0015\u0010\u0005\u001a\u00020\u0001*\u00020\u00028F¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0004\"\u0015\u0010\u0007\u001a\u00020\b*\u00020\u00028F¢\u0006\u0006\u001a\u0004\b\t\u0010\n\"\u0015\u0010\u000b\u001a\u00020\b*\u00020\u00028F¢\u0006\u0006\u001a\u0004\b\f\u0010\n\"\u0015\u0010\r\u001a\u00020\u000e*\u00020\u00028F¢\u0006\u0006\u001a\u0004\b\u000f\u0010\u0010¨\u00060"}, d2 = {"canListFiles", "", "Ljava/io/File;", "getCanListFiles", "(Ljava/io/File;)Z", RequestParameters.SUBRESOURCE_DELETE, "getDelete", "formatSize", "", "getFormatSize", "(Ljava/io/File;)Ljava/lang/String;", "mimeType", "getMimeType", "totalSize", "", "getTotalSize", "(Ljava/io/File;)J", "base64ToBitmap", "Landroid/graphics/Bitmap;", "createOrExistsFile", "deleteDir", "isRecursive", "encodeBase64File", "listFiles", "", "filter", "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", OfflineConstantsKt.OFFLINE_DOWNLOAD_SEARCH_MODE_FILE, "(Ljava/io/File;ZLkotlin/jvm/functions/Function1;)[Ljava/io/File;", "moveTo", "destFile", "overwrite", "reserve", "notifySystemToScan", "", "rename", "newFile", "newName", "writeBytes", RequestParameters.SUBRESOURCE_APPEND, "bytes", "", "writeText", MimeTypes.BASE_TYPE_TEXT, "charset", "Ljava/nio/charset/Charset;", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 2, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class FileExtKt {
    public static final Bitmap base64ToBitmap(String str) {
        Intrinsics.h(str, "<this>");
        return FileUtil.base64ToBitmap(str);
    }

    public static final boolean createOrExistsFile(File file) {
        Intrinsics.h(file, "<this>");
        return FileUtils.createOrExistsFile(file);
    }

    public static final boolean deleteDir(File file, boolean z10) {
        Intrinsics.h(file, "<this>");
        if (!file.exists()) {
            return true;
        }
        if (file.isDirectory()) {
            return z10 ? getDelete(file) : file.delete();
        }
        return false;
    }

    public static /* synthetic */ boolean deleteDir$default(File file, boolean z10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            z10 = false;
        }
        return deleteDir(file, z10);
    }

    public static final String encodeBase64File(File file) {
        Intrinsics.h(file, "<this>");
        return FileUtil.encodeBase64File(file);
    }

    public static final boolean getCanListFiles(File file) {
        Intrinsics.h(file, "<this>");
        return file.isDirectory() & file.canRead();
    }

    public static final boolean getDelete(File file) {
        Intrinsics.h(file, "<this>");
        return FileUtils.delete(file);
    }

    public static final String getFormatSize(File file) {
        Intrinsics.h(file, "<this>");
        String size = FileUtils.getSize(file);
        Intrinsics.g(size, "getSize(this)");
        return size;
    }

    public static final String getMimeType(File file) {
        Intrinsics.h(file, "<this>");
        return MimeTypeKt.getMimeType(FilesKt.w(file), file.isDirectory());
    }

    public static final long getTotalSize(File file) {
        Intrinsics.h(file, "<this>");
        return FileUtils.getLength(file);
    }

    public static final File[] listFiles(File file, boolean z10, Function1<? super File, Boolean> function1) {
        File[] fileList;
        Intrinsics.h(file, "<this>");
        try {
            if (z10) {
                List<File> listListFilesInDir = FileUtils.listFilesInDir(file, z10);
                Intrinsics.g(listListFilesInDir, "listFilesInDir(this, isRecursive)");
                fileList = (File[]) listListFilesInDir.toArray(new File[0]);
            } else {
                fileList = file.listFiles();
            }
            if (function1 == null) {
                Intrinsics.g(fileList, "fileList");
                return fileList;
            }
            File[] fileArr = new File[0];
            Intrinsics.g(fileList, "fileList");
            for (File file2 : fileList) {
                Intrinsics.g(file2, "file");
                if (((Boolean) function1.invoke(file2)).booleanValue()) {
                    fileArr = (File[]) ArraysKt.E(fileArr, file2);
                }
            }
            return fileArr;
        } catch (Throwable unused) {
            return new File[0];
        }
    }

    public static /* synthetic */ File[] listFiles$default(File file, boolean z10, Function1 function1, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            z10 = false;
        }
        if ((i11 & 2) != 0) {
            function1 = null;
        }
        return listFiles(file, z10, function1);
    }

    public static final boolean moveTo(File file, File destFile, boolean z10, boolean z11) {
        Intrinsics.h(file, "<this>");
        Intrinsics.h(destFile, "destFile");
        boolean zR = FilesKt.r(file, destFile, z10, null, 4, null);
        if (!z11) {
            FilesKt.v(file);
        }
        return zR;
    }

    public static /* synthetic */ boolean moveTo$default(File file, File file2, boolean z10, boolean z11, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            z10 = true;
        }
        if ((i11 & 4) != 0) {
            z11 = true;
        }
        return moveTo(file, file2, z10, z11);
    }

    public static final void notifySystemToScan(File file) {
        Intrinsics.h(file, "<this>");
        FileUtils.notifySystemToScan(file);
    }

    public static final boolean rename(File file, File newFile) {
        Intrinsics.h(file, "<this>");
        Intrinsics.h(newFile, "newFile");
        if (newFile.exists()) {
            return false;
        }
        return file.renameTo(newFile);
    }

    public static final boolean rename(File file, String newName) {
        Intrinsics.h(file, "<this>");
        Intrinsics.h(newName, "newName");
        return rename(file, new File(file.getParent() + File.separator + newName));
    }

    public static final void writeBytes(File file, boolean z10, byte[] bytes) {
        Intrinsics.h(file, "<this>");
        Intrinsics.h(bytes, "bytes");
        if (z10) {
            FilesKt.c(file, bytes);
        } else {
            FilesKt.j(file, bytes);
        }
    }

    public static /* synthetic */ void writeBytes$default(File file, boolean z10, byte[] bArr, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            z10 = false;
        }
        writeBytes(file, z10, bArr);
    }

    public static final void writeText(File file, boolean z10, String text, Charset charset) {
        Intrinsics.h(file, "<this>");
        Intrinsics.h(text, "text");
        Intrinsics.h(charset, "charset");
        if (z10) {
            FilesKt.d(file, text, charset);
        } else {
            FilesKt.k(file, text, charset);
        }
    }

    public static /* synthetic */ void writeText$default(File file, boolean z10, String str, Charset charset, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            z10 = false;
        }
        if ((i11 & 4) != 0) {
            charset = Charsets.UTF_8;
        }
        writeText(file, z10, str, charset);
    }
}
