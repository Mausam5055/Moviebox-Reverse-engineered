package com.transsion.player.longvideo.intercept;

import android.app.Application;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatActivity;
import androidx.p009lifecycle.LifecycleCoroutineScope;
import com.blankj.utilcode.util.Utils;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.transsion.baselib.db.AppDatabase;
import com.transsion.baselib.db.download.VipInfo;
import com.transsion.baselib.db.video.PlaybackRecordDao;
import com.transsion.moviedetailapi.bean.Subject;
import com.transsion.postdetail.R$string;
import com.transsion.push.PushConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u00002\u00020\u0001B\u001d\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007J-\u0010\u000e\u001a\u00020\r2\b\u0010\t\u001a\u0004\u0018\u00010\b2\b\u0010\n\u001a\u0004\u0018\u00010\b2\b\u0010\f\u001a\u0004\u0018\u00010\u000bH\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\r\u0010\u0010\u001a\u00020\r¢\u0006\u0004\b\u0010\u0010\u0011J\r\u0010\u0012\u001a\u00020\r¢\u0006\u0004\b\u0012\u0010\u0011J\u001f\u0010\u0015\u001a\u00020\r2\b\u0010\u0014\u001a\u0004\u0018\u00010\u00132\u0006\u0010\f\u001a\u00020\u000b¢\u0006\u0004\b\u0015\u0010\u0016J3\u0010\u0019\u001a\u00020\r2\b\u0010\u0014\u001a\u0004\u0018\u00010\u00132\b\u0010\t\u001a\u0004\u0018\u00010\b2\u0006\u0010\f\u001a\u00020\u000b2\b\u0010\u0018\u001a\u0004\u0018\u00010\u0017¢\u0006\u0004\b\u0019\u0010\u001aR\u0017\u0010 \u001a\u00020\u001b8\u0006¢\u0006\f\n\u0004\b\u001c\u0010\u001d\u001a\u0004\b\u001e\u0010\u001fR\u0014\u0010$\u001a\u00020!8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\"\u0010#R\u001b\u0010*\u001a\u00020%8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b&\u0010'\u001a\u0004\b(\u0010)R\u0016\u0010-\u001a\u00020\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b+\u0010,¨\u0006."}, d2 = {"Lcom/transsion/player/longvideo/intercept/PlaybackPremiumTipView;", "Landroid/widget/FrameLayout;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "", "pageName", "subjectId", "Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;", "manager", "", "g", "(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;)V", PushConstants.PROVIDER_FIELD_DESTROY, "()V", "setPremiumTip", "Lgo/a;", "bean", "setPreviewing", "(Lgo/a;Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;)V", "Landroid/widget/TextView;", "tvUnlockHD", "setPreviewingEnded", "(Lgo/a;Ljava/lang/String;Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;Landroid/widget/TextView;)V", "Lho/r;", "a", "Lho/r;", "getBinding", "()Lho/r;", "binding", "Landroid/os/Handler;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Landroid/os/Handler;", "mHandler", "Lcom/transsion/baselib/db/video/PlaybackRecordDao;", "c", "Lkotlin/Lazy;", "getPlaybackRecordDao", "()Lcom/transsion/baselib/db/video/PlaybackRecordDao;", "playbackRecordDao", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Ljava/lang/String;", "traceId", "LongVideo_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class PlaybackPremiumTipView extends FrameLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private final ho.r binding;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private final Handler mHandler;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private final Lazy playbackRecordDao;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private String traceId;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    @JvmOverloads
    public PlaybackPremiumTipView(Context context) {
        this(context, null, 2, 0 == true ? 1 : 0);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public PlaybackPremiumTipView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.h(context, "context");
        ho.r rVarC = ho.r.c(LayoutInflater.from(context), this, true);
        Intrinsics.g(rVarC, "inflate(...)");
        this.binding = rVarC;
        this.mHandler = new Handler(Looper.getMainLooper());
        this.playbackRecordDao = LazyKt.b(new Function0() { // from class: com.transsion.player.longvideo.intercept.c0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return PlaybackPremiumTipView.f();
            }
        });
        this.traceId = "";
    }

    public /* synthetic */ PlaybackPremiumTipView(Context context, AttributeSet attributeSet, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i11 & 2) != 0 ? null : attributeSet);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final PlaybackRecordDao f() {
        AppDatabase.Companion g1Var = AppDatabase.INSTANCE;
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        return g1Var.b(applicationA).v1();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void g(final String pageName, final String subjectId, final PlaybackInterceptionManager manager) {
        this.binding.f64706f.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.player.longvideo.intercept.e0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                PlaybackPremiumTipView.h(pageName, this, subjectId, manager, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final PlaybackRecordDao getPlaybackRecordDao() {
        return (PlaybackRecordDao) this.playbackRecordDao.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void h(String str, PlaybackPremiumTipView playbackPremiumTipView, String str2, PlaybackInterceptionManager playbackInterceptionManager, View view) {
        com.transsion.baselib.helper.f.f43269a.f(str == null ? "" : str, "player/resolution_upgrade", playbackPremiumTipView.traceId, str2, 0);
        if (playbackInterceptionManager != null) {
            PlaybackInterceptionManager.X(playbackInterceptionManager, true, "player/resolution_upgrade", playbackPremiumTipView.traceId, false, 8, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void i(PlaybackPremiumTipView playbackPremiumTipView, final go.a aVar, TextView textView, final String str, final PlaybackInterceptionManager playbackInterceptionManager) {
        String strI;
        playbackPremiumTipView.setVisibility(8);
        final String strB = ti.n.f76264a.b();
        com.transsion.baselib.helper.f fVar = com.transsion.baselib.helper.f.f43269a;
        if (aVar == null || (strI = aVar.i()) == null) {
            strI = "";
        }
        fVar.h(strI, "player/unlock_hd", strB, aVar != null ? aVar.o() : null, 0);
        if (textView != null) {
            textView.setVisibility(0);
        }
        if (textView != null) {
            textView.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.player.longvideo.intercept.g0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    PlaybackPremiumTipView.j(str, strB, aVar, playbackInterceptionManager, view);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void j(String str, String str2, go.a aVar, PlaybackInterceptionManager playbackInterceptionManager, View view) {
        com.transsion.baselib.helper.f.f43269a.f(str == null ? "" : str, "player/unlock_hd", str2, aVar != null ? aVar.o() : null, 0);
        PlaybackInterceptionManager.X(playbackInterceptionManager, true, "player/unlock_hd", str2, false, 8, null);
    }

    public final void destroy() {
        this.mHandler.removeCallbacksAndMessages(null);
        setVisibility(8);
    }

    public final ho.r getBinding() {
        return this.binding;
    }

    public final void setPremiumTip() {
        lg.a.C0828a.f(lg.a.f68839a, "premium_p", "PlaybackPremiumTipView --> setPremiumTip() --> 会员提示,3秒自动消失", false, 4, null);
        setVisibility(0);
        this.binding.f64704d.setVisibility(0);
        this.binding.f64703c.setVisibility(8);
        postDelayed(new Runnable() { // from class: com.transsion.player.longvideo.intercept.d0
            @Override // java.lang.Runnable
            public final void run() {
                this.f48122a.setVisibility(8);
            }
        }, 3000L);
    }

    public final void setPreviewing(go.a bean, PlaybackInterceptionManager manager) {
        LifecycleCoroutineScope lifecycleCoroutineScopeA;
        Intrinsics.h(manager, "manager");
        if (bean != null) {
            Context context = getContext();
            AppCompatActivity appCompatActivity = context instanceof AppCompatActivity ? (AppCompatActivity) context : null;
            if (appCompatActivity == null || (lifecycleCoroutineScopeA = androidx.p009lifecycle.v.a(appCompatActivity)) == null) {
                return;
            }
            kotlinx.coroutines.k.d(lifecycleCoroutineScopeA, null, null, new PlaybackPremiumTipView$setPreviewing$1$1(this, bean, bean, manager, null), 3, null);
        }
    }

    public final void setPreviewingEnded(final go.a bean, final String pageName, final PlaybackInterceptionManager manager, final TextView tvUnlockHD) {
        Subject subjectM;
        VipInfo vipInfo;
        Integer requireMemberType;
        Intrinsics.h(manager, "manager");
        lg.a.C0828a.f(lg.a.f68839a, "premium_p", "PlaybackPremiumTipView --> setPreviewingEnded() --> 试看提示 --> pageName = " + pageName + " --> 试看结束", false, 4, null);
        this.binding.f64704d.setVisibility(8);
        this.binding.f64703c.setVisibility(0);
        if (bean == null || (subjectM = bean.m()) == null || (vipInfo = subjectM.getVipInfo()) == null || (requireMemberType = vipInfo.getRequireMemberType()) == null || requireMemberType.intValue() != 1) {
            this.binding.f64705e.setText(getContext().getString(R$string.p_v2_hd_preview_ended));
            this.binding.f64706f.setText(getContext().getString(R$string.p_v2_unlock_hd));
        } else {
            this.binding.f64705e.setText(getContext().getString(R$string.p_v2_previewing));
            this.binding.f64706f.setText(getContext().getString(R$string.p_v2_unlock_full_access));
        }
        this.mHandler.postDelayed(new Runnable() { // from class: com.transsion.player.longvideo.intercept.f0
            @Override // java.lang.Runnable
            public final void run() {
                PlaybackPremiumTipView.i(this.f48128a, bean, tvUnlockHD, pageName, manager);
            }
        }, 5000L);
        g(pageName, bean != null ? bean.o() : null, manager);
    }
}
