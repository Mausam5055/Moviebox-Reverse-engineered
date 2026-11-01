package com.transsion.subtitle_download.db;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import androidx.core.app.NotificationCompat;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.cloud.tmc.kernel.utils.UrlUtils;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;
import kotlin.text.Regex;
import kotlin.text.StringsKt;
import org.mvel2.ast.ASTNode;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\bS\n\u0002\u0010\u000b\n\u0002\b\u0015\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0017\u0018\u00002\u00020\u00012\u00020\u0002B§\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0004\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\f\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0006\u0012\b\b\u0002\u0010\u000f\u001a\u00020\u0006\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0013\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u0014\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u0015\u001a\u00020\u0006\u0012\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0017\u001a\u00020\u0006\u0012\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u001a\u001a\u00020\u0004\u0012\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u001c\u001a\u00020\u0006\u0012\n\b\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u001f\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b \u0010!J\u0006\u0010s\u001a\u00020\u0004J\b\u0010t\u001a\u00020\u0006H\u0016J\u0018\u0010u\u001a\u00020v2\u0006\u0010w\u001a\u00020x2\u0006\u0010y\u001a\u00020\u0006H\u0016R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\"\u0010#\"\u0004\b$\u0010%R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b&\u0010'\"\u0004\b(\u0010)R\u0011\u0010\u0007\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b*\u0010#R\u001c\u0010\b\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b+\u0010#\"\u0004\b,\u0010%R\u001c\u0010\t\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b-\u0010#\"\u0004\b.\u0010%R\u001c\u0010\n\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b/\u0010#\"\u0004\b0\u0010%R\u001e\u0010\u000b\u001a\u0004\u0018\u00010\fX\u0086\u000e¢\u0006\u0010\n\u0002\u00105\u001a\u0004\b1\u00102\"\u0004\b3\u00104R\u001e\u0010\r\u001a\u0004\u0018\u00010\fX\u0086\u000e¢\u0006\u0010\n\u0002\u00105\u001a\u0004\b6\u00102\"\u0004\b7\u00104R\u001e\u0010\u000e\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u0010\n\u0002\u0010<\u001a\u0004\b8\u00109\"\u0004\b:\u0010;R\u001a\u0010\u000f\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b=\u0010'\"\u0004\b>\u0010)R\u001c\u0010\u0010\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b?\u0010#\"\u0004\b@\u0010%R\u001c\u0010\u0011\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bA\u0010#\"\u0004\bB\u0010%R\u001c\u0010\u0012\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bC\u0010#\"\u0004\bD\u0010%R\u001a\u0010\u0013\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bE\u0010'\"\u0004\bF\u0010)R\u001a\u0010\u0014\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bG\u0010'\"\u0004\bH\u0010)R\u001a\u0010\u0015\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bI\u0010'\"\u0004\bJ\u0010)R\u001c\u0010\u0016\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bK\u0010#\"\u0004\bL\u0010%R\u001a\u0010\u0017\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bM\u0010'\"\u0004\bN\u0010)R\u001c\u0010\u0018\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bO\u0010#\"\u0004\bP\u0010%R\u001c\u0010\u0019\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bQ\u0010#\"\u0004\bR\u0010%R\u001a\u0010\u001a\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bS\u0010#\"\u0004\bT\u0010%R\u001c\u0010\u001b\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bU\u0010#\"\u0004\bV\u0010%R\u001a\u0010\u001c\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bW\u0010'\"\u0004\bX\u0010)R\u001c\u0010\u001d\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bY\u0010#\"\u0004\bZ\u0010%R\u001c\u0010\u001e\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b[\u0010#\"\u0004\b\\\u0010%R\u001c\u0010\u001f\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b]\u0010#\"\u0004\b^\u0010%R$\u0010_\u001a\u00020`8\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\ba\u0010b\u001a\u0004\b_\u0010c\"\u0004\bd\u0010eR$\u0010f\u001a\u00020`8\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\bg\u0010b\u001a\u0004\bf\u0010c\"\u0004\bh\u0010eR\u0011\u0010i\u001a\u00020`8F¢\u0006\u0006\u001a\u0004\bi\u0010cR\u0011\u0010j\u001a\u00020`8F¢\u0006\u0006\u001a\u0004\bj\u0010cR\u0011\u0010k\u001a\u00020`8F¢\u0006\u0006\u001a\u0004\bk\u0010cR\u0011\u0010l\u001a\u00020`8F¢\u0006\u0006\u001a\u0004\bl\u0010cR\u0011\u0010m\u001a\u00020\u00048F¢\u0006\u0006\u001a\u0004\bn\u0010#R\u0011\u0010o\u001a\u00020\u00048F¢\u0006\u0006\u001a\u0004\bp\u0010#R\u0013\u0010q\u001a\u0004\u0018\u00010\u00048F¢\u0006\u0006\u001a\u0004\br\u0010#¨\u0006z"}, d2 = {"Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;", "Landroid/os/Parcelable;", "Ljava/io/Serializable;", "id", "", "resourceStreamType", "", "resourceId", "lan", "lanName", "url", "size", "", "delay", "downloads", NativeComponentConstants.KEY_COMPONENT_TYPE, "postId", "subtitleName", "subjectId", "ep", "se", "resolution", "subjectName", NotificationCompat.CATEGORY_STATUS, "fileCharsetName", "path", "zipPath", "taskId", "failCount", "ugcVideoId", "ugcVideoCollectionId", "ops", "<init>", "(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getId", "()Ljava/lang/String;", "setId", "(Ljava/lang/String;)V", "getResourceStreamType", "()I", "setResourceStreamType", "(I)V", "getResourceId", "getLan", "setLan", "getLanName", "setLanName", "getUrl", "setUrl", "getSize", "()Ljava/lang/Long;", "setSize", "(Ljava/lang/Long;)V", "Ljava/lang/Long;", "getDelay", "setDelay", "getDownloads", "()Ljava/lang/Integer;", "setDownloads", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "getType", "setType", "getPostId", "setPostId", "getSubtitleName", "setSubtitleName", "getSubjectId", "setSubjectId", "getEp", "setEp", "getSe", "setSe", "getResolution", "setResolution", "getSubjectName", "setSubjectName", "getStatus", "setStatus", "getFileCharsetName", "setFileCharsetName", "getPath", "setPath", "getZipPath", "setZipPath", "getTaskId", "setTaskId", "getFailCount", "setFailCount", "getUgcVideoId", "setUgcVideoId", "getUgcVideoCollectionId", "setUgcVideoCollectionId", "getOps", "setOps", "isSetImmediately", "", "isSetImmediately$annotations", "()V", "()Z", "setSetImmediately", "(Z)V", "isAutoDownload", "isAutoDownload$annotations", "setAutoDownload", "isInner", "isDownloaded", "isSearch", "isOpenSbNewApi", "subjectFileName", "getSubjectFileName", "name", "getName", "lanAbbr", "getLanAbbr", "getSubtitleInfo", "describeContents", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "SubtitleDownload_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public class SubtitleDownloadTable implements Parcelable, Serializable {
    public static final Parcelable.Creator<SubtitleDownloadTable> CREATOR = new a();
    private Long delay;
    private Integer downloads;
    private int ep;
    private int failCount;
    private String fileCharsetName;
    private String id;
    private boolean isAutoDownload;
    private boolean isSetImmediately;
    private String lan;
    private String lanName;
    private String ops;
    private String path;
    private String postId;
    private int resolution;
    private final String resourceId;
    private int resourceStreamType;
    private int se;
    private Long size;
    private int status;
    private String subjectId;
    private String subjectName;
    private String subtitleName;
    private String taskId;
    private int type;
    private String ugcVideoCollectionId;
    private String ugcVideoId;
    private String url;
    private String zipPath;

    public static final class a implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final SubtitleDownloadTable createFromParcel(Parcel parcel) {
            Intrinsics.h(parcel, "parcel");
            return new SubtitleDownloadTable(parcel.readString(), parcel.readInt(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readInt() == 0 ? null : Long.valueOf(parcel.readLong()), parcel.readInt() == 0 ? null : Long.valueOf(parcel.readLong()), parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt()), parcel.readInt(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readString(), parcel.readInt(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readInt(), parcel.readString(), parcel.readString(), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final SubtitleDownloadTable[] newArray(int i11) {
            return new SubtitleDownloadTable[i11];
        }
    }

    public SubtitleDownloadTable(String id2, int i11, String resourceId, String str, String str2, String str3, Long l11, Long l12, Integer num, int i12, String str4, String str5, String str6, int i13, int i14, int i15, String str7, int i16, String str8, String str9, String zipPath, String str10, int i17, String str11, String str12, String str13) {
        Intrinsics.h(id2, "id");
        Intrinsics.h(resourceId, "resourceId");
        Intrinsics.h(zipPath, "zipPath");
        this.id = id2;
        this.resourceStreamType = i11;
        this.resourceId = resourceId;
        this.lan = str;
        this.lanName = str2;
        this.url = str3;
        this.size = l11;
        this.delay = l12;
        this.downloads = num;
        this.type = i12;
        this.postId = str4;
        this.subtitleName = str5;
        this.subjectId = str6;
        this.ep = i13;
        this.se = i14;
        this.resolution = i15;
        this.subjectName = str7;
        this.status = i16;
        this.fileCharsetName = str8;
        this.path = str9;
        this.zipPath = zipPath;
        this.taskId = str10;
        this.failCount = i17;
        this.ugcVideoId = str11;
        this.ugcVideoCollectionId = str12;
        this.ops = str13;
        this.isAutoDownload = true;
    }

    public /* synthetic */ SubtitleDownloadTable(String str, int i11, String str2, String str3, String str4, String str5, Long l11, Long l12, Integer num, int i12, String str6, String str7, String str8, int i13, int i14, int i15, String str9, int i16, String str10, String str11, String str12, String str13, int i17, String str14, String str15, String str16, int i18, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i18 & 2) != 0 ? 1 : i11, str2, (i18 & 8) != 0 ? null : str3, (i18 & 16) != 0 ? null : str4, (i18 & 32) != 0 ? null : str5, (i18 & 64) != 0 ? null : l11, (i18 & 128) != 0 ? null : l12, (i18 & 256) != 0 ? null : num, (i18 & 512) != 0 ? 1 : i12, (i18 & 1024) != 0 ? null : str6, (i18 & 2048) != 0 ? null : str7, (i18 & 4096) != 0 ? null : str8, (i18 & 8192) != 0 ? 0 : i13, (i18 & 16384) != 0 ? 0 : i14, (32768 & i18) != 0 ? 0 : i15, (65536 & i18) != 0 ? null : str9, (131072 & i18) != 0 ? 0 : i16, (262144 & i18) != 0 ? Charsets.UTF_8.name() : str10, (524288 & i18) != 0 ? "" : str11, (1048576 & i18) != 0 ? "" : str12, (2097152 & i18) != 0 ? "" : str13, (4194304 & i18) != 0 ? 0 : i17, (8388608 & i18) != 0 ? null : str14, (16777216 & i18) != 0 ? null : str15, (i18 & ASTNode.PCTX_STORED) != 0 ? null : str16);
    }

    public static /* synthetic */ void isAutoDownload$annotations() {
    }

    public static /* synthetic */ void isSetImmediately$annotations() {
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public final Long getDelay() {
        return this.delay;
    }

    public final Integer getDownloads() {
        return this.downloads;
    }

    public final int getEp() {
        return this.ep;
    }

    public final int getFailCount() {
        return this.failCount;
    }

    public final String getFileCharsetName() {
        return this.fileCharsetName;
    }

    public final String getId() {
        return this.id;
    }

    public final String getLan() {
        return this.lan;
    }

    public final String getLanAbbr() {
        return Intrinsics.c(this.lan, "in_id") ? "in" : this.lan;
    }

    public final String getLanName() {
        return this.lanName;
    }

    public final String getName() {
        String str;
        if (this.type == 1) {
            str = this.lanName;
            if (str == null) {
                return "";
            }
        } else {
            str = this.subtitleName;
            if (str == null) {
                return "";
            }
        }
        return str;
    }

    public final String getOps() {
        return this.ops;
    }

    public final String getPath() {
        return this.path;
    }

    public final String getPostId() {
        return this.postId;
    }

    public final int getResolution() {
        return this.resolution;
    }

    public final String getResourceId() {
        return this.resourceId;
    }

    public final int getResourceStreamType() {
        return this.resourceStreamType;
    }

    public final int getSe() {
        return this.se;
    }

    public final Long getSize() {
        return this.size;
    }

    public final int getStatus() {
        return this.status;
    }

    public final String getSubjectFileName() {
        String strReplace;
        String str = this.subjectName;
        if (str == null || (strReplace = new Regex("[\\\\!/:#*?\"<>|&,]").replace(str, "")) == null) {
            strReplace = this.resourceId;
        }
        return StringsKt.Q(strReplace, " ", "_", false, 4, null);
    }

    public final String getSubjectId() {
        return this.subjectId;
    }

    public final String getSubjectName() {
        return this.subjectName;
    }

    public final String getSubtitleInfo() {
        String strH1;
        String str = this.url;
        String strF1 = null;
        if (str != null && (strH1 = StringsKt.h1(str, UrlUtils.QUESTION_MARK, null, 2, null)) != null) {
            strF1 = StringsKt.f1(strH1, ".", null, 2, null);
        }
        String strValueOf = String.valueOf(strF1);
        if (this.ep <= 0) {
            return getSubjectFileName() + "_" + this.lanName + "." + strValueOf;
        }
        return getSubjectFileName() + "_S" + this.se + "_E" + this.ep + "_" + this.lanName + "." + strValueOf;
    }

    public final String getSubtitleName() {
        return this.subtitleName;
    }

    public final String getTaskId() {
        return this.taskId;
    }

    public final int getType() {
        return this.type;
    }

    public final String getUgcVideoCollectionId() {
        return this.ugcVideoCollectionId;
    }

    public final String getUgcVideoId() {
        return this.ugcVideoId;
    }

    public final String getUrl() {
        return this.url;
    }

    public final String getZipPath() {
        return this.zipPath;
    }

    /* JADX INFO: renamed from: isAutoDownload, reason: from getter */
    public final boolean getIsAutoDownload() {
        return this.isAutoDownload;
    }

    public final boolean isDownloaded() {
        return this.status == 5;
    }

    public final boolean isInner() {
        return this.type == 1;
    }

    public final boolean isOpenSbNewApi() {
        return this.type == 5;
    }

    public final boolean isSearch() {
        int i11 = this.type;
        return i11 == 2 || i11 == 4 || i11 == 5;
    }

    /* JADX INFO: renamed from: isSetImmediately, reason: from getter */
    public final boolean getIsSetImmediately() {
        return this.isSetImmediately;
    }

    public final void setAutoDownload(boolean z10) {
        this.isAutoDownload = z10;
    }

    public final void setDelay(Long l11) {
        this.delay = l11;
    }

    public final void setDownloads(Integer num) {
        this.downloads = num;
    }

    public final void setEp(int i11) {
        this.ep = i11;
    }

    public final void setFailCount(int i11) {
        this.failCount = i11;
    }

    public final void setFileCharsetName(String str) {
        this.fileCharsetName = str;
    }

    public final void setId(String str) {
        Intrinsics.h(str, "<set-?>");
        this.id = str;
    }

    public final void setLan(String str) {
        this.lan = str;
    }

    public final void setLanName(String str) {
        this.lanName = str;
    }

    public final void setOps(String str) {
        this.ops = str;
    }

    public final void setPath(String str) {
        this.path = str;
    }

    public final void setPostId(String str) {
        this.postId = str;
    }

    public final void setResolution(int i11) {
        this.resolution = i11;
    }

    public final void setResourceStreamType(int i11) {
        this.resourceStreamType = i11;
    }

    public final void setSe(int i11) {
        this.se = i11;
    }

    public final void setSetImmediately(boolean z10) {
        this.isSetImmediately = z10;
    }

    public final void setSize(Long l11) {
        this.size = l11;
    }

    public final void setStatus(int i11) {
        this.status = i11;
    }

    public final void setSubjectId(String str) {
        this.subjectId = str;
    }

    public final void setSubjectName(String str) {
        this.subjectName = str;
    }

    public final void setSubtitleName(String str) {
        this.subtitleName = str;
    }

    public final void setTaskId(String str) {
        this.taskId = str;
    }

    public final void setType(int i11) {
        this.type = i11;
    }

    public final void setUgcVideoCollectionId(String str) {
        this.ugcVideoCollectionId = str;
    }

    public final void setUgcVideoId(String str) {
        this.ugcVideoId = str;
    }

    public final void setUrl(String str) {
        this.url = str;
    }

    public final void setZipPath(String str) {
        Intrinsics.h(str, "<set-?>");
        this.zipPath = str;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        Intrinsics.h(dest, "dest");
        dest.writeString(this.id);
        dest.writeInt(this.resourceStreamType);
        dest.writeString(this.resourceId);
        dest.writeString(this.lan);
        dest.writeString(this.lanName);
        dest.writeString(this.url);
        Long l11 = this.size;
        if (l11 == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            dest.writeLong(l11.longValue());
        }
        Long l12 = this.delay;
        if (l12 == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            dest.writeLong(l12.longValue());
        }
        Integer num = this.downloads;
        if (num == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            dest.writeInt(num.intValue());
        }
        dest.writeInt(this.type);
        dest.writeString(this.postId);
        dest.writeString(this.subtitleName);
        dest.writeString(this.subjectId);
        dest.writeInt(this.ep);
        dest.writeInt(this.se);
        dest.writeInt(this.resolution);
        dest.writeString(this.subjectName);
        dest.writeInt(this.status);
        dest.writeString(this.fileCharsetName);
        dest.writeString(this.path);
        dest.writeString(this.zipPath);
        dest.writeString(this.taskId);
        dest.writeInt(this.failCount);
        dest.writeString(this.ugcVideoId);
        dest.writeString(this.ugcVideoCollectionId);
        dest.writeString(this.ops);
    }
}
