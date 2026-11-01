package cw;

import android.text.TextUtils;
import com.transsion.upload.auth.AuthCheckManager;
import com.transsion.upload.bean.TstTokenEntity;
import com.transsion.upload.bean.UploadFileType;
import com.transsion.upload.bean.UploadTstTokenStorageType;
import dw.d;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final c f60931a = new c();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Map f60932b = new LinkedHashMap();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static b f60933c;

    private static final class a implements com.transsion.upload.auth.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String f60934a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final UploadFileType f60935b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final boolean f60936c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final WeakReference f60937d;

        public a(String localFilePath, UploadFileType uploadFileType, boolean z10, WeakReference callbackRef) {
            Intrinsics.h(localFilePath, "localFilePath");
            Intrinsics.h(uploadFileType, "uploadFileType");
            Intrinsics.h(callbackRef, "callbackRef");
            this.f60934a = localFilePath;
            this.f60935b = uploadFileType;
            this.f60936c = z10;
            this.f60937d = callbackRef;
        }

        @Override // com.transsion.upload.auth.a
        public void a(TstTokenEntity tstTokenEntity) {
            cw.a aVar = (cw.a) this.f60937d.get();
            if (aVar != null) {
                if (tstTokenEntity == null) {
                    aVar.c(this.f60934a, "TstTokenEntity is empty", "", null);
                    return;
                }
                dw.a aVarD = c.f60931a.d(tstTokenEntity.getStorage());
                if (aVarD != null) {
                    aVarD.i(tstTokenEntity, this.f60934a, this.f60935b, this.f60936c, (cw.a) this.f60937d.get());
                }
            }
        }

        @Override // com.transsion.upload.auth.a
        public void onFail(String str) {
            cw.a aVar = (cw.a) this.f60937d.get();
            if (aVar != null) {
                cw.a.C0724a.a(aVar, this.f60934a, "client authorization failed", null, null, 12, null);
            }
        }
    }

    private c() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final dw.a d(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        Map map = f60932b;
        if (!map.containsKey(str)) {
            UploadTstTokenStorageType uploadTstTokenStorageType = UploadTstTokenStorageType.TST_TOKEN_STORAGE_OSS;
            if (Intrinsics.c(str, uploadTstTokenStorageType.getType())) {
                map.put(uploadTstTokenStorageType.getType(), new dw.c());
            } else {
                UploadTstTokenStorageType uploadTstTokenStorageType2 = UploadTstTokenStorageType.TST_TOKEN_STORAGE_S3;
                if (Intrinsics.c(str, uploadTstTokenStorageType2.getType())) {
                    map.put(uploadTstTokenStorageType2.getType(), new d());
                }
            }
        }
        return (dw.a) map.get(str);
    }

    public final void b() {
        Iterator it = f60932b.entrySet().iterator();
        while (it.hasNext()) {
            ((dw.a) ((Map.Entry) it.next()).getValue()).b();
        }
    }

    public final b c() {
        return f60933c;
    }

    public final void e(b config) {
        Intrinsics.h(config, "config");
        f60933c = config;
    }

    public final void f(String localFilePath, UploadFileType uploadFileType, boolean z10, cw.a aVar) {
        Intrinsics.h(localFilePath, "localFilePath");
        Intrinsics.h(uploadFileType, "uploadFileType");
        AuthCheckManager.f56632a.f(new a(localFilePath, uploadFileType, z10, new WeakReference(aVar)));
    }
}
