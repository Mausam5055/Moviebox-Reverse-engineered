package cw;

import com.transsion.upload.bean.UploadTstTokenStorageType;

/* JADX INFO: loaded from: classes6.dex */
public interface a {

    /* JADX INFO: renamed from: cw.a$a, reason: collision with other inner class name */
    /* JADX INFO: loaded from: classes7.dex */
    public static final class C0724a {
        public static /* synthetic */ void a(a aVar, String str, String str2, String str3, UploadTstTokenStorageType uploadTstTokenStorageType, int i11, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: onFailure");
            }
            if ((i11 & 2) != 0) {
                str2 = null;
            }
            if ((i11 & 4) != 0) {
                str3 = null;
            }
            if ((i11 & 8) != 0) {
                uploadTstTokenStorageType = null;
            }
            aVar.c(str, str2, str3, uploadTstTokenStorageType);
        }
    }

    void a(String str, long j11, long j12);

    void b(String str, String str2, String str3);

    void c(String str, String str2, String str3, UploadTstTokenStorageType uploadTstTokenStorageType);
}
