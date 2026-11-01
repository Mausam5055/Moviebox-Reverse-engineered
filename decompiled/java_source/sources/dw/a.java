package dw;

import com.blankj.utilcode.util.l;
import com.blankj.utilcode.util.n;
import com.transsion.upload.bean.TstTokenEntity;
import com.transsion.upload.bean.UploadFileType;
import com.transsion.upload.bean.UploadTstTokenStorageType;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.Random;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public abstract class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Random f61436a = new Random();

    private final String e(UploadFileType uploadFileType, String str) {
        Date date = new Date();
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd", Locale.getDefault());
        return uploadFileType.getType() + "/" + f().getType() + "_" + simpleDateFormat.format(date) + "_" + System.currentTimeMillis() + "." + n.g(str);
    }

    private final String g() {
        cw.b bVarC = cw.c.f60931a.c();
        String strB = l.b(bVarC != null ? bVarC.g() : null);
        Intrinsics.g(strB, "encryptMD5ToString(Uploa…Manager.config?.getUid())");
        return strB;
    }

    public final String a(UploadFileType uploadFileType, String localFilePath) {
        Intrinsics.h(uploadFileType, "uploadFileType");
        Intrinsics.h(localFilePath, "localFilePath");
        if (uploadFileType == UploadFileType.OBJECT_NAME_LOGGER) {
            return e(uploadFileType, localFilePath);
        }
        int iNextInt = this.f61436a.nextInt(10);
        return uploadFileType.getType() + "/" + f().getType() + "_" + g() + "_" + System.currentTimeMillis() + iNextInt + "." + n.g(localFilePath);
    }

    public abstract void b();

    public abstract void c(TstTokenEntity tstTokenEntity, String str, UploadFileType uploadFileType, boolean z10, cw.a aVar);

    public final String d() {
        String simpleName = getClass().getSimpleName();
        Intrinsics.g(simpleName, "javaClass.simpleName");
        return simpleName;
    }

    public abstract UploadTstTokenStorageType f();

    public abstract void h(TstTokenEntity tstTokenEntity);

    public final void i(TstTokenEntity tstToken, String localFilePath, UploadFileType uploadFileType, boolean z10, cw.a aVar) {
        Intrinsics.h(tstToken, "tstToken");
        Intrinsics.h(localFilePath, "localFilePath");
        Intrinsics.h(uploadFileType, "uploadFileType");
        h(tstToken);
        c(tstToken, localFilePath, uploadFileType, z10, aVar);
    }
}
