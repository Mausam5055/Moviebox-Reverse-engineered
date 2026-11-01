package com.transsnet.downloader.notification;

import android.app.Application;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.widget.RemoteViews;
import androidx.core.app.NotificationCompat;
import androidx.core.app.t;
import androidx.media3.common.util.g0;
import com.blankj.utilcode.util.Utils;
import com.blankj.utilcode.util.c0;
import com.blankj.utilcode.util.y;
import com.bumptech.glide.Glide;
import com.bumptech.glide.RequestBuilder;
import com.bumptech.glide.load.engine.DiskCacheStrategy;
import com.bumptech.glide.request.target.CustomTarget;
import com.bumptech.glide.request.transition.Transition;
import com.cloud.tmc.kernel.utils.UrlUtils;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.therouter.TheRouter;
import com.tn.lib.widget.R$drawable;
import com.tn.lib.widget.R$mipmap;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.baseui.R$string;
import com.transsion.baseui.util.n;
import com.transsion.lib.push.R$dimen;
import com.transsion.lib.push.R$id;
import com.transsion.lib.push.R$layout;
import com.transsion.mb.config.manager.ConfigBean;
import com.transsion.mpush.core.config.PushMsgSource;
import com.transsion.mpush.core.config.PushMsgType;
import com.transsion.push.api.IPushProvider;
import com.transsion.ugcvideodetail.api.UGCPageStyle;
import com.transsnet.downloader.guard.DownloadGuard;
import com.transsnet.downloader.manager.g;
import com.transsnet.downloader.manager.p;
import ej.f;
import java.util.Calendar;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.coroutines.k;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;
import nh.m;
import org.mvel2.ast.ASTNode;

