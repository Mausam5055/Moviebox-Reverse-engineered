package tf;

import com.tencent.tinker.loader.shareutil.SharePatchFileUtil;
import com.tencent.tinker.loader.shareutil.ShareTinkerInternals;
import com.tencent.tinker.loader.shareutil.ShareTinkerLog;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;

/* JADX INFO: loaded from: classes5.dex */
public class c {
    public static boolean a(ZipFile zipFile, ZipEntry zipEntry, File file, String str, boolean z10) throws Throwable {
        BufferedInputStream bufferedInputStream;
        int i11 = 0;
        boolean zVerifyDexFileMd5 = false;
        while (i11 < 2 && !zVerifyDexFileMd5) {
            i11++;
            ShareTinkerLog.i("Tinker.BasePatchInternal", "try Extracting " + file.getPath(), new Object[0]);
            BufferedOutputStream bufferedOutputStream = null;
            try {
                if (file.exists()) {
                    file.delete();
                }
                bufferedInputStream = new BufferedInputStream(zipFile.getInputStream(zipEntry));
                try {
                    BufferedOutputStream bufferedOutputStream2 = new BufferedOutputStream(new FileOutputStream(file));
                    try {
                        if (ShareTinkerInternals.isNewerOrEqualThanVersion(33, true)) {
                            file.setReadOnly();
                        }
                        byte[] bArr = new byte[4096];
                        while (true) {
                            int i12 = bufferedInputStream.read(bArr);
                            if (i12 <= 0) {
                                break;
                            }
                            bufferedOutputStream2.write(bArr, 0, i12);
                        }
                        pf.b.a(bufferedOutputStream2);
                        pf.b.a(bufferedInputStream);
                        if (str != null) {
                            zVerifyDexFileMd5 = z10 ? SharePatchFileUtil.verifyDexFileMd5(file, str) : SharePatchFileUtil.verifyFileMd5(file, str);
                        } else {
                            zVerifyDexFileMd5 = true;
                        }
                        ShareTinkerLog.i("Tinker.BasePatchInternal", "isExtractionSuccessful: %b", Boolean.valueOf(zVerifyDexFileMd5));
                        if (!zVerifyDexFileMd5 && (!file.delete() || file.exists())) {
                            ShareTinkerLog.e("Tinker.BasePatchInternal", "Failed to delete corrupted dex " + file.getPath(), new Object[0]);
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        bufferedOutputStream = bufferedOutputStream2;
                        pf.b.a(bufferedOutputStream);
                        pf.b.a(bufferedInputStream);
                        throw th;
                    }
                } catch (Throwable th3) {
                    th = th3;
                }
            } catch (Throwable th4) {
                th = th4;
                bufferedInputStream = null;
            }
        }
        return zVerifyDexFileMd5;
    }

    public static int b(int i11) {
        if (i11 == 3) {
            return -3;
        }
        if (i11 == 5) {
            return -4;
        }
        return i11 == 6 ? -8 : 0;
    }
}
