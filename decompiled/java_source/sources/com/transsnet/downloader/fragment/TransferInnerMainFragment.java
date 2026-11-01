package com.transsnet.downloader.fragment;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import androidx.appcompat.widget.AppCompatImageView;
import com.cloud.tmc.integration.params.TmcStartParams;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.transsion.transfer.impl.TaskState;
import com.transsion.transfer.impl.client.TransferClient;
import com.transsnet.downloader.widget.TransferBottomToolsView;
import com.transsnet.downloader.widget.TransferSelectSeriesListView;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.List;
import kotlin.Function;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000\u008d\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\n\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0007\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u001b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007*\u0001d\u0018\u0000 ,2\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004:\u0001nB\u0007¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\b\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\b\u0010\u0006J\u000f\u0010\t\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\t\u0010\u0006J\u000f\u0010\n\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\n\u0010\u0006J\u000f\u0010\u000b\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u000b\u0010\u0006J\u000f\u0010\f\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\f\u0010\u0006J\u000f\u0010\r\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\r\u0010\u0006J\u000f\u0010\u000e\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u000e\u0010\u0006J\u000f\u0010\u000f\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u000f\u0010\u0006J\u000f\u0010\u0010\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u0010\u0010\u0006J\u000f\u0010\u0011\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u0011\u0010\u0006J\u001f\u0010\u0015\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0014\u001a\u00020\u0012H\u0002¢\u0006\u0004\b\u0015\u0010\u0016J\u0017\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u0018\u001a\u00020\u0017H\u0016¢\u0006\u0004\b\u001a\u0010\u001bJ!\u0010 \u001a\u00020\u00072\u0006\u0010\u001d\u001a\u00020\u001c2\b\u0010\u001f\u001a\u0004\u0018\u00010\u001eH\u0016¢\u0006\u0004\b \u0010!J!\u0010\"\u001a\u00020\u00072\u0006\u0010\u001d\u001a\u00020\u001c2\b\u0010\u001f\u001a\u0004\u0018\u00010\u001eH\u0016¢\u0006\u0004\b\"\u0010!J\u000f\u0010#\u001a\u00020\u0007H\u0016¢\u0006\u0004\b#\u0010\u0006J\u0017\u0010&\u001a\u00020\u00072\u0006\u0010%\u001a\u00020$H\u0016¢\u0006\u0004\b&\u0010'J\u000f\u0010(\u001a\u00020\u0007H\u0016¢\u0006\u0004\b(\u0010\u0006J\u000f\u0010)\u001a\u00020\u0007H\u0016¢\u0006\u0004\b)\u0010\u0006J\u0017\u0010,\u001a\u00020\u00072\u0006\u0010+\u001a\u00020*H\u0016¢\u0006\u0004\b,\u0010-J\u000f\u0010.\u001a\u00020\u0007H\u0016¢\u0006\u0004\b.\u0010\u0006J\u000f\u0010/\u001a\u00020\u0007H\u0016¢\u0006\u0004\b/\u0010\u0006J\u0017\u00102\u001a\u00020\u00072\u0006\u00101\u001a\u000200H\u0016¢\u0006\u0004\b2\u00103J\u001f\u00104\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0014\u001a\u00020\u0012H\u0016¢\u0006\u0004\b4\u0010\u0016J7\u0010<\u001a\u00020\u00072\u0006\u00105\u001a\u0002002\u0006\u00106\u001a\u0002002\u0006\u00108\u001a\u0002072\u0006\u0010:\u001a\u0002092\u0006\u0010;\u001a\u000209H\u0016¢\u0006\u0004\b<\u0010=J/\u0010>\u001a\u00020\u00072\u0006\u00105\u001a\u0002002\u0006\u00106\u001a\u0002002\u0006\u0010:\u001a\u0002092\u0006\u0010;\u001a\u000209H\u0016¢\u0006\u0004\b>\u0010?J\u0017\u0010@\u001a\u00020\u00072\u0006\u00105\u001a\u000200H\u0016¢\u0006\u0004\b@\u00103J%\u0010D\u001a\u00020\u00072\u0006\u00105\u001a\u0002002\f\u0010C\u001a\b\u0012\u0004\u0012\u00020B0AH\u0016¢\u0006\u0004\bD\u0010EJA\u0010H\u001a\u00020\u00072\u0006\u00106\u001a\u0002002\u0006\u00108\u001a\u0002072\u0006\u0010:\u001a\u0002092\u0006\u0010;\u001a\u0002092\u0006\u0010F\u001a\u0002092\b\u0010G\u001a\u0004\u0018\u000100H\u0016¢\u0006\u0004\bH\u0010IJ\u0017\u0010J\u001a\u00020\u00072\u0006\u00106\u001a\u000200H\u0016¢\u0006\u0004\bJ\u00103J'\u0010K\u001a\u00020\u00072\u0006\u00106\u001a\u0002002\u0006\u0010:\u001a\u0002092\u0006\u0010;\u001a\u000209H\u0016¢\u0006\u0004\bK\u0010LJ\u0017\u0010N\u001a\u00020\u00072\u0006\u0010M\u001a\u00020\u0012H\u0016¢\u0006\u0004\bN\u0010OJ\u000f\u0010P\u001a\u00020\u0007H\u0016¢\u0006\u0004\bP\u0010\u0006J\u000f\u0010Q\u001a\u00020\u0007H\u0016¢\u0006\u0004\bQ\u0010\u0006J\u0017\u0010R\u001a\u00020\u00072\u0006\u00105\u001a\u000200H\u0016¢\u0006\u0004\bR\u00103J\u0017\u0010S\u001a\u00020\u00072\u0006\u00105\u001a\u000200H\u0016¢\u0006\u0004\bS\u00103R\u0018\u0010V\u001a\u0004\u0018\u00010*8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bT\u0010UR\u0014\u0010X\u001a\u0002008\u0002X\u0082D¢\u0006\u0006\n\u0004\bS\u0010WR\u0016\u0010Z\u001a\u00020$8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bD\u0010YR\u0016\u0010[\u001a\u0002008\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bJ\u0010WR\u001a\u0010]\u001a\b\u0012\u0004\u0012\u0002000A8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b@\u0010\\R\u0018\u0010a\u001a\u0004\u0018\u00010^8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b_\u0010`R\u0016\u0010c\u001a\u00020$8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bb\u0010YR\u0014\u0010g\u001a\u00020d8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\be\u0010fR\u0018\u0010k\u001a\u0004\u0018\u00010h8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bi\u0010jR\u0016\u0010m\u001a\u0002008\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bl\u0010W¨\u0006o"}, d2 = {"Lcom/transsnet/downloader/fragment/TransferInnerMainFragment;", "Lcom/transsnet/downloader/fragment/TransferMainFragment;", "Lcom/transsion/transfer/impl/i;", "Lcom/transsion/transfer/impl/f;", "Lhv/a;", "<init>", "()V", "", "initViewModel", "b1", "d1", "X0", "V0", "i1", "W0", "f1", "e1", "a1", "", "transmittingCount", "failCount", "g1", "(II)V", "Landroid/view/LayoutInflater;", "inflater", "Lpy/l0;", "E0", "(Landroid/view/LayoutInflater;)Lpy/l0;", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "Landroid/os/Bundle;", "savedInstanceState", "initView", "(Landroid/view/View;Landroid/os/Bundle;)V", "initData", "lazyLoadData", "", "hidden", "onHiddenChanged", "(Z)V", "onStop", "onResume", "Lhv/b;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "v", "(Lhv/b;)V", "L", "c", "", "name", "C", "(Ljava/lang/String;)V", "N", "clientIp", "remoteFilePath", "Lcom/transsion/transfer/impl/TaskState;", "state", "", "downloadedLength", "totalLength", "K", "(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/transfer/impl/TaskState;JJ)V", "h", "(Ljava/lang/String;Ljava/lang/String;JJ)V", TtmlNode.TAG_P, "", "Lcom/transsion/transfer/impl/entity/FileData;", "files", "n", "(Ljava/lang/String;Ljava/util/List;)V", "timeCost", "error", "I", "(Ljava/lang/String;Lcom/transsion/transfer/impl/TaskState;JJJLjava/lang/String;)V", "o", "B", "(Ljava/lang/String;JJ)V", "cmdNo", "j", "(I)V", "M", "onDestroy", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "m", "l", "Lhv/b;", "behaviorListener", "Ljava/lang/String;", "logMsgTag", "Z", "isDeviceConnect", "deviceName", "Ljava/util/List;", "clientNames", "Lcom/transsion/transfer/impl/h;", CampaignEx.JSON_KEY_AD_Q, "Lcom/transsion/transfer/impl/h;", "transferServer", CampaignEx.JSON_KEY_AD_R, "isServerConnected", "com/transsnet/downloader/fragment/TransferInnerMainFragment$serverConnectListener$1", "s", "Lcom/transsnet/downloader/fragment/TransferInnerMainFragment$serverConnectListener$1;", "serverConnectListener", "Lcom/transsion/transfer/impl/e;", "t", "Lcom/transsion/transfer/impl/e;", "transferClient", TmcStartParams.KEY_URL_SHORT, "curServerInfo", "a", "Downloader_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class TransferInnerMainFragment extends TransferMainFragment implements com.transsion.transfer.impl.i, com.transsion.transfer.impl.f, hv.a {

    /* JADX INFO: renamed from: v, reason: collision with root package name and from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: l, reason: collision with root package name and from kotlin metadata */
    private hv.b behaviorListener;

    /* JADX INFO: renamed from: n, reason: collision with root package name and from kotlin metadata */
    private boolean isDeviceConnect;

    /* JADX INFO: renamed from: q, reason: collision with root package name and from kotlin metadata */
    private com.transsion.transfer.impl.h transferServer;

    /* JADX INFO: renamed from: r, reason: collision with root package name and from kotlin metadata */
    private boolean isServerConnected;

    /* JADX INFO: renamed from: t, reason: collision with root package name and from kotlin metadata */
    private com.transsion.transfer.impl.e transferClient;

    /* JADX INFO: renamed from: m, reason: collision with root package name and from kotlin metadata */
    private final String logMsgTag = "内部";

    /* JADX INFO: renamed from: o, reason: collision with root package name and from kotlin metadata */
    private String deviceName = "";

    /* JADX INFO: renamed from: p, reason: collision with root package name and from kotlin metadata */
    private final List clientNames = new ArrayList();

    /* JADX INFO: renamed from: s, reason: collision with root package name and from kotlin metadata */
    private final TransferInnerMainFragment$serverConnectListener$1 serverConnectListener = new Function4() { // from class: com.transsnet.downloader.fragment.TransferInnerMainFragment$serverConnectListener$1
        public void a(String clientIp, String transferId, boolean z10, String str) {
            Intrinsics.h(clientIp, "clientIp");
            Intrinsics.h(transferId, "transferId");
            kotlinx.coroutines.k.d(kotlinx.coroutines.o0.a(kotlinx.coroutines.y0.c()), null, null, new TransferInnerMainFragment$serverConnectListener$1$invoke$1(this.f59098a, z10, null), 3, null);
        }

        @Override // kotlin.jvm.functions.Function4
        public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2, Object obj3, Object obj4) {
            a((String) obj, (String) obj2, ((Boolean) obj3).booleanValue(), (String) obj4);
            return Unit.f67061a;
        }
    };

    /* JADX INFO: renamed from: u, reason: collision with root package name and from kotlin metadata */
    private String curServerInfo = "";

    /* JADX INFO: renamed from: com.transsnet.downloader.fragment.TransferInnerMainFragment$a, reason: from kotlin metadata */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final TransferInnerMainFragment a() {
            TransferInnerMainFragment transferInnerMainFragment = new TransferInnerMainFragment();
            transferInnerMainFragment.setArguments(androidx.core.os.d.a());
            return transferInnerMainFragment;
        }
    }

    static final class b implements androidx.p009lifecycle.c0, FunctionAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final /* synthetic */ Function1 f59097a;

        b(Function1 function) {
            Intrinsics.h(function, "function");
            this.f59097a = function;
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        public final Function a() {
            return this.f59097a;
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
            this.f59097a.invoke(obj);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void V0() {
        TransferBottomToolsView transferBottomToolsView;
        py.l0 l0Var = (py.l0) getMViewBinding();
        if (l0Var == null || (transferBottomToolsView = l0Var.f72831d) == null) {
            return;
        }
        transferBottomToolsView.clearSelectStatus();
    }

    private final void W0() {
        lg.a.C0828a c0828a = lg.a.f68839a;
        lg.a.C0828a.f(c0828a, TransferBottomToolsView.TAG, this.logMsgTag + " TransferMainFragment, 已连接，初始化客户端", false, 4, null);
        try {
            Result.Companion companion = Result.INSTANCE;
            com.transsion.transfer.impl.e eVarI = TransferClient.f55665t.i();
            this.transferClient = eVarI;
            if (eVarI.h()) {
                lg.a.C0828a.f(c0828a, TransferBottomToolsView.TAG, this.logMsgTag + "  TransferMainFragment, 初始化客户端，hasConnected true", false, 4, null);
                eVarI.k(this);
                e1();
                f1();
            } else {
                a1();
            }
            Result.m454constructorimpl(eVarI);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m454constructorimpl(ResultKt.a(th2));
        }
    }

    private final void X0() {
        if (getContext() == null) {
            return;
        }
        lg.a.C0828a c0828a = lg.a.f68839a;
        lg.a.C0828a.v(c0828a, TransferBottomToolsView.TAG, this.logMsgTag + " initTransferServer", false, 4, null);
        iv.h.a aVar = iv.h.f65636s;
        Context context = getContext();
        Intrinsics.e(context);
        com.transsion.transfer.impl.h hVarB = aVar.b(context);
        this.transferServer = hVarB;
        hVarB.a(this);
        hVarB.b(this.serverConnectListener);
        boolean zIsEmpty = hVarB.c().isEmpty();
        boolean z10 = !zIsEmpty;
        lg.a.C0828a.f(c0828a, TransferBottomToolsView.TAG, this.logMsgTag + " --initTransferServer， isConnect：" + z10, false, 4, null);
        this.isServerConnected = z10;
        if (zIsEmpty) {
            d1();
        } else {
            b1();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final Unit Y0(TransferInnerMainFragment transferInnerMainFragment, String str) {
        TransferBottomToolsView transferBottomToolsView;
        py.l0 l0Var = (py.l0) transferInnerMainFragment.getMViewBinding();
        if (l0Var != null && (transferBottomToolsView = l0Var.f72831d) != null) {
            Intrinsics.e(str);
            transferBottomToolsView.changeStatus(str);
        }
        if (Intrinsics.c(str, TransferBottomToolsView.STATUS_DEFAULT)) {
            transferInnerMainFragment.j0().h0().q(0);
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final Unit Z0(TransferInnerMainFragment transferInnerMainFragment, Boolean bool) {
        TransferSelectSeriesListView transferSelectSeriesListView;
        py.l0 l0Var = (py.l0) transferInnerMainFragment.getMViewBinding();
        if (l0Var != null && (transferSelectSeriesListView = l0Var.f72832e) != null) {
            Intrinsics.e(bool);
            transferSelectSeriesListView.setVisibility(bool.booleanValue() ? 0 : 8);
        }
        return Unit.f67061a;
    }

    private final void a1() {
        kotlinx.coroutines.k.d(kotlinx.coroutines.o0.a(kotlinx.coroutines.y0.c()), null, null, new TransferInnerMainFragment$onClientDisconnect$1(this, null), 3, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public final void b1() {
        TransferBottomToolsView transferBottomToolsView;
        TransferBottomToolsView transferBottomToolsView2;
        TransferBottomToolsView transferBottomToolsView3;
        this.clientNames.clear();
        py.l0 l0Var = (py.l0) getMViewBinding();
        if (l0Var != null && (transferBottomToolsView3 = l0Var.f72831d) != null) {
            transferBottomToolsView3.showConnectUI(true);
        }
        py.l0 l0Var2 = (py.l0) getMViewBinding();
        if (l0Var2 != null && (transferBottomToolsView2 = l0Var2.f72831d) != null) {
            transferBottomToolsView2.setLeftIconStatus(TransferBottomToolsView.LEFT_STATUS_SEND);
        }
        py.l0 l0Var3 = (py.l0) getMViewBinding();
        if (l0Var3 != null && (transferBottomToolsView = l0Var3.f72831d) != null) {
            transferBottomToolsView.postDelayed(new Runnable() { // from class: com.transsnet.downloader.fragment.h7
                @Override // java.lang.Runnable
                public final void run() {
                    TransferInnerMainFragment.c1(this.f59213a);
                }
            }, 1000L);
        }
        lg.a.C0828a.v(lg.a.f68839a, TransferBottomToolsView.TAG, this.logMsgTag + " TransferConnect ,连接成功", false, 4, null);
        V0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void c1(TransferInnerMainFragment transferInnerMainFragment) {
        transferInnerMainFragment.i1();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public final void d1() {
        TransferBottomToolsView transferBottomToolsView;
        TransferBottomToolsView transferBottomToolsView2;
        TransferBottomToolsView transferBottomToolsView3;
        TransferBottomToolsView transferBottomToolsView4;
        py.l0 l0Var = (py.l0) getMViewBinding();
        if (l0Var != null && (transferBottomToolsView4 = l0Var.f72831d) != null) {
            transferBottomToolsView4.showConnectUI(true);
        }
        py.l0 l0Var2 = (py.l0) getMViewBinding();
        if (l0Var2 != null && (transferBottomToolsView3 = l0Var2.f72831d) != null) {
            transferBottomToolsView3.setLeftIconStatus(TransferBottomToolsView.LEFT_STATUS_CLOSE);
        }
        py.l0 l0Var3 = (py.l0) getMViewBinding();
        if (l0Var3 != null && (transferBottomToolsView2 = l0Var3.f72831d) != null) {
            String str = (String) CollectionsKt.k0(this.clientNames);
            if (str == null) {
                str = "";
            }
            transferBottomToolsView2.showConnectContent(false, str);
        }
        py.l0 l0Var4 = (py.l0) getMViewBinding();
        if (l0Var4 == null || (transferBottomToolsView = l0Var4.f72831d) == null) {
            return;
        }
        TransferBottomToolsView.setSendIconStatus$default(transferBottomToolsView, TransferBottomToolsView.SEND_STATUS_NONE, 0, 2, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void e1() {
        String strJ;
        TransferBottomToolsView transferBottomToolsView;
        TransferBottomToolsView transferBottomToolsView2;
        TransferBottomToolsView transferBottomToolsView3;
        TransferBottomToolsView transferBottomToolsView4;
        com.transsion.transfer.impl.e eVar = this.transferClient;
        if (eVar == null || (strJ = eVar.j()) == null) {
            strJ = "";
        }
        lg.a.C0828a.f(lg.a.f68839a, TransferBottomToolsView.TAG, this.logMsgTag + "  TransferMainFragment, 客户端，updateTransferConnectStatus，serverInfo:" + strJ, false, 4, null);
        if (strJ.length() > 0) {
            this.curServerInfo = strJ;
            py.l0 l0Var = (py.l0) getMViewBinding();
            if (l0Var != null && (transferBottomToolsView4 = l0Var.f72831d) != null) {
                transferBottomToolsView4.changeStatus(TransferBottomToolsView.STATUS_SEND);
            }
            py.l0 l0Var2 = (py.l0) getMViewBinding();
            if (l0Var2 != null && (transferBottomToolsView3 = l0Var2.f72831d) != null) {
                transferBottomToolsView3.setLeftIconStatus(TransferBottomToolsView.LEFT_STATUS_SEND);
            }
            py.l0 l0Var3 = (py.l0) getMViewBinding();
            if (l0Var3 != null && (transferBottomToolsView2 = l0Var3.f72831d) != null) {
                transferBottomToolsView2.showConnectUI(true);
            }
            py.l0 l0Var4 = (py.l0) getMViewBinding();
            if (l0Var4 == null || (transferBottomToolsView = l0Var4.f72831d) == null) {
                return;
            }
            transferBottomToolsView.showConnectContent(true, strJ);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void f1() {
        mv.a aVar = mv.a.f70013a;
        int size = aVar.g().size();
        int size2 = aVar.f().size();
        int size3 = aVar.e().size();
        lg.a.C0828a.v(lg.a.f68839a, TransferBottomToolsView.TAG, this.logMsgTag + "  onTaskStateChange 客户端 waitingCount:" + size + ",transferCount:" + size2, false, 4, null);
        g1(size + size2, size3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public final void g1(final int transmittingCount, final int failCount) {
        TransferBottomToolsView transferBottomToolsView;
        py.l0 l0Var = (py.l0) getMViewBinding();
        if (l0Var == null || (transferBottomToolsView = l0Var.f72831d) == null) {
            return;
        }
        transferBottomToolsView.post(new Runnable() { // from class: com.transsnet.downloader.fragment.i7
            @Override // java.lang.Runnable
            public final void run() {
                TransferInnerMainFragment.h1(this.f59224a, transmittingCount, failCount);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final void h1(TransferInnerMainFragment transferInnerMainFragment, int i11, int i12) {
        TransferBottomToolsView transferBottomToolsView;
        TransferBottomToolsView transferBottomToolsView2;
        TransferBottomToolsView transferBottomToolsView3;
        TransferBottomToolsView transferBottomToolsView4;
        lg.a.C0828a.v(lg.a.f68839a, TransferBottomToolsView.TAG, transferInnerMainFragment.logMsgTag + " onTaskStateChange, transmittingCount：" + i11 + ",failCount:" + i12 + " ", false, 4, null);
        if (i11 > 0) {
            if (i12 == 0) {
                py.l0 l0Var = (py.l0) transferInnerMainFragment.getMViewBinding();
                if (l0Var == null || (transferBottomToolsView4 = l0Var.f72831d) == null) {
                    return;
                }
                transferBottomToolsView4.setSendIconStatus(TransferBottomToolsView.SEND_STATUS_SENDING, i11);
                return;
            }
            py.l0 l0Var2 = (py.l0) transferInnerMainFragment.getMViewBinding();
            if (l0Var2 == null || (transferBottomToolsView3 = l0Var2.f72831d) == null) {
                return;
            }
            transferBottomToolsView3.setSendIconStatus(TransferBottomToolsView.SEND_STATUS_SENDING_FAIL, i11);
            return;
        }
        if (i12 > 0) {
            py.l0 l0Var3 = (py.l0) transferInnerMainFragment.getMViewBinding();
            if (l0Var3 == null || (transferBottomToolsView2 = l0Var3.f72831d) == null) {
                return;
            }
            TransferBottomToolsView.setSendIconStatus$default(transferBottomToolsView2, TransferBottomToolsView.SEND_STATUS_NONE_FAIL, 0, 2, null);
            return;
        }
        py.l0 l0Var4 = (py.l0) transferInnerMainFragment.getMViewBinding();
        if (l0Var4 == null || (transferBottomToolsView = l0Var4.f72831d) == null) {
            return;
        }
        TransferBottomToolsView.setSendIconStatus$default(transferBottomToolsView, TransferBottomToolsView.SEND_STATUS_NONE, 0, 2, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void i1() {
        TransferBottomToolsView transferBottomToolsView;
        TransferBottomToolsView transferBottomToolsView2;
        if (this.clientNames.isEmpty() && this.isServerConnected) {
            com.transsion.transfer.impl.h hVar = this.transferServer;
            if (hVar != null) {
                this.clientNames.addAll(hVar.i());
            }
            lg.a.C0828a.f(lg.a.f68839a, TransferBottomToolsView.TAG, this.logMsgTag + " updateTransferServerNameInfo ," + this.clientNames, false, 4, null);
            py.l0 l0Var = (py.l0) getMViewBinding();
            if (l0Var != null && (transferBottomToolsView2 = l0Var.f72831d) != null) {
                transferBottomToolsView2.showConnectUI(true);
            }
            py.l0 l0Var2 = (py.l0) getMViewBinding();
            if (l0Var2 == null || (transferBottomToolsView = l0Var2.f72831d) == null) {
                return;
            }
            String str = (String) CollectionsKt.k0(this.clientNames);
            if (str == null) {
                str = "";
            }
            transferBottomToolsView.showConnectContent(true, str);
        }
    }

    private final void initViewModel() {
        j0().a0().j(this, new b(new Function1() { // from class: com.transsnet.downloader.fragment.f7
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return TransferInnerMainFragment.Y0(this.f59193a, (String) obj);
            }
        }));
        k0().N();
        j0().c0().j(this, new b(new Function1() { // from class: com.transsnet.downloader.fragment.g7
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return TransferInnerMainFragment.Z0(this.f59203a, (Boolean) obj);
            }
        }));
    }

    @Override // com.transsion.transfer.impl.f
    public void B(String remoteFilePath, long downloadedLength, long totalLength) {
        Intrinsics.h(remoteFilePath, "remoteFilePath");
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // hv.a
    public void C(String name) {
        TransferBottomToolsView transferBottomToolsView;
        Intrinsics.h(name, "name");
        lg.a.C0828a.v(lg.a.f68839a, TransferBottomToolsView.TAG, this.logMsgTag + " ====== setDeviceInfo ,连接成功setDeviceInfo ,连接成功:" + name, false, 4, null);
        this.deviceName = name;
        py.l0 l0Var = (py.l0) getMViewBinding();
        if (l0Var == null || (transferBottomToolsView = l0Var.f72831d) == null) {
            return;
        }
        transferBottomToolsView.showConnectContent(this.isDeviceConnect, name);
    }

    @Override // com.transsnet.downloader.fragment.TransferMainFragment, com.transsion.baseui.fragment.BaseFragment
    /* JADX INFO: renamed from: E0 */
    public py.l0 getViewBinding(LayoutInflater inflater) {
        Intrinsics.h(inflater, "inflater");
        py.l0 l0VarC = py.l0.c(inflater);
        Intrinsics.g(l0VarC, "inflate(...)");
        return l0VarC;
    }

    @Override // com.transsion.transfer.impl.f
    public void I(String remoteFilePath, TaskState state, long downloadedLength, long totalLength, long timeCost, String error) {
        Intrinsics.h(remoteFilePath, "remoteFilePath");
        Intrinsics.h(state, "state");
        kotlinx.coroutines.k.d(kotlinx.coroutines.o0.a(kotlinx.coroutines.y0.c()), null, null, new TransferInnerMainFragment$onTaskStateChange$3(state, this, null), 3, null);
    }

    @Override // com.transsion.transfer.impl.i
    public void K(String clientIp, String remoteFilePath, TaskState state, long downloadedLength, long totalLength) {
        com.transsion.transfer.impl.h hVar;
        Intrinsics.h(clientIp, "clientIp");
        Intrinsics.h(remoteFilePath, "remoteFilePath");
        Intrinsics.h(state, "state");
        if (this.clientNames.isEmpty() && (hVar = this.transferServer) != null) {
            this.clientNames.addAll(hVar.i());
        }
        kotlinx.coroutines.k.d(kotlinx.coroutines.o0.a(kotlinx.coroutines.y0.c()), null, null, new TransferInnerMainFragment$onTaskStateChange$2(this, state, null), 3, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // hv.a
    public void L() {
        py.l0 l0Var;
        TransferBottomToolsView transferBottomToolsView;
        TransferBottomToolsView transferBottomToolsView2;
        TransferBottomToolsView transferBottomToolsView3;
        TransferBottomToolsView transferBottomToolsView4;
        this.isDeviceConnect = true;
        py.l0 l0Var2 = (py.l0) getMViewBinding();
        if (l0Var2 != null && (transferBottomToolsView4 = l0Var2.f72831d) != null) {
            transferBottomToolsView4.setLeftIconStatus(TransferBottomToolsView.LEFT_STATUS_SEND);
        }
        py.l0 l0Var3 = (py.l0) getMViewBinding();
        if (l0Var3 != null && (transferBottomToolsView3 = l0Var3.f72831d) != null) {
            TransferBottomToolsView.setSendIconStatus$default(transferBottomToolsView3, TransferBottomToolsView.SEND_STATUS_NONE, 0, 2, null);
        }
        py.l0 l0Var4 = (py.l0) getMViewBinding();
        if (l0Var4 != null && (transferBottomToolsView2 = l0Var4.f72831d) != null) {
            transferBottomToolsView2.showConnectUI(true);
        }
        if (this.deviceName.length() > 0 && (l0Var = (py.l0) getMViewBinding()) != null && (transferBottomToolsView = l0Var.f72831d) != null) {
            transferBottomToolsView.showConnectContent(true, this.deviceName);
        }
        lg.a.C0828a.r(lg.a.f68839a, TransferBottomToolsView.TAG, new String[]{this.logMsgTag + " ====== onConnect ,连接成功" + this.deviceName}, false, 4, null);
        if (!isAdded() || isDetached() || isRemoving()) {
            return;
        }
        V0();
    }

    @Override // com.transsion.transfer.impl.f
    public void M() {
        a1();
    }

    @Override // hv.a
    public void N(int transmittingCount, int failCount) {
        kotlinx.coroutines.k.d(kotlinx.coroutines.o0.a(kotlinx.coroutines.y0.c()), null, null, new TransferInnerMainFragment$onStatusChange$1(this, transmittingCount, failCount, null), 3, null);
        if (!isAdded() || isDetached() || isRemoving()) {
            return;
        }
        k0().S();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // hv.a
    public void c() {
        TransferBottomToolsView transferBottomToolsView;
        py.l0 l0Var;
        TransferBottomToolsView transferBottomToolsView2;
        TransferBottomToolsView transferBottomToolsView3;
        TransferBottomToolsView transferBottomToolsView4;
        this.isDeviceConnect = false;
        lg.a.C0828a.r(lg.a.f68839a, TransferBottomToolsView.TAG, new String[]{this.logMsgTag + " ====== onDisconnect onDisconnect: " + this.deviceName}, false, 4, null);
        py.l0 l0Var2 = (py.l0) getMViewBinding();
        if (l0Var2 != null && (transferBottomToolsView4 = l0Var2.f72831d) != null) {
            transferBottomToolsView4.setLeftIconStatus(TransferBottomToolsView.LEFT_STATUS_CLOSE);
        }
        py.l0 l0Var3 = (py.l0) getMViewBinding();
        if (l0Var3 != null && (transferBottomToolsView3 = l0Var3.f72831d) != null) {
            transferBottomToolsView3.showConnectUI(true);
        }
        if (this.deviceName.length() > 0 && (l0Var = (py.l0) getMViewBinding()) != null && (transferBottomToolsView2 = l0Var.f72831d) != null) {
            transferBottomToolsView2.showConnectContent(false, this.deviceName);
        }
        py.l0 l0Var4 = (py.l0) getMViewBinding();
        if (l0Var4 == null || (transferBottomToolsView = l0Var4.f72831d) == null) {
            return;
        }
        TransferBottomToolsView.setSendIconStatus$default(transferBottomToolsView, TransferBottomToolsView.SEND_STATUS_NONE, 0, 2, null);
    }

    @Override // com.transsion.transfer.impl.i
    public void d(String clientIp) {
        Intrinsics.h(clientIp, "clientIp");
    }

    @Override // com.transsion.transfer.impl.i
    public void h(String clientIp, String remoteFilePath, long downloadedLength, long totalLength) {
        Intrinsics.h(clientIp, "clientIp");
        Intrinsics.h(remoteFilePath, "remoteFilePath");
    }

    @Override // com.transsnet.downloader.fragment.TransferMainFragment, com.transsnet.downloader.fragment.DownloadTabBaseFragment, com.transsion.baseui.fragment.BaseFragment
    public void initData(View view, Bundle savedInstanceState) {
        Intrinsics.h(view, "view");
        super.initData(view, savedInstanceState);
        initViewModel();
        lg.a.C0828a.r(lg.a.f68839a, TransferBottomToolsView.TAG, new String[]{this.logMsgTag + " TransferMainFragment, initData，内部 监听"}, false, 4, null);
        X0();
        W0();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.transsnet.downloader.fragment.TransferMainFragment, com.transsnet.downloader.fragment.DownloadTabBaseFragment, com.transsion.baseui.fragment.BaseFragment
    public void initView(View view, Bundle savedInstanceState) {
        TransferBottomToolsView transferBottomToolsView;
        TransferBottomToolsView transferBottomToolsView2;
        TransferBottomToolsView transferBottomToolsView3;
        AppCompatImageView appCompatImageView;
        Intrinsics.h(view, "view");
        super.initView(view, savedInstanceState);
        py.l0 l0Var = (py.l0) getMViewBinding();
        if (l0Var != null && (appCompatImageView = l0Var.f72833f) != null) {
            jg.c.e(appCompatImageView);
        }
        py.l0 l0Var2 = (py.l0) getMViewBinding();
        if (l0Var2 != null && (transferBottomToolsView3 = l0Var2.f72831d) != null) {
            transferBottomToolsView3.setPageStatus(false);
        }
        py.l0 l0Var3 = (py.l0) getMViewBinding();
        if (l0Var3 != null && (transferBottomToolsView2 = l0Var3.f72831d) != null) {
            transferBottomToolsView2.setParentFragment(this);
        }
        py.l0 l0Var4 = (py.l0) getMViewBinding();
        if (l0Var4 == null || (transferBottomToolsView = l0Var4.f72831d) == null) {
            return;
        }
        transferBottomToolsView.setBehaviorListener(this.behaviorListener);
    }

    @Override // com.transsion.transfer.impl.f
    public void j(int cmdNo) {
    }

    @Override // com.transsnet.downloader.fragment.TransferMainFragment, com.transsion.baseui.fragment.BaseFragment
    public void lazyLoadData() {
    }

    @Override // com.transsion.transfer.impl.i
    public void m(String clientIp) {
        Intrinsics.h(clientIp, "clientIp");
    }

    @Override // com.transsion.transfer.impl.i
    public void n(String clientIp, List files) {
        Intrinsics.h(clientIp, "clientIp");
        Intrinsics.h(files, "files");
    }

    @Override // com.transsion.transfer.impl.f
    public void o(String remoteFilePath) {
        Intrinsics.h(remoteFilePath, "remoteFilePath");
    }

    @Override // com.transsnet.downloader.fragment.TransferMainFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        com.transsion.transfer.impl.h hVar = this.transferServer;
        if (hVar != null) {
            hVar.g(this);
        }
        com.transsion.transfer.impl.h hVar2 = this.transferServer;
        if (hVar2 != null) {
            hVar2.h(this.serverConnectListener);
        }
        com.transsion.transfer.impl.e eVar = this.transferClient;
        if (eVar != null) {
            eVar.g(this);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.transsnet.downloader.fragment.TransferMainFragment, androidx.fragment.app.Fragment
    public void onHiddenChanged(boolean hidden) {
        TransferBottomToolsView transferBottomToolsView;
        super.onHiddenChanged(hidden);
        py.l0 l0Var = (py.l0) getMViewBinding();
        if (l0Var == null || (transferBottomToolsView = l0Var.f72831d) == null) {
            return;
        }
        transferBottomToolsView.onPageNotVisible();
    }

    @Override // com.transsion.baseui.fragment.BaseFragment, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        i1();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.transsnet.downloader.fragment.TransferMainFragment, androidx.fragment.app.Fragment
    public void onStop() {
        TransferBottomToolsView transferBottomToolsView;
        super.onStop();
        py.l0 l0Var = (py.l0) getMViewBinding();
        if (l0Var == null || (transferBottomToolsView = l0Var.f72831d) == null) {
            return;
        }
        transferBottomToolsView.onPageNotVisible();
    }

    @Override // com.transsion.transfer.impl.i
    public void p(String clientIp) {
        Intrinsics.h(clientIp, "clientIp");
    }

    @Override // hv.a
    public void v(hv.b listener) {
        Intrinsics.h(listener, "listener");
        this.behaviorListener = listener;
    }
}
