package com.transsnet.downloader.adapter;

import android.app.Application;
import android.content.Context;
import android.view.View;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatActivity;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.app.NotificationCompat;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.blankj.utilcode.util.Utils;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.cloud.tmc.integration.params.TmcStartParams;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.google.android.material.imageview.ShapeableImageView;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.therouter.TheRouter;
import com.therouter.router.Navigator;
import com.tn.lib.widget.R$color;
import com.tn.lib.widget.TnTextView;
import com.transsion.baselib.db.AppDatabase;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.room.api.IAudioApi;
import com.transsion.room.api.IFloatingApi;
import com.transsion.web.api.WebConstants;
import com.transsnet.downloader.R$id;
import com.transsnet.downloader.R$mipmap;
import com.transsnet.downloader.R$string;
import com.transsnet.downloader.manager.DownloadEsHelper;
import com.transsnet.downloader.popup.PopupManager;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Deprecated;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes7.dex */
@Deprecated
@Metadata(d1 = {"\u0000¤\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\t\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002B\u001f\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\nJ'\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\rH\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\u0017\u0010\u0013\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\rH\u0002¢\u0006\u0004\b\u0013\u0010\u0014J\u0017\u0010\u0015\u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\rH\u0002¢\u0006\u0004\b\u0015\u0010\u0014J\u0017\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u000e\u001a\u00020\rH\u0002¢\u0006\u0004\b\u0017\u0010\u0018J'\u0010\u001a\u001a\u00020\u000f2\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\u0019\u001a\u00020\u000b2\u0006\u0010\u0012\u001a\u00020\rH\u0002¢\u0006\u0004\b\u001a\u0010\u001bJ\u0017\u0010\u001c\u001a\u00020\u00052\u0006\u0010\u0012\u001a\u00020\rH\u0002¢\u0006\u0004\b\u001c\u0010\u001dJ!\u0010\u001f\u001a\u00020\u000f2\u0006\u0010\f\u001a\u00020\u000b2\b\u0010\u0012\u001a\u0004\u0018\u00010\u001eH\u0016¢\u0006\u0004\b\u001f\u0010 J\u0017\u0010#\u001a\u00020\u000f2\u0006\u0010\"\u001a\u00020!H\u0016¢\u0006\u0004\b#\u0010$J!\u0010%\u001a\u00020\u000f2\u0006\u0010\f\u001a\u00020\u000b2\b\u0010\u0012\u001a\u0004\u0018\u00010\u001eH\u0016¢\u0006\u0004\b%\u0010 R\u0014\u0010\u0006\u001a\u00020\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b#\u0010&R\u0014\u0010\b\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b%\u0010\u0017R\u0014\u0010)\u001a\u00020'8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001f\u0010(R\u0016\u0010-\u001a\u00020*8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b+\u0010,R\u0018\u00101\u001a\u0004\u0018\u00010.8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b/\u00100R\u0018\u00105\u001a\u0004\u0018\u0001028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b3\u00104R\u0018\u00107\u001a\u0004\u0018\u00010.8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b6\u00100R\u0018\u0010;\u001a\u0004\u0018\u0001088\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b9\u0010:R\u0018\u0010=\u001a\u0004\u0018\u00010*8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b<\u0010,R\u0018\u0010A\u001a\u0004\u0018\u00010>8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b?\u0010@R\u0016\u0010C\u001a\u00020.8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bB\u00100R\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bD\u0010ER\u001b\u0010K\u001a\u00020F8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bG\u0010H\u001a\u0004\bI\u0010JR\u0014\u0010M\u001a\u00020\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bL\u0010\u0013R\u0014\u0010O\u001a\u00020\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bN\u0010\u0013R\u0014\u0010Q\u001a\u00020\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bP\u0010\u0013R\u0014\u0010S\u001a\u00020\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bR\u0010\u0013R\u0014\u0010U\u001a\u00020\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bT\u0010\u0013R\u001d\u0010Z\u001a\u0004\u0018\u00010V8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bW\u0010H\u001a\u0004\bX\u0010YR\u001d\u0010_\u001a\u0004\u0018\u00010[8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\\\u0010H\u001a\u0004\b]\u0010^R\u001b\u0010c\u001a\u00020`8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001c\u0010H\u001a\u0004\ba\u0010bR\u0018\u0010f\u001a\u0004\u0018\u00010!8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bd\u0010eR\u0016\u0010h\u001a\u00020g8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\ba\u0010\u0015R\u0016\u0010i\u001a\u00020g8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bI\u0010\u0015¨\u0006j"}, d2 = {"Lcom/transsnet/downloader/adapter/DownloadingHolder;", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "Lcom/transsnet/downloader/adapter/u0;", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "", "pageFrom", "", "stateTextSizeDP", "<init>", "(Landroid/view/View;Ljava/lang/String;F)V", "", RequestParameters.POSITION, "Lcom/transsion/baselib/db/download/DownloadBean;", "downloadBean", "", "L", "(ILandroid/view/View;Lcom/transsion/baselib/db/download/DownloadBean;)V", WebConstants.FIELD_ITEM, "I", "(Lcom/transsion/baselib/db/download/DownloadBean;)V", "J", "", "F", "(Lcom/transsion/baselib/db/download/DownloadBean;)Z", NotificationCompat.CATEGORY_STATUS, "K", "(IILcom/transsion/baselib/db/download/DownloadBean;)V", TmcStartParams.KEY_URL_SHORT, "(Lcom/transsion/baselib/db/download/DownloadBean;)Ljava/lang/String;", "Ln6/a;", "c", "(ILn6/a;)V", "Lcom/transsnet/downloader/adapter/u0$b;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "a", "(Lcom/transsnet/downloader/adapter/u0$b;)V", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Ljava/lang/String;", "Landroidx/constraintlayout/widget/ConstraintLayout;", "Landroidx/constraintlayout/widget/ConstraintLayout;", "clRoot", "Landroid/widget/ImageView;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Landroid/widget/ImageView;", "ivType", "Landroid/widget/TextView;", "e", "Landroid/widget/TextView;", "tvProgress", "Landroid/widget/ProgressBar;", "f", "Landroid/widget/ProgressBar;", "pbDownload", "g", "tvName", "Lcom/google/android/material/imageview/ShapeableImageView;", "h", "Lcom/google/android/material/imageview/ShapeableImageView;", "shapeableImageView", "i", "ivStateBg", "Lcom/tn/lib/widget/TnTextView;", "j", "Lcom/tn/lib/widget/TnTextView;", "tvState", CampaignEx.JSON_KEY_AD_K, "tvSeriesEp", "l", "Landroid/view/View;", "Lcom/transsnet/downloader/manager/g;", "m", "Lkotlin/Lazy;", "x", "()Lcom/transsnet/downloader/manager/g;", "downloadManager", "n", "strLeft", "o", "strWaiting", TtmlNode.TAG_P, "strPaused", CampaignEx.JSON_KEY_AD_Q, "strFailed", CampaignEx.JSON_KEY_AD_R, "strNoNet", "Lcom/transsion/room/api/IAudioApi;", "s", "y", "()Lcom/transsion/room/api/IAudioApi;", "mAudioApi", "Lcom/transsion/room/api/IFloatingApi;", "t", "z", "()Lcom/transsion/room/api/IFloatingApi;", "mFloatApi", "Ljj/a;", "w", "()Ljj/a;", "audioDao", "v", "Lcom/transsnet/downloader/adapter/u0$b;", "onItemChangeListener", "", "preProgress", "preTimeStamp", "Downloader_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class DownloadingHolder extends BaseViewHolder implements u0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private final String pageFrom;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private final float stateTextSizeDP;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private final ConstraintLayout clRoot;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private ImageView ivType;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private TextView tvProgress;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private ProgressBar pbDownload;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    private TextView tvName;

    /* JADX INFO: renamed from: h, reason: collision with root package name and from kotlin metadata */
    private ShapeableImageView shapeableImageView;

    /* JADX INFO: renamed from: i, reason: collision with root package name and from kotlin metadata */
    private ImageView ivStateBg;

    /* JADX INFO: renamed from: j, reason: collision with root package name and from kotlin metadata */
    private TnTextView tvState;

    /* JADX INFO: renamed from: k, reason: collision with root package name and from kotlin metadata */
    private TextView tvSeriesEp;

    /* JADX INFO: renamed from: l, reason: collision with root package name and from kotlin metadata */
    private View view;

    /* JADX INFO: renamed from: m, reason: collision with root package name and from kotlin metadata */
    private final Lazy downloadManager;

    /* JADX INFO: renamed from: n, reason: collision with root package name and from kotlin metadata */
    private final int strLeft;

    /* JADX INFO: renamed from: o, reason: collision with root package name and from kotlin metadata */
    private final int strWaiting;

    /* JADX INFO: renamed from: p, reason: collision with root package name and from kotlin metadata */
    private final int strPaused;

    /* JADX INFO: renamed from: q, reason: collision with root package name and from kotlin metadata */
    private final int strFailed;

    /* JADX INFO: renamed from: r, reason: collision with root package name and from kotlin metadata */
    private final int strNoNet;

    /* JADX INFO: renamed from: s, reason: collision with root package name and from kotlin metadata */
    private final Lazy mAudioApi;

    /* JADX INFO: renamed from: t, reason: collision with root package name and from kotlin metadata */
    private final Lazy mFloatApi;

    /* JADX INFO: renamed from: u, reason: collision with root package name and from kotlin metadata */
    private final Lazy audioDao;

    /* JADX INFO: renamed from: v, reason: collision with root package name and from kotlin metadata */
    private u0.b onItemChangeListener;

    /* JADX INFO: renamed from: w, reason: collision with root package name and from kotlin metadata */
    private long preProgress;

    /* JADX INFO: renamed from: x, reason: collision with root package name and from kotlin metadata */
    private long preTimeStamp;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DownloadingHolder(View view, String pageFrom, float f11) {
        super(view);
        Intrinsics.h(view, "view");
        Intrinsics.h(pageFrom, "pageFrom");
        this.pageFrom = pageFrom;
        this.stateTextSizeDP = f11;
        this.downloadManager = LazyKt.b(new Function0() { // from class: com.transsnet.downloader.adapter.k0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return DownloadingHolder.v();
            }
        });
        this.strLeft = R$string.downloading_time_left;
        this.strWaiting = R$string.download_status_waiting;
        this.strPaused = R$string.download_status_paused;
        this.strFailed = R$string.download_status_failed;
        this.strNoNet = R$string.download_status_no_net;
        this.mAudioApi = LazyKt.b(new Function0() { // from class: com.transsnet.downloader.adapter.l0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return DownloadingHolder.G();
            }
        });
        this.mFloatApi = LazyKt.b(new Function0() { // from class: com.transsnet.downloader.adapter.m0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return DownloadingHolder.H();
            }
        });
        this.audioDao = LazyKt.b(new Function0() { // from class: com.transsnet.downloader.adapter.n0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return DownloadingHolder.t();
            }
        });
        this.view = view;
        this.clRoot = (ConstraintLayout) getView(R$id.cl_root);
        this.shapeableImageView = (ShapeableImageView) getView(R$id.iv_cover);
        this.tvName = (TextView) getView(R$id.tv_name);
        this.ivType = (ImageView) getView(R$id.iv_type);
        this.tvSeriesEp = (TextView) getView(R$id.tv_ep);
        this.pbDownload = (ProgressBar) getView(R$id.pb_download);
        this.tvProgress = (TextView) getView(R$id.tv_state_progress);
        this.ivStateBg = (ImageView) getView(R$id.iv_state_bg);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void A(n6.a aVar, DownloadBean downloadBean, DownloadingHolder downloadingHolder, int i11, View view) {
        DownloadEsHelper downloadEsHelperA = DownloadEsHelper.f59419m.a();
        DownloadBean downloadBean2 = (DownloadBean) aVar;
        String resourceId = downloadBean2.getResourceId();
        if (resourceId == null) {
            resourceId = downloadBean2.getUrl();
        }
        DownloadBean downloadBeanQ = downloadEsHelperA.q(resourceId);
        if (downloadBeanQ != null) {
            downloadBean = downloadBeanQ;
        }
        Intrinsics.e(view);
        downloadingHolder.L(i11, view, downloadBean);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean B(n6.a aVar, DownloadBean downloadBean, DownloadingHolder downloadingHolder, int i11, View view) {
        DownloadEsHelper downloadEsHelperA = DownloadEsHelper.f59419m.a();
        DownloadBean downloadBean2 = (DownloadBean) aVar;
        String resourceId = downloadBean2.getResourceId();
        if (resourceId == null) {
            resourceId = downloadBean2.getUrl();
        }
        DownloadBean downloadBeanQ = downloadEsHelperA.q(resourceId);
        if (downloadBeanQ != null) {
            downloadBean = downloadBeanQ;
        }
        Intrinsics.e(view);
        downloadingHolder.L(i11, view, downloadBean);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean C(n6.a aVar, DownloadBean downloadBean, DownloadingHolder downloadingHolder, int i11, View view) {
        DownloadEsHelper downloadEsHelperA = DownloadEsHelper.f59419m.a();
        DownloadBean downloadBean2 = (DownloadBean) aVar;
        String resourceId = downloadBean2.getResourceId();
        if (resourceId == null) {
            resourceId = downloadBean2.getUrl();
        }
        DownloadBean downloadBeanQ = downloadEsHelperA.q(resourceId);
        if (downloadBeanQ != null) {
            downloadBean = downloadBeanQ;
        }
        Intrinsics.e(view);
        downloadingHolder.L(i11, view, downloadBean);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void D(n6.a aVar, DownloadBean downloadBean, DownloadingHolder downloadingHolder, View view) {
        DownloadEsHelper downloadEsHelperA = DownloadEsHelper.f59419m.a();
        DownloadBean downloadBean2 = (DownloadBean) aVar;
        String resourceId = downloadBean2.getResourceId();
        if (resourceId == null) {
            resourceId = downloadBean2.getUrl();
        }
        DownloadBean downloadBeanQ = downloadEsHelperA.q(resourceId);
        if (downloadBeanQ != null) {
            downloadBean = downloadBeanQ;
        }
        if (com.transsion.baseui.util.c.f43504a.a(view.getId(), 1000L)) {
            return;
        }
        int status = downloadBean.getStatus();
        if (status == 1 || status == 2 || status == 3) {
            downloadingHolder.x().G(downloadBean);
        } else {
            if (downloadingHolder.F(downloadBean)) {
                return;
            }
            com.transsnet.downloader.manager.g.a.a(downloadingHolder.x(), downloadBean, false, 2, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void E(n6.a aVar, DownloadBean downloadBean, DownloadingHolder downloadingHolder, View view) {
        if (com.transsion.baseui.util.c.f43504a.a(view.getId(), 1000L)) {
            return;
        }
        DownloadEsHelper downloadEsHelperA = DownloadEsHelper.f59419m.a();
        DownloadBean downloadBean2 = (DownloadBean) aVar;
        String resourceId = downloadBean2.getResourceId();
        if (resourceId == null) {
            resourceId = downloadBean2.getUrl();
        }
        DownloadBean downloadBeanQ = downloadEsHelperA.q(resourceId);
        if (downloadBeanQ != null) {
            downloadBean = downloadBeanQ;
        }
        if (downloadBean.isVideo()) {
            downloadingHolder.J(downloadBean);
        } else {
            downloadingHolder.I(downloadBean);
        }
    }

    private final boolean F(DownloadBean downloadBean) {
        long jA;
        String rootPath = downloadBean.getRootPath();
        if (rootPath == null || rootPath.length() <= 0) {
            jA = com.blankj.utilcode.util.w.a();
        } else {
            try {
                jA = com.blankj.utilcode.util.n.j(downloadBean.getRootPath());
            } catch (Throwable unused) {
                return false;
            }
        }
        Long size = downloadBean.getSize();
        if ((size != null ? size.longValue() : 0L) - downloadBean.getProgress() < jA) {
            return false;
        }
        uh.b.f76753a.d(com.transsion.baseui.R$string.insufficient_storage_available);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final IAudioApi G() {
        return (IAudioApi) TheRouter.d(IAudioApi.class, new Object[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final IFloatingApi H() {
        return (IFloatingApi) TheRouter.d(IFloatingApi.class, new Object[0]);
    }

    private final void I(DownloadBean item) {
        kotlinx.coroutines.k.d(kotlinx.coroutines.o0.a(y0.c()), null, null, new DownloadingHolder$openAudio$1(this, item, null), 3, null);
    }

    private final void J(DownloadBean downloadBean) {
        View view = this.view;
        Context context = view != null ? view.getContext() : null;
        AppCompatActivity appCompatActivity = context instanceof AppCompatActivity ? (AppCompatActivity) context : null;
        if (appCompatActivity == null) {
            return;
        }
        if (downloadBean.isShotTV()) {
            Navigator.x(TheRouter.c(ls.a.f69034a.b()).K("id", downloadBean.getSubjectId()).F("ep", downloadBean.getEp()).K("ops", downloadBean.getOps()).G("ms", downloadBean.getReadProgress()), appCompatActivity, null, 2, null);
            return;
        }
        x().k(downloadBean);
        String strH = x().h(downloadBean);
        com.danikula.videocache.q.a("proxyUrl = " + strH);
        Navigator.x(TheRouter.c("/video/detail").K("extra_local_path", downloadBean.getPath()).K("extra_url", downloadBean.getUrl()).K("extra_proxy_url", strH).K("extra_resource_id", downloadBean.getResourceId()).K("extra_subject_id", downloadBean.getSubjectId()).K("extra_name", downloadBean.getName()).K("extra_post_id", downloadBean.getPostId()).z("extra_completed", false).z("extra_is_series", downloadBean.isSeries()).K("extra_page_from", this.pageFrom).F("extra_height", downloadBean.getVideoHeight()).F("extra_width", downloadBean.getVideoWidth()), appCompatActivity, null, 2, null);
    }

    private final void K(int position, int status, DownloadBean item) {
        Object objU;
        TnTextView tnTextView;
        DownloadEsHelper downloadEsHelperA = DownloadEsHelper.f59419m.a();
        String resourceId = item.getResourceId();
        if (resourceId == null) {
            resourceId = item.getUrl();
        }
        DownloadBean downloadBeanQ = downloadEsHelperA.q(resourceId);
        if (downloadBeanQ == null) {
            downloadBeanQ = item;
        }
        int i11 = R$color.text_03;
        if (status == 1 || status == 2 || status == 3) {
            long progress = downloadBeanQ.getProgress();
            if (progress < 0) {
                progress = 0;
            }
            Long size = downloadBeanQ.getSize();
            long jLongValue = size != null ? size.longValue() : 1L;
            long j11 = jLongValue <= 0 ? 1L : jLongValue;
            int i12 = (int) (((progress * 1.0f) / j11) * 100);
            ProgressBar progressBar = this.pbDownload;
            if (progressBar != null) {
                progressBar.setSecondaryProgress(0);
            }
            ProgressBar progressBar2 = this.pbDownload;
            if (progressBar2 != null) {
                progressBar2.setProgress(i12);
            }
            StringBuilder sb2 = new StringBuilder(oh.b.a(progress, this.stateTextSizeDP == 12.0f ? 1 : 0));
            sb2.append("/");
            sb2.append(oh.b.a(j11, this.stateTextSizeDP == 12.0f ? 1 : 0));
            TextView textView = this.tvProgress;
            if (textView != null) {
                textView.setText(sb2.toString());
            }
        } else if (status == 4 || status == 6) {
            downloadBeanQ.setCurrentDownloadSpeed(0L);
            long progress2 = downloadBeanQ.getProgress();
            long j12 = progress2 < 0 ? 0L : progress2;
            Long size2 = downloadBeanQ.getSize();
            long jLongValue2 = size2 != null ? size2.longValue() : 1L;
            long j13 = jLongValue2 <= 0 ? 1L : jLongValue2;
            int i13 = (int) (((j12 * 1.0f) / j13) * 100);
            ProgressBar progressBar3 = this.pbDownload;
            if (progressBar3 != null) {
                progressBar3.setProgress(0);
            }
            ProgressBar progressBar4 = this.pbDownload;
            if (progressBar4 != null) {
                progressBar4.setSecondaryProgress(i13);
            }
            StringBuilder sb3 = new StringBuilder(oh.b.a(j12, this.stateTextSizeDP == 12.0f ? 1 : 0));
            sb3.append("/");
            sb3.append(oh.b.a(j13, this.stateTextSizeDP == 12.0f ? 1 : 0));
            TextView textView2 = this.tvProgress;
            if (textView2 != null) {
                textView2.setText(sb3.toString());
            }
        }
        if (status == 1 || status == 2) {
            if (downloadBeanQ.getIsPreDownload()) {
                objU = Integer.valueOf(this.strWaiting);
            } else {
                i11 = R$color.text_01;
                objU = u(downloadBeanQ);
            }
        } else if (status == 3) {
            objU = Integer.valueOf(this.strWaiting);
        } else if (status == 4) {
            objU = Integer.valueOf(this.strPaused);
            i11 = R$color.error_50;
        } else if (status != 6) {
            objU = null;
        } else {
            objU = (downloadBeanQ.isNoNetError() || !nh.m.f70474a.e()) ? Integer.valueOf(this.strNoNet) : Integer.valueOf(this.strFailed);
            i11 = R$color.error_50;
        }
        if (objU instanceof Integer) {
            TnTextView tnTextView2 = this.tvState;
            if (tnTextView2 != null) {
                tnTextView2.setTextById(((Number) objU).intValue());
            }
        } else if ((objU instanceof String) && (tnTextView = this.tvState) != null) {
            tnTextView.setTextWithString((CharSequence) objU);
        }
        TnTextView tnTextView3 = this.tvState;
        if (tnTextView3 != null) {
            tnTextView3.setTextColor(androidx.core.content.b.getColor(this.itemView.getContext(), i11));
        }
        switch (status) {
            case 1:
            case 2:
            case 3:
                ImageView imageView = this.ivStateBg;
                if (imageView != null) {
                    imageView.setImageResource(R$mipmap.ic_download_pause);
                }
                break;
            case 4:
                ImageView imageView2 = this.ivStateBg;
                if (imageView2 != null) {
                    imageView2.setImageResource(R$mipmap.ic_download_downloading);
                }
                break;
            case 5:
                lg.a.f68839a.i("download", "DownloadingHolder refresh complete position=" + position + ",bean=" + downloadBeanQ.getName() + " subjectId=" + downloadBeanQ.getSubjectId() + ",resourceId=" + downloadBeanQ.getResourceId(), true);
                u0.b bVar = this.onItemChangeListener;
                if (bVar != null) {
                    bVar.a(position, 5);
                }
                break;
            case 6:
                ImageView imageView3 = this.ivStateBg;
                if (imageView3 != null) {
                    imageView3.setImageResource(R$mipmap.ic_download_downloading);
                }
                break;
        }
    }

    private final void L(int position, View view, DownloadBean downloadBean) {
        PopupManager popupManager = new PopupManager(position, downloadBean);
        popupManager.J(view, 2);
        u0.b bVar = this.onItemChangeListener;
        if (bVar != null) {
            popupManager.B(bVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final jj.a t() {
        AppDatabase.Companion companion = AppDatabase.INSTANCE;
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        return companion.b(applicationA).o1();
    }

    private final String u(DownloadBean item) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        long j11 = this.preTimeStamp;
        long j12 = (jCurrentTimeMillis - j11) / ((long) 1000);
        if (j11 > 0 && j12 < 2 && item.getCurrentDownloadSpeed() > 0) {
            return oh.b.b(item.getCurrentDownloadSpeed(), this.stateTextSizeDP != 12.0f ? 0 : 1, 0) + "/s";
        }
        this.preTimeStamp = jCurrentTimeMillis;
        long progress = j12 <= 0 ? 0L : (item.getProgress() - this.preProgress) / j12;
        this.preProgress = item.getProgress();
        if (progress <= 0 && item.getCurrentDownloadSpeed() > 0) {
            progress = item.getCurrentDownloadSpeed();
        }
        if (progress <= 0) {
            return "0KB/s";
        }
        item.setCurrentDownloadSpeed(progress);
        return oh.b.b(progress, this.stateTextSizeDP != 12.0f ? 0 : 1, 0) + "/s";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final com.transsnet.downloader.manager.g v() {
        return com.transsnet.downloader.manager.p.f59500a.a(Utils.a());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final jj.a w() {
        return (jj.a) this.audioDao.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final com.transsnet.downloader.manager.g x() {
        return (com.transsnet.downloader.manager.g) this.downloadManager.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final IAudioApi y() {
        return (IAudioApi) this.mAudioApi.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final IFloatingApi z() {
        return (IFloatingApi) this.mFloatApi.getValue();
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
            K(position, downloadBean.getStatus(), downloadBean);
        }
    }

    /* JADX WARN: Code duplicated, block: B:41:0x0083  */
    @Override // com.transsnet.downloader.adapter.u0
    public void c(final int position, final n6.a item) {
        if (item instanceof DownloadBean) {
            TextView textView = this.tvProgress;
            if (textView != null) {
                float f11 = this.stateTextSizeDP;
                if (f11 == 0.0f) {
                    f11 = 12.0f;
                }
                textView.setTextSize(2, f11);
            }
            TnTextView tnTextView = this.tvState;
            if (tnTextView != null) {
                float f12 = this.stateTextSizeDP;
                tnTextView.setTextSize(2, f12 != 0.0f ? f12 : 12.0f);
            }
            DownloadEsHelper downloadEsHelperA = DownloadEsHelper.f59419m.a();
            DownloadBean downloadBean = (DownloadBean) item;
            String resourceId = downloadBean.getResourceId();
            if (resourceId == null) {
                resourceId = downloadBean.getUrl();
            }
            final DownloadBean downloadBeanQ = downloadEsHelperA.q(resourceId);
            if (downloadBeanQ == null) {
                downloadBeanQ = downloadBean;
            }
            String cover = downloadBeanQ.getCover();
            ShapeableImageView shapeableImageView = this.shapeableImageView;
            if (shapeableImageView != null && cover != null) {
                Context context = this.itemView.getContext();
                Intrinsics.g(context, "getContext(...)");
                DownloadedHolderKt.a(context, shapeableImageView, cover, downloadBean.getThumbnail());
            }
            int type = downloadBeanQ.getType();
            if (type == 2) {
                this.ivType.setImageResource(com.transsion.baseui.R$mipmap.home_ic_movie_white);
            } else if (type == 3) {
                this.ivType.setImageResource(downloadBean.isShotTV() ? com.transsion.baseui.R$mipmap.home_ic_short_tv_white : com.transsion.baseui.R$mipmap.home_ic_tv_white);
            } else if (type == 5 || type == 6) {
                this.ivType.setImageResource(com.transsion.baseui.R$mipmap.home_ic_movie_white);
            } else {
                this.ivType.setImageResource(com.transsion.baseui.R$mipmap.home_ic_audio_white);
            }
            TextView textView2 = this.tvName;
            if (textView2 != null) {
                textView2.setText(downloadBean.getTitleNameAppendResolution());
            }
            if (downloadBean.getEpName().length() > 0) {
                jg.c.k(this.tvSeriesEp);
                this.tvSeriesEp.setText(downloadBean.getEpName());
            } else {
                jg.c.g(this.tvSeriesEp);
            }
            TextView textView3 = this.tvName;
            if (textView3 != null) {
                textView3.setTag(downloadBeanQ.getResourceId());
            }
            getView(R$id.iv_more).setOnClickListener(new View.OnClickListener() { // from class: com.transsnet.downloader.adapter.o0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    DownloadingHolder.A(item, downloadBeanQ, this, position, view);
                }
            });
            this.itemView.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.transsnet.downloader.adapter.p0
                @Override // android.view.View.OnLongClickListener
                public final boolean onLongClick(View view) {
                    return DownloadingHolder.B(item, downloadBeanQ, this, position, view);
                }
            });
            ShapeableImageView shapeableImageView2 = this.shapeableImageView;
            if (shapeableImageView2 != null) {
                shapeableImageView2.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.transsnet.downloader.adapter.q0
                    @Override // android.view.View.OnLongClickListener
                    public final boolean onLongClick(View view) {
                        return DownloadingHolder.C(item, downloadBeanQ, this, position, view);
                    }
                });
            }
            View view = this.view;
            if (view != null) {
                view.setOnClickListener(new View.OnClickListener() { // from class: com.transsnet.downloader.adapter.r0
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view2) {
                        DownloadingHolder.D(item, downloadBeanQ, this, view2);
                    }
                });
            }
            ShapeableImageView shapeableImageView3 = this.shapeableImageView;
            if (shapeableImageView3 != null) {
                shapeableImageView3.setOnClickListener(new View.OnClickListener() { // from class: com.transsnet.downloader.adapter.s0
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view2) {
                        DownloadingHolder.E(item, downloadBeanQ, this, view2);
                    }
                });
            }
        }
    }
}
