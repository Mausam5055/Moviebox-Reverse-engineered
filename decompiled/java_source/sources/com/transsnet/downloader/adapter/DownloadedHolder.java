package com.transsnet.downloader.adapter;

import android.app.Application;
import android.content.Context;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.app.NotificationCompat;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.blankj.utilcode.util.PermissionUtils;
import com.blankj.utilcode.util.Utils;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.google.android.material.snackbar.Snackbar;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.therouter.TheRouter;
import com.therouter.router.Navigator;
import com.tn.lib.widget.TnTextView;
import com.transsion.baselib.db.AppDatabase;
import com.transsion.baselib.db.audio.AudioBean;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.room.api.IAudioApi;
import com.transsion.room.api.IFloatingApi;
import com.transsion.web.api.WebConstants;
import com.transsnet.downloader.R$color;
import com.transsnet.downloader.R$id;
import com.transsnet.downloader.R$mipmap;
import com.transsnet.downloader.R$string;
import com.transsnet.downloader.util.LocalVideoNotExistUtil;
import com.transsnet.downloader.viewmodel.DownloadListManager;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.File;
import java.lang.ref.SoftReference;
import kotlin.Deprecated;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function5;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes7.dex */
@Deprecated
@Metadata(d1 = {"\u0000\u009e\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0010\t\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u000f\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002B\u0098\u0001\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012w\u0010\u0014\u001as\u0012\u0013\u0012\u00110\n¢\u0006\f\b\u000b\u0012\b\b\f\u0012\u0004\b\b(\r\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u000b\u0012\b\b\f\u0012\u0004\b\b(\u0004\u0012\u0013\u0012\u00110\u000e¢\u0006\f\b\u000b\u0012\b\b\f\u0012\u0004\b\b(\u000f\u0012\u0013\u0012\u00110\n¢\u0006\f\b\u000b\u0012\b\b\f\u0012\u0004\b\b(\u0010\u0012\u0015\u0012\u0013\u0018\u00010\u0011¢\u0006\f\b\u000b\u0012\b\b\f\u0012\u0004\b\b(\u0012\u0012\u0004\u0012\u00020\u00130\t¢\u0006\u0004\b\u0015\u0010\u0016J'\u0010\u0018\u001a\u00020\u00132\u0006\u0010\r\u001a\u00020\n2\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0017\u001a\u00020\u000eH\u0002¢\u0006\u0004\b\u0018\u0010\u0019J3\u0010\u001e\u001a\u00020\u00132\b\u0010\u001b\u001a\u0004\u0018\u00010\u001a2\b\u0010\u001c\u001a\u0004\u0018\u00010\u001a2\u0006\u0010\u001d\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\nH\u0002¢\u0006\u0004\b\u001e\u0010\u001fJ\u001f\u0010 \u001a\u00020\u00132\u0006\u0010\u0017\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\nH\u0002¢\u0006\u0004\b \u0010!J\u0017\u0010$\u001a\u00020\u00132\u0006\u0010#\u001a\u00020\"H\u0002¢\u0006\u0004\b$\u0010%J\u0017\u0010&\u001a\u00020\u00132\u0006\u0010#\u001a\u00020\"H\u0002¢\u0006\u0004\b&\u0010%J1\u0010-\u001a\u00020\u00132\u000e\u0010)\u001a\n\u0012\u0004\u0012\u00020(\u0018\u00010'2\b\u0010+\u001a\u0004\u0018\u00010*2\u0006\u0010,\u001a\u00020\u0005H\u0002¢\u0006\u0004\b-\u0010.JO\u00103\u001a\u00020\u00132\u0006\u0010\u0017\u001a\u00020\u000e2\u0006\u0010/\u001a\u00020\u00052\u0006\u0010,\u001a\u00020\u00052\u0006\u00100\u001a\u00020\u00052\u0006\u0010\f\u001a\u00020\u00052\u0006\u00101\u001a\u00020\u00052\u0006\u00102\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\nH\u0002¢\u0006\u0004\b3\u00104J\u0017\u00105\u001a\u00020\u00132\u0006\u0010\u000f\u001a\u00020\u000eH\u0002¢\u0006\u0004\b5\u00106J\u001f\u00107\u001a\u00020\u00132\u0006\u0010\u0017\u001a\u00020\u000e2\u0006\u0010+\u001a\u00020*H\u0002¢\u0006\u0004\b7\u00108J!\u0010:\u001a\u00020\u00132\u0006\u0010\r\u001a\u00020\n2\b\u0010\u0017\u001a\u0004\u0018\u000109H\u0016¢\u0006\u0004\b:\u0010;J!\u0010<\u001a\u00020\u00132\u0006\u0010\r\u001a\u00020\n2\b\u0010\u0017\u001a\u0004\u0018\u000109H\u0016¢\u0006\u0004\b<\u0010;J\u0017\u0010=\u001a\u00020\u00132\u0006\u0010\u0012\u001a\u00020\u0011H\u0016¢\u0006\u0004\b=\u0010>R\u0014\u0010\u0006\u001a\u00020\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b=\u0010?R\u0014\u0010\b\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b<\u0010@R\u0085\u0001\u0010\u0014\u001as\u0012\u0013\u0012\u00110\n¢\u0006\f\b\u000b\u0012\b\b\f\u0012\u0004\b\b(\r\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u000b\u0012\b\b\f\u0012\u0004\b\b(\u0004\u0012\u0013\u0012\u00110\u000e¢\u0006\f\b\u000b\u0012\b\b\f\u0012\u0004\b\b(\u000f\u0012\u0013\u0012\u00110\n¢\u0006\f\b\u000b\u0012\b\b\f\u0012\u0004\b\b(\u0010\u0012\u0015\u0012\u0013\u0018\u00010\u0011¢\u0006\f\b\u000b\u0012\b\b\f\u0012\u0004\b\b(\u0012\u0012\u0004\u0012\u00020\u00130\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b:\u0010AR$\u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bB\u0010C\u001a\u0004\bD\u0010E\"\u0004\bF\u0010GR\u001d\u0010M\u001a\u0004\u0018\u00010H8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bI\u0010J\u001a\u0004\bK\u0010LR\u001d\u0010R\u001a\u0004\u0018\u00010N8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bO\u0010J\u001a\u0004\bP\u0010QR\u001d\u0010W\u001a\u0004\u0018\u00010S8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bT\u0010J\u001a\u0004\bU\u0010VR\u0014\u0010[\u001a\u00020X8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bY\u0010ZR\u0014\u0010_\u001a\u00020\\8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b]\u0010^R\u0014\u0010a\u001a\u00020\\8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b`\u0010^R\u0014\u0010c\u001a\u00020\\8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bb\u0010^R\u0014\u0010e\u001a\u00020\u00038\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bd\u0010CR\u0014\u0010i\u001a\u00020f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bg\u0010hR\u0014\u0010k\u001a\u00020\u00038\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bj\u0010CR\u0014\u0010m\u001a\u00020\u00038\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bl\u0010CR\u0016\u0010o\u001a\u00020X8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bn\u0010ZR\u0016\u0010q\u001a\u00020X8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bp\u0010ZR\u0018\u0010t\u001a\u0004\u0018\u00010\u00118\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\br\u0010s¨\u0006u"}, d2 = {"Lcom/transsnet/downloader/adapter/DownloadedHolder;", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "Lcom/transsnet/downloader/adapter/u0;", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "", "pageFrom", "", "stateTextSizeDP", "Lkotlin/Function5;", "", "Lkotlin/ParameterName;", "name", RequestParameters.POSITION, "Lcom/transsion/baselib/db/download/DownloadBean;", "bean", NativeComponentConstants.KEY_COMPONENT_TYPE, "Lcom/transsnet/downloader/adapter/u0$b;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "", "popSaveListener", "<init>", "(Landroid/view/View;Ljava/lang/String;FLkotlin/jvm/functions/Function5;)V", WebConstants.FIELD_ITEM, "L", "(ILandroid/view/View;Lcom/transsion/baselib/db/download/DownloadBean;)V", "", "readProgress", "duration", NotificationCompat.CATEGORY_STATUS, "P", "(Ljava/lang/Long;Ljava/lang/Long;II)V", "M", "(Lcom/transsion/baselib/db/download/DownloadBean;I)V", "Landroid/content/Context;", "context", "U", "(Landroid/content/Context;)V", "z", "Ljava/lang/ref/SoftReference;", "", "userTag", "Lcom/transsion/baselib/db/audio/AudioBean;", "audioBean", "resourceId", "X", "(Ljava/lang/ref/SoftReference;Lcom/transsion/baselib/db/audio/AudioBean;Ljava/lang/String;)V", "path", "url", "postId", "subjectId", "N", "(Lcom/transsion/baselib/db/download/DownloadBean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V", "O", "(Lcom/transsion/baselib/db/download/DownloadBean;)V", "T", "(Lcom/transsion/baselib/db/download/DownloadBean;Lcom/transsion/baselib/db/audio/AudioBean;)V", "Ln6/a;", "c", "(ILn6/a;)V", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "a", "(Lcom/transsnet/downloader/adapter/u0$b;)V", "Ljava/lang/String;", "F", "Lkotlin/jvm/functions/Function5;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Landroid/view/View;", "D", "()Landroid/view/View;", "setView", "(Landroid/view/View;)V", "Lcom/transsion/room/api/IAudioApi;", "e", "Lkotlin/Lazy;", "B", "()Lcom/transsion/room/api/IAudioApi;", "mAudioApi", "Lcom/transsion/room/api/IFloatingApi;", "f", "C", "()Lcom/transsion/room/api/IFloatingApi;", "mFloatApi", "Ljj/a;", "g", "A", "()Ljj/a;", "audioDao", "Landroid/widget/TextView;", "h", "Landroid/widget/TextView;", "tvName", "Lcom/tn/lib/widget/TnTextView;", "i", "Lcom/tn/lib/widget/TnTextView;", "tvPercent", "j", "tvFileSize", CampaignEx.JSON_KEY_AD_K, "tvSaveFileName", "l", "vNoFile", "Landroid/widget/ProgressBar;", "m", "Landroid/widget/ProgressBar;", "progressBar", "n", "seriesBg1", "o", "seriesBg2", TtmlNode.TAG_P, "tvSaveTo", CampaignEx.JSON_KEY_AD_Q, "tvEp", CampaignEx.JSON_KEY_AD_R, "Lcom/transsnet/downloader/adapter/u0$b;", "onItemChangeListener", "Downloader_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class DownloadedHolder extends BaseViewHolder implements u0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private final String pageFrom;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private final float stateTextSizeDP;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private final Function5 popSaveListener;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private View view;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private final Lazy mAudioApi;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private final Lazy mFloatApi;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    private final Lazy audioDao;

    /* JADX INFO: renamed from: h, reason: collision with root package name and from kotlin metadata */
    private final TextView tvName;

    /* JADX INFO: renamed from: i, reason: collision with root package name and from kotlin metadata */
    private final TnTextView tvPercent;

    /* JADX INFO: renamed from: j, reason: collision with root package name and from kotlin metadata */
    private final TnTextView tvFileSize;

    /* JADX INFO: renamed from: k, reason: collision with root package name and from kotlin metadata */
    private final TnTextView tvSaveFileName;

    /* JADX INFO: renamed from: l, reason: collision with root package name and from kotlin metadata */
    private final View vNoFile;

    /* JADX INFO: renamed from: m, reason: collision with root package name and from kotlin metadata */
    private final ProgressBar progressBar;

    /* JADX INFO: renamed from: n, reason: collision with root package name and from kotlin metadata */
    private final View seriesBg1;

    /* JADX INFO: renamed from: o, reason: collision with root package name and from kotlin metadata */
    private final View seriesBg2;

    /* JADX INFO: renamed from: p, reason: collision with root package name and from kotlin metadata */
    private TextView tvSaveTo;

    /* JADX INFO: renamed from: q, reason: collision with root package name and from kotlin metadata */
    private TextView tvEp;

    /* JADX INFO: renamed from: r, reason: collision with root package name and from kotlin metadata */
    private u0.b onItemChangeListener;

    public static final class a implements PermissionUtils.b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ long f58453a;

        a(long j11) {
            this.f58453a = j11;
        }

        @Override // com.blankj.utilcode.util.PermissionUtils.b
        public void onDenied() {
            if (System.currentTimeMillis() - this.f58453a < 500) {
                com.transsnet.downloader.viewmodel.a0.f60085a.x();
            }
        }

        @Override // com.blankj.utilcode.util.PermissionUtils.b
        public void onGranted() {
        }
    }

    public static final class b extends aq.e {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ AudioBean f58454b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ DownloadBean f58455c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ DownloadedHolder f58456d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(AudioBean audioBean, DownloadBean downloadBean, DownloadedHolder downloadedHolder, SoftReference softReference) {
            super(softReference);
            this.f58454b = audioBean;
            this.f58455c = downloadBean;
            this.f58456d = downloadedHolder;
        }

        @Override // aq.e, com.transsion.player.orplayer.f
        public void onCompletion(ao.e eVar) {
            this.f58454b.setStatus(6);
            this.f58455c.setAudioStatus(6);
            DownloadedHolder downloadedHolder = this.f58456d;
            SoftReference softReferenceA = a();
            AudioBean audioBean = this.f58454b;
            String resourceId = this.f58455c.getResourceId();
            if (resourceId == null) {
                resourceId = this.f58455c.getUrl();
            }
            downloadedHolder.X(softReferenceA, audioBean, resourceId);
        }

        @Override // aq.e, com.transsion.player.orplayer.f
        public void onProgress(long j11, ao.e eVar) {
            this.f58454b.setReadProcess(Long.valueOf(j11));
            DownloadedHolder downloadedHolder = this.f58456d;
            SoftReference softReferenceA = a();
            AudioBean audioBean = this.f58454b;
            String resourceId = this.f58455c.getResourceId();
            if (resourceId == null) {
                resourceId = this.f58455c.getUrl();
            }
            downloadedHolder.X(softReferenceA, audioBean, resourceId);
        }

        @Override // aq.e, com.transsion.player.orplayer.f
        public void onVideoPause(ao.e eVar) {
            this.f58454b.setStatus(4);
            this.f58455c.setAudioStatus(4);
            DownloadedHolder downloadedHolder = this.f58456d;
            SoftReference softReferenceA = a();
            AudioBean audioBean = this.f58454b;
            String resourceId = this.f58455c.getResourceId();
            if (resourceId == null) {
                resourceId = this.f58455c.getUrl();
            }
            downloadedHolder.X(softReferenceA, audioBean, resourceId);
        }

        @Override // aq.e, com.transsion.player.orplayer.f
        public void onVideoStart(ao.e eVar) {
            this.f58454b.setStatus(3);
            this.f58455c.setAudioStatus(3);
            Long duration = this.f58454b.getDuration();
            if (duration != null && duration.longValue() == 0) {
                AudioBean audioBean = this.f58454b;
                IAudioApi iAudioApiB = this.f58456d.B();
                audioBean.setDuration(iAudioApiB != null ? Long.valueOf(iAudioApiB.e()) : null);
            }
            DownloadedHolder downloadedHolder = this.f58456d;
            SoftReference softReferenceA = a();
            AudioBean audioBean2 = this.f58454b;
            String resourceId = this.f58455c.getResourceId();
            if (resourceId == null) {
                resourceId = this.f58455c.getUrl();
            }
            downloadedHolder.X(softReferenceA, audioBean2, resourceId);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DownloadedHolder(View view, String pageFrom, float f11, Function5 popSaveListener) {
        super(view);
        Intrinsics.h(view, "view");
        Intrinsics.h(pageFrom, "pageFrom");
        Intrinsics.h(popSaveListener, "popSaveListener");
        this.pageFrom = pageFrom;
        this.stateTextSizeDP = f11;
        this.popSaveListener = popSaveListener;
        this.mAudioApi = LazyKt.b(new Function0() { // from class: com.transsnet.downloader.adapter.g0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return DownloadedHolder.J();
            }
        });
        this.mFloatApi = LazyKt.b(new Function0() { // from class: com.transsnet.downloader.adapter.h0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return DownloadedHolder.K();
            }
        });
        this.audioDao = LazyKt.b(new Function0() { // from class: com.transsnet.downloader.adapter.w
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return DownloadedHolder.y();
            }
        });
        this.view = view;
        this.tvName = (TextView) getView(R$id.tv_name);
        this.tvPercent = (TnTextView) getView(R$id.tv_process);
        this.vNoFile = getView(R$id.layout_no_file_tips);
        this.progressBar = (ProgressBar) getView(R$id.progress_bar);
        this.seriesBg1 = getView(R$id.v_series_top_bg);
        this.seriesBg2 = getView(R$id.v_series_top_bg_2);
        this.tvFileSize = (TnTextView) getView(R$id.tv_file_size);
        this.tvSaveFileName = (TnTextView) getView(R$id.tv_save_file_name);
        this.tvSaveTo = (TextView) getView(R$id.tv_save_to);
        this.tvEp = (TextView) getView(R$id.tv_ep);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final jj.a A() {
        return (jj.a) this.audioDao.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final IAudioApi B() {
        return (IAudioApi) this.mAudioApi.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final IFloatingApi C() {
        return (IFloatingApi) this.mFloatApi.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CharSequence E(DownloadedHolder downloadedHolder, n6.a aVar, String str) {
        return downloadedHolder.itemView.getContext().getString(R$string.download_files, Integer.valueOf(((DownloadBean) aVar).getCount())) + " · " + str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CharSequence F(String str) {
        return str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void G(DownloadedHolder downloadedHolder, int i11, n6.a aVar, View view) {
        Intrinsics.e(view);
        downloadedHolder.L(i11, view, (DownloadBean) aVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean H(DownloadedHolder downloadedHolder, int i11, n6.a aVar, View view) {
        Intrinsics.e(view);
        downloadedHolder.L(i11, view, (DownloadBean) aVar);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void I(n6.a aVar, DownloadedHolder downloadedHolder, int i11, View view) {
        if (com.transsion.baseui.util.c.f43504a.a(view.getId(), 1000L)) {
            return;
        }
        DownloadBean downloadBean = (DownloadBean) aVar;
        if (downloadBean.getStatus() == 10) {
            downloadedHolder.O(downloadBean);
        } else {
            downloadedHolder.M(downloadBean, i11);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final IAudioApi J() {
        return (IAudioApi) TheRouter.d(IAudioApi.class, new Object[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final IFloatingApi K() {
        return (IFloatingApi) TheRouter.d(IFloatingApi.class, new Object[0]);
    }

    private final void L(int position, View view, DownloadBean item) {
        if (item.isAllFileExist()) {
            this.popSaveListener.invoke(Integer.valueOf(position), view, item, 1, this.onItemChangeListener);
            return;
        }
        LocalVideoNotExistUtil localVideoNotExistUtil = LocalVideoNotExistUtil.f59904a;
        Context context = view.getContext();
        Intrinsics.g(context, "getContext(...)");
        localVideoNotExistUtil.v(context, item, position);
    }

    private final void M(DownloadBean item, int position) {
        String name;
        String subjectName;
        if (item.getType() == 1) {
            if (item.isFileExist()) {
                kotlinx.coroutines.k.d(kotlinx.coroutines.o0.a(y0.c()), null, null, new DownloadedHolder$openMedia$1(this, item, null), 3, null);
                return;
            }
            LocalVideoNotExistUtil localVideoNotExistUtil = LocalVideoNotExistUtil.f59904a;
            View view = this.view;
            Intrinsics.e(view);
            Context context = view.getContext();
            Intrinsics.g(context, "getContext(...)");
            localVideoNotExistUtil.v(context, item, position);
            return;
        }
        String path = item.getPath();
        if (path != null && path.length() != 0) {
            File file = new File(path);
            Log.e("yy", "exists:" + file.exists() + "  canRead" + file.canRead() + "    " + path);
            boolean zS = PermissionUtils.s("android.permission.WRITE_EXTERNAL_STORAGE");
            if (file.exists() && !file.canRead() && !zS) {
                Context context2 = this.itemView.getContext();
                Intrinsics.e(context2);
                U(context2);
                return;
            }
        }
        String path2 = item.getPath();
        String str = path2 == null ? "" : path2;
        String resourceId = item.getResourceId();
        if (resourceId == null) {
            resourceId = item.getUrl();
        }
        String str2 = resourceId;
        String url = item.getUrl();
        String str3 = (!item.isSeries() || (subjectName = item.getSubjectName()) == null || subjectName.length() <= 0 ? (name = item.getName()) != null : (name = item.getSubjectName()) != null) ? name : "";
        String postId = item.getPostId();
        if (postId == null) {
            postId = item.getUrl();
        }
        String str4 = postId;
        String subjectId = item.getSubjectId();
        N(item, str, str2, url, str3, str4, subjectId == null ? "" : subjectId, position);
    }

    private final void N(DownloadBean item, String path, String resourceId, String url, String name, String postId, String subjectId, int position) {
        Context context;
        if (item.isShotTV()) {
            View view = this.view;
            if (view == null || (context = view.getContext()) == null) {
                return;
            }
            Navigator.x(TheRouter.c(ls.a.f69034a.b()).K("id", item.getSubjectId()).F("ep", item.getEp()).G("ms", item.getReadProgress()), context, null, 2, null);
            return;
        }
        View view2 = this.view;
        Context context2 = view2 != null ? view2.getContext() : null;
        AppCompatActivity appCompatActivity = context2 instanceof AppCompatActivity ? (AppCompatActivity) context2 : null;
        if (appCompatActivity == null) {
            return;
        }
        Navigator navigatorF = TheRouter.c("/video/detail").F("subject_type", item.getSubjectType()).K("id", subjectId).K("extra_local_path", path).K("extra_url", url).K("extra_resource_id", resourceId).K("extra_subject_id", subjectId).K("extra_name", name).K("extra_post_id", postId).z("extra_completed", true).z("extra_is_series", item.isSeries()).K("extra_page_from", this.pageFrom).F("extra_height", item.getVideoHeight()).F("extra_width", item.getVideoWidth());
        if (!item.isSeries()) {
            position = -1;
        }
        Navigator.x(navigatorF.F("extra_series_position", position), appCompatActivity, null, 2, null);
    }

    private final void O(DownloadBean bean) {
        DownloadListManager.a aVar = DownloadListManager.f59994m;
        aVar.a().K().q(null);
        aVar.a().K().q(bean);
        View view = this.view;
        Context context = view != null ? view.getContext() : null;
        AppCompatActivity appCompatActivity = context instanceof AppCompatActivity ? (AppCompatActivity) context : null;
        if (appCompatActivity == null) {
            return;
        }
        Navigator navigatorC = TheRouter.c("/download/series_list");
        String subjectName = bean.getSubjectName();
        if (subjectName == null) {
            subjectName = "Series";
        }
        Navigator.x(navigatorC.K("extra_name", subjectName), appCompatActivity, null, 2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void P(Long readProgress, Long duration, int status, final int type) {
        final long jLongValue = readProgress != null ? readProgress.longValue() : 0L;
        long jLongValue2 = duration != null ? duration.longValue() : 1L;
        final int i11 = (int) (((jLongValue * 1.0f) / (jLongValue2 > 0 ? jLongValue2 : 1L)) * 100);
        if (i11 >= 0 && i11 < 101) {
            this.tvPercent.setTextAction(new Function0() { // from class: com.transsnet.downloader.adapter.v
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return DownloadedHolder.Q(i11, jLongValue, type, this);
                }
            });
            this.progressBar.setProgress(i11);
        }
        if (status == 1) {
            this.tvPercent.setTextAction(new Function0() { // from class: com.transsnet.downloader.adapter.z
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return DownloadedHolder.R(this.f58550a);
                }
            });
        } else {
            if (status != 6) {
                return;
            }
            this.tvPercent.setTextAction(new Function0() { // from class: com.transsnet.downloader.adapter.a0
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return DownloadedHolder.S(this.f58481a);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CharSequence Q(int i11, long j11, int i12, DownloadedHolder downloadedHolder) {
        if (i11 != 0) {
            if (i11 != 100) {
                return i12 == 1 ? downloadedHolder.itemView.getContext().getString(R$string.download_listened, Integer.valueOf(i11)) : downloadedHolder.itemView.getContext().getString(R$string.download_watched, Integer.valueOf(i11));
            }
            return downloadedHolder.itemView.getContext().getString(R$string.download_finished);
        }
        if (j11 > 0) {
            return i12 == 1 ? downloadedHolder.itemView.getContext().getString(R$string.download_listened, 1) : downloadedHolder.itemView.getContext().getString(R$string.download_watched, 1);
        }
        return downloadedHolder.itemView.getContext().getString(R$string.download_not_open);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CharSequence R(DownloadedHolder downloadedHolder) {
        return downloadedHolder.itemView.getContext().getString(R$string.download_not_open);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CharSequence S(DownloadedHolder downloadedHolder) {
        return downloadedHolder.itemView.getContext().getString(R$string.download_finished);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void T(DownloadBean item, AudioBean audioBean) {
        item.setAudioListener(new b(audioBean, item, this, new SoftReference(this)));
    }

    private final void U(final Context context) {
        Snackbar snackbarP0 = Snackbar.m0(this.itemView, R$string.download_open_file_no_permission, -1).p0(com.transsion.transfer.R$string.wifi_setting, new View.OnClickListener() { // from class: com.transsnet.downloader.adapter.x
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DownloadedHolder.V(this.f58547a, context, view);
            }
        });
        int color = androidx.core.content.b.getColor(context, R$color.download_snackbar_bg);
        int color2 = androidx.core.content.b.getColor(context, R$color.download_snackbar_action);
        snackbarP0.r0(color);
        View viewH = snackbarP0.H();
        Intrinsics.g(viewH, "getView(...)");
        com.transsion.baseui.util.q.c(viewH, com.blankj.utilcode.util.i.e(8.0f));
        final Button button = (Button) snackbarP0.H().findViewById(com.google.android.material.R$id.snackbar_action);
        if (button != null) {
            TextView textView = new TextView(context);
            textView.setAllCaps(false);
            textView.setTextColor(color);
            textView.setTextSize(14.0f);
            textView.setGravity(17);
            textView.setBackgroundColor(color2);
            com.transsion.baseui.util.q.c(textView, com.blankj.utilcode.util.i.e(8.0f));
            textView.setTypeface(jg.a.c(context));
            textView.setText(button.getText());
            textView.setOnClickListener(new View.OnClickListener() { // from class: com.transsnet.downloader.adapter.y
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    DownloadedHolder.W(button, view);
                }
            });
            ViewGroup.LayoutParams layoutParams = button.getLayoutParams();
            layoutParams.width = com.blankj.utilcode.util.i.e(68.0f);
            layoutParams.height = com.blankj.utilcode.util.i.e(32.0f);
            ViewGroup viewGroup = (ViewGroup) button.getParent();
            if (viewGroup != null) {
                viewGroup.addView(textView, layoutParams);
            }
            jg.c.g(button);
        }
        TextView textView2 = (TextView) snackbarP0.H().findViewById(com.google.android.material.R$id.snackbar_text);
        if (textView2 != null) {
            textView2.setAllCaps(false);
            textView2.setTextSize(14.0f);
            textView2.setTypeface(jg.a.c(context));
            textView2.setTextColor(color2);
        }
        snackbarP0.X();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void V(DownloadedHolder downloadedHolder, Context context, View view) {
        downloadedHolder.z(context);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void W(Button button, View view) {
        button.performClick();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void X(SoftReference userTag, AudioBean audioBean, String resourceId) {
        if ((userTag != null ? userTag.get() : null) != null) {
            Object obj = userTag.get();
            Intrinsics.f(obj, "null cannot be cast to non-null type com.transsnet.downloader.adapter.DownloadedHolder");
            DownloadedHolder downloadedHolder = (DownloadedHolder) obj;
            if (audioBean != null) {
                downloadedHolder.P(audioBean.getReadProcess(), audioBean.getDuration(), audioBean.getStatus(), 1);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final jj.a y() {
        AppDatabase.Companion companion = AppDatabase.INSTANCE;
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        return companion.b(applicationA).o1();
    }

    private final void z(Context context) {
        PermissionUtils.x("android.permission.WRITE_EXTERNAL_STORAGE").m(new a(System.currentTimeMillis())).y();
    }

    /* JADX INFO: renamed from: D, reason: from getter */
    public final View getView() {
        return this.view;
    }

    @Override // com.transsnet.downloader.adapter.u0
    public void a(u0.b listener) {
        Intrinsics.h(listener, "listener");
        this.onItemChangeListener = listener;
    }

    @Override // com.transsnet.downloader.adapter.u0
    public void b(int position, n6.a item) {
        if (item instanceof DownloadBean) {
            DownloadBean downloadBean = (DownloadBean) item;
            P(Long.valueOf(downloadBean.getReadProgress()), downloadBean.getDuration(), downloadBean.getStatus(), downloadBean.getType());
        }
    }

    /* JADX WARN: Code duplicated, block: B:15:0x0038  */
    /* JADX WARN: Code duplicated, block: B:46:0x00f7  */
    @Override // com.transsnet.downloader.adapter.u0
    public void c(final int position, final n6.a item) {
        final String strA;
        TnTextView tnTextView = this.tvPercent;
        float f11 = this.stateTextSizeDP;
        if (f11 == 0.0f) {
            f11 = 12.0f;
        }
        tnTextView.setTextSize(2, f11);
        if (item instanceof DownloadBean) {
            DownloadBean downloadBean = (DownloadBean) item;
            Long size = downloadBean.getSize();
            if (size != null) {
                strA = oh.b.a(size.longValue(), this.stateTextSizeDP == 12.0f ? 1 : 0);
                if (strA == null) {
                    strA = "";
                }
            } else {
                strA = "";
            }
            if (downloadBean.getIsTransferFailed()) {
                downloadBean.getIsClosedTransferFailed();
            }
            if (downloadBean.getStatus() == 10) {
                jg.c.k(this.seriesBg1);
                jg.c.k(this.seriesBg2);
                this.tvFileSize.setTextAction(new Function0() { // from class: com.transsnet.downloader.adapter.b0
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return DownloadedHolder.E(this.f58483a, item, strA);
                    }
                });
                this.tvFileSize.setCompoundDrawablesRelativeWithIntrinsicBounds(R$mipmap.ic_download_series, 0, 0, 0);
                jg.c.g(this.tvSaveFileName);
                jg.c.g(this.vNoFile);
            } else {
                jg.c.g(this.seriesBg1);
                jg.c.g(this.seriesBg2);
                jg.c.g(this.tvSaveFileName);
                this.tvFileSize.setTextAction(new Function0() { // from class: com.transsnet.downloader.adapter.c0
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return DownloadedHolder.F(strA);
                    }
                });
                this.tvFileSize.setCompoundDrawablesRelativeWithIntrinsicBounds(0, 0, 0, 0);
                this.vNoFile.setVisibility(downloadBean.isFileExist() ? 8 : 0);
            }
            ImageView imageView = (ImageView) getView(R$id.iv_cover);
            String cover = downloadBean.getCover();
            if (cover != null && !Intrinsics.c(imageView.getTag(), cover)) {
                imageView.setTag(cover);
                Context context = this.itemView.getContext();
                Intrinsics.g(context, "getContext(...)");
                DownloadedHolderKt.a(context, imageView, cover, downloadBean.getThumbnail());
            }
            ImageView imageView2 = (ImageView) getView(R$id.iv_type);
            int type = downloadBean.getType();
            if (type == 2) {
                imageView2.setImageResource(com.transsion.baseui.R$mipmap.home_ic_movie_white);
            } else if (type == 3) {
                imageView2.setImageResource(downloadBean.isShotTV() ? com.transsion.baseui.R$mipmap.home_ic_short_tv_white : com.transsion.baseui.R$mipmap.home_ic_tv_white);
            } else if (type == 5 || type == 6) {
                imageView2.setImageResource(com.transsion.baseui.R$mipmap.home_ic_movie_white);
            } else {
                imageView2.setImageResource(com.transsion.baseui.R$mipmap.home_ic_audio_white);
            }
            this.tvName.setText(downloadBean.getTitleNameAppendResolution());
            if (downloadBean.getEpName().length() > 0) {
                jg.c.k(this.tvEp);
                this.tvEp.setText(downloadBean.getEpName());
            } else {
                jg.c.g(this.tvEp);
            }
            getView(R$id.iv_more).setOnClickListener(new View.OnClickListener() { // from class: com.transsnet.downloader.adapter.d0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    DownloadedHolder.G(this.f58492a, position, item, view);
                }
            });
            this.itemView.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.transsnet.downloader.adapter.e0
                @Override // android.view.View.OnLongClickListener
                public final boolean onLongClick(View view) {
                    return DownloadedHolder.H(this.f58495a, position, item, view);
                }
            });
            View view = this.view;
            if (view != null) {
                view.setOnClickListener(new View.OnClickListener() { // from class: com.transsnet.downloader.adapter.f0
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view2) {
                        DownloadedHolder.I(item, this, position, view2);
                    }
                });
            }
            if (downloadBean.getType() != 1 || downloadBean.getStatus() == 10) {
                P(Long.valueOf(downloadBean.getReadProgress()), downloadBean.getDuration(), downloadBean.getStatus(), downloadBean.getType());
                return;
            }
            kotlinx.coroutines.k.d(kotlinx.coroutines.o0.a(y0.c()), null, null, new DownloadedHolder$initData$7(item, this, position, null), 3, null);
            lg.a.C0828a.f(lg.a.f68839a, "audioPlay", "------------------refrehs, name = " + downloadBean.getName() + ", audioStatus = " + downloadBean.getAudioStatus(), false, 4, null);
        }
    }
}
