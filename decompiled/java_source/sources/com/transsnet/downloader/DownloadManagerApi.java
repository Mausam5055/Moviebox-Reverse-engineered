package com.transsnet.downloader;

import android.R;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import com.blankj.utilcode.util.Utils;
import com.therouter.TheRouter;
import com.therouter.router.Navigator;
import com.transsion.baselib.db.AppDatabase;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.downloadapi.IDownloadApiProvider;
import com.transsion.moviedetailapi.bean.ResourceDetectors;
import com.transsion.moviedetailapi.bean.Subject;
import com.transsion.room.api.IAudioApi;
import com.transsion.room.api.IFloatingApi;
import com.transsnet.downloader.fragment.DownloadReDetectorMainDialog;
import com.transsnet.downloader.fragment.TransferInnerMainFragment;
import com.transsnet.downloader.ugc.dialog.UGCDownloadDialog;
import com.transsnet.downloader.util.DownloadUtil;
import com.transsnet.downloader.view.DownloadingTipsDialogFragment;
import com.transsnet.downloader.viewmodel.DownloadListManager;
import com.transsnet.flow.event.AppScopeVMlProvider;
import com.transsnet.flow.event.FlowEventBus;
import com.transsnet.flow.event.sync.event.AddToDownloadEvent;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes.dex */
public final class DownloadManagerApi implements IDownloadApiProvider {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final a f58398j = new a(null);

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final Lazy f58399k = LazyKt.a(LazyThreadSafetyMode.SYNCHRONIZED, new Function0() { // from class: com.transsnet.downloader.q
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return DownloadManagerApi.u();
        }
    });

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private DownloadBean f58404e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Set f58400a = new CopyOnWriteArraySet();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Set f58401b = new CopyOnWriteArraySet();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Set f58402c = new CopyOnWriteArraySet();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Lazy f58403d = LazyKt.b(new Function0() { // from class: com.transsnet.downloader.l
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return DownloadManagerApi.C0();
        }
    });

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Lazy f58405f = LazyKt.b(new Function0() { // from class: com.transsnet.downloader.m
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return DownloadManagerApi.c0();
        }
    });

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Lazy f58406g = LazyKt.b(new Function0() { // from class: com.transsnet.downloader.n
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return DownloadManagerApi.q0();
        }
    });

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final Lazy f58407h = LazyKt.b(new Function0() { // from class: com.transsnet.downloader.o
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return DownloadManagerApi.r0();
        }
    });

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final Lazy f58408i = LazyKt.b(new Function0() { // from class: com.transsnet.downloader.p
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return DownloadManagerApi.W();
        }
    });

    /* JADX INFO: loaded from: classes7.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final DownloadManagerApi a() {
            return (DownloadManagerApi) DownloadManagerApi.f58399k.getValue();
        }
    }

    public static /* synthetic */ void B0(DownloadManagerApi downloadManagerApi, String str, String str2, boolean z10, boolean z11, boolean z12, int i11, Object obj) {
        if ((i11 & 8) != 0) {
            z11 = true;
        }
        boolean z13 = z11;
        if ((i11 & 16) != 0) {
            z12 = false;
        }
        downloadManagerApi.A0(str, str2, z10, z13, z12);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final qy.a C0() {
        return (qy.a) zg.c.f79414e.a().h(qy.a.class);
    }

    private final void D0(final FragmentActivity fragmentActivity, final int i11, String str, final DownloadBean downloadBean, boolean z10, final String str2) {
        if (((FrameLayout) fragmentActivity.findViewById(R.id.content)) != null) {
            lg.a.C0828a.f(lg.a.f68839a, "downloadAna", "downloadBean.size = " + downloadBean.getSize() + "， formatSize = " + str + ", fileCount = " + i11, false, 4, null);
            if (z10) {
                boolean z11 = ((ViewGroup) fragmentActivity.getWindow().getDecorView().findViewById(R.id.content)).getChildAt(0) instanceof ViewGroup;
            } else {
                new Handler(Looper.getMainLooper()).postDelayed(new Runnable() { // from class: com.transsnet.downloader.e
                    @Override // java.lang.Runnable
                    public final void run() {
                        DownloadManagerApi.E0(downloadBean, str2, i11, fragmentActivity);
                    }
                }, 300L);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void E0(DownloadBean downloadBean, String str, int i11, FragmentActivity fragmentActivity) {
        downloadBean.setPageFrom(str);
        DownloadingTipsDialogFragment downloadingTipsDialogFragmentA = DownloadingTipsDialogFragment.INSTANCE.a(i11);
        downloadingTipsDialogFragmentA.O0(downloadBean);
        downloadingTipsDialogFragmentA.k0(fragmentActivity, "DownloadingTipsDialogFragment");
    }

    private final void G(final FragmentActivity fragmentActivity, final Subject subject, final String str, final String str2, final String str3, final String str4, final String str5, final String str6, String str7, boolean z10, final int i11, final boolean z11) {
        Integer type;
        final FragmentManager supportFragmentManager = fragmentActivity.getSupportFragmentManager();
        Intrinsics.g(supportFragmentManager, "getSupportFragmentManager(...)");
        final String strI = hj.i.f64505a.i();
        ResourceDetectors resourceDetector = subject.getResourceDetector();
        if (resourceDetector == null || (type = resourceDetector.getType()) == null || type.intValue() != 1) {
            com.transsnet.downloader.manager.f.f59478a.a().j(fragmentActivity, subject, new Function0() { // from class: com.transsnet.downloader.s
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return DownloadManagerApi.I(str, strI, subject, str2, str3, str4, str5, str6, i11, z11, supportFragmentManager, this, fragmentActivity);
                }
            });
            return;
        }
        DownloadReDetectorMainDialog downloadReDetectorMainDialogA = DownloadReDetectorMainDialog.INSTANCE.a(str, strI, subject, str2, str3, str4, str5, str6, i11, z11);
        downloadReDetectorMainDialogA.show(supportFragmentManager, "download");
        downloadReDetectorMainDialogA.z0(new Function4() { // from class: com.transsnet.downloader.r
            @Override // kotlin.jvm.functions.Function4
            public final Object invoke(Object obj, Object obj2, Object obj3, Object obj4) {
                return DownloadManagerApi.H(this.f59589a, fragmentActivity, str, ((Integer) obj).intValue(), (String) obj2, (DownloadBean) obj3, ((Boolean) obj4).booleanValue());
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit H(DownloadManagerApi downloadManagerApi, FragmentActivity fragmentActivity, String str, int i11, String formatSize, DownloadBean downloadBean, boolean z10) {
        Intrinsics.h(formatSize, "formatSize");
        Intrinsics.h(downloadBean, "downloadBean");
        downloadManagerApi.D0(fragmentActivity, i11, formatSize, downloadBean, z10, str);
        lg.a.C0828a.f(lg.a.f68839a, "downloadAna", "group get success, show anima", false, 4, null);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit I(final String str, String str2, Subject subject, String str3, String str4, String str5, String str6, String str7, int i11, boolean z10, FragmentManager fragmentManager, final DownloadManagerApi downloadManagerApi, final FragmentActivity fragmentActivity) {
        DownloadReDetectorMainDialog downloadReDetectorMainDialogA = DownloadReDetectorMainDialog.INSTANCE.a(str, str2, subject, str3, str4, str5, str6, str7, i11, z10);
        downloadReDetectorMainDialogA.show(fragmentManager, "download_anima");
        downloadReDetectorMainDialogA.z0(new Function4() { // from class: com.transsnet.downloader.g
            @Override // kotlin.jvm.functions.Function4
            public final Object invoke(Object obj, Object obj2, Object obj3, Object obj4) {
                return DownloadManagerApi.J(this.f59381a, fragmentActivity, str, ((Integer) obj).intValue(), (String) obj2, (DownloadBean) obj3, ((Boolean) obj4).booleanValue());
            }
        });
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit J(DownloadManagerApi downloadManagerApi, FragmentActivity fragmentActivity, String str, int i11, String formatSize, DownloadBean bean, boolean z10) {
        Intrinsics.h(formatSize, "formatSize");
        Intrinsics.h(bean, "bean");
        downloadManagerApi.D0(fragmentActivity, i11, formatSize, bean, z10, str);
        return Unit.f67061a;
    }

    public static /* synthetic */ void N(DownloadManagerApi downloadManagerApi, FragmentActivity fragmentActivity, Subject subject, String str, String str2, String str3, String str4, String str5, String str6, String str7, boolean z10, int i11, boolean z11, int i12, Object obj) {
        downloadManagerApi.L(fragmentActivity, subject, str, (i12 & 8) != 0 ? "" : str2, str3, str4, (i12 & 64) != 0 ? "" : str5, (i12 & 128) != 0 ? null : str6, (i12 & 256) != 0 ? null : str7, (i12 & 512) != 0 ? false : z10, (i12 & 1024) != 0 ? 0 : i11, (i12 & 2048) != 0 ? true : z11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit Q(final DownloadManagerApi downloadManagerApi, final FragmentActivity fragmentActivity, final DownloadBean downloadBean, final String str, final Ref.ObjectRef objectRef, final String str2, final String str3) {
        downloadManagerApi.X(fragmentActivity, new Function0() { // from class: com.transsnet.downloader.c
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return DownloadManagerApi.R(this.f58559a, fragmentActivity, downloadBean, str, objectRef, str2, str3);
            }
        });
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final Unit R(DownloadManagerApi downloadManagerApi, FragmentActivity fragmentActivity, DownloadBean downloadBean, String str, Ref.ObjectRef objectRef, String str2, String str3) {
        downloadManagerApi.i0(fragmentActivity, downloadBean, str, (String) objectRef.element, str2, str3);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final Unit S(DownloadManagerApi downloadManagerApi, FragmentActivity fragmentActivity, DownloadBean downloadBean, String str, Ref.ObjectRef objectRef, String str2, String str3) {
        downloadManagerApi.i0(fragmentActivity, downloadBean, str, (String) objectRef.element, str2, str3);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit V(DownloadManagerApi downloadManagerApi, FragmentActivity fragmentActivity, Subject subject, String str, String str2, String str3, String str4, String str5) {
        Z(downloadManagerApi, fragmentActivity, subject, str, str2, str3, str4, str5, null, 128, null);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final jj.a W() {
        AppDatabase.Companion g1Var = AppDatabase.INSTANCE;
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        return g1Var.b(applicationA).o1();
    }

    private final void X(FragmentActivity fragmentActivity, Function0 function0) {
        function0.invoke();
    }

    private final void Y(final FragmentActivity fragmentActivity, final Subject subject, final String str, final String str2, final String str3, final String str4, final String str5, final String str6) {
        X(fragmentActivity, new Function0() { // from class: com.transsnet.downloader.i
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return DownloadManagerApi.a0(fragmentActivity, str, str2, subject, str3, str4, str5, str6, this);
            }
        });
    }

    static /* synthetic */ void Z(DownloadManagerApi downloadManagerApi, FragmentActivity fragmentActivity, Subject subject, String str, String str2, String str3, String str4, String str5, String str6, int i11, Object obj) {
        downloadManagerApi.Y(fragmentActivity, subject, str, str2, str3, str4, (i11 & 64) != 0 ? null : str5, (i11 & 128) != 0 ? null : str6);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit a0(final FragmentActivity fragmentActivity, String str, final String str2, Subject subject, String str3, String str4, String str5, String str6, final DownloadManagerApi downloadManagerApi) {
        String strI = hj.i.f64505a.i();
        FragmentManager supportFragmentManager = fragmentActivity.getSupportFragmentManager();
        Intrinsics.g(supportFragmentManager, "getSupportFragmentManager(...)");
        DownloadReDetectorMainDialog downloadReDetectorMainDialogB = DownloadReDetectorMainDialog.INSTANCE.b(str, str2, strI, subject, str3, str4, str5);
        downloadReDetectorMainDialogB.show(supportFragmentManager, "download_anima");
        downloadReDetectorMainDialogB.z0(new Function4() { // from class: com.transsnet.downloader.j
            @Override // kotlin.jvm.functions.Function4
            public final Object invoke(Object obj, Object obj2, Object obj3, Object obj4) {
                return DownloadManagerApi.b0(this.f59403a, fragmentActivity, str2, ((Integer) obj).intValue(), (String) obj2, (DownloadBean) obj3, ((Boolean) obj4).booleanValue());
            }
        });
        DownloadListManager.f59994m.a().p(DownloadUtil.f59900a.j(subject, str2, strI, str3, "", str6));
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit b0(DownloadManagerApi downloadManagerApi, FragmentActivity fragmentActivity, String str, int i11, String formatSize, DownloadBean downloadBean, boolean z10) {
        Intrinsics.h(formatSize, "formatSize");
        Intrinsics.h(downloadBean, "downloadBean");
        downloadManagerApi.D0(fragmentActivity, i11, formatSize, downloadBean, z10, str);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final com.transsnet.downloader.manager.g c0() {
        return com.transsnet.downloader.manager.p.f59500a.a(Utils.a());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit h0(Function4 function4, DownloadManagerApi downloadManagerApi, FragmentActivity fragmentActivity, String str, int i11, String formatSize, DownloadBean downloadBean, boolean z10) {
        Intrinsics.h(formatSize, "formatSize");
        Intrinsics.h(downloadBean, "downloadBean");
        if (function4 != null) {
            function4.invoke(Integer.valueOf(i11), formatSize, downloadBean, Boolean.valueOf(z10));
        } else {
            downloadManagerApi.D0(fragmentActivity, i11, formatSize, downloadBean, z10, str);
        }
        return Unit.f67061a;
    }

    private final void i0(final FragmentActivity fragmentActivity, final DownloadBean downloadBean, final String str, final String str2, final String str3, final String str4) {
        com.transsnet.downloader.manager.p.f59500a.a(Utils.a()).s(downloadBean != null ? downloadBean.getResourceId() : null, new Function1() { // from class: com.transsnet.downloader.f
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return DownloadManagerApi.j0(fragmentActivity, str3, str4, downloadBean, this, str, str2, (DownloadBean) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit j0(final FragmentActivity fragmentActivity, String str, String str2, DownloadBean downloadBean, final DownloadManagerApi downloadManagerApi, final String str3, String str4, DownloadBean downloadBean2) {
        if (downloadBean2 != null) {
            uh.b.f76753a.d(R$string.already_in_downloads);
        } else {
            String strI = hj.i.f64505a.i();
            FragmentManager supportFragmentManager = fragmentActivity.getSupportFragmentManager();
            Intrinsics.g(supportFragmentManager, "getSupportFragmentManager(...)");
            DownloadReDetectorMainDialog downloadReDetectorMainDialogD = DownloadReDetectorMainDialog.INSTANCE.d(str, str2);
            downloadReDetectorMainDialogD.show(supportFragmentManager, "download_anima");
            downloadReDetectorMainDialogD.z0(new Function4() { // from class: com.transsnet.downloader.h
                @Override // kotlin.jvm.functions.Function4
                public final Object invoke(Object obj, Object obj2, Object obj3, Object obj4) {
                    return DownloadManagerApi.k0(this.f59391a, fragmentActivity, str3, ((Integer) obj).intValue(), (String) obj2, (DownloadBean) obj3, ((Boolean) obj4).booleanValue());
                }
            });
            if (downloadBean != null) {
                downloadBean.setPageFrom(str3);
                downloadBean.setLastPageFrom(strI);
                downloadBean.setOps(str4);
                DownloadListManager.f59994m.a().p(downloadBean);
            }
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit k0(DownloadManagerApi downloadManagerApi, FragmentActivity fragmentActivity, String str, int i11, String formatSize, DownloadBean downloadBean, boolean z10) {
        Intrinsics.h(formatSize, "formatSize");
        Intrinsics.h(downloadBean, "downloadBean");
        downloadManagerApi.D0(fragmentActivity, i11, formatSize, downloadBean, z10, str);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final jj.a m0() {
        return (jj.a) this.f58408i.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final com.transsnet.downloader.manager.g n0() {
        return (com.transsnet.downloader.manager.g) this.f58405f.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final IAudioApi o0() {
        return (IAudioApi) this.f58406g.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final IFloatingApi p0() {
        return (IFloatingApi) this.f58407h.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final IAudioApi q0() {
        return (IAudioApi) TheRouter.d(IAudioApi.class, new Object[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final IFloatingApi r0() {
        return (IFloatingApi) TheRouter.d(IFloatingApi.class, new Object[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final DownloadManagerApi u() {
        Object objD = TheRouter.d(IDownloadApiProvider.class, new Object[0]);
        Intrinsics.f(objD, "null cannot be cast to non-null type com.transsnet.downloader.DownloadManagerApi");
        return (DownloadManagerApi) objD;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:34:0x009e  */
    public final void u0(Context context, String str) {
        boolean z10;
        if (this.f58404e == null) {
            return;
        }
        com.transsnet.downloader.manager.g gVarN0 = n0();
        DownloadBean downloadBean = this.f58404e;
        Intrinsics.e(downloadBean);
        gVarN0.k(downloadBean);
        com.transsnet.downloader.manager.g gVarA = com.transsnet.downloader.manager.p.f59500a.a(Utils.a());
        DownloadBean downloadBean2 = this.f58404e;
        Intrinsics.e(downloadBean2);
        String strH = gVarA.h(downloadBean2);
        Navigator navigatorC = TheRouter.c("/video/detail");
        DownloadBean downloadBean3 = this.f58404e;
        Navigator navigatorK = navigatorC.K("extra_local_path", downloadBean3 != null ? downloadBean3.getPath() : null);
        DownloadBean downloadBean4 = this.f58404e;
        Navigator navigatorK2 = navigatorK.K("extra_url", downloadBean4 != null ? downloadBean4.getUrl() : null).K("extra_proxy_url", strH);
        DownloadBean downloadBean5 = this.f58404e;
        Navigator navigatorK3 = navigatorK2.K("extra_resource_id", downloadBean5 != null ? downloadBean5.getResourceId() : null);
        DownloadBean downloadBean6 = this.f58404e;
        Navigator navigatorK4 = navigatorK3.K("extra_subject_id", downloadBean6 != null ? downloadBean6.getSubjectId() : null);
        DownloadBean downloadBean7 = this.f58404e;
        Navigator navigatorK5 = navigatorK4.K("extra_name", downloadBean7 != null ? downloadBean7.getName() : null);
        DownloadBean downloadBean8 = this.f58404e;
        Navigator navigatorK6 = navigatorK5.K("extra_post_id", downloadBean8 != null ? downloadBean8.getPostId() : null);
        DownloadBean downloadBean9 = this.f58404e;
        if (downloadBean9 != null) {
            z10 = downloadBean9.isCompleted();
        }
        Navigator navigatorZ = navigatorK6.z("extra_completed", z10);
        DownloadBean downloadBean10 = this.f58404e;
        Navigator.x(navigatorZ.z("extra_is_series", downloadBean10 != null ? downloadBean10.isSeries() : false).K("extra_page_from", str), context, null, 2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void v0(Context context) {
        kotlinx.coroutines.k.d(o0.a(y0.c()), null, null, new DownloadManagerApi$opnAudio$1(this, context, null), 3, null);
    }

    public static /* synthetic */ boolean x0(DownloadManagerApi downloadManagerApi, String str, String str2, boolean z10, boolean z11, int i11, Object obj) {
        if ((i11 & 4) != 0) {
            z10 = false;
        }
        if ((i11 & 8) != 0) {
            z11 = false;
        }
        return downloadManagerApi.w0(str, str2, z10, z11);
    }

    public static /* synthetic */ void z0(DownloadManagerApi downloadManagerApi, String str, Context context, String str2, String str3, int i11, Object obj) {
        if ((i11 & 8) != 0) {
            str3 = null;
        }
        downloadManagerApi.y0(str, context, str2, str3);
    }

    public final void A0(String str, String str2, boolean z10, boolean z11, boolean z12) {
        TypeIntrinsics.a(this.f58400a).remove(str2);
        TypeIntrinsics.a(this.f58401b).remove(str);
        if (z11) {
            AddToDownloadEvent addToDownloadEvent = new AddToDownloadEvent(str, str2, false, z10);
            FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
            String name = AddToDownloadEvent.class.getName();
            Intrinsics.g(name, "getName(...)");
            flowEventBus.postEvent(name, addToDownloadEvent, 0L);
        }
        if (z12) {
            kotlinx.coroutines.j.b(null, new DownloadManagerApi$removePlayAvailable$1(str, this, z11, str2, z10, null), 1, null);
        }
    }

    public final void K(FragmentActivity activity, Subject subject, String str, String str2, String str3, String resource, String str4, String str5, String str6, boolean z10) {
        Intrinsics.h(activity, "activity");
        Intrinsics.h(resource, "resource");
        N(this, activity, subject, str, str2, str3, resource, str4, str5, str6, z10, 0, false, 2048, null);
    }

    public final void L(FragmentActivity activity, Subject subject, String str, String str2, String str3, String resource, String str4, String str5, String str6, boolean z10, int i11, boolean z11) {
        String string;
        Intrinsics.h(activity, "activity");
        Intrinsics.h(resource, "resource");
        if (subject == null) {
            return;
        }
        com.transsion.baseui.util.c cVar = com.transsion.baseui.util.c.f43504a;
        String subjectId = subject.getSubjectId();
        if (cVar.a(subjectId != null ? subjectId.hashCode() : 9527, 2000L)) {
            return;
        }
        if (str3 == null || str3.length() == 0) {
            Bundle extras = activity.getIntent().getExtras();
            string = extras != null ? extras.getString("ops") : null;
        } else {
            string = str3;
        }
        if (nh.m.f70474a.e()) {
            G(activity, subject, str, str2, string, resource, str4, str5, str6, z10, i11, z11);
        } else {
            uh.b.f76753a.d(com.tn.lib.widget.R$string.no_network_toast);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void O(final FragmentActivity activity, final DownloadBean downloadBean, final String str, String str2, final String resource, Subject subject, final String str3) {
        String resourceId;
        Intrinsics.h(activity, "activity");
        Intrinsics.h(resource, "resource");
        final Ref.ObjectRef objectRef = new Ref.ObjectRef();
        objectRef.element = str2;
        String str4 = str2;
        if (str4 == null || str4.length() == 0) {
            Bundle extras = activity.getIntent().getExtras();
            objectRef.element = extras != null ? extras.getString("ops") : 0;
        }
        if (com.transsion.baseui.util.c.f43504a.a((downloadBean == null || (resourceId = downloadBean.getResourceId()) == null) ? 9526 : resourceId.hashCode(), 2000L)) {
            return;
        }
        if (!nh.m.f70474a.e()) {
            uh.b.f76753a.d(com.tn.lib.widget.R$string.no_network_toast);
        } else if (subject != null) {
            com.transsnet.downloader.manager.f.f59478a.a().j(activity, subject, new Function0() { // from class: com.transsnet.downloader.a
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return DownloadManagerApi.Q(this.f58411a, activity, downloadBean, str, objectRef, resource, str3);
                }
            });
        } else {
            X(activity, new Function0() { // from class: com.transsnet.downloader.k
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return DownloadManagerApi.S(this.f59406a, activity, downloadBean, str, objectRef, resource, str3);
                }
            });
        }
    }

    public final void T(String str, String str2, boolean z10, int i11, boolean z11, boolean z12) {
        if (z12 && str != null) {
            this.f58402c.add(str);
        }
        if (z10) {
            if (str2 != null) {
                this.f58400a.add(str2);
                AddToDownloadEvent addToDownloadEvent = new AddToDownloadEvent(null, str2, true, z10);
                FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
                String name = AddToDownloadEvent.class.getName();
                Intrinsics.g(name, "getName(...)");
                flowEventBus.postEvent(name, addToDownloadEvent, 0L);
            }
            if (!CollectionsKt.b0(this.f58401b, str) || z11) {
                return;
            }
            return;
        }
        if (str2 != null) {
            this.f58400a.add(str2);
            if (str != null) {
                this.f58401b.add(str);
            }
            if (z11) {
                AddToDownloadEvent addToDownloadEvent2 = new AddToDownloadEvent(str, str2, true, z10);
                FlowEventBus flowEventBus2 = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
                String name2 = AddToDownloadEvent.class.getName();
                Intrinsics.g(name2, "getName(...)");
                flowEventBus2.postEvent(name2, addToDownloadEvent2, 0L);
            }
        }
    }

    public final void U(final FragmentActivity activity, final Subject subject, final String linkUrl, final String str, final String str2, final String resource, final String str3) {
        Bundle extras;
        String subjectId;
        Intrinsics.h(activity, "activity");
        Intrinsics.h(linkUrl, "linkUrl");
        Intrinsics.h(resource, "resource");
        if (com.transsion.baseui.util.c.f43504a.a((subject == null || (subjectId = subject.getSubjectId()) == null) ? 9528 : subjectId.hashCode(), 2000L)) {
            return;
        }
        if ((str2 == null || str2.length() == 0) && (extras = activity.getIntent().getExtras()) != null) {
            extras.getString("ops");
        }
        if (!nh.m.f70474a.e()) {
            uh.b.f76753a.d(com.tn.lib.widget.R$string.no_network_toast);
        } else if (subject != null) {
            com.transsnet.downloader.manager.f.f59478a.a().j(activity, subject, new Function0() { // from class: com.transsnet.downloader.b
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return DownloadManagerApi.V(this.f58551a, activity, subject, linkUrl, str, str2, resource, str3);
                }
            });
        } else {
            Z(this, activity, subject, linkUrl, str, str2, resource, str3, null, 128, null);
        }
    }

    @Override // com.transsion.downloadapi.IDownloadApiProvider
    public Fragment a() {
        return TransferInnerMainFragment.INSTANCE.a();
    }

    public final void d0(FragmentActivity activity, String str, String str2, String str3, String str4, boolean z10, Subject subject, String str5, Boolean bool) {
        String string;
        String ops;
        Intrinsics.h(activity, "activity");
        if (str3 == null || str3.length() == 0) {
            Bundle extras = activity.getIntent().getExtras();
            string = extras != null ? extras.getString("ops") : null;
        } else {
            string = str3;
        }
        ns.a.f70542a.a(activity, str, str3, str4, z10, new com.transsion.shorttv.bean.Subject(subject != null ? subject.getSubjectId() : null, subject != null ? subject.getSubjectType() : null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, (subject == null || (ops = subject.getOps()) == null) ? string : ops, null, null, null, null, false, false, null, null, null, null, null, false, false, null, null, 0, false, false, 0L, null, null, 0L, null, 0, false, null, 0, null, null, null, null, null, false, null, null, 0, 0, null, 0, null, 0, null, -524292, 1073741823, null), str5, bool);
    }

    public final void f0(final FragmentActivity activity, String str, String str2, String str3, String str4, final String str5, String str6, String str7, String str8, String str9, String str10, boolean z10, final Function4 function4) {
        UGCDownloadDialog uGCDownloadDialogB;
        Intrinsics.h(activity, "activity");
        String strI = hj.i.f64505a.i();
        FragmentManager supportFragmentManager = activity.getSupportFragmentManager();
        Intrinsics.g(supportFragmentManager, "getSupportFragmentManager(...)");
        if (str != null && str.length() != 0) {
            uGCDownloadDialogB = UGCDownloadDialog.INSTANCE.a(str, str3, str4, str5, strI, str6, str7, str2, str8, str9, str10, z10);
        } else if (str2 == null || str2.length() == 0) {
            return;
        } else {
            uGCDownloadDialogB = UGCDownloadDialog.INSTANCE.b(str2, str4, str5, strI, str6, str7, str8, str9, str10, z10);
        }
        uGCDownloadDialogB.s1(new Function4() { // from class: com.transsnet.downloader.d
            @Override // kotlin.jvm.functions.Function4
            public final Object invoke(Object obj, Object obj2, Object obj3, Object obj4) {
                return DownloadManagerApi.h0(function4, this, activity, str5, ((Integer) obj).intValue(), (String) obj2, (DownloadBean) obj3, ((Boolean) obj4).booleanValue());
            }
        });
        uGCDownloadDialogB.show(supportFragmentManager, "download_anima");
    }

    public final Object l0(Continuation continuation) {
        return kotlinx.coroutines.i.g(y0.b(), new DownloadManagerApi$fetchLatestDownloadData$2(null), continuation);
    }

    public final void s0(FragmentActivity activity, DownloadBean downloadBean, String str) {
        Intrinsics.h(activity, "activity");
        Intrinsics.h(downloadBean, "downloadBean");
        String resourceId = downloadBean.getResourceId();
        if (resourceId == null) {
            resourceId = downloadBean.getUrl();
        }
        t0(activity, resourceId, str);
    }

    public final void t0(FragmentActivity activity, String resourceId, String str) {
        Intrinsics.h(activity, "activity");
        Intrinsics.h(resourceId, "resourceId");
        kotlinx.coroutines.k.d(o0.a(y0.c()), null, null, new DownloadManagerApi$openDownloadVideo$1(resourceId, str, activity, null), 3, null);
    }

    public final boolean w0(String str, String str2, boolean z10, boolean z11) {
        boolean z12 = CollectionsKt.b0(this.f58400a, str2) || CollectionsKt.b0(this.f58401b, str);
        if (z10) {
            return str != null ? this.f58401b.contains(str) : z12;
        }
        return (!z11 || str == null) ? z12 : this.f58402c.contains(str);
    }

    public final void y0(String str, Context context, String str2, String str3) {
        Intrinsics.h(context, "context");
        kotlinx.coroutines.j.b(null, new DownloadManagerApi$playNow$1(str, this, context, str2, str3, null), 1, null);
    }
}