/* JADX INFO: loaded from: classes.dex */
public final class DownloadNotificationUtils {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static int f59510e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final DownloadNotificationUtils f59506a = new DownloadNotificationUtils();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Lazy f59507b = LazyKt.b(new Function0() { // from class: com.transsnet.downloader.notification.b
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return DownloadNotificationUtils.r();
        }
    });

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static boolean f59508c = true;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final Lazy f59509d = LazyKt.b(new Function0() { // from class: com.transsnet.downloader.notification.c
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return DownloadNotificationUtils.F();
        }
    });

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static String f59511f = "";

    /* JADX INFO: loaded from: classes7.dex */
    public static final class a extends CustomTarget {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ DownloadBean f59512a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ boolean f59513b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f59514c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f59515d;

        a(DownloadBean downloadBean, boolean z10, String str, String str2) {
            this.f59512a = downloadBean;
            this.f59513b = z10;
            this.f59514c = str;
            this.f59515d = str2;
        }

        @Override // com.bumptech.glide.request.target.Target
        public void onLoadCleared(Drawable drawable) {
            lg.a.C0828a.f(lg.a.f68839a, "download_notify", "onFailure", false, 4, null);
        }

        @Override // com.bumptech.glide.request.target.Target
        public void onResourceReady(Bitmap resource, Transition transition) {
            NotificationCompat.m mVarS;
            Intrinsics.h(resource, "resource");
            lg.a.C0828a.f(lg.a.f68839a, "download_notify", "onSuccess", false, 4, null);
            int i11 = Build.VERSION.SDK_INT;
            int i12 = i11 >= 31 ? 67108864 : ASTNode.NOJIT;
            DownloadNotificationUtils downloadNotificationUtils = DownloadNotificationUtils.f59506a;
            int iZ = downloadNotificationUtils.z(this.f59512a);
            int i13 = iZ + 1;
            IPushProvider iPushProvider = (IPushProvider) TheRouter.d(IPushProvider.class, new Object[0]);
            if (iPushProvider != null) {
                String strV = downloadNotificationUtils.v(this.f59512a);
                int status = this.f59512a.getStatus();
                PendingIntent pendingIntentT = downloadNotificationUtils.t(iPushProvider, i13, this.f59512a, i12);
                PendingIntent pendingIntentS = this.f59512a.getType() == 1 ? downloadNotificationUtils.s(iPushProvider, i13, this.f59512a, i12) : downloadNotificationUtils.C(iPushProvider, i13, this.f59512a, i12);
                String strD = this.f59513b ? downloadNotificationUtils.D(status) : this.f59514c;
                if (!this.f59513b) {
                    strV = this.f59515d;
                }
                String str = strV;
                if (i11 >= 31) {
                    RemoteViews remoteViews = new RemoteViews(Utils.a().getPackageName(), R$layout.push_notification_custom_left_pic_s_small);
                    remoteViews.setTextViewText(R$id.notification_title_tv, strD);
                    remoteViews.setTextViewText(R$id.notification_content_tv, str);
                    remoteViews.setImageViewResource(R$id.iv_icon, R$mipmap.icon_play_white);
                    remoteViews.setTextViewText(R$id.tv_tips, Utils.a().getString(R$string.play));
                    remoteViews.setOnClickPendingIntent(R$id.ll_download, pendingIntentS);
                    int dimension = (int) Utils.a().getResources().getDimension(R$dimen.push_notification_transition_rectangle_img_width);
                    int dimension2 = (int) Utils.a().getResources().getDimension(R$dimen.push_notification_transition_rectangle_img_height);
                    com.transsnet.downloader.notification.a aVar = com.transsnet.downloader.notification.a.f59517a;
                    Application applicationA = Utils.a();
                    Intrinsics.g(applicationA, "getApp(...)");
                    Bitmap bitmapD = com.transsnet.downloader.notification.a.d(aVar, applicationA, resource, dimension, dimension2, false, 0, 32, null);
                    RemoteViews remoteViews2 = new RemoteViews(Utils.a().getPackageName(), R$layout.push_notification_custom_left_pic_s_big);
                    remoteViews2.setTextViewText(R$id.notification_title_tv, strD);
                    remoteViews2.setTextViewText(R$id.notification_content_tv, str);
                    remoteViews2.setImageViewBitmap(R$id.notification_content_image, bitmapD);
                    remoteViews2.setImageViewResource(R$id.iv_icon, R$mipmap.icon_play_white);
                    remoteViews2.setTextViewText(R$id.tv_tips, Utils.a().getString(R$string.play));
                    remoteViews2.setOnClickPendingIntent(R$id.ll_download, pendingIntentS);
                    mVarS = new NotificationCompat.m(Utils.a(), "download_service").J(R$drawable.push_small_logo).q(strD).p(str).o(pendingIntentT).l(true).s(remoteViews).r(remoteViews2);
                } else {
                    RemoteViews remoteViews3 = new RemoteViews(Utils.a().getPackageName(), R$layout.push_notification_custom_left_pic);
                    remoteViews3.setTextViewText(R$id.notification_title_tv, strD);
                    remoteViews3.setTextViewText(R$id.notification_content_tv, str);
                    remoteViews3.setImageViewBitmap(R$id.notification_content_image, resource);
                    remoteViews3.setImageViewResource(R$id.iv_icon, R$mipmap.icon_play_white);
                    remoteViews3.setTextViewText(R$id.tv_tips, Utils.a().getString(R$string.play));
                    remoteViews3.setOnClickPendingIntent(R$id.ll_download, pendingIntentS);
                    remoteViews3.setLong(R$id.time, "setTime", System.currentTimeMillis());
                    mVarS = new NotificationCompat.m(Utils.a(), "download_service_high").J(R$drawable.push_small_logo).o(pendingIntentT).q(strD).p(str).l(true).s(remoteViews3);
                }
                Intrinsics.e(mVarS);
                downloadNotificationUtils.B().cancel(iZ);
                try {
                    Result.Companion companion = Result.INSTANCE;
                    t.d(Utils.a()).f(i13, mVarS.c());
                    Result.m454constructorimpl(Unit.f67061a);
                } catch (Throwable th2) {
                    Result.Companion companion2 = Result.INSTANCE;
                    Result.m454constructorimpl(ResultKt.a(th2));
                }
                if (this.f59513b) {
                    return;
                }
                com.transsion.push.utils.t.f50944a.b().putLong("download_play_notification_time", System.currentTimeMillis());
            }
        }
    }

    /* JADX INFO: loaded from: classes7.dex */
    public static final class b implements rp.b {
        b() {
        }

        @Override // rp.b
        public void a() {
            DownloadNotificationUtils downloadNotificationUtils = DownloadNotificationUtils.f59506a;
            if (downloadNotificationUtils.m()) {
                downloadNotificationUtils.x();
            }
        }
    }

    private DownloadNotificationUtils() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final NotificationManager B() {
        return (NotificationManager) f59509d.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final PendingIntent C(IPushProvider iPushProvider, int i11, DownloadBean downloadBean, int i12) {
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        Intent intentA = iPushProvider.a(applicationA);
        intentA.putExtra("notification_id", i11);
        intentA.putExtra("msg_source", PushMsgSource.SOURCE_PUSH);
        intentA.putExtra("msg_type", PushMsgType.DOWNLOAD_PUSH.getType());
        StringBuilder sb2 = new StringBuilder();
        sb2.append(i11);
        intentA.putExtra("msg_id", sb2.toString());
        intentA.addFlags(603979776);
        intentA.setAction("android.intent.action.VIEW");
        StringBuilder sb3 = new StringBuilder("oneroom://com.community.oneroom?type=");
        sb3.append("&channel=download_notification");
        if (downloadBean.isShotTV()) {
            if (downloadBean.isUGCVideo()) {
                sb3.append("/ugc_video/detail");
                sb3.append(UrlUtils.AND_MARK);
                sb3.append("id");
                sb3.append(UrlUtils.EQUAL_MARK);
                sb3.append(downloadBean.getUgcVideoId());
                sb3.append(UrlUtils.AND_MARK);
                sb3.append("videoStyle");
                sb3.append(UrlUtils.EQUAL_MARK);
                sb3.append(UGCPageStyle.UGC_PAGE_STYLE_IMM_VERTICAL_VIDEO.getValue());
                sb3.append(UrlUtils.AND_MARK);
                sb3.append("id");
                sb3.append(UrlUtils.EQUAL_MARK);
                sb3.append(downloadBean.getUgcVideoId());
                sb3.append(UrlUtils.AND_MARK);
                sb3.append("collection_id");
                sb3.append(UrlUtils.EQUAL_MARK);
                sb3.append(downloadBean.getUgcVideoCollectionId());
                sb3.append(UrlUtils.AND_MARK);
                sb3.append("ops");
                sb3.append(UrlUtils.EQUAL_MARK);
                sb3.append(downloadBean.getOps());
            } else {
                sb3.append(ls.a.f69034a.b());
                sb3.append(UrlUtils.AND_MARK);
                sb3.append("id");
                sb3.append(UrlUtils.EQUAL_MARK);
                sb3.append(downloadBean.getSubjectId());
                sb3.append(UrlUtils.AND_MARK);
                sb3.append("ep");
                sb3.append(UrlUtils.EQUAL_MARK);
                sb3.append(downloadBean.getEp());
                sb3.append(UrlUtils.AND_MARK);
                sb3.append("ops");
                sb3.append(UrlUtils.EQUAL_MARK);
                sb3.append(downloadBean.getOps());
            }
        } else if (!downloadBean.isUGCVideo()) {
            sb3.append("/video/detail");
            sb3.append(UrlUtils.AND_MARK);
            sb3.append("extra_local_path");
            sb3.append(UrlUtils.EQUAL_MARK);
            sb3.append(downloadBean.getPath());
            sb3.append(UrlUtils.AND_MARK);
            sb3.append("extra_name");
            sb3.append(UrlUtils.EQUAL_MARK);
            sb3.append(downloadBean.getName());
            sb3.append(UrlUtils.AND_MARK);
            sb3.append("extra_resource_id");
            sb3.append(UrlUtils.EQUAL_MARK);
            sb3.append(downloadBean.getResourceId());
            sb3.append(UrlUtils.AND_MARK);
            sb3.append("extra_post_id");
            sb3.append(UrlUtils.EQUAL_MARK);
            sb3.append(downloadBean.getPostId());
            sb3.append(UrlUtils.AND_MARK);
            sb3.append("extra_subject_id");
            sb3.append(UrlUtils.EQUAL_MARK);
            sb3.append(downloadBean.getSubjectId());
            sb3.append(UrlUtils.AND_MARK);
            sb3.append("extra_page_from");
            sb3.append(UrlUtils.EQUAL_MARK);
            sb3.append(PushMsgSource.SOURCE_PUSH);
            sb3.append(UrlUtils.AND_MARK);
            sb3.append("extra_is_series");
            sb3.append(UrlUtils.EQUAL_MARK);
            sb3.append(downloadBean.isSeries());
        } else if (downloadBean.getUgcVideoIsVertical()) {
            sb3.append("/ugc_video/detail");
            sb3.append(UrlUtils.AND_MARK);
            sb3.append("id");
            sb3.append(UrlUtils.EQUAL_MARK);
            sb3.append(downloadBean.getUgcVideoId());
            sb3.append(UrlUtils.AND_MARK);
            sb3.append("videoStyle");
            sb3.append(UrlUtils.EQUAL_MARK);
            sb3.append(UGCPageStyle.UGC_PAGE_STYLE_IMM_VERTICAL_VIDEO.getValue());
            sb3.append(UrlUtils.AND_MARK);
            sb3.append("resource_id");
            sb3.append(UrlUtils.EQUAL_MARK);
            sb3.append(downloadBean.getResourceId());
            sb3.append(UrlUtils.AND_MARK);
            sb3.append("ops");
            sb3.append(UrlUtils.EQUAL_MARK);
            sb3.append(downloadBean.getOps());
        } else {
            sb3.append("/ugc_video/local_detail");
            sb3.append(UrlUtils.AND_MARK);
            sb3.append("id");
            sb3.append(UrlUtils.EQUAL_MARK);
            sb3.append(downloadBean.getUgcVideoId());
            sb3.append(UrlUtils.AND_MARK);
            sb3.append("resource_id");
            sb3.append(UrlUtils.EQUAL_MARK);
            sb3.append(downloadBean.getResourceId());
            sb3.append(UrlUtils.AND_MARK);
            sb3.append("ops");
            sb3.append(UrlUtils.EQUAL_MARK);
            sb3.append(downloadBean.getOps());
        }
        intentA.setData(Uri.parse(sb3.toString()));
        PendingIntent activity = PendingIntent.getActivity(Utils.a(), 0, intentA, i12);
        Intrinsics.g(activity, "getActivity(...)");
        return activity;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String D(int i11) {
        Application applicationA = Utils.a();
        if (i11 == 3) {
            String string = applicationA.getString(com.transsnet.downloader.R$string.notification_download_waiting);
            Intrinsics.g(string, "getString(...)");
            return string;
        }
        if (i11 == 4) {
            String string2 = applicationA.getString(com.transsnet.downloader.R$string.notification_download_paused);
            Intrinsics.g(string2, "getString(...)");
            return string2;
        }
        if (i11 == 5) {
            String string3 = applicationA.getString(com.transsnet.downloader.R$string.notification_download_success);
            Intrinsics.g(string3, "getString(...)");
            return string3;
        }
        if (i11 != 6) {
            return "";
        }
        String string4 = applicationA.getString(com.transsnet.downloader.R$string.notification_download_failed);
        Intrinsics.g(string4, "getString(...)");
        return string4;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final NotificationManager F() {
        Object systemService = Utils.a().getSystemService("notification");
        Intrinsics.f(systemService, "null cannot be cast to non-null type android.app.NotificationManager");
        return (NotificationManager) systemService;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void H(DownloadBean downloadBean) {
        if (downloadBean.getLastPlayTimeStamp() == 0) {
            String string = Utils.a().getString(com.transsnet.downloader.R$string.notification_download_complete);
            Intrinsics.g(string, "getString(...)");
            String string2 = Utils.a().getString(com.transsnet.downloader.R$string.notification_download_watch_tip, v(downloadBean));
            Intrinsics.g(string2, "getString(...)");
            o(downloadBean, false, string, string2);
            return;
        }
        Long duration = downloadBean.getDuration();
        if (duration != null) {
            long jLongValue = duration.longValue();
            if (jLongValue <= 0 || ((downloadBean.getReadProgress() * 1.0f) / jLongValue) * 1.0f >= 0.8d) {
                return;
            }
            String string3 = Utils.a().getString(com.transsnet.downloader.R$string.notification_continue_watching);
            Intrinsics.g(string3, "getString(...)");
            Application applicationA = Utils.a();
            int i11 = com.transsnet.downloader.R$string.notification_download_continue_tip;
            DownloadNotificationUtils downloadNotificationUtils = f59506a;
            String string4 = applicationA.getString(i11, downloadNotificationUtils.v(downloadBean));
            Intrinsics.g(string4, "getString(...)");
            downloadNotificationUtils.o(downloadBean, false, string3, string4);
        }
    }

    private final void l(int i11) {
        B().cancel(i11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean m() {
        boolean zF = c0.f(com.transsion.push.utils.t.f50944a.b().getLong("download_play_notification_time", 0L));
        int i11 = Calendar.getInstance().get(11);
        return 19 <= i11 && i11 < 21 && !zF;
    }

    private final void o(DownloadBean downloadBean, boolean z10, String str, String str2) {
        try {
            RequestBuilder requestBuilderDiskCacheStrategy = Glide.with(Utils.a()).asBitmap().diskCacheStrategy(DiskCacheStrategy.DATA);
            f.a aVar = f.f61882a;
            String cover = downloadBean.getCover();
            if (cover == null) {
                cover = "";
            }
            Intrinsics.e(requestBuilderDiskCacheStrategy.load2(f.a.e(aVar, cover, y.a() - dk.a.b(80), true, false, 8, null)).into(new a(downloadBean, z10, str, str2)));
        } catch (Exception unused) {
            lg.a.C0828a.f(lg.a.f68839a, "DownloadNotificationUtils", "onFailure", false, 4, null);
        }
    }

    static /* synthetic */ void p(DownloadNotificationUtils downloadNotificationUtils, DownloadBean downloadBean, boolean z10, String str, String str2, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            z10 = true;
        }
        if ((i11 & 4) != 0) {
            str = null;
        }
        if ((i11 & 8) != 0) {
            str2 = null;
        }
        downloadNotificationUtils.o(downloadBean, z10, str, str2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void q(DownloadBean downloadBean) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final g r() {
        return p.f59500a.a(Utils.a());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final PendingIntent s(IPushProvider iPushProvider, int i11, DownloadBean downloadBean, int i12) {
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        Intent intentA = iPushProvider.a(applicationA);
        intentA.putExtra("notification_id", i11);
        intentA.putExtra("msg_source", PushMsgSource.SOURCE_PUSH);
        intentA.putExtra("msg_type", PushMsgType.DOWNLOAD_PUSH.getType());
        StringBuilder sb2 = new StringBuilder();
        sb2.append(i11);
        intentA.putExtra("msg_id", sb2.toString());
        intentA.addFlags(603979776);
        intentA.setAction("android.intent.action.VIEW");
        intentA.setData(Uri.parse("oneroom://com.community.oneroom?type=/movie/detail" + UrlUtils.AND_MARK + "id" + UrlUtils.EQUAL_MARK + downloadBean.getSubjectId() + UrlUtils.AND_MARK + "autoPlay" + UrlUtils.EQUAL_MARK + "true&channel=download_notification" + UrlUtils.AND_MARK + "resourceId" + UrlUtils.EQUAL_MARK + downloadBean.getResourceId()));
        return PendingIntent.getActivity(Utils.a(), 0, intentA, i12);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final PendingIntent t(IPushProvider iPushProvider, int i11, DownloadBean downloadBean, int i12) {
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        Intent intentA = iPushProvider.a(applicationA);
        intentA.putExtra("notification_id", i11);
        intentA.putExtra("msg_source", PushMsgSource.SOURCE_PUSH);
        intentA.putExtra("msg_type", PushMsgType.DOWNLOAD_PUSH.getType());
        StringBuilder sb2 = new StringBuilder();
        sb2.append(i11);
        intentA.putExtra("msg_id", sb2.toString());
        intentA.addFlags(603979776);
        intentA.setAction("android.intent.action.VIEW");
        intentA.setData(Uri.parse("oneroom://com.community.oneroom?type=/download/panel_activity" + UrlUtils.AND_MARK + "download_notify" + UrlUtils.EQUAL_MARK + "10&channel=download_notification" + UrlUtils.AND_MARK + OfflineConstantsKt.TRACK_KEY_PRE_DOWNLOAD_STATUS + UrlUtils.EQUAL_MARK + downloadBean.getStatus()));
        PendingIntent activity = PendingIntent.getActivity(Utils.a(), 0, intentA, i12);
        Intrinsics.g(activity, "getActivity(...)");
        return activity;
    }

    private final int u() {
        return Build.VERSION.SDK_INT < 31 ? com.transsnet.downloader.R$layout.notification_other_status : com.transsnet.downloader.R$layout.notification_other_status_v12;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String v(DownloadBean downloadBean) {
        String strB;
        String subjectName = downloadBean.isSeries() ? downloadBean.getSubjectName() : downloadBean.getName();
        if (downloadBean.getEpse() > 0) {
            strB = downloadBean.getEp() > 0 ? n.b(downloadBean.getEp(), downloadBean.getSe(), downloadBean.isVideo()) : n.c(downloadBean.getEpse(), downloadBean.isVideo());
        } else {
            strB = "";
        }
        return subjectName + " " + strB;
    }

    private final int w() {
        return Build.VERSION.SDK_INT < 31 ? com.transsnet.downloader.R$layout.notification_downloading : com.transsnet.downloader.R$layout.notification_downloading_v12;
    }

    private final NotificationCompat.m y(int i11, DownloadBean downloadBean) {
        Long size;
        int i12 = Build.VERSION.SDK_INT >= 31 ? 67108864 : ASTNode.NOJIT;
        IPushProvider iPushProvider = (IPushProvider) TheRouter.d(IPushProvider.class, new Object[0]);
        if (iPushProvider == null) {
            return null;
        }
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        Intent intentA = iPushProvider.a(applicationA);
        StringBuilder sb2 = new StringBuilder();
        sb2.append(i11);
        intentA.putExtra("notification_id", sb2.toString());
        intentA.putExtra("msg_source", PushMsgSource.SOURCE_PUSH);
        intentA.putExtra("msg_type", PushMsgType.DOWNLOAD_PUSH.getType());
        StringBuilder sb3 = new StringBuilder();
        sb3.append(i11);
        intentA.putExtra("msg_id", sb3.toString());
        intentA.addFlags(603979776);
        intentA.setData(Uri.parse("oneroom://com.community.oneroom?type=/download/panel_activity" + UrlUtils.AND_MARK + "download_notify" + UrlUtils.EQUAL_MARK + "10&channel=download_notification" + UrlUtils.AND_MARK + OfflineConstantsKt.TRACK_KEY_PRE_DOWNLOAD_STATUS + UrlUtils.EQUAL_MARK + downloadBean.getStatus()));
        PendingIntent activity = PendingIntent.getActivity(Utils.a(), 0, intentA, i12);
        String strV = v(downloadBean);
        long jLongValue = 0;
        long progress = downloadBean.getProgress() < 0 ? 0L : downloadBean.getProgress();
        Long size2 = downloadBean.getSize();
        if ((size2 != null ? size2.longValue() : 0L) >= 0 && (size = downloadBean.getSize()) != null) {
            jLongValue = size.longValue();
        }
        float progress2 = downloadBean.getProgress() * 1.0f;
        Long size3 = downloadBean.getSize();
        int iLongValue = (int) ((progress2 / (size3 != null ? size3.longValue() : 1L)) * 100);
        if (iLongValue > 100) {
            iLongValue = 100;
        }
        RemoteViews remoteViews = new RemoteViews(Utils.a().getPackageName(), w());
        remoteViews.setProgressBar(com.transsnet.downloader.R$id.progress, 100, iLongValue, false);
        remoteViews.setTextViewText(com.transsnet.downloader.R$id.tv_name, strV);
        remoteViews.setTextViewText(com.transsnet.downloader.R$id.tv_size, oh.b.a(progress, 1) + "/" + oh.b.a(jLongValue, 1));
        NotificationCompat.m mVarR = new NotificationCompat.m(Utils.a(), "download_service").J(R$drawable.push_small_logo).q(D(downloadBean.getStatus())).p(strV).o(activity).l(false).s(remoteViews).r(remoteViews);
        Intrinsics.g(mVarR, "setCustomBigContentView(...)");
        return mVarR;
    }

    public final int A(String url, String str) {
        Intrinsics.h(url, "url");
        if (str == null) {
            str = url;
        }
        int iAbs = Math.abs(str.hashCode());
        return iAbs <= 0 ? Math.abs(url.hashCode()) : iAbs;
    }

    public final void E() {
        if (Build.VERSION.SDK_INT >= 26) {
            g0.a();
            B().createNotificationChannel(m.f.a("download_service", Utils.a().getString(com.transsnet.downloader.R$string.download_notifications_name), 2));
            g0.a();
            B().createNotificationChannel(m.f.a("download_service_high", Utils.a().getString(com.transsnet.downloader.R$string.download_success_notifications_name), 4));
        }
    }

    public final void G() {
        if (m()) {
            x();
        } else {
            rp.a.f74594a.c(new b());
        }
    }

    public final void I(DownloadBean downloadInfo) {
        Intrinsics.h(downloadInfo, "downloadInfo");
        int iZ = z(downloadInfo);
        int i11 = iZ + 1;
        int status = downloadInfo.getStatus();
        String resourceId = downloadInfo.getResourceId();
        if (resourceId == null) {
            resourceId = "";
        }
        if (!downloadInfo.isDownloading()) {
            lg.a.C0828a c0828a = lg.a.f68839a;
            lg.a.C0828a.f(c0828a, "download_notify", "updateCustomView, status = " + status + "， name = " + downloadInfo.getTotalTitleName(), false, 4, null);
            if (f59510e == status && Intrinsics.c(f59511f, resourceId)) {
                lg.a.C0828a.f(c0828a, "download_notify", "updateCustomView, return", false, 4, null);
                return;
            }
        }
        f59510e = status;
        f59511f = resourceId;
        if (status == 3) {
            l(iZ);
            B().cancel(i11);
            return;
        }
        lg.a.C0828a c0828a2 = lg.a.f68839a;
        lg.a.C0828a.f(c0828a2, "download_notify", "updateCustomView--- 2, status = " + status + "， name = " + downloadInfo.getTotalTitleName(), false, 4, null);
        DownloadGuard.f59384a.p(downloadInfo);
        if (status == 6 && (downloadInfo.isNoNetError() || !m.f70474a.e())) {
            lg.a.C0828a.f(c0828a2, "download_notify", "updateCustomView--- 无网错误不出通知", false, 4, null);
            l(iZ);
            B().cancel(i11);
            return;
        }
        String strV = v(downloadInfo);
        if (status == 1 || status == 2) {
            B().cancel(i11);
            return;
        }
        if (status == 5) {
            p(this, downloadInfo, false, null, null, 14, null);
            return;
        }
        if (status == 7 || status == 57) {
            l(iZ);
            B().cancel(i11);
            return;
        }
        l(iZ);
        RemoteViews remoteViews = new RemoteViews(Utils.a().getPackageName(), u());
        remoteViews.setTextViewText(com.transsnet.downloader.R$id.tv_status, D(downloadInfo.getStatus()));
        remoteViews.setTextViewText(com.transsnet.downloader.R$id.tv_name, strV);
        NotificationCompat.m mVarY = y(i11, downloadInfo);
        if (mVarY != null) {
            try {
                mVarY.l(true);
                mVarY.s(remoteViews).r(remoteViews);
                lg.a.C0828a.v(c0828a2, "download_notify", "updateCustomView--- 3, status = " + status + "， name = " + downloadInfo.getTotalTitleName(), false, 4, null);
                t.d(Utils.a()).f(i11, mVarY.c());
            } catch (Throwable unused) {
            }
        }
    }

    public final void n(DownloadBean downloadInfo) {
        String value;
        Boolean boolM1;
        Intrinsics.h(downloadInfo, "downloadInfo");
        boolean zBooleanValue = false;
        ConfigBean configBeanC = sm.f.f75407c.a().c("download_foreground_service", false);
        if (configBeanC != null && (value = configBeanC.getValue()) != null && (boolM1 = StringsKt.m1(value)) != null) {
            zBooleanValue = boolM1.booleanValue();
        }
        f59508c = zBooleanValue;
        k.d(o0.a(y0.c()), null, null, new DownloadNotificationUtils$createNotification$1(downloadInfo, null), 3, null);
    }

    public final void x() {
        k.d(o0.a(y0.b()), null, null, new DownloadNotificationUtils$getLatestDownloadVideo$1(null), 3, null);
    }

    public final int z(DownloadBean downloadInfo) {
        Intrinsics.h(downloadInfo, "downloadInfo");
        return A(downloadInfo.getUrl(), downloadInfo.getResourceId());
    }
}
