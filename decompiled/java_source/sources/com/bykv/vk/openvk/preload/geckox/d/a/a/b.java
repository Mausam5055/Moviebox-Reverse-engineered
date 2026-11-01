package com.bykv.vk.openvk.preload.geckox.d.a.a;

import android.net.Uri;
import android.text.TextUtils;
import android.util.Pair;
import com.bykv.vk.openvk.preload.b.d;
import com.bykv.vk.openvk.preload.geckox.buffer.stream.BufferOutputStream;
import com.bykv.vk.openvk.preload.geckox.logger.GeckoLogger;
import com.bykv.vk.openvk.preload.geckox.model.UpdatePackage;
import java.io.File;

/* JADX INFO: loaded from: classes2.dex */
public class b extends d<Pair<Uri, UpdatePackage>, Pair<com.bykv.vk.openvk.preload.geckox.buffer.a, UpdatePackage>> {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private com.bykv.vk.openvk.preload.geckox.b f20660d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private File f20661e;

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.bykv.vk.openvk.preload.b.d
    public Object a(com.bykv.vk.openvk.preload.b.b<Pair<com.bykv.vk.openvk.preload.geckox.buffer.a, UpdatePackage>> bVar, Pair<Uri, UpdatePackage> pair) throws Throwable {
        GeckoLogger.d("gecko-debug-tag", "start download full single file channel:", ((UpdatePackage) pair.second).getChannel());
        UpdatePackage updatePackage = (UpdatePackage) pair.second;
        String string = ((Uri) pair.first).toString();
        long length = updatePackage.getFullPackage().getLength();
        File file = this.f20661e;
        StringBuilder sb2 = new StringBuilder();
        sb2.append(updatePackage.getAccessKey());
        String str = File.separator;
        sb2.append(str);
        sb2.append(updatePackage.getChannel());
        sb2.append(str);
        sb2.append(updatePackage.getVersion());
        sb2.append("--updating");
        File file2 = new File(file, sb2.toString());
        file2.mkdirs();
        File file3 = new File(file2, "res" + str + a(updatePackage, string));
        this.f20660d.a();
        com.bykv.vk.openvk.preload.geckox.buffer.a aVarA = com.bykv.vk.openvk.preload.geckox.buffer.a.a.a(file3, length);
        try {
            try {
                this.f20660d.i().downloadFile(string, length, new BufferOutputStream(aVarA));
                try {
                    Object objA = bVar.a(new Pair<>(aVarA, updatePackage));
                    try {
                        aVarA.e();
                    } catch (Exception e11) {
                        GeckoLogger.w("gecko-debug-tag", "DownloadFullSingleFile-release:", e11);
                    }
                    return objA;
                } catch (Exception e12) {
                    throw e12;
                }
            } catch (Throwable th2) {
                aVarA.e();
                throw new com.bykv.vk.openvk.preload.geckox.b.a("download full single file failed! url:" + string + ", channel:" + updatePackage.getChannel() + ", pkg id:" + updatePackage.getFullPackage().getId() + ", caused by:" + th2.getMessage(), th2);
            }
        } catch (Throwable th3) {
            try {
                aVarA.e();
            } catch (Exception e13) {
                GeckoLogger.w("gecko-debug-tag", "DownloadFullSingleFile-release:", e13);
            }
            throw th3;
        }
    }

    public static String a(UpdatePackage updatePackage, String str) {
        if (TextUtils.isEmpty(str)) {
            throw new RuntimeException("url empty, channel:" + updatePackage.getChannel());
        }
        int iLastIndexOf = str.lastIndexOf("/");
        if (iLastIndexOf == -1) {
            throw new RuntimeException("url path illegal, url:".concat(str));
        }
        String strSubstring = str.substring(iLastIndexOf + 1);
        if (TextUtils.isEmpty(strSubstring)) {
            throw new RuntimeException("url path illegal, url:".concat(str));
        }
        return strSubstring;
    }

    @Override // com.bykv.vk.openvk.preload.b.d
    protected final void a(Object... objArr) {
        super.a(objArr);
        this.f20660d = (com.bykv.vk.openvk.preload.geckox.b) objArr[0];
        this.f20661e = (File) objArr[1];
    }
}
