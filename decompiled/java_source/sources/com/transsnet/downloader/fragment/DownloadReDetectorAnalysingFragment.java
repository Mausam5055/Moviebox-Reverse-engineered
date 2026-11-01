package com.transsnet.downloader.fragment;

import android.animation.Animator;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ProgressBar;
import androidx.appcompat.widget.AppCompatTextView;
import com.airbnb.lottie.LottieAnimationView;
import com.cloud.tmc.integration.params.TmcStartParams;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.therouter.TheRouter;
import com.therouter.router.Navigator;
import com.transsion.moviedetailapi.DownloadItem;
import com.transsion.moviedetailapi.bean.Subject;
import com.transsion.web.api.WebPageIdentity;
import com.transsnet.downloader.R$string;
import com.transsnet.downloader.bean.DownloadUrlBean;
import com.transsnet.downloader.util.DownloadUtil;
import com.transsnet.downloader.viewmodel.DownloadListManager;
import com.transsnet.downloader.viewmodel.DownloadResourcesDetectorViewModel;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Function;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\b\u0007*\u0001?\b\u0016\u0018\u0000 C2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001DB\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0006\u0010\u0004J\u000f\u0010\u0007\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0007\u0010\u0004J\u000f\u0010\b\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\b\u0010\u0004J\u0019\u0010\u000b\u001a\u00020\u00052\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\r\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\r\u0010\u0004J\u000f\u0010\u000e\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u000e\u0010\u0004J\u0017\u0010\u0011\u001a\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0014\u001a\u00020\u0013H\u0016¢\u0006\u0004\b\u0014\u0010\u0015J\u000f\u0010\u0016\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0016\u0010\u0004J\u000f\u0010\u0017\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0017\u0010\u0004J\u000f\u0010\u0018\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0018\u0010\u0004J!\u0010\u001d\u001a\u00020\u00052\u0006\u0010\u001a\u001a\u00020\u00192\b\u0010\u001c\u001a\u0004\u0018\u00010\u001bH\u0016¢\u0006\u0004\b\u001d\u0010\u001eJ\u0017\u0010!\u001a\u00020\u00052\u0006\u0010 \u001a\u00020\u001fH\u0016¢\u0006\u0004\b!\u0010\"J)\u0010%\u001a\u00020\u00052\b\u0010\n\u001a\u0004\u0018\u00010\t2\u0010\b\u0002\u0010$\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010#¢\u0006\u0004\b%\u0010&R\u0018\u0010)\u001a\u0004\u0018\u00010\u00138\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b'\u0010(R\u0018\u0010-\u001a\u0004\u0018\u00010*8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b+\u0010,R\u0016\u00100\u001a\u00020\u001f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b.\u0010/R\u0016\u00102\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b1\u0010(R\u0016\u00104\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b3\u0010(R\u0018\u00106\u001a\u0004\u0018\u00010\u00138\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b5\u0010(R\u0018\u00108\u001a\u0004\u0018\u00010\u00138\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b7\u0010(R\u0016\u0010<\u001a\u0002098\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b:\u0010;R\u0016\u0010>\u001a\u00020\u001f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b=\u0010/R\u0014\u0010B\u001a\u00020?8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b@\u0010A¨\u0006E"}, d2 = {"Lcom/transsnet/downloader/fragment/DownloadReDetectorAnalysingFragment;", "Lcom/transsnet/downloader/fragment/DownloadReDetectorSingleResBaseFragment;", "Lpy/y;", "<init>", "()V", "", "a1", "initView", "i1", "Lcom/transsnet/downloader/bean/DownloadUrlBean;", "urlBean", "e1", "(Lcom/transsnet/downloader/bean/DownloadUrlBean;)V", "h1", "initViewData", "Landroid/view/LayoutInflater;", "inflater", "Z0", "(Landroid/view/LayoutInflater;)Lpy/y;", "", "getPageStateLayoutTitle", "()Ljava/lang/String;", "initViewModel", "initListener", "retryLoadData", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "Landroid/os/Bundle;", "savedInstanceState", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "", "hidden", "onHiddenChanged", "(Z)V", "Lkotlin/Function0;", "animaCallback", "c1", "(Lcom/transsnet/downloader/bean/DownloadUrlBean;Lkotlin/jvm/functions/Function0;)V", TtmlNode.TAG_P, "Ljava/lang/String;", "linkUrl", "Lcom/transsion/moviedetailapi/bean/Subject;", CampaignEx.JSON_KEY_AD_Q, "Lcom/transsion/moviedetailapi/bean/Subject;", "subject", CampaignEx.JSON_KEY_AD_R, "Z", "isCheckingLinkUrl", "s", "pageFrom", "t", "lastPageFrom", TmcStartParams.KEY_URL_SHORT, "ops", "v", "resourceFrom", "", "w", "I", "localProgress", "x", "isResetLinkUrl", "com/transsnet/downloader/fragment/DownloadReDetectorAnalysingFragment$runnable$1", "y", "Lcom/transsnet/downloader/fragment/DownloadReDetectorAnalysingFragment$runnable$1;", "runnable", "z", "a", "Downloader_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public class DownloadReDetectorAnalysingFragment extends DownloadReDetectorSingleResBaseFragment<py.y> {

    /* JADX INFO: renamed from: z, reason: collision with root package name and from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: p, reason: collision with root package name and from kotlin metadata */
    private String linkUrl;

    /* JADX INFO: renamed from: q, reason: collision with root package name and from kotlin metadata */
    private Subject subject;

    /* JADX INFO: renamed from: r, reason: collision with root package name and from kotlin metadata */
    private boolean isCheckingLinkUrl;

    /* JADX INFO: renamed from: u, reason: collision with root package name and from kotlin metadata */
    private String ops;

    /* JADX INFO: renamed from: v, reason: collision with root package name and from kotlin metadata */
    private String resourceFrom;

    /* JADX INFO: renamed from: w, reason: collision with root package name and from kotlin metadata */
    private int localProgress;

    /* JADX INFO: renamed from: x, reason: collision with root package name and from kotlin metadata */
    private boolean isResetLinkUrl;

    /* JADX INFO: renamed from: s, reason: collision with root package name and from kotlin metadata */
    private String pageFrom = "";

    /* JADX INFO: renamed from: t, reason: collision with root package name and from kotlin metadata */
    private String lastPageFrom = "";

    /* JADX INFO: renamed from: y, reason: collision with root package name and from kotlin metadata */
    private final DownloadReDetectorAnalysingFragment$runnable$1 runnable = new Runnable() { // from class: com.transsnet.downloader.fragment.DownloadReDetectorAnalysingFragment$runnable$1
        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.lang.Runnable
        public void run() {
            AppCompatTextView appCompatTextView;
            AppCompatTextView appCompatTextView2;
            ProgressBar progressBar;
            this.this$0.localProgress++;
            py.y yVar = (py.y) this.this$0.getMViewBinding();
            if (yVar != null && (progressBar = yVar.f72981c) != null) {
                progressBar.setProgress(this.this$0.localProgress);
            }
            if (this.this$0.localProgress < 100) {
                py.y yVar2 = (py.y) this.this$0.getMViewBinding();
                if (yVar2 == null || (appCompatTextView = yVar2.f72983e) == null) {
                    return;
                }
                appCompatTextView.postDelayed(this, 20L);
                return;
            }
            py.y yVar3 = (py.y) this.this$0.getMViewBinding();
            if (yVar3 != null && (appCompatTextView2 = yVar3.f72983e) != null) {
                appCompatTextView2.removeCallbacks(this);
            }
            if (this.this$0.isCheckingLinkUrl) {
                return;
            }
            DownloadReDetectorAnalysingFragment.d1(this.this$0, null, null, 2, null);
        }
    };

    /* JADX INFO: renamed from: com.transsnet.downloader.fragment.DownloadReDetectorAnalysingFragment$a, reason: from kotlin metadata */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final DownloadReDetectorAnalysingFragment a(String str, Subject subject, String str2, String str3, String str4, String str5, Boolean bool, String str6) {
            DownloadReDetectorAnalysingFragment downloadReDetectorAnalysingFragment = new DownloadReDetectorAnalysingFragment();
            downloadReDetectorAnalysingFragment.setArguments(androidx.core.os.d.b(TuplesKt.a("extra_page_from", str2), TuplesKt.a("extra_last_page_from", str3), TuplesKt.a("extra_subject", subject), TuplesKt.a("extra_link_url", str), TuplesKt.a("extra_ops", str4), TuplesKt.a("extra_resource", str5), TuplesKt.a("extra_download_execute_download", bool), TuplesKt.a("extra_module_name", str6)));
            return downloadReDetectorAnalysingFragment;
        }
    }

    public static final class b implements Animator.AnimatorListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Function0 f58878b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ DownloadUrlBean f58879c;

        b(Function0 function0, DownloadUrlBean downloadUrlBean) {
            this.f58878b = function0;
            this.f58879c = downloadUrlBean;
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animation) {
            Intrinsics.h(animation, "animation");
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animation) {
            androidx.p009lifecycle.b0 b0VarM;
            LottieAnimationView lottieAnimationView;
            Intrinsics.h(animation, "animation");
            py.y yVar = (py.y) DownloadReDetectorAnalysingFragment.this.getMViewBinding();
            if (yVar != null && (lottieAnimationView = yVar.f72980b) != null) {
                lottieAnimationView.removeAnimatorListener(this);
            }
            if (!DownloadReDetectorAnalysingFragment.this.isAdded() || DownloadReDetectorAnalysingFragment.this.isStateSaved()) {
                return;
            }
            Function0 function0 = this.f58878b;
            if (function0 != null) {
                function0.invoke();
            }
            if (this.f58879c == null) {
                lg.a.C0828a c0828a = lg.a.f68839a;
                String tag = DownloadReDetectorAnalysingFragment.this.getTAG();
                Intrinsics.g(tag, "<get-TAG>(...)");
                lg.a.C0828a.f(c0828a, tag, "onAnalyzeSuccess ,  close 2", false, 4, null);
                DownloadResourcesDetectorViewModel viewModel = DownloadReDetectorAnalysingFragment.this.getViewModel();
                if (viewModel != null && (b0VarM = viewModel.m()) != null) {
                    b0VarM.q(Boolean.TRUE);
                }
                DownloadReDetectorAnalysingFragment.this.m0();
            }
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animation) {
            Intrinsics.h(animation, "animation");
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animation) {
            Intrinsics.h(animation, "animation");
        }
    }

    static final class c implements androidx.p009lifecycle.c0, FunctionAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final /* synthetic */ Function1 f58880a;

        c(Function1 function) {
            Intrinsics.h(function, "function");
            this.f58880a = function;
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        public final Function a() {
            return this.f58880a;
        }

        public final boolean equals(Object obj) {
            if ((obj instanceof androidx.p009lifecycle.c0) && (obj instanceof FunctionAdapter)) {
                return Intrinsics.c(a(), ((FunctionAdapter) obj).a());
            }
            return false;
        }

        public final int hashCode() {
            return a().hashCode();
        }

        @Override // androidx.p009lifecycle.c0
        public final /* synthetic */ void onChanged(Object obj) {
            this.f58880a.invoke(obj);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void a1() {
        py.y yVar;
        AppCompatTextView appCompatTextView;
        if (this.resourceFrom != null && (yVar = (py.y) getMViewBinding()) != null && (appCompatTextView = yVar.f72982d) != null) {
            appCompatTextView.setText(getString(R$string.download_analyzing) + " from " + this.resourceFrom);
        }
        String str = this.linkUrl;
        if (str == null || str.length() <= 0) {
            return;
        }
        this.isCheckingLinkUrl = true;
        DownloadListManager.a aVar = DownloadListManager.f59994m;
        DownloadListManager downloadListManagerA = aVar.a();
        Subject subject = this.subject;
        String subjectId = subject != null ? subject.getSubjectId() : null;
        String str2 = this.linkUrl;
        Intrinsics.e(str2);
        downloadListManagerA.P(subjectId, str2);
        androidx.p009lifecycle.b0 b0VarQ = aVar.a().Q();
        if (b0VarQ != null) {
            b0VarQ.j(this, new c(new Function1() { // from class: com.transsnet.downloader.fragment.o1
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return DownloadReDetectorAnalysingFragment.b1(this.f59274a, (DownloadUrlBean) obj);
                }
            }));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit b1(DownloadReDetectorAnalysingFragment downloadReDetectorAnalysingFragment, DownloadUrlBean downloadUrlBean) {
        downloadReDetectorAnalysingFragment.isCheckingLinkUrl = false;
        downloadReDetectorAnalysingFragment.e1(downloadUrlBean);
        return Unit.f67061a;
    }

    public static /* synthetic */ void d1(DownloadReDetectorAnalysingFragment downloadReDetectorAnalysingFragment, DownloadUrlBean downloadUrlBean, Function0 function0, int i11, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: onAnalyzeSuccess");
        }
        if ((i11 & 2) != 0) {
            function0 = null;
        }
        downloadReDetectorAnalysingFragment.c1(downloadUrlBean, function0);
    }

    private final void e1(final DownloadUrlBean urlBean) {
        if ((urlBean != null ? urlBean.getResource() : null) != null) {
            DownloadItem resource = urlBean.getResource();
            String url = resource != null ? resource.getUrl() : null;
            if (url != null && url.length() != 0) {
                c1(urlBean, new Function0() { // from class: com.transsnet.downloader.fragment.q1
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return DownloadReDetectorAnalysingFragment.g1(urlBean, this);
                    }
                });
                return;
            }
        }
        lg.a.C0828a c0828a = lg.a.f68839a;
        String tag = getTAG();
        Intrinsics.g(tag, "<get-TAG>(...)");
        lg.a.C0828a.f(c0828a, tag, "url has no resource, open url", false, 4, null);
        c1(null, new Function0() { // from class: com.transsnet.downloader.fragment.p1
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return DownloadReDetectorAnalysingFragment.f1(this.f59282a);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit f1(DownloadReDetectorAnalysingFragment downloadReDetectorAnalysingFragment) {
        Navigator.x(TheRouter.c(WebPageIdentity.WEB_VIEW).K("url", downloadReDetectorAnalysingFragment.linkUrl), downloadReDetectorAnalysingFragment.getContext(), null, 2, null);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit g1(DownloadUrlBean downloadUrlBean, DownloadReDetectorAnalysingFragment downloadReDetectorAnalysingFragment) {
        androidx.p009lifecycle.b0 b0VarP;
        DownloadListManager.f59994m.a().p(DownloadUtil.f59900a.k(downloadUrlBean, downloadReDetectorAnalysingFragment.subject, downloadReDetectorAnalysingFragment.pageFrom, downloadReDetectorAnalysingFragment.lastPageFrom, downloadReDetectorAnalysingFragment.ops));
        DownloadResourcesDetectorViewModel viewModel = downloadReDetectorAnalysingFragment.getViewModel();
        if (viewModel != null && (b0VarP = viewModel.p()) != null) {
            b0VarP.q(1);
        }
        downloadReDetectorAnalysingFragment.h1();
        return Unit.f67061a;
    }

    private final void h1() {
        this.isResetLinkUrl = true;
        this.linkUrl = "";
        this.isCheckingLinkUrl = false;
        this.localProgress = 0;
        DownloadListManager.f59994m.a().b0(null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void i1() {
        AppCompatTextView appCompatTextView;
        LottieAnimationView lottieAnimationView;
        py.y yVar = (py.y) getMViewBinding();
        if (yVar != null && (lottieAnimationView = yVar.f72980b) != null) {
            lottieAnimationView.setRepeatCount(-1);
            lottieAnimationView.setAnimation(ak.x.f658a.a() ? "download_analyzing_anima_night.json" : "download_analyzing_anima.json");
            lottieAnimationView.playAnimation();
        }
        py.y yVar2 = (py.y) getMViewBinding();
        if (yVar2 == null || (appCompatTextView = yVar2.f72983e) == null) {
            return;
        }
        appCompatTextView.post(this.runnable);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void initView() {
        LottieAnimationView lottieAnimationView;
        ProgressBar progressBar;
        py.y yVar = (py.y) getMViewBinding();
        if (yVar != null && (progressBar = yVar.f72981c) != null) {
            progressBar.setMax(100);
        }
        py.y yVar2 = (py.y) getMViewBinding();
        if (yVar2 != null && (lottieAnimationView = yVar2.f72980b) != null) {
            lottieAnimationView.playAnimation();
            lottieAnimationView.setRepeatCount(-1);
        }
        i1();
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    /* JADX INFO: renamed from: Z0, reason: merged with bridge method [inline-methods] */
    public py.y getViewBinding(LayoutInflater inflater) {
        Intrinsics.h(inflater, "inflater");
        py.y yVarC = py.y.c(inflater);
        Intrinsics.g(yVarC, "inflate(...)");
        return yVarC;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void c1(DownloadUrlBean urlBean, Function0 animaCallback) {
        LottieAnimationView lottieAnimationView;
        ProgressBar progressBar;
        AppCompatTextView appCompatTextView;
        py.y yVar = (py.y) getMViewBinding();
        if (yVar != null && (appCompatTextView = yVar.f72983e) != null) {
            appCompatTextView.removeCallbacks(this.runnable);
        }
        py.y yVar2 = (py.y) getMViewBinding();
        if (yVar2 != null && (progressBar = yVar2.f72981c) != null) {
            progressBar.setProgress(100);
        }
        py.y yVar3 = (py.y) getMViewBinding();
        if (yVar3 == null || (lottieAnimationView = yVar3.f72980b) == null) {
            return;
        }
        lottieAnimationView.setAnimation(ak.x.f658a.a() ? "download_analyzing_success_anima_night.json" : "download_analyzing_success_anima.json");
        lottieAnimationView.setRepeatCount(0);
        lottieAnimationView.addAnimatorListener(new b(animaCallback, urlBean));
        lottieAnimationView.playAnimation();
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public String getPageStateLayoutTitle() {
        return "";
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void initListener() {
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void initViewData() {
        String string;
        String string2;
        String string3;
        String string4;
        String string5;
        String string6;
        lg.a.C0828a.f(lg.a.f68839a, "premium_d", "DownloadReDetectorAnalysingFragment --> initViewData()", false, 4, null);
        Bundle arguments = getArguments();
        String str = "";
        if (arguments == null || (string = arguments.getString("extra_page_from")) == null) {
            string = "";
        }
        this.pageFrom = string;
        Bundle arguments2 = getArguments();
        if (arguments2 == null || (string2 = arguments2.getString("extra_last_page_from")) == null) {
            string2 = "";
        }
        this.lastPageFrom = string2;
        Bundle arguments3 = getArguments();
        this.subject = (Subject) (arguments3 != null ? arguments3.getSerializable("extra_subject") : null);
        Bundle arguments4 = getArguments();
        if (arguments4 == null || (string3 = arguments4.getString("extra_link_url")) == null) {
            string3 = "";
        }
        this.linkUrl = string3;
        Bundle arguments5 = getArguments();
        if (arguments5 == null || (string4 = arguments5.getString("extra_ops")) == null) {
            string4 = "";
        }
        this.ops = string4;
        Bundle arguments6 = getArguments();
        if (arguments6 == null || (string5 = arguments6.getString("extra_resource")) == null) {
            string5 = "";
        }
        this.resourceFrom = string5;
        Bundle arguments7 = getArguments();
        O0(arguments7 != null ? arguments7.getBoolean("extra_download_execute_download") : false);
        Bundle arguments8 = getArguments();
        if (arguments8 != null && (string6 = arguments8.getString("extra_module_name")) != null) {
            str = string6;
        }
        P0(str);
    }

    @Override // com.transsnet.downloader.fragment.DownloadReDetectorSingleResBaseFragment, com.transsion.baseui.fragment.PageStatusFragment
    public void initViewModel() {
    }

    @Override // androidx.fragment.app.Fragment
    public void onHiddenChanged(boolean hidden) {
        super.onHiddenChanged(hidden);
        lg.a.C0828a c0828a = lg.a.f68839a;
        String tag = getTAG();
        Intrinsics.g(tag, "<get-TAG>(...)");
        lg.a.C0828a.f(c0828a, tag, "onHiddenChanged, hidden = " + hidden, false, 4, null);
        if (hidden || !this.isResetLinkUrl) {
            return;
        }
        this.isResetLinkUrl = false;
        i1();
    }

    @Override // com.transsnet.downloader.fragment.DownloadReDetectorBaseFragment, com.transsion.baseui.fragment.PageStatusFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        Intrinsics.h(view, "view");
        super.onViewCreated(view, savedInstanceState);
        initView();
        a1();
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void retryLoadData() {
    }
}
