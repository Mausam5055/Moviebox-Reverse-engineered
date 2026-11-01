package com.transsnet.downloader.fragment;

import android.app.Application;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.cardview.widget.CardView;
import androidx.p009lifecycle.Lifecycle;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.blankj.utilcode.util.Utils;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.therouter.TheRouter;
import com.therouter.router.Navigator;
import com.transsion.baselib.db.AppDatabase;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.baseui.R$string;
import com.transsion.baseui.widget.GradientTextView;
import com.transsion.commercializationapi.IInterceptReportApi;
import com.transsion.memberapi.IMemberApi;
import com.transsion.memberapi.IPremiumApi;
import com.transsion.room.api.IAudioApi;
import com.transsion.room.api.IFloatingApi;
import com.transsion.web.api.WebConstants;
import com.transsnet.downloader.R$id;
import com.transsnet.downloader.R$layout;
import com.transsnet.downloader.api.DownloadPageType;
import com.transsnet.downloader.dialog.DownloadTaskControlManagerDialog;
import com.transsnet.downloader.manager.DownloadEsHelper;
import com.transsnet.downloader.popup.PopupManager;
import com.transsnet.downloader.util.DownloadUtil;
import com.transsnet.flow.event.AppScopeVMlProvider;
import com.transsnet.flow.event.FlowEventBus;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import kotlin.Function;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.comparisons.ComparisonsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000\u0085\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\b\u0007*\u0001\\\u0018\u0000 `2\u00020\u0001:\u0001aB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0005\u0010\u0003J\u000f\u0010\u0006\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0006\u0010\u0003J\u000f\u0010\u0007\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0007\u0010\u0003J\u000f\u0010\b\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\b\u0010\u0003J\u000f\u0010\t\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\t\u0010\u0003J\u000f\u0010\n\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\n\u0010\u0003J\u000f\u0010\f\u001a\u00020\u000bH\u0002¢\u0006\u0004\b\f\u0010\rJ\u001f\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u000bH\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\u001d\u0010\u0015\u001a\u00020\u00042\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00130\u0012H\u0002¢\u0006\u0004\b\u0015\u0010\u0016J\u000f\u0010\u0017\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0017\u0010\u0003J'\u0010\u001d\u001a\u00020\u00042\u0006\u0010\u0018\u001a\u00020\u00132\u0006\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u001c\u001a\u00020\u001bH\u0002¢\u0006\u0004\b\u001d\u0010\u001eJ\u0017\u0010 \u001a\u00020\u00042\u0006\u0010\u001f\u001a\u00020\u0013H\u0002¢\u0006\u0004\b \u0010!J\u0017\u0010\"\u001a\u00020\u00042\u0006\u0010\u0018\u001a\u00020\u0013H\u0002¢\u0006\u0004\b\"\u0010!J'\u0010#\u001a\u00020\u00042\u0006\u0010\u0018\u001a\u00020\u00132\u0006\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u001c\u001a\u00020\u001bH\u0002¢\u0006\u0004\b#\u0010\u001eJ\u0017\u0010$\u001a\u00020\u000b2\u0006\u0010\u001f\u001a\u00020\u0013H\u0002¢\u0006\u0004\b$\u0010%J\u000f\u0010&\u001a\u00020\u0004H\u0016¢\u0006\u0004\b&\u0010\u0003J\u000f\u0010'\u001a\u00020\u0004H\u0016¢\u0006\u0004\b'\u0010\u0003J\u000f\u0010(\u001a\u00020\u0004H\u0016¢\u0006\u0004\b(\u0010\u0003J\u0017\u0010+\u001a\u00020\u00042\u0006\u0010*\u001a\u00020)H\u0016¢\u0006\u0004\b+\u0010,J'\u0010-\u001a\u00020\u00042\u0006\u0010*\u001a\u00020)2\u0006\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u001c\u001a\u00020\u001bH\u0016¢\u0006\u0004\b-\u0010.J'\u0010/\u001a\u00020\u00042\u0006\u0010*\u001a\u00020)2\u0006\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u001c\u001a\u00020\u001bH\u0016¢\u0006\u0004\b/\u0010.J'\u00100\u001a\u00020\u00042\u0006\u0010*\u001a\u00020)2\u0006\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u001c\u001a\u00020\u001bH\u0016¢\u0006\u0004\b0\u0010.J\u0011\u00102\u001a\u0004\u0018\u000101H\u0016¢\u0006\u0004\b2\u00103J\u000f\u00105\u001a\u000204H\u0016¢\u0006\u0004\b5\u00106J\u000f\u00107\u001a\u00020\u0004H\u0016¢\u0006\u0004\b7\u0010\u0003R\u0018\u0010;\u001a\u0004\u0018\u0001088\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b9\u0010:R\u001b\u0010A\u001a\u00020<8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b=\u0010>\u001a\u0004\b?\u0010@R\u0016\u0010D\u001a\u00020\u001b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bB\u0010CR\u0016\u0010G\u001a\u0002048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bE\u0010FR\u001b\u0010L\u001a\u00020H8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bI\u0010>\u001a\u0004\bJ\u0010KR\u001d\u0010Q\u001a\u0004\u0018\u00010M8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bN\u0010>\u001a\u0004\bO\u0010PR\u001d\u0010V\u001a\u0004\u0018\u00010R8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bS\u0010>\u001a\u0004\bT\u0010UR\u001b\u0010[\u001a\u00020W8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bX\u0010>\u001a\u0004\bY\u0010ZR\u0014\u0010_\u001a\u00020\\8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b]\u0010^¨\u0006b"}, d2 = {"Lcom/transsnet/downloader/fragment/DownloadingListFragment;", "Lcom/transsnet/downloader/fragment/DownloadListBaseFragment;", "<init>", "()V", "", "b1", "d1", "t1", "u1", "s1", "r1", "", "i1", "()Z", "haveBatteryPermission", "isEnableMember", "l1", "(ZZ)V", "", "Lcom/transsion/baselib/db/download/DownloadBean;", "data", "v1", "(Ljava/util/List;)V", "Z0", WebConstants.FIELD_ITEM, "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "", RequestParameters.POSITION, "p1", "(Lcom/transsion/baselib/db/download/DownloadBean;Landroid/view/View;I)V", "downloadBean", "q1", "(Lcom/transsion/baselib/db/download/DownloadBean;)V", "o1", "n1", "h1", "(Lcom/transsion/baselib/db/download/DownloadBean;)Z", "initViewData", "initViewModel", "initListener", "Lcom/transsnet/downloader/adapter/k;", "adapter", "o0", "(Lcom/transsnet/downloader/adapter/k;)V", "B0", "(Lcom/transsnet/downloader/adapter/k;Landroid/view/View;I)V", "A0", "C0", "Lhj/b;", "newLogViewConfig", "()Lhj/b;", "", "getPageName", "()Ljava/lang/String;", "onDestroy", "Lpy/b1;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Lpy/b1;", "titleBinding", "Landroid/os/Handler;", "e", "Lkotlin/Lazy;", "getMHandler", "()Landroid/os/Handler;", "mHandler", "f", "I", "downloadingCount", "g", "Ljava/lang/String;", "premiumProTipTraceId", "Lcom/transsnet/downloader/manager/g;", "h", "Y0", "()Lcom/transsnet/downloader/manager/g;", "downloadManager", "Lcom/transsion/room/api/IAudioApi;", "i", "getMAudioApi", "()Lcom/transsion/room/api/IAudioApi;", "mAudioApi", "Lcom/transsion/room/api/IFloatingApi;", "j", "getMFloatApi", "()Lcom/transsion/room/api/IFloatingApi;", "mFloatApi", "Ljj/a;", CampaignEx.JSON_KEY_AD_K, "X0", "()Ljj/a;", "audioDao", "com/transsnet/downloader/fragment/DownloadingListFragment$b", "l", "Lcom/transsnet/downloader/fragment/DownloadingListFragment$b;", "downloadListener", "m", "a", "Downloader_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class DownloadingListFragment extends DownloadListBaseFragment {

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private py.b1 titleBinding;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private int downloadingCount;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private final Lazy mHandler = LazyKt.b(new Function0() { // from class: com.transsnet.downloader.fragment.v5
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return DownloadingListFragment.mHandler_delegate$lambda$0();
        }
    });

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    private String premiumProTipTraceId = "";

    /* JADX INFO: renamed from: h, reason: collision with root package name and from kotlin metadata */
    private final Lazy downloadManager = LazyKt.b(new Function0() { // from class: com.transsnet.downloader.fragment.w5
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return DownloadingListFragment.W0();
        }
    });

    /* JADX INFO: renamed from: i, reason: collision with root package name and from kotlin metadata */
    private final Lazy mAudioApi = LazyKt.b(new Function0() { // from class: com.transsnet.downloader.fragment.x5
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return DownloadingListFragment.j1();
        }
    });

    /* JADX INFO: renamed from: j, reason: collision with root package name and from kotlin metadata */
    private final Lazy mFloatApi = LazyKt.b(new Function0() { // from class: com.transsnet.downloader.fragment.y5
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return DownloadingListFragment.k1();
        }
    });

    /* JADX INFO: renamed from: k, reason: collision with root package name and from kotlin metadata */
    private final Lazy audioDao = LazyKt.b(new Function0() { // from class: com.transsnet.downloader.fragment.z5
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return DownloadingListFragment.V0();
        }
    });

    /* JADX INFO: renamed from: l, reason: collision with root package name and from kotlin metadata */
    private final b downloadListener = new b();

    public static final class b extends ny.d {
        b() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void j(DownloadingListFragment downloadingListFragment) {
            downloadingListFragment.s0().H();
        }

        @Override // ny.d
        public void h(DownloadBean bean, int i11) {
            List<Object> data;
            Intrinsics.h(bean, "bean");
            if (i11 == 5) {
                lg.a.f68839a.i(DownloadingListFragment.this.getTAG(), "onRefresh,getList status=" + i11 + ",bean=" + bean.getName() + " subjectId=" + bean.getSubjectId() + ",resourceId=" + bean.getResourceId(), true);
                Handler mHandler = DownloadingListFragment.this.getMHandler();
                final DownloadingListFragment downloadingListFragment = DownloadingListFragment.this;
                mHandler.postDelayed(new Runnable() { // from class: com.transsnet.downloader.fragment.a6
                    @Override // java.lang.Runnable
                    public final void run() {
                        DownloadingListFragment.b.j(downloadingListFragment);
                    }
                }, 500L);
                return;
            }
            com.transsnet.downloader.adapter.k mAdapter = DownloadingListFragment.this.getMAdapter();
            int i12 = -1;
            if (mAdapter != null && (data = mAdapter.getData()) != null) {
                Iterator<Object> it = data.iterator();
                int i13 = 0;
                while (it.hasNext()) {
                    if (Intrinsics.c(((DownloadBean) it.next()).getResourceId(), bean.getResourceId())) {
                        i12 = i13;
                        break;
                    }
                    i13++;
                }
            }
            if (i12 >= 0) {
                com.transsnet.downloader.adapter.k mAdapter2 = DownloadingListFragment.this.getMAdapter();
                if (mAdapter2 != null) {
                    mAdapter2.notifyItemChanged(i12, bean);
                    return;
                }
                return;
            }
            lg.a.f68839a.i(DownloadingListFragment.this.getTAG(), "onRefresh position=" + i12 + ",status=" + i11 + ",bean=" + bean.getName() + " subjectId=" + bean.getSubjectId() + ",resourceId=" + bean.getResourceId(), true);
        }
    }

    public static final class c implements com.transsnet.downloader.adapter.u0.b {
        c() {
        }

        @Override // com.transsnet.downloader.adapter.u0.b
        public void a(int i11, int i12) {
        }

        @Override // com.transsnet.downloader.adapter.u0.b
        public void b(int i11, int i12, int i13, boolean z10) {
            com.transsnet.downloader.adapter.u0.b.a.a(this, i11, i12, i13, z10);
        }
    }

    static final class d implements androidx.p009lifecycle.c0, FunctionAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final /* synthetic */ Function1 f59051a;

        d(Function1 function) {
            Intrinsics.h(function, "function");
            this.f59051a = function;
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        public final Function a() {
            return this.f59051a;
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
            this.f59051a.invoke(obj);
        }
    }

    public static final class e implements zm.f {
        e() {
        }

        @Override // zm.f
        public void a(Integer num, String str) {
        }

        @Override // zm.f
        public void b() {
            DownloadingListFragment.this.u1();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final jj.a V0() {
        AppDatabase.Companion companion = AppDatabase.INSTANCE;
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        return companion.b(applicationA).o1();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final com.transsnet.downloader.manager.g W0() {
        return com.transsnet.downloader.manager.p.f59500a.a(Utils.a());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final jj.a X0() {
        return (jj.a) this.audioDao.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final com.transsnet.downloader.manager.g Y0() {
        return (com.transsnet.downloader.manager.g) this.downloadManager.getValue();
    }

    private final void Z0() {
        Function1 function1 = new Function1() { // from class: com.transsnet.downloader.fragment.p5
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return DownloadingListFragment.a1(this.f59286a, (my.a) obj);
            }
        };
        FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
        String name = my.a.class.getName();
        Intrinsics.g(name, "getName(...)");
        flowEventBus.observeEvent(this, name, Lifecycle.State.CREATED, kotlinx.coroutines.y0.c().q(), false, function1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit a1(DownloadingListFragment downloadingListFragment, my.a it) {
        Intrinsics.h(it, "it");
        try {
            downloadingListFragment.s0().P();
        } catch (Throwable th2) {
            th2.printStackTrace();
        }
        return Unit.f67061a;
    }

    private final void b1() {
        GradientTextView gradientTextView;
        GradientTextView gradientTextView2;
        if (!isAdded() || isDetached() || isRemoving()) {
            return;
        }
        com.transsnet.downloader.util.d dVar = com.transsnet.downloader.util.d.f59924a;
        Context contextRequireContext = requireContext();
        Intrinsics.g(contextRequireContext, "requireContext(...)");
        final boolean zJ = dVar.j(contextRequireContext);
        IMemberApi iMemberApi = (IMemberApi) TheRouter.d(IMemberApi.class, new Object[0]);
        final boolean zB = iMemberApi != null ? iMemberApi.B() : false;
        py.b1 b1Var = this.titleBinding;
        if (b1Var != null && (gradientTextView2 = b1Var.f72627g) != null) {
            gradientTextView2.setVisibility(zB || !zJ ? 0 : 8);
        }
        py.b1 b1Var2 = this.titleBinding;
        if (b1Var2 == null || (gradientTextView = b1Var2.f72627g) == null) {
            return;
        }
        gradientTextView.setOnClickListener(new View.OnClickListener() { // from class: com.transsnet.downloader.fragment.u5
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DownloadingListFragment.c1(this.f59335a, zJ, zB, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void c1(DownloadingListFragment downloadingListFragment, boolean z10, boolean z11, View view) {
        downloadingListFragment.l1(z10, z11);
    }

    private final void d1() {
        TextView textView;
        CardView cardView;
        py.b1 b1Var = this.titleBinding;
        if (b1Var != null && (cardView = b1Var.f72623c) != null) {
            cardView.setOnClickListener(new View.OnClickListener() { // from class: com.transsnet.downloader.fragment.s5
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    DownloadingListFragment.e1(this.f59317a, view);
                }
            });
        }
        py.b1 b1Var2 = this.titleBinding;
        if (b1Var2 != null && (textView = b1Var2.f72625e) != null) {
            textView.setOnClickListener(new View.OnClickListener() { // from class: com.transsnet.downloader.fragment.t5
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    DownloadingListFragment.f1(this.f59326a, view);
                }
            });
        }
        u1();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void e1(DownloadingListFragment downloadingListFragment, View view) {
        downloadingListFragment.r1();
        downloadingListFragment.t1();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void f1(DownloadingListFragment downloadingListFragment, View view) {
        downloadingListFragment.r1();
        downloadingListFragment.t1();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit g1(DownloadingListFragment downloadingListFragment, List list) {
        if (list == null) {
            list = CollectionsKt.l();
        }
        downloadingListFragment.downloadingCount = list.size();
        downloadingListFragment.u1();
        if (list.isEmpty()) {
            return Unit.f67061a;
        }
        downloadingListFragment.v1(list);
        downloadingListFragment.D0(list);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final IAudioApi getMAudioApi() {
        return (IAudioApi) this.mAudioApi.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final IFloatingApi getMFloatApi() {
        return (IFloatingApi) this.mFloatApi.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Handler getMHandler() {
        return (Handler) this.mHandler.getValue();
    }

    private final boolean h1(DownloadBean downloadBean) {
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
        uh.b.f76753a.d(R$string.insufficient_storage_available);
        return true;
    }

    private final boolean i1() {
        IPremiumApi iPremiumApi = (IPremiumApi) TheRouter.d(IPremiumApi.class, new Object[0]);
        if (iPremiumApi != null) {
            return iPremiumApi.u();
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final IAudioApi j1() {
        return (IAudioApi) TheRouter.d(IAudioApi.class, new Object[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final IFloatingApi k1() {
        return (IFloatingApi) TheRouter.d(IFloatingApi.class, new Object[0]);
    }

    private final void l1(boolean haveBatteryPermission, boolean isEnableMember) {
        DownloadTaskControlManagerDialog downloadTaskControlManagerDialog = new DownloadTaskControlManagerDialog(haveBatteryPermission, isEnableMember);
        downloadTaskControlManagerDialog.s0(new Function0() { // from class: com.transsnet.downloader.fragment.q5
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return DownloadingListFragment.m1(this.f59296a);
            }
        });
        downloadTaskControlManagerDialog.k0(com.blankj.utilcode.util.a.b(), "DownloadTaskControlManagerDialog");
        IInterceptReportApi iInterceptReportApi = (IInterceptReportApi) TheRouter.d(IInterceptReportApi.class, new Object[0]);
        if (iInterceptReportApi != null) {
            iInterceptReportApi.b();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit m1(DownloadingListFragment downloadingListFragment) {
        downloadingListFragment.b1();
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Handler mHandler_delegate$lambda$0() {
        return new Handler(Looper.getMainLooper());
    }

    private final void n1(DownloadBean item, View view, int position) {
        DownloadEsHelper downloadEsHelperA = DownloadEsHelper.f59419m.a();
        String resourceId = item.getResourceId();
        if (resourceId == null) {
            resourceId = item.getUrl();
        }
        DownloadBean downloadBeanQ = downloadEsHelperA.q(resourceId);
        if (downloadBeanQ != null) {
            item = downloadBeanQ;
        }
        PopupManager popupManager = new PopupManager(position, item);
        popupManager.J(view, 2);
        popupManager.B(new c());
    }

    private final void o1(DownloadBean item) {
        kotlinx.coroutines.k.d(kotlinx.coroutines.o0.a(kotlinx.coroutines.y0.c()), null, null, new DownloadingListFragment$openAudio$1(this, item, null), 3, null);
    }

    private final void p1(DownloadBean item, View view, int position) {
        DownloadEsHelper downloadEsHelperA = DownloadEsHelper.f59419m.a();
        String resourceId = item.getResourceId();
        if (resourceId == null) {
            resourceId = item.getUrl();
        }
        DownloadBean downloadBeanQ = downloadEsHelperA.q(resourceId);
        if (downloadBeanQ != null) {
            item = downloadBeanQ;
        }
        if (item.isVideo()) {
            q1(item);
        } else {
            o1(item);
        }
    }

    /* JADX WARN: Code duplicated, block: B:37:0x00d0  */
    private final void q1(DownloadBean downloadBean) {
        Collection collectionL;
        String postId;
        if (downloadBean.isShotTV()) {
            Navigator.x(TheRouter.c(ls.a.f69034a.b()).K("id", downloadBean.getSubjectId()).F("ep", downloadBean.getEp()).K("ops", downloadBean.getOps()).G("ms", downloadBean.getReadProgress()), getContext(), null, 2, null);
            return;
        }
        if (!downloadBean.isShorts()) {
            Y0().k(downloadBean);
            String strH = Y0().h(downloadBean);
            com.danikula.videocache.q.a("proxyUrl = " + strH);
            View view = getView();
            Context context = view != null ? view.getContext() : null;
            AppCompatActivity appCompatActivity = context instanceof AppCompatActivity ? (AppCompatActivity) context : null;
            if (appCompatActivity == null) {
                return;
            }
            Navigator.x(TheRouter.c("/video/detail").K("extra_local_path", downloadBean.getPath()).K("extra_url", downloadBean.getUrl()).K("extra_proxy_url", strH).K("extra_resource_id", downloadBean.getResourceId()).K("extra_subject_id", downloadBean.getSubjectId()).K("extra_name", downloadBean.getName()).K("extra_post_id", downloadBean.getPostId()).z("extra_completed", false).z("extra_is_series", downloadBean.isSeries()).K("extra_page_from", DownloadPageType.DOWNLOAD.getPageName()).F("extra_height", downloadBean.getVideoHeight()).F("extra_width", downloadBean.getVideoWidth()), appCompatActivity, null, 2, null);
            return;
        }
        View view2 = getView();
        Context context2 = view2 != null ? view2.getContext() : null;
        AppCompatActivity appCompatActivity2 = context2 instanceof AppCompatActivity ? (AppCompatActivity) context2 : null;
        if (appCompatActivity2 == null) {
            return;
        }
        List list = (List) s0().O().f();
        if (list != null) {
            ArrayList arrayList = new ArrayList();
            for (Object obj : list) {
                DownloadBean downloadBean2 = (DownloadBean) obj;
                if (downloadBean2.isShorts() && (postId = downloadBean2.getPostId()) != null && postId.length() != 0) {
                    arrayList.add(obj);
                }
            }
            List listI0 = CollectionsKt.I0(arrayList, new Comparator() { // from class: com.transsnet.downloader.fragment.DownloadingListFragment$openVideo$$inlined$sortedByDescending$1
                /* JADX WARN: Multi-variable type inference failed */
                @Override // java.util.Comparator
                public final int compare(T t11, T t12) {
                    return ComparisonsKt.d(Long.valueOf(((DownloadBean) t12).getCreateAt()), Long.valueOf(((DownloadBean) t11).getCreateAt()));
                }
            });
            if (listI0 != null) {
                List list2 = listI0;
                collectionL = new ArrayList(CollectionsKt.v(list2, 10));
                Iterator it = list2.iterator();
                while (it.hasNext()) {
                    collectionL.add(DownloadUtil.f59900a.l((DownloadBean) it.next()));
                }
            } else {
                collectionL = CollectionsKt.l();
            }
        } else {
            collectionL = CollectionsKt.l();
        }
        Navigator.x(TheRouter.c("/post/detailVideo").K("id", downloadBean.getPostId()).K(WebConstants.PAGE_FROM, "download_list").z("video_load_more", true).J("downloaded_shorts_list", new ArrayList(collectionL)).z("prioritize_downloaded", true), appCompatActivity2, null, 2, null);
    }

    private final void r1() {
        com.transsion.baselib.helper.f.f43269a.f(DownloadPageType.DOWNLOAD.getPageName(), "downloads/vip_banner", this.premiumProTipTraceId, "", 2);
    }

    private final void s1() {
        this.premiumProTipTraceId = ti.n.f76264a.b();
        com.transsion.baselib.helper.f.f43269a.h(DownloadPageType.DOWNLOAD.getPageName(), "downloads/vip_banner", this.premiumProTipTraceId, "", 2);
    }

    private final void t1() {
        IPremiumApi iPremiumApi;
        Context context = getContext();
        if (context == null || (iPremiumApi = (IPremiumApi) TheRouter.d(IPremiumApi.class, new Object[0])) == null) {
            return;
        }
        IPremiumApi.a.b(iPremiumApi, context, new e(), null, "downloadpage", this.premiumProTipTraceId, "downloads/vip_banner", "", 4, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void u1() {
        CardView cardView;
        boolean z10 = this.downloadingCount > 0 && !i1();
        IMemberApi iMemberApi = (IMemberApi) TheRouter.d(IMemberApi.class, new Object[0]);
        boolean zF = iMemberApi != null ? iMemberApi.f() : false;
        py.b1 b1Var = this.titleBinding;
        if (b1Var != null && (cardView = b1Var.f72623c) != null) {
            cardView.setVisibility(z10 && zF ? 0 : 8);
        }
        if (z10 && zF) {
            s1();
        }
    }

    private final void v1(List data) {
        AppCompatTextView appCompatTextView;
        py.b1 b1Var = this.titleBinding;
        if (b1Var == null || (appCompatTextView = b1Var.f72626f) == null) {
            return;
        }
        appCompatTextView.setText(Utils.a().getString(com.transsnet.downloader.R$string.downloading_title_count, Integer.valueOf(data.size())));
    }

    @Override // com.transsnet.downloader.fragment.DownloadListBaseFragment
    public void A0(com.transsnet.downloader.adapter.k adapter, View view, int position) {
        Intrinsics.h(adapter, "adapter");
        Intrinsics.h(view, "view");
        DownloadBean downloadBean = (DownloadBean) adapter.getItem(position);
        int id2 = view.getId();
        if (id2 == R$id.iv_more) {
            n1(downloadBean, view, position);
        } else if (id2 == R$id.iv_cover) {
            p1(downloadBean, view, position);
        }
    }

    @Override // com.transsnet.downloader.fragment.DownloadListBaseFragment
    public void B0(com.transsnet.downloader.adapter.k adapter, View view, int position) {
        Intrinsics.h(adapter, "adapter");
        Intrinsics.h(view, "view");
        DownloadBean downloadBean = (DownloadBean) adapter.getItem(position);
        DownloadEsHelper downloadEsHelperA = DownloadEsHelper.f59419m.a();
        String resourceId = downloadBean.getResourceId();
        if (resourceId == null) {
            resourceId = downloadBean.getUrl();
        }
        DownloadBean downloadBeanQ = downloadEsHelperA.q(resourceId);
        if (downloadBeanQ != null) {
            downloadBean = downloadBeanQ;
        }
        int status = downloadBean.getStatus();
        if (status == 1 || status == 2 || status == 3) {
            Y0().G(downloadBean);
        } else {
            if (h1(downloadBean)) {
                return;
            }
            com.transsnet.downloader.manager.g.a.a(Y0(), downloadBean, false, 2, null);
        }
    }

    @Override // com.transsnet.downloader.fragment.DownloadListBaseFragment
    public void C0(com.transsnet.downloader.adapter.k adapter, View view, int position) {
        Intrinsics.h(adapter, "adapter");
        Intrinsics.h(view, "view");
        n1((DownloadBean) adapter.getItem(position), view, position);
    }

    @Override // com.transsnet.downloader.fragment.DownloadListBaseFragment
    public String getPageName() {
        return "";
    }

    @Override // com.transsnet.downloader.fragment.DownloadListBaseFragment, com.transsion.baseui.fragment.PageStatusFragment
    public void initListener() {
        super.initListener();
        Y0().e(this.downloadListener);
        Z0();
    }

    @Override // com.transsnet.downloader.fragment.DownloadListBaseFragment, com.transsion.baseui.fragment.PageStatusFragment
    public void initViewData() {
        LinearLayout linearLayout;
        View viewInflate = LayoutInflater.from(getContext()).inflate(R$layout.layout_downloading_title, (ViewGroup) null);
        this.titleBinding = py.b1.a(viewInflate);
        py.v mViewBinding = getMViewBinding();
        if (mViewBinding != null && (linearLayout = mViewBinding.f72944d) != null) {
            linearLayout.addView(viewInflate, 0);
        }
        super.initViewData();
        b1();
        d1();
    }

    @Override // com.transsnet.downloader.fragment.DownloadListBaseFragment, com.transsion.baseui.fragment.PageStatusFragment
    public void initViewModel() {
        super.initViewModel();
        s0().Q().j(this, new d(new Function1() { // from class: com.transsnet.downloader.fragment.r5
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return DownloadingListFragment.g1(this.f59307a, (List) obj);
            }
        }));
    }

    @Override // com.transsnet.downloader.fragment.DownloadListBaseFragment, com.transsion.baseui.fragment.PageStatusFragment
    public hj.b newLogViewConfig() {
        return null;
    }

    @Override // com.transsnet.downloader.fragment.DownloadListBaseFragment
    public void o0(com.transsnet.downloader.adapter.k adapter) {
        Intrinsics.h(adapter, "adapter");
        adapter.l(R$id.iv_more, R$id.iv_cover);
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        getMHandler().removeCallbacksAndMessages(null);
        Y0().x(this.downloadListener);
    }
}
