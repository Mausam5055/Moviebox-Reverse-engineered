package com.transsion.player.longvideo.intercept;

import android.content.Context;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.FrameLayout;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u001d\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u0015\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\u000b\u0010\fJ\u0017\u0010\u000f\u001a\u00020\n2\b\u0010\u000e\u001a\u0004\u0018\u00010\r¢\u0006\u0004\b\u000f\u0010\u0010R\u0018\u0010\t\u001a\u0004\u0018\u00010\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012R\u0018\u0010\u000e\u001a\u0004\u0018\u00010\r8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014R\u0016\u0010\u0018\u001a\u00020\u00158\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017R\u0017\u0010\u001e\u001a\u00020\u00198\u0006¢\u0006\f\n\u0004\b\u001a\u0010\u001b\u001a\u0004\b\u001c\u0010\u001dR\u0016\u0010\"\u001a\u00020\u001f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b \u0010!¨\u0006#"}, d2 = {"Lcom/transsion/player/longvideo/intercept/VideoPremiumInterceptView;", "Landroid/widget/FrameLayout;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;", "interceptionManager", "", "setInterceptionManager", "(Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;)V", "Lgo/a;", "bean", "setLongVdPlayerBean", "(Lgo/a;)V", "a", "Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lgo/a;", "", "c", "Ljava/lang/String;", "traceId", "Lho/p;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Lho/p;", "getBinding", "()Lho/p;", "binding", "", "e", "J", "lastTrigger", "LongVideo_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class VideoPremiumInterceptView extends FrameLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private PlaybackInterceptionManager interceptionManager;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private go.a bean;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private String traceId;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private final ho.p binding;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private long lastTrigger;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    @JvmOverloads
    public VideoPremiumInterceptView(Context context) {
        this(context, null, 2, 0 == true ? 1 : 0);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public VideoPremiumInterceptView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.h(context, "context");
        this.traceId = "";
        ho.p pVarC = ho.p.c(LayoutInflater.from(context), this, true);
        Intrinsics.g(pVarC, "inflate(...)");
        this.binding = pVarC;
        pVarC.f64694c.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.player.longvideo.intercept.n0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                VideoPremiumInterceptView.c(this.f48160a, view);
            }
        });
        pVarC.f64693b.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.player.longvideo.intercept.o0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                VideoPremiumInterceptView.d(this.f48163a, view);
            }
        });
    }

    public /* synthetic */ VideoPremiumInterceptView(Context context, AttributeSet attributeSet, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i11 & 2) != 0 ? null : attributeSet);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void c(VideoPremiumInterceptView videoPremiumInterceptView, View view) {
        String strI;
        String strO;
        com.transsion.baselib.helper.f fVar = com.transsion.baselib.helper.f.f43269a;
        go.a aVar = videoPremiumInterceptView.bean;
        if (aVar == null || (strI = aVar.i()) == null) {
            strI = "";
        }
        String str = videoPremiumInterceptView.traceId;
        go.a aVar2 = videoPremiumInterceptView.bean;
        fVar.f(strI, "player/vip_preview_expire", str, (aVar2 == null || (strO = aVar2.o()) == null) ? "" : strO, 0);
        PlaybackInterceptionManager playbackInterceptionManager = videoPremiumInterceptView.interceptionManager;
        if (playbackInterceptionManager != null) {
            PlaybackInterceptionManager.X(playbackInterceptionManager, true, "player/vip_preview_expire", videoPremiumInterceptView.traceId, false, 8, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void d(VideoPremiumInterceptView videoPremiumInterceptView, View view) {
        PlaybackInterceptionManager playbackInterceptionManager = videoPremiumInterceptView.interceptionManager;
        if (playbackInterceptionManager != null) {
            playbackInterceptionManager.C();
        }
    }

    public final ho.p getBinding() {
        return this.binding;
    }

    public final void setInterceptionManager(PlaybackInterceptionManager interceptionManager) {
        Intrinsics.h(interceptionManager, "interceptionManager");
        this.interceptionManager = interceptionManager;
    }

    public final void setLongVdPlayerBean(go.a bean) {
        String strI;
        String strO;
        this.bean = bean;
        if (SystemClock.elapsedRealtime() - this.lastTrigger < 1000) {
            lg.a.C0828a.f(lg.a.f68839a, "premium_p", "VideoPremiumInterceptView --> setLongVdPlayerBean() --> 资源内容拦截 --> 重复触发", false, 4, null);
            return;
        }
        this.lastTrigger = SystemClock.elapsedRealtime();
        this.traceId = ti.n.f76264a.b();
        com.transsion.baselib.helper.f fVar = com.transsion.baselib.helper.f.f43269a;
        if (bean == null || (strI = bean.i()) == null) {
            strI = "";
        }
        fVar.h(strI, "player/vip_preview_expire", this.traceId, (bean == null || (strO = bean.o()) == null) ? "" : strO, 0);
    }
}
