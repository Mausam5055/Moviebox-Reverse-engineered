package tf;

import android.content.Context;
import com.tencent.tinker.loader.TinkerRuntimeException;
import com.tencent.tinker.loader.shareutil.ShareArkHotDiffPatchInfo;
import com.tencent.tinker.loader.shareutil.SharePatchFileUtil;
import com.tencent.tinker.loader.shareutil.ShareSecurityCheck;
import com.tencent.tinker.loader.shareutil.ShareTinkerInternals;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.zip.ZipFile;

/* JADX INFO: loaded from: classes5.dex */
public class b extends c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static ArrayList f76202a = new ArrayList();

    private static boolean c(Context context, String str, File file, int i11) throws Throwable {
        vf.a aVarX = vf.a.x(context);
        ZipFile zipFile = null;
        try {
            try {
                ZipFile zipFile2 = new ZipFile(file);
                try {
                    for (ShareArkHotDiffPatchInfo shareArkHotDiffPatchInfo : f76202a) {
                        String str2 = shareArkHotDiffPatchInfo.path;
                        String str3 = str2.equals("") ? shareArkHotDiffPatchInfo.name : str2 + "/" + shareArkHotDiffPatchInfo.name;
                        String str4 = shareArkHotDiffPatchInfo.patchMd5;
                        if (!SharePatchFileUtil.checkIfMd5Valid(str4)) {
                            aVarX.k().b(file, c.b(i11));
                            SharePatchFileUtil.closeZip(zipFile2);
                            return false;
                        }
                        File file2 = new File(str + shareArkHotDiffPatchInfo.name);
                        if (!file2.exists()) {
                            file2.getParentFile().mkdirs();
                        } else if (!str4.equals(SharePatchFileUtil.getMD5(file2))) {
                            file2.delete();
                        }
                        if (!c.a(zipFile2, zipFile2.getEntry(str3), file2, str4, false)) {
                            aVarX.k().a(file, file2, shareArkHotDiffPatchInfo.name, i11);
                            SharePatchFileUtil.closeZip(zipFile2);
                            return false;
                        }
                    }
                    SharePatchFileUtil.closeZip(zipFile2);
                    return true;
                } catch (IOException e11) {
                    e = e11;
                    zipFile = zipFile2;
                    throw new TinkerRuntimeException("patch " + ShareTinkerInternals.getTypeString(i11) + " extract failed (" + e.getMessage() + ").", e);
                } catch (Throwable th2) {
                    th = th2;
                    zipFile = zipFile2;
                    SharePatchFileUtil.closeZip(zipFile);
                    throw th;
                }
            } catch (IOException e12) {
                e = e12;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    private static boolean d(Context context, String str, String str2, File file) {
        String str3 = str + "/arkHot/";
        f76202a.clear();
        ShareArkHotDiffPatchInfo.parseDiffPatchInfo(str2, f76202a);
        return c(context, str3, file, 8);
    }

    protected static boolean e(vf.a aVar, ShareSecurityCheck shareSecurityCheck, Context context, String str, File file) {
        String str2 = shareSecurityCheck.getMetaContentMap().get("assets/arkHot_meta.txt");
        if (str2 == null) {
            return true;
        }
        d(context, str, str2, file);
        return true;
    }
}
