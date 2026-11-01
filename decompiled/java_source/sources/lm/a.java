package lm;

import com.transsion.lib_web.download_render.data.FileData;
import com.transsion.lib_web.download_render.data.FileOperateStatus;
import com.transsion.lib_web.download_render.data.PageData;
import com.transsion.lib_web.download_render.task.compare.CompareRequest;
import com.transsion.lib_web.download_render.task.compare.CompareResponse;
import gm.i;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class a implements km.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f68976a = "DR_VersionDiffCompareStep";

    @Override // km.b
    public CompareResponse a(CompareRequest request, km.b.a chain) {
        long j11;
        Intrinsics.h(request, "request");
        Intrinsics.h(chain, "chain");
        PageData localPageData = request.getLocalPageData();
        PageData remotePageData = request.getRemotePageData();
        if (Intrinsics.c(localPageData.getVersionCode(), remotePageData.getVersionCode())) {
            return chain.a(request);
        }
        i.f63883a.a(b(), "<VersionDiffCompareStep> load start");
        Map<String, FileData> localFileMap = localPageData.getLocalFileMap();
        List<FileData> files = remotePageData.getFiles();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        LinkedHashMap linkedHashMap3 = new LinkedHashMap();
        LinkedHashMap linkedHashMap4 = new LinkedHashMap();
        if (files != null) {
            long jLongValue = 0;
            for (FileData fileData : files) {
                Long size = fileData.getSize();
                jLongValue += size != null ? size.longValue() : 0L;
                FileData fileData2 = localFileMap.get(fileData.getFileUrl());
                if (fileData2 == null) {
                    FileData fileDataC = c(fileData);
                    String fileUrl = fileData.getFileUrl();
                    if (fileUrl != null) {
                        if (fileDataC == null) {
                            fileData.setFileOperateStatus$lib_web_release(FileOperateStatus.DOWNLOAD);
                            linkedHashMap3.put(fileUrl, fileData);
                        } else {
                            linkedHashMap2.put(fileUrl, fileDataC);
                        }
                    }
                } else if (Intrinsics.c(fileData2.getMd5(), fileData.getMd5())) {
                    String fileUrl2 = fileData2.getFileUrl();
                    if (fileUrl2 != null) {
                        linkedHashMap4.put(fileUrl2, fileData2);
                    }
                } else {
                    String fileUrl3 = fileData2.getFileUrl();
                    if (fileUrl3 != null) {
                        fileData2.setFileOperateStatus$lib_web_release(FileOperateStatus.DELETE);
                        linkedHashMap.put(fileUrl3, fileData2);
                    }
                    FileData fileDataC2 = c(fileData);
                    String fileUrl4 = fileData.getFileUrl();
                    if (fileUrl4 != null) {
                        if (fileDataC2 == null) {
                            fileData.setFileOperateStatus$lib_web_release(FileOperateStatus.DOWNLOAD);
                            linkedHashMap3.put(fileUrl4, fileData);
                        } else {
                            linkedHashMap2.put(fileUrl4, fileDataC2);
                        }
                    }
                }
            }
            j11 = jLongValue;
        } else {
            j11 = 0;
        }
        for (Map.Entry<String, FileData> entry : localFileMap.entrySet()) {
            if (!linkedHashMap4.containsKey(entry.getKey())) {
                String key = entry.getKey();
                FileData value = entry.getValue();
                value.setFileOperateStatus$lib_web_release(FileOperateStatus.DELETE);
                linkedHashMap.put(key, value);
            }
        }
        i.f63883a.a(b(), "<VersionDiffCompareStep> load end");
        return new CompareResponse(CollectionsKt.R0(linkedHashMap.values()), CollectionsKt.R0(linkedHashMap2.values()), CollectionsKt.R0(linkedHashMap3.values()), j11);
    }

    public String b() {
        return this.f68976a;
    }

    public FileData c(FileData fileData) {
        return km.b.C0811b.a(this, fileData);
    }
}
