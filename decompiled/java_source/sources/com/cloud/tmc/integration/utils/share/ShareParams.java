package com.cloud.tmc.integration.utils.share;

import android.content.ClipData;
import android.net.Uri;
import com.cloud.tmc.integration.BuildConfig;
import com.cloud.tmc.integration.utils.share.config.IShareStrategy;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.meituan.android.walle.ChannelReader;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.File;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b(\b\u0086\b\u0018\u00002\u00020\u0001B}\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\b\b\u0002\u0010\b\u001a\u00020\t\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\r\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0010\u0012\b\b\u0002\u0010\u0011\u001a\u00020\u0012\u0012\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0014¢\u0006\u0002\u0010\u0015J\t\u0010,\u001a\u00020\u0003HÆ\u0003J\t\u0010-\u001a\u00020\u0012HÆ\u0003J\u000b\u0010.\u001a\u0004\u0018\u00010\u0014HÆ\u0003J\t\u0010/\u001a\u00020\u0005HÆ\u0003J\u000b\u00100\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\t\u00101\u001a\u00020\tHÆ\u0003J\u000b\u00102\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u00103\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u00104\u001a\u0004\u0018\u00010\rHÆ\u0003J\u000b\u00105\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u00106\u001a\u0004\u0018\u00010\u0010HÆ\u0003J\u0085\u0001\u00107\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\b\b\u0002\u0010\b\u001a\u00020\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\r2\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00102\b\b\u0002\u0010\u0011\u001a\u00020\u00122\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0014HÆ\u0001J\u0013\u00108\u001a\u00020\u00122\b\u00109\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010:\u001a\u00020\tHÖ\u0001J\t\u0010;\u001a\u00020\u0005HÖ\u0001R\u0011\u0010\b\u001a\u00020\t¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0017R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0019R\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR\u0011\u0010\u0011\u001a\u00020\u0012¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u001eR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010 R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b!\u0010\"R\u001c\u0010\u0013\u001a\u0004\u0018\u00010\u0014X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b#\u0010$\"\u0004\b%\u0010&R\u0013\u0010\u000b\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b'\u0010\u0019R\u0013\u0010\u000e\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b(\u0010\"R\u0013\u0010\f\u001a\u0004\u0018\u00010\r¢\u0006\b\n\u0000\u001a\u0004\b)\u0010*R\u0013\u0010\n\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b+\u0010\u0019¨\u0006<"}, d2 = {"Lcom/cloud/tmc/integration/utils/share/ShareParams;", "", "content", "", "shareType", "", "shareFile", "Ljava/io/File;", ChannelReader.CHANNEL_KEY, "", CampaignEx.JSON_KEY_TITLE, "subLine", "thumbnail", "Landroid/content/ClipData;", "targetPackageName", "fileUri", "Landroid/net/Uri;", "isFileProvider", "", "strategy", "Lcom/cloud/tmc/integration/utils/share/config/IShareStrategy;", "(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/io/File;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/ClipData;Ljava/lang/String;Landroid/net/Uri;ZLcom/cloud/tmc/integration/utils/share/config/IShareStrategy;)V", "getChannel", "()I", "getContent", "()Ljava/lang/CharSequence;", "getFileUri", "()Landroid/net/Uri;", "setFileUri", "(Landroid/net/Uri;)V", "()Z", "getShareFile", "()Ljava/io/File;", "getShareType", "()Ljava/lang/String;", "getStrategy", "()Lcom/cloud/tmc/integration/utils/share/config/IShareStrategy;", "setStrategy", "(Lcom/cloud/tmc/integration/utils/share/config/IShareStrategy;)V", "getSubLine", "getTargetPackageName", "getThumbnail", "()Landroid/content/ClipData;", "getTitle", "component1", "component10", "component11", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "equals", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "hashCode", "toString", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class ShareParams {
    private final int channel;
    private final CharSequence content;
    private Uri fileUri;
    private final boolean isFileProvider;
    private final File shareFile;
    private final String shareType;
    private IShareStrategy strategy;
    private final CharSequence subLine;
    private final String targetPackageName;
    private final ClipData thumbnail;
    private final CharSequence title;

    public ShareParams(CharSequence content, String shareType, File file, int i11, CharSequence charSequence, CharSequence charSequence2, ClipData clipData, String str, Uri uri, boolean z10, IShareStrategy iShareStrategy) {
        Intrinsics.h(content, "content");
        Intrinsics.h(shareType, "shareType");
        this.content = content;
        this.shareType = shareType;
        this.shareFile = file;
        this.channel = i11;
        this.title = charSequence;
        this.subLine = charSequence2;
        this.thumbnail = clipData;
        this.targetPackageName = str;
        this.fileUri = uri;
        this.isFileProvider = z10;
        this.strategy = iShareStrategy;
    }

    public /* synthetic */ ShareParams(CharSequence charSequence, String str, File file, int i11, CharSequence charSequence2, CharSequence charSequence3, ClipData clipData, String str2, Uri uri, boolean z10, IShareStrategy iShareStrategy, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this(charSequence, str, (i12 & 4) != 0 ? null : file, (i12 & 8) != 0 ? 1 : i11, (i12 & 16) != 0 ? null : charSequence2, (i12 & 32) != 0 ? null : charSequence3, (i12 & 64) != 0 ? null : clipData, (i12 & 128) != 0 ? null : str2, (i12 & 256) != 0 ? null : uri, (i12 & 512) != 0 ? false : z10, (i12 & 1024) != 0 ? null : iShareStrategy);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final CharSequence getContent() {
        return this.content;
    }

    /* JADX INFO: renamed from: component10, reason: from getter */
    public final boolean getIsFileProvider() {
        return this.isFileProvider;
    }

    /* JADX INFO: renamed from: component11, reason: from getter */
    public final IShareStrategy getStrategy() {
        return this.strategy;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getShareType() {
        return this.shareType;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final File getShareFile() {
        return this.shareFile;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final int getChannel() {
        return this.channel;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final CharSequence getTitle() {
        return this.title;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final CharSequence getSubLine() {
        return this.subLine;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final ClipData getThumbnail() {
        return this.thumbnail;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final String getTargetPackageName() {
        return this.targetPackageName;
    }

    /* JADX INFO: renamed from: component9, reason: from getter */
    public final Uri getFileUri() {
        return this.fileUri;
    }

    public final ShareParams copy(CharSequence content, String shareType, File shareFile, int channel, CharSequence title, CharSequence subLine, ClipData thumbnail, String targetPackageName, Uri fileUri, boolean isFileProvider, IShareStrategy strategy) {
        Intrinsics.h(content, "content");
        Intrinsics.h(shareType, "shareType");
        return new ShareParams(content, shareType, shareFile, channel, title, subLine, thumbnail, targetPackageName, fileUri, isFileProvider, strategy);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ShareParams)) {
            return false;
        }
        ShareParams shareParams = (ShareParams) other;
        return Intrinsics.c(this.content, shareParams.content) && Intrinsics.c(this.shareType, shareParams.shareType) && Intrinsics.c(this.shareFile, shareParams.shareFile) && this.channel == shareParams.channel && Intrinsics.c(this.title, shareParams.title) && Intrinsics.c(this.subLine, shareParams.subLine) && Intrinsics.c(this.thumbnail, shareParams.thumbnail) && Intrinsics.c(this.targetPackageName, shareParams.targetPackageName) && Intrinsics.c(this.fileUri, shareParams.fileUri) && this.isFileProvider == shareParams.isFileProvider && Intrinsics.c(this.strategy, shareParams.strategy);
    }

    public final int getChannel() {
        return this.channel;
    }

    public final CharSequence getContent() {
        return this.content;
    }

    public final Uri getFileUri() {
        return this.fileUri;
    }

    public final File getShareFile() {
        return this.shareFile;
    }

    public final String getShareType() {
        return this.shareType;
    }

    public final IShareStrategy getStrategy() {
        return this.strategy;
    }

    public final CharSequence getSubLine() {
        return this.subLine;
    }

    public final String getTargetPackageName() {
        return this.targetPackageName;
    }

    public final ClipData getThumbnail() {
        return this.thumbnail;
    }

    public final CharSequence getTitle() {
        return this.title;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v19, types: [int] */
    /* JADX WARN: Type inference failed for: r1v22, types: [int] */
    /* JADX WARN: Type inference failed for: r1v24 */
    /* JADX WARN: Type inference failed for: r1v31 */
    public int hashCode() {
        int iHashCode = ((this.content.hashCode() * 31) + this.shareType.hashCode()) * 31;
        File file = this.shareFile;
        int iHashCode2 = (((iHashCode + (file == null ? 0 : file.hashCode())) * 31) + this.channel) * 31;
        CharSequence charSequence = this.title;
        int iHashCode3 = (iHashCode2 + (charSequence == null ? 0 : charSequence.hashCode())) * 31;
        CharSequence charSequence2 = this.subLine;
        int iHashCode4 = (iHashCode3 + (charSequence2 == null ? 0 : charSequence2.hashCode())) * 31;
        ClipData clipData = this.thumbnail;
        int iHashCode5 = (iHashCode4 + (clipData == null ? 0 : clipData.hashCode())) * 31;
        String str = this.targetPackageName;
        int iHashCode6 = (iHashCode5 + (str == null ? 0 : str.hashCode())) * 31;
        Uri uri = this.fileUri;
        int iHashCode7 = (iHashCode6 + (uri == null ? 0 : uri.hashCode())) * 31;
        boolean z10 = this.isFileProvider;
        ?? r11 = z10;
        if (z10) {
            r11 = 1;
        }
        int i11 = (iHashCode7 + r11) * 31;
        IShareStrategy iShareStrategy = this.strategy;
        return i11 + (iShareStrategy != null ? iShareStrategy.hashCode() : 0);
    }

    public final boolean isFileProvider() {
        return this.isFileProvider;
    }

    public final void setFileUri(Uri uri) {
        this.fileUri = uri;
    }

    public final void setStrategy(IShareStrategy iShareStrategy) {
        this.strategy = iShareStrategy;
    }

    public String toString() {
        CharSequence charSequence = this.content;
        String str = this.shareType;
        File file = this.shareFile;
        int i11 = this.channel;
        CharSequence charSequence2 = this.title;
        CharSequence charSequence3 = this.subLine;
        return "ShareParams(content=" + ((Object) charSequence) + ", shareType=" + str + ", shareFile=" + file + ", channel=" + i11 + ", title=" + ((Object) charSequence2) + ", subLine=" + ((Object) charSequence3) + ", thumbnail=" + this.thumbnail + ", targetPackageName=" + this.targetPackageName + ", fileUri=" + this.fileUri + ", isFileProvider=" + this.isFileProvider + ", strategy=" + this.strategy + ")";
    }
}
