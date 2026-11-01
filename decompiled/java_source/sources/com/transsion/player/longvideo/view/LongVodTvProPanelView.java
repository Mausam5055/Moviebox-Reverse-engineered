package com.transsion.player.longvideo.view;

import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.therouter.TheRouter;
import com.therouter.router.Navigator;
import com.transsion.mb.config.manager.ConfigBean;
import com.transsion.memberapi.IPremiumApi;
import com.transsion.player.longvideo.R$drawable;
import com.transsion.player.longvideo.R$id;
import com.transsion.player.longvideo.R$layout;
import com.transsion.player.longvideo.view.LongVodTvProPanelView;
import com.transsion.web.api.WebConstants;
import com.transsion.web.fragment.WebFragmentV2;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import sm.f;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u000f\u0018\u0000 )2\u00020\u0001:\u0001\u001cB'\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\u000b\u001a\u00020\nH\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\r\u001a\u00020\nH\u0002¢\u0006\u0004\b\r\u0010\fJ!\u0010\u0011\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u000e2\b\u0010\u0010\u001a\u0004\u0018\u00010\u000eH\u0002¢\u0006\u0004\b\u0011\u0010\u0012J-\u0010\u0017\u001a\u00020\n2\u0006\u0010\u0014\u001a\u00020\u00132\b\u0010\u0010\u001a\u0004\u0018\u00010\u000e2\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\n0\u0015¢\u0006\u0004\b\u0017\u0010\u0018J\r\u0010\u0019\u001a\u00020\n¢\u0006\u0004\b\u0019\u0010\fJ\u000f\u0010\u001a\u001a\u00020\nH\u0014¢\u0006\u0004\b\u001a\u0010\fR\u0014\u0010\u001e\u001a\u00020\u001b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001c\u0010\u001dR\u0014\u0010 \u001a\u00020\u001b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001f\u0010\u001dR\u0018\u0010\u0014\u001a\u0004\u0018\u00010\u00138\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b!\u0010\"R\u0018\u0010%\u001a\u0004\u0018\u00010\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b#\u0010$R\u001e\u0010(\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u00158\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b&\u0010'¨\u0006*"}, d2 = {"Lcom/transsion/player/longvideo/view/LongVodTvProPanelView;", "Landroidx/constraintlayout/widget/ConstraintLayout;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "", "defStyleAttr", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "", "n", "()V", "m", "", "url", "pageName", "l", "(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;", "Landroidx/fragment/app/FragmentManager;", "fragmentManager", "Lkotlin/Function0;", "onClose", "bind", "(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V", "destroyWebFragment", "onDetachedFromWindow", "Landroid/view/View;", "a", "Landroid/view/View;", "webContainer", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "scanPrompt", "c", "Landroidx/fragment/app/FragmentManager;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Ljava/lang/String;", "webFragmentTag", "e", "Lkotlin/jvm/functions/Function0;", "closeCallback", "Companion", "LongVideo_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class LongVodTvProPanelView extends ConstraintLayout {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private final View webContainer;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private final View scanPrompt;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private FragmentManager fragmentManager;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private String webFragmentTag;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private Function0 closeCallback;

    /* JADX INFO: renamed from: com.transsion.player.longvideo.view.LongVodTvProPanelView$a, reason: from kotlin metadata */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final String c() {
            ConfigBean configBeanC = f.f75407c.a().c("sa_me_tv_download_url", true);
            String value = configBeanC != null ? configBeanC.getValue() : null;
            if (value == null) {
                value = "";
            }
            return StringsKt.n1(value).toString();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final boolean d() {
            IPremiumApi iPremiumApi = (IPremiumApi) TheRouter.d(IPremiumApi.class, new Object[0]);
            return iPremiumApi != null && iPremiumApi.u();
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public LongVodTvProPanelView(Context context) {
        this(context, null, 0, 6, null);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public LongVodTvProPanelView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public LongVodTvProPanelView(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        Intrinsics.h(context, "context");
        setBackgroundResource(R$drawable.long_vod_tv_pro_panel_bg);
        LayoutInflater.from(context).inflate(R$layout.long_vod_tv_pro_panel_content, (ViewGroup) this, true);
        View viewFindViewById = findViewById(R$id.tvProWebContainer);
        Intrinsics.g(viewFindViewById, "findViewById(...)");
        this.webContainer = viewFindViewById;
        View viewFindViewById2 = findViewById(R$id.tvProScanPrompt);
        Intrinsics.g(viewFindViewById2, "findViewById(...)");
        this.scanPrompt = viewFindViewById2;
        findViewById(R$id.ivTvProClose).setOnClickListener(new View.OnClickListener() { // from class: jo.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LongVodTvProPanelView.j(this.f66246a, view);
            }
        });
        View.OnClickListener onClickListener = new View.OnClickListener() { // from class: jo.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LongVodTvProPanelView.k(this.f66247a, view);
            }
        };
        findViewById(R$id.tvProScanButtonBackground).setOnClickListener(onClickListener);
        findViewById(R$id.tvProScanButton).setOnClickListener(onClickListener);
    }

    public /* synthetic */ LongVodTvProPanelView(Context context, AttributeSet attributeSet, int i11, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i12 & 2) != 0 ? null : attributeSet, (i12 & 4) != 0 ? 0 : i11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void j(LongVodTvProPanelView longVodTvProPanelView, View view) {
        Function0 function0 = longVodTvProPanelView.closeCallback;
        if (function0 != null) {
            function0.invoke();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void k(LongVodTvProPanelView longVodTvProPanelView, View view) {
        longVodTvProPanelView.m();
    }

    private final String l(String url, String pageName) {
        String string = StringsKt.n1(url).toString();
        if (StringsKt.q0(string)) {
            return "";
        }
        if (pageName == null || StringsKt.q0(pageName)) {
            return string;
        }
        String string2 = Uri.parse(string).buildUpon().appendQueryParameter("pageFrom", pageName).build().toString();
        Intrinsics.g(string2, "toString(...)");
        return string2;
    }

    private final void m() {
        Navigator.x(TheRouter.c("/profile/qr_code"), getContext(), null, 2, null);
    }

    private final void n() {
        this.scanPrompt.setVisibility(INSTANCE.d() ? 0 : 8);
    }

    public final void bind(FragmentManager fragmentManager, String pageName, Function0<Unit> onClose) {
        Intrinsics.h(fragmentManager, "fragmentManager");
        Intrinsics.h(onClose, "onClose");
        destroyWebFragment();
        this.fragmentManager = fragmentManager;
        this.closeCallback = onClose;
        n();
        this.webContainer.setId(View.generateViewId());
        String str = "LongVodTvProWeb_" + hashCode();
        this.webFragmentTag = str;
        WebFragmentV2 webFragmentV2B = WebFragmentV2.INSTANCE.b();
        Bundle bundle = new Bundle();
        bundle.putString("url", l(INSTANCE.c(), pageName));
        bundle.putBoolean(WebConstants.FIELD_TOOL_BAR_HIDDEN, true);
        bundle.putBoolean(WebConstants.FIELD_STATUS_BAR_HIDDEN, true);
        bundle.putBoolean(WebConstants.FIELD_LOAD_URL_ONLY, true);
        bundle.putBoolean(WebConstants.FIELD_EMBEDDED_FULL_WIDTH_WEB, true);
        bundle.putString(WebConstants.PAGE_FROM, pageName);
        webFragmentV2B.setArguments(bundle);
        fragmentManager.p().t(this.webContainer.getId(), webFragmentV2B, str).j();
    }

    public final void destroyWebFragment() {
        Fragment fragmentK0;
        FragmentManager fragmentManager = this.fragmentManager;
        String str = this.webFragmentTag;
        if (fragmentManager != null && str != null && (fragmentK0 = fragmentManager.k0(str)) != null) {
            fragmentManager.p().r(fragmentK0).j();
        }
        this.webFragmentTag = null;
        this.fragmentManager = null;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        destroyWebFragment();
        this.closeCallback = null;
        super.onDetachedFromWindow();
    }
}
