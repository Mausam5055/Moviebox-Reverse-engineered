package com.transsion.transfer.impl.entity;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.transfer.impl.TaskState;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import jv.d;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.io.CloseableKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010\u0000\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b!\n\u0002\u0018\u0002\n\u0002\b\u000b\b\u0087\b\u0018\u0000 S2\u00020\u0001:\u0001TBO\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\b\b\u0002\u0010\b\u001a\u00020\u0002\u0012\b\b\u0002\u0010\t\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u000b\u001a\u00020\n\u0012\b\b\u0002\u0010\f\u001a\u00020\u0005¢\u0006\u0004\b\r\u0010\u000eJ\r\u0010\u0010\u001a\u00020\u000f¢\u0006\u0004\b\u0010\u0010\u0011J\r\u0010\u0013\u001a\u00020\u0012¢\u0006\u0004\b\u0013\u0010\u0014J\r\u0010\u0015\u001a\u00020\u0012¢\u0006\u0004\b\u0015\u0010\u0014J\r\u0010\u0016\u001a\u00020\u0012¢\u0006\u0004\b\u0016\u0010\u0014J\r\u0010\u0017\u001a\u00020\u0012¢\u0006\u0004\b\u0017\u0010\u0014J\r\u0010\u0018\u001a\u00020\u0012¢\u0006\u0004\b\u0018\u0010\u0014J\r\u0010\u001a\u001a\u00020\u0019¢\u0006\u0004\b\u001a\u0010\u001bJ\r\u0010\u001c\u001a\u00020\u0005¢\u0006\u0004\b\u001c\u0010\u001dJ\r\u0010\u001e\u001a\u00020\u000f¢\u0006\u0004\b\u001e\u0010\u0011J\u000f\u0010\u001f\u001a\u0004\u0018\u00010\u0012¢\u0006\u0004\b\u001f\u0010\u0014J\u001a\u0010\"\u001a\u00020\u00192\b\u0010!\u001a\u0004\u0018\u00010 H\u0096\u0002¢\u0006\u0004\b\"\u0010#J\u000f\u0010$\u001a\u00020\nH\u0016¢\u0006\u0004\b$\u0010%J\u000f\u0010&\u001a\u00020\u0002H\u0016¢\u0006\u0004\b&\u0010'J\u001d\u0010+\u001a\u00020\u000f2\u0006\u0010)\u001a\u00020(2\u0006\u0010*\u001a\u00020\n¢\u0006\u0004\b+\u0010,J\r\u0010-\u001a\u00020\n¢\u0006\u0004\b-\u0010%J\u0010\u0010.\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b.\u0010'J\u0010\u0010/\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b/\u0010'J\u0010\u00100\u001a\u00020\u0005HÆ\u0003¢\u0006\u0004\b0\u0010\u001dJ\u0010\u00101\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b1\u0010'J\u0010\u00102\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b2\u0010'J\u0010\u00103\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b3\u0010'J\u0010\u00104\u001a\u00020\nHÆ\u0003¢\u0006\u0004\b4\u0010%J\u0010\u00105\u001a\u00020\u0005HÆ\u0003¢\u0006\u0004\b5\u0010\u001dJ`\u00106\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00022\b\b\u0002\u0010\u0004\u001a\u00020\u00022\b\b\u0002\u0010\u0006\u001a\u00020\u00052\b\b\u0002\u0010\u0007\u001a\u00020\u00022\b\b\u0002\u0010\b\u001a\u00020\u00022\b\b\u0002\u0010\t\u001a\u00020\u00022\b\b\u0002\u0010\u000b\u001a\u00020\n2\b\b\u0002\u0010\f\u001a\u00020\u0005HÆ\u0001¢\u0006\u0004\b6\u00107R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u00108\u001a\u0004\b9\u0010'R\u0017\u0010\u0004\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0004\u00108\u001a\u0004\b:\u0010'R\"\u0010\u0006\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0006\u0010;\u001a\u0004\b<\u0010\u001d\"\u0004\b=\u0010>R\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0007\u00108\u001a\u0004\b?\u0010'R\"\u0010\b\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\b\u00108\u001a\u0004\b@\u0010'\"\u0004\bA\u0010BR\u0017\u0010\t\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\t\u00108\u001a\u0004\bC\u0010'R\"\u0010\u000b\u001a\u00020\n8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000b\u0010D\u001a\u0004\bE\u0010%\"\u0004\bF\u0010GR\"\u0010\f\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\f\u0010;\u001a\u0004\bH\u0010\u001d\"\u0004\bI\u0010>R$\u0010K\u001a\u0004\u0018\u00010J8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bK\u0010L\u001a\u0004\bM\u0010N\"\u0004\bO\u0010PR\u0011\u0010R\u001a\u00020\u00028F¢\u0006\u0006\u001a\u0004\bQ\u0010'¨\u0006U"}, d2 = {"Lcom/transsion/transfer/impl/entity/FileData;", "Landroid/os/Parcelable;", "", "fileRemotePath", "fileName", "", "fileSize", "coverUrl", "fileReceiveCachePath", "remoteUrl", "", "state", "downloadSize", "<init>", "(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IJ)V", "", "filePrepare", "()V", "Ljava/io/File;", "getTempCoverFile", "()Ljava/io/File;", "getCoverFile", "getTempFile", "getTempBackFile", "getFinalFile", "", "verifyFile", "()Z", "getDownloadedSize", "()J", "clearFile", "getRootFile", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "equals", "(Ljava/lang/Object;)Z", "hashCode", "()I", "toString", "()Ljava/lang/String;", "Landroid/os/Parcel;", "dest", "flags", "writeToParcel", "(Landroid/os/Parcel;I)V", "describeContents", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "copy", "(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IJ)Lcom/transsion/transfer/impl/entity/FileData;", "Ljava/lang/String;", "getFileRemotePath", "getFileName", "J", "getFileSize", "setFileSize", "(J)V", "getCoverUrl", "getFileReceiveCachePath", "setFileReceiveCachePath", "(Ljava/lang/String;)V", "getRemoteUrl", "I", "getState", "setState", "(I)V", "getDownloadSize", "setDownloadSize", "Lcom/transsion/baselib/db/download/DownloadBean;", "downloadBean", "Lcom/transsion/baselib/db/download/DownloadBean;", "getDownloadBean", "()Lcom/transsion/baselib/db/download/DownloadBean;", "setDownloadBean", "(Lcom/transsion/baselib/db/download/DownloadBean;)V", "getFileShowName", "fileShowName", "Companion", "a", "Transfer_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final /* data */ class FileData implements Parcelable {
    public static final int STATE_CONNECTING = 0;
    public static final int STATE_DISCONNECT = 5;
    public static final int STATE_FAIL = 3;
    public static final int STATE_FINISH = 4;
    public static final int STATE_NO_FILE = 6;
    public static final int STATE_SPACE_LIMIT = 7;
    public static final int STATE_TRANSFERRING = 2;
    private final String coverUrl;
    private DownloadBean downloadBean;
    private long downloadSize;
    private final String fileName;
    private String fileReceiveCachePath;
    private final String fileRemotePath;
    private long fileSize;
    private final String remoteUrl;
    private int state;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public static final Parcelable.Creator<FileData> CREATOR = new b();

    /* JADX INFO: renamed from: com.transsion.transfer.impl.entity.FileData$a, reason: from kotlin metadata */
    public static final class Companion {

        /* JADX INFO: renamed from: com.transsion.transfer.impl.entity.FileData$a$a, reason: collision with other inner class name */
        public /* synthetic */ class C0681a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final /* synthetic */ int[] f55750a;

            static {
                int[] iArr = new int[TaskState.values().length];
                try {
                    iArr[TaskState.CONNECTING.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[TaskState.TRANSFERRING.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                try {
                    iArr[TaskState.ERROR.ordinal()] = 3;
                } catch (NoSuchFieldError unused3) {
                }
                try {
                    iArr[TaskState.FINISH.ordinal()] = 4;
                } catch (NoSuchFieldError unused4) {
                }
                try {
                    iArr[TaskState.CANCEL.ordinal()] = 5;
                } catch (NoSuchFieldError unused5) {
                }
                try {
                    iArr[TaskState.DISCONNECT.ordinal()] = 6;
                } catch (NoSuchFieldError unused6) {
                }
                try {
                    iArr[TaskState.NO_FILE.ordinal()] = 7;
                } catch (NoSuchFieldError unused7) {
                }
                try {
                    iArr[TaskState.SPACE_LIMIT.ordinal()] = 8;
                } catch (NoSuchFieldError unused8) {
                }
                f55750a = iArr;
            }
        }

        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final int a(TaskState state) {
            Intrinsics.h(state, "state");
            switch (C0681a.f55750a[state.ordinal()]) {
                case 1:
                    return 0;
                case 2:
                    return 2;
                case 3:
                case 5:
                    return 3;
                case 4:
                    return 4;
                case 6:
                    return 5;
                case 7:
                    return 6;
                case 8:
                    return 7;
                default:
                    throw new NoWhenBranchMatchedException();
            }
        }

        public final TaskState b(int i11) {
            if (i11 == 0) {
                return TaskState.CONNECTING;
            }
            switch (i11) {
                case 2:
                    return TaskState.TRANSFERRING;
                case 3:
                    return TaskState.ERROR;
                case 4:
                    return TaskState.FINISH;
                case 5:
                    return TaskState.DISCONNECT;
                case 6:
                    return TaskState.NO_FILE;
                case 7:
                    return TaskState.SPACE_LIMIT;
                default:
                    return TaskState.CANCEL;
            }
        }
    }

    public static final class b implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final FileData createFromParcel(Parcel parcel) {
            Intrinsics.h(parcel, "parcel");
            return new FileData(parcel.readString(), parcel.readString(), parcel.readLong(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readInt(), parcel.readLong());
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final FileData[] newArray(int i11) {
            return new FileData[i11];
        }
    }

    public FileData(String fileRemotePath, String fileName, long j11, String coverUrl, String fileReceiveCachePath, String remoteUrl, int i11, long j12) {
        Intrinsics.h(fileRemotePath, "fileRemotePath");
        Intrinsics.h(fileName, "fileName");
        Intrinsics.h(coverUrl, "coverUrl");
        Intrinsics.h(fileReceiveCachePath, "fileReceiveCachePath");
        Intrinsics.h(remoteUrl, "remoteUrl");
        this.fileRemotePath = fileRemotePath;
        this.fileName = fileName;
        this.fileSize = j11;
        this.coverUrl = coverUrl;
        this.fileReceiveCachePath = fileReceiveCachePath;
        this.remoteUrl = remoteUrl;
        this.state = i11;
        this.downloadSize = j12;
    }

    public /* synthetic */ FileData(String str, String str2, long j11, String str3, String str4, String str5, int i11, long j12, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, j11, str3, (i12 & 16) != 0 ? "" : str4, (i12 & 32) != 0 ? "" : str5, (i12 & 64) != 0 ? 0 : i11, (i12 & 128) != 0 ? 0L : j12);
    }

    public final void clearFile() {
        File tempFile = getTempFile();
        File tempBackFile = getTempBackFile();
        File file = new File(this.fileReceiveCachePath);
        if (tempFile.exists()) {
            tempFile.delete();
        }
        if (tempBackFile.exists()) {
            tempBackFile.delete();
        }
        if (file.exists()) {
            file.delete();
        }
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getFileRemotePath() {
        return this.fileRemotePath;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getFileName() {
        return this.fileName;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final long getFileSize() {
        return this.fileSize;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getCoverUrl() {
        return this.coverUrl;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getFileReceiveCachePath() {
        return this.fileReceiveCachePath;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final String getRemoteUrl() {
        return this.remoteUrl;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final int getState() {
        return this.state;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final long getDownloadSize() {
        return this.downloadSize;
    }

    public final FileData copy(String fileRemotePath, String fileName, long fileSize, String coverUrl, String fileReceiveCachePath, String remoteUrl, int state, long downloadSize) {
        Intrinsics.h(fileRemotePath, "fileRemotePath");
        Intrinsics.h(fileName, "fileName");
        Intrinsics.h(coverUrl, "coverUrl");
        Intrinsics.h(fileReceiveCachePath, "fileReceiveCachePath");
        Intrinsics.h(remoteUrl, "remoteUrl");
        return new FileData(fileRemotePath, fileName, fileSize, coverUrl, fileReceiveCachePath, remoteUrl, state, downloadSize);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (other == null || !Intrinsics.c(FileData.class, other.getClass())) {
            return false;
        }
        return Intrinsics.c(this.fileRemotePath, ((FileData) other).fileRemotePath);
    }

    public final void filePrepare() {
        File tempFile = getTempFile();
        File tempBackFile = getTempBackFile();
        if (tempFile.exists() && tempBackFile.exists() && tempBackFile.length() > 0) {
            FileOutputStream fileOutputStream = new FileOutputStream(tempFile, true);
            try {
                FileInputStream fileInputStream = new FileInputStream(tempBackFile);
                try {
                    byte[] bArr = new byte[1024];
                    while (true) {
                        int i11 = fileInputStream.read(bArr);
                        if (i11 == -1) {
                            Unit unit = Unit.f67061a;
                            CloseableKt.a(fileInputStream, null);
                            CloseableKt.a(fileOutputStream, null);
                            tempBackFile.delete();
                            return;
                        }
                        fileOutputStream.write(bArr, 0, i11);
                        try {
                            throw th;
                        } catch (Throwable th2) {
                            CloseableKt.a(fileOutputStream, th);
                            throw th2;
                        }
                    }
                } catch (Throwable th3) {
                    try {
                        throw th3;
                    } catch (Throwable th4) {
                        CloseableKt.a(fileInputStream, th3);
                        throw th4;
                    }
                }
            } catch (Throwable th5) {
                throw th5;
            }
        }
    }

    public final File getCoverFile() {
        File file = new File(new File(this.fileReceiveCachePath).getParentFile(), ".image");
        if (!file.exists()) {
            file.mkdirs();
        }
        return new File(file, d.b(this.fileName));
    }

    public final String getCoverUrl() {
        return this.coverUrl;
    }

    public final DownloadBean getDownloadBean() {
        return this.downloadBean;
    }

    public final long getDownloadSize() {
        return this.downloadSize;
    }

    public final long getDownloadedSize() {
        File tempFile = getTempFile();
        File tempBackFile = getTempBackFile();
        File file = new File(this.fileReceiveCachePath);
        if (file.exists()) {
            long length = file.length();
            long j11 = this.fileSize;
            if (length == j11) {
                return j11;
            }
        }
        if (tempFile.exists()) {
            return (tempBackFile.exists() ? tempBackFile.length() : 0L) + tempFile.length();
        }
        return 0L;
    }

    public final String getFileName() {
        return this.fileName;
    }

    public final String getFileReceiveCachePath() {
        return this.fileReceiveCachePath;
    }

    public final String getFileRemotePath() {
        return this.fileRemotePath;
    }

    public final String getFileShowName() {
        DownloadBean downloadBean = this.downloadBean;
        if (downloadBean == null) {
            return this.fileName;
        }
        Intrinsics.e(downloadBean);
        return downloadBean.getTotalTitleName();
    }

    public final long getFileSize() {
        return this.fileSize;
    }

    public final File getFinalFile() {
        File tempFile = getTempFile();
        File tempBackFile = getTempBackFile();
        File file = new File(this.fileReceiveCachePath);
        if (file.exists() && file.length() == this.fileSize) {
            return file;
        }
        if (tempFile.exists() && tempBackFile.exists()) {
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            try {
                for (File file2 : CollectionsKt.o(tempFile, tempBackFile)) {
                    if (file2.exists() && file2.length() > 0) {
                        FileInputStream fileInputStream = new FileInputStream(file2);
                        try {
                            byte[] bArr = new byte[1024];
                            while (true) {
                                int i11 = fileInputStream.read(bArr);
                                if (i11 == -1) {
                                    break;
                                }
                                fileOutputStream.write(bArr, 0, i11);
                            }
                            Unit unit = Unit.f67061a;
                            CloseableKt.a(fileInputStream, null);
                            file2.delete();
                        } catch (Throwable th2) {
                            try {
                                throw th2;
                            } catch (Throwable th3) {
                                CloseableKt.a(fileInputStream, th2);
                                throw th3;
                            }
                        }
                    }
                }
                Unit unit2 = Unit.f67061a;
                CloseableKt.a(fileOutputStream, null);
            } catch (Throwable th4) {
                try {
                    throw th4;
                } catch (Throwable th5) {
                    CloseableKt.a(fileOutputStream, th4);
                    throw th5;
                }
            }
        } else if (tempFile.exists() && !tempBackFile.exists()) {
            tempFile.renameTo(file);
        }
        return file;
    }

    public final String getRemoteUrl() {
        return this.remoteUrl;
    }

    public final File getRootFile() {
        return new File(this.fileReceiveCachePath).getParentFile();
    }

    public final int getState() {
        return this.state;
    }

    public final File getTempBackFile() {
        return new File(new File(this.fileReceiveCachePath).getParentFile(), d.b(this.fileName) + ".backtemp");
    }

    public final File getTempCoverFile() {
        File file = new File(new File(this.fileReceiveCachePath).getParentFile(), ".image");
        if (!file.exists()) {
            file.mkdirs();
        }
        return new File(file, d.b(this.fileName) + ".temp");
    }

    public final File getTempFile() {
        return new File(new File(this.fileReceiveCachePath).getParentFile(), d.b(this.fileName) + ".temp");
    }

    public int hashCode() {
        return this.fileRemotePath.hashCode();
    }

    public final void setDownloadBean(DownloadBean downloadBean) {
        this.downloadBean = downloadBean;
    }

    public final void setDownloadSize(long j11) {
        this.downloadSize = j11;
    }

    public final void setFileReceiveCachePath(String str) {
        Intrinsics.h(str, "<set-?>");
        this.fileReceiveCachePath = str;
    }

    public final void setFileSize(long j11) {
        this.fileSize = j11;
    }

    public final void setState(int i11) {
        this.state = i11;
    }

    public String toString() {
        return "FileData(fileRemotePath='" + this.fileRemotePath + "', fileName='" + this.fileName + "', fileSize=" + this.fileSize + ", coverUrl='" + this.coverUrl + "', fileReceiveCachePath='" + this.fileReceiveCachePath + "', remoteUrl='" + this.remoteUrl + "', state=" + this.state + ", downloadSize=" + this.downloadSize + ", fileShowName='" + getFileShowName() + "')";
    }

    public final boolean verifyFile() {
        File file = new File(this.fileReceiveCachePath);
        return file.exists() && file.length() == this.fileSize;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel dest, int flags) {
        Intrinsics.h(dest, "dest");
        dest.writeString(this.fileRemotePath);
        dest.writeString(this.fileName);
        dest.writeLong(this.fileSize);
        dest.writeString(this.coverUrl);
        dest.writeString(this.fileReceiveCachePath);
        dest.writeString(this.remoteUrl);
        dest.writeInt(this.state);
        dest.writeLong(this.downloadSize);
    }
}
