package tu;

import android.content.Context;
import com.hisavana.common.tracking.TrackingKey;
import com.tencent.tinker.loader.shareutil.SharePatchFileUtil;
import com.tencent.tinker.loader.shareutil.ShareTinkerInternals;
import com.tencent.tinker.loader.shareutil.ShareTinkerLog;
import java.io.File;
import java.util.Properties;
import ou.c;

/* JADX INFO: loaded from: classes7.dex */
public class a extends sf.a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final long f76363c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f76364d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private c f76365e;

    public a(Context context) {
        this(context, ou.a.s().D(), null);
    }

    public a(Context context, long j11, String str) {
        super(context);
        this.f76363c = j11 <= 0 ? 0L : j11;
        this.f76364d = str;
    }

    @Override // sf.a
    protected int d(String str, String str2) throws Throwable {
        String property;
        int iD = super.d(str, str2);
        if (iD != 0) {
            ShareTinkerLog.w("Tinker.CustomPatchListener", "base patchCheck rejected: code=%d, path=%s", Integer.valueOf(iD), str);
            return iD;
        }
        File file = new File(str);
        long fileOrDirectorySize = SharePatchFileUtil.getFileOrDirectorySize(file);
        ShareTinkerLog.i("Tinker.CustomPatchListener", "patch check: path=%s, size=%d", str, Long.valueOf(fileOrDirectorySize));
        long j11 = this.f76363c;
        if (j11 > 0 && fileOrDirectorySize > j11) {
            ShareTinkerLog.w("Tinker.CustomPatchListener", "patch size %d exceeds limit %d", Long.valueOf(fileOrDirectorySize), Long.valueOf(this.f76363c));
            return -101;
        }
        Properties propertiesFastGetPatchPackageMeta = ShareTinkerInternals.fastGetPatchPackageMeta(file);
        if (propertiesFastGetPatchPackageMeta == null) {
            ShareTinkerLog.w("Tinker.CustomPatchListener", "patch package meta not found", new Object[0]);
            return -100;
        }
        if (this.f76364d == null || ((property = propertiesFastGetPatchPackageMeta.getProperty(TrackingKey.PLATFORM)) != null && this.f76364d.equals(property))) {
            return 0;
        }
        ShareTinkerLog.w("Tinker.CustomPatchListener", "channel mismatch: expected=%s, platform=%s", this.f76364d, property);
        return -100;
    }

    public void f(c cVar) {
        this.f76365e = cVar;
    }
}
