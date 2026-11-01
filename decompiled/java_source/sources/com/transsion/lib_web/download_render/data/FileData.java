package com.transsion.lib_web.download_render.data;

import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Keep
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b0\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001Bq\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u0012\b\b\u0002\u0010\u000b\u001a\u00020\f\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u000f\u0010\u0010J\u000b\u0010,\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010-\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010.\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010/\u001a\u0004\u0018\u00010\u0007HÆ\u0003¢\u0006\u0002\u0010\u0019J\u000b\u00100\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u00101\u001a\u0004\u0018\u00010\nHÆ\u0003¢\u0006\u0002\u0010 J\u000e\u00102\u001a\u00020\fHÀ\u0003¢\u0006\u0002\b3J\u0010\u00104\u001a\u0004\u0018\u00010\u0003HÀ\u0003¢\u0006\u0002\b5J\u0010\u00106\u001a\u0004\u0018\u00010\u0003HÀ\u0003¢\u0006\u0002\b7Jx\u00108\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\b\b\u0002\u0010\u000b\u001a\u00020\f2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0003HÆ\u0001¢\u0006\u0002\u00109J\u0013\u0010:\u001a\u00020\u00072\b\u0010;\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010<\u001a\u00020=HÖ\u0001J\t\u0010>\u001a\u00020\u0003HÖ\u0001R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0012\"\u0004\b\u0016\u0010\u0014R\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0012\"\u0004\b\u0018\u0010\u0014R\u001e\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u001c\u001a\u0004\b\u0006\u0010\u0019\"\u0004\b\u001a\u0010\u001bR\u001c\u0010\b\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001d\u0010\u0012\"\u0004\b\u001e\u0010\u0014R\u001e\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e¢\u0006\u0010\n\u0002\u0010#\u001a\u0004\b\u001f\u0010 \"\u0004\b!\u0010\"R\u001a\u0010\u000b\u001a\u00020\fX\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b$\u0010%\"\u0004\b&\u0010'R\u001c\u0010\r\u001a\u0004\u0018\u00010\u0003X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b(\u0010\u0012\"\u0004\b)\u0010\u0014R\u001c\u0010\u000e\u001a\u0004\u0018\u00010\u0003X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b*\u0010\u0012\"\u0004\b+\u0010\u0014¨\u0006?"}, d2 = {"Lcom/transsion/lib_web/download_render/data/FileData;", "", "fileName", "", "fileUrl", "md5", "isStatic", "", "mimeType", "size", "", "fileOperateStatus", "Lcom/transsion/lib_web/download_render/data/FileOperateStatus;", "fileLocalPath", "fileCopyOriginLocalPath", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Long;Lcom/transsion/lib_web/download_render/data/FileOperateStatus;Ljava/lang/String;Ljava/lang/String;)V", "getFileName", "()Ljava/lang/String;", "setFileName", "(Ljava/lang/String;)V", "getFileUrl", "setFileUrl", "getMd5", "setMd5", "()Ljava/lang/Boolean;", "setStatic", "(Ljava/lang/Boolean;)V", "Ljava/lang/Boolean;", "getMimeType", "setMimeType", "getSize", "()Ljava/lang/Long;", "setSize", "(Ljava/lang/Long;)V", "Ljava/lang/Long;", "getFileOperateStatus$lib_web_release", "()Lcom/transsion/lib_web/download_render/data/FileOperateStatus;", "setFileOperateStatus$lib_web_release", "(Lcom/transsion/lib_web/download_render/data/FileOperateStatus;)V", "getFileLocalPath$lib_web_release", "setFileLocalPath$lib_web_release", "getFileCopyOriginLocalPath$lib_web_release", "setFileCopyOriginLocalPath$lib_web_release", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component7$lib_web_release", "component8", "component8$lib_web_release", "component9", "component9$lib_web_release", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Long;Lcom/transsion/lib_web/download_render/data/FileOperateStatus;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/lib_web/download_render/data/FileData;", "equals", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "hashCode", "", "toString", "lib_web_release"}, k = 1, mv = {2, 0, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class FileData {
    private String fileCopyOriginLocalPath;
    private String fileLocalPath;
    private String fileName;
    private FileOperateStatus fileOperateStatus;
    private String fileUrl;
    private Boolean isStatic;
    private String md5;
    private String mimeType;
    private Long size;

    public FileData() {
        this(null, null, null, null, null, null, null, null, null, 511, null);
    }

    public FileData(String str, String str2, String str3, Boolean bool, String str4, Long l11, FileOperateStatus fileOperateStatus, String str5, String str6) {
        Intrinsics.h(fileOperateStatus, "fileOperateStatus");
        this.fileName = str;
        this.fileUrl = str2;
        this.md5 = str3;
        this.isStatic = bool;
        this.mimeType = str4;
        this.size = l11;
        this.fileOperateStatus = fileOperateStatus;
        this.fileLocalPath = str5;
        this.fileCopyOriginLocalPath = str6;
    }

    public /* synthetic */ FileData(String str, String str2, String str3, Boolean bool, String str4, Long l11, FileOperateStatus fileOperateStatus, String str5, String str6, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? null : str, (i11 & 2) != 0 ? null : str2, (i11 & 4) != 0 ? null : str3, (i11 & 8) != 0 ? Boolean.FALSE : bool, (i11 & 16) != 0 ? null : str4, (i11 & 32) != 0 ? null : l11, (i11 & 64) != 0 ? FileOperateStatus.NONE : fileOperateStatus, (i11 & 128) != 0 ? null : str5, (i11 & 256) == 0 ? str6 : null);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getFileName() {
        return this.fileName;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getFileUrl() {
        return this.fileUrl;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getMd5() {
        return this.md5;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final Boolean getIsStatic() {
        return this.isStatic;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getMimeType() {
        return this.mimeType;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final Long getSize() {
        return this.size;
    }

    /* JADX INFO: renamed from: component7$lib_web_release, reason: from getter */
    public final FileOperateStatus getFileOperateStatus() {
        return this.fileOperateStatus;
    }

    /* JADX INFO: renamed from: component8$lib_web_release, reason: from getter */
    public final String getFileLocalPath() {
        return this.fileLocalPath;
    }

    /* JADX INFO: renamed from: component9$lib_web_release, reason: from getter */
    public final String getFileCopyOriginLocalPath() {
        return this.fileCopyOriginLocalPath;
    }

    public final FileData copy(String fileName, String fileUrl, String md5, Boolean isStatic, String mimeType, Long size, FileOperateStatus fileOperateStatus, String fileLocalPath, String fileCopyOriginLocalPath) {
        Intrinsics.h(fileOperateStatus, "fileOperateStatus");
        return new FileData(fileName, fileUrl, md5, isStatic, mimeType, size, fileOperateStatus, fileLocalPath, fileCopyOriginLocalPath);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof FileData)) {
            return false;
        }
        FileData fileData = (FileData) other;
        return Intrinsics.c(this.fileName, fileData.fileName) && Intrinsics.c(this.fileUrl, fileData.fileUrl) && Intrinsics.c(this.md5, fileData.md5) && Intrinsics.c(this.isStatic, fileData.isStatic) && Intrinsics.c(this.mimeType, fileData.mimeType) && Intrinsics.c(this.size, fileData.size) && this.fileOperateStatus == fileData.fileOperateStatus && Intrinsics.c(this.fileLocalPath, fileData.fileLocalPath) && Intrinsics.c(this.fileCopyOriginLocalPath, fileData.fileCopyOriginLocalPath);
    }

    public final String getFileCopyOriginLocalPath$lib_web_release() {
        return this.fileCopyOriginLocalPath;
    }

    public final String getFileLocalPath$lib_web_release() {
        return this.fileLocalPath;
    }

    public final String getFileName() {
        return this.fileName;
    }

    public final FileOperateStatus getFileOperateStatus$lib_web_release() {
        return this.fileOperateStatus;
    }

    public final String getFileUrl() {
        return this.fileUrl;
    }

    public final String getMd5() {
        return this.md5;
    }

    public final String getMimeType() {
        return this.mimeType;
    }

    public final Long getSize() {
        return this.size;
    }

    public int hashCode() {
        String str = this.fileName;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.fileUrl;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.md5;
        int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        Boolean bool = this.isStatic;
        int iHashCode4 = (iHashCode3 + (bool == null ? 0 : bool.hashCode())) * 31;
        String str4 = this.mimeType;
        int iHashCode5 = (iHashCode4 + (str4 == null ? 0 : str4.hashCode())) * 31;
        Long l11 = this.size;
        int iHashCode6 = (((iHashCode5 + (l11 == null ? 0 : l11.hashCode())) * 31) + this.fileOperateStatus.hashCode()) * 31;
        String str5 = this.fileLocalPath;
        int iHashCode7 = (iHashCode6 + (str5 == null ? 0 : str5.hashCode())) * 31;
        String str6 = this.fileCopyOriginLocalPath;
        return iHashCode7 + (str6 != null ? str6.hashCode() : 0);
    }

    public final Boolean isStatic() {
        return this.isStatic;
    }

    public final void setFileCopyOriginLocalPath$lib_web_release(String str) {
        this.fileCopyOriginLocalPath = str;
    }

    public final void setFileLocalPath$lib_web_release(String str) {
        this.fileLocalPath = str;
    }

    public final void setFileName(String str) {
        this.fileName = str;
    }

    public final void setFileOperateStatus$lib_web_release(FileOperateStatus fileOperateStatus) {
        Intrinsics.h(fileOperateStatus, "<set-?>");
        this.fileOperateStatus = fileOperateStatus;
    }

    public final void setFileUrl(String str) {
        this.fileUrl = str;
    }

    public final void setMd5(String str) {
        this.md5 = str;
    }

    public final void setMimeType(String str) {
        this.mimeType = str;
    }

    public final void setSize(Long l11) {
        this.size = l11;
    }

    public final void setStatic(Boolean bool) {
        this.isStatic = bool;
    }

    public String toString() {
        return "FileData(fileName=" + this.fileName + ", fileUrl=" + this.fileUrl + ", md5=" + this.md5 + ", isStatic=" + this.isStatic + ", mimeType=" + this.mimeType + ", size=" + this.size + ", fileOperateStatus=" + this.fileOperateStatus + ", fileLocalPath=" + this.fileLocalPath + ", fileCopyOriginLocalPath=" + this.fileCopyOriginLocalPath + ")";
    }
}
