package com.transsnet.downloader.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ProgressBar;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Group;
import androidx.core.app.NotificationCompat;
import androidx.fragment.app.FragmentActivity;
import com.blankj.utilcode.util.Utils;
import com.bumptech.glide.Glide;
import com.cloud.tmc.integration.params.TmcStartParams;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.therouter.TheRouter;
import com.tn.lib.widget.R$color;
import com.transsion.push.PushConstants;
import com.transsion.transfer.itransfer.ITransferApi;
import com.transsnet.downloader.R$drawable;
import com.transsnet.downloader.R$layout;
import com.transsnet.downloader.R$mipmap;
import com.transsnet.downloader.R$string;
import com.transsnet.downloader.fragment.TransferMainFragment;
import com.transsnet.downloader.util.DownloadTransferUtils;
import com.transsnet.downloader.viewmodel.DownloadViewModel;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Function;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import py.k1;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0014\u0018\u0000 Q2\u00020\u0001:\u0001;B\u0011\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005B\u001b\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\u0004\u0010\bB#\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u0004\u0010\u000bJ\u000f\u0010\r\u001a\u00020\fH\u0002¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\fH\u0002¢\u0006\u0004\b\u000f\u0010\u000eJ\u0017\u0010\u0011\u001a\u00020\f2\u0006\u0010\u0010\u001a\u00020\tH\u0002¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\fH\u0002¢\u0006\u0004\b\u0013\u0010\u000eJ\u000f\u0010\u0014\u001a\u00020\fH\u0002¢\u0006\u0004\b\u0014\u0010\u000eJ\u000f\u0010\u0015\u001a\u00020\fH\u0002¢\u0006\u0004\b\u0015\u0010\u000eJ\u0017\u0010\u0018\u001a\u00020\f2\u0006\u0010\u0017\u001a\u00020\u0016H\u0002¢\u0006\u0004\b\u0018\u0010\u0019J\u000f\u0010\u001a\u001a\u00020\u0016H\u0002¢\u0006\u0004\b\u001a\u0010\u001bJ\u000f\u0010\u001c\u001a\u00020\fH\u0002¢\u0006\u0004\b\u001c\u0010\u000eJ\u0017\u0010\u001d\u001a\u00020\f2\u0006\u0010\u0017\u001a\u00020\u0016H\u0002¢\u0006\u0004\b\u001d\u0010\u0019J\u0017\u0010 \u001a\u00020\f2\u0006\u0010\u001f\u001a\u00020\u001eH\u0002¢\u0006\u0004\b \u0010!J\u000f\u0010\"\u001a\u00020\fH\u0002¢\u0006\u0004\b\"\u0010\u000eJ\u000f\u0010#\u001a\u00020\fH\u0002¢\u0006\u0004\b#\u0010\u000eJ\u0015\u0010%\u001a\u00020\f2\u0006\u0010$\u001a\u00020\u0016¢\u0006\u0004\b%\u0010\u0019J\u0015\u0010(\u001a\u00020\f2\u0006\u0010'\u001a\u00020&¢\u0006\u0004\b(\u0010)J\u0017\u0010,\u001a\u00020\f2\b\u0010+\u001a\u0004\u0018\u00010*¢\u0006\u0004\b,\u0010-J\r\u0010.\u001a\u00020\f¢\u0006\u0004\b.\u0010\u000eJ\u0015\u0010/\u001a\u00020\f2\u0006\u0010\u001f\u001a\u00020\u001e¢\u0006\u0004\b/\u0010!J\r\u00100\u001a\u00020\f¢\u0006\u0004\b0\u0010\u000eJ\u0015\u00101\u001a\u00020\f2\u0006\u0010\u001f\u001a\u00020\u001e¢\u0006\u0004\b1\u0010!J\u001f\u00103\u001a\u00020\f2\u0006\u0010\u001f\u001a\u00020\u001e2\b\b\u0002\u00102\u001a\u00020\t¢\u0006\u0004\b3\u00104J\u0015\u00105\u001a\u00020\f2\u0006\u0010\u0017\u001a\u00020\u0016¢\u0006\u0004\b5\u0010\u0019J\u001d\u00108\u001a\u00020\f2\u0006\u00106\u001a\u00020\u00162\u0006\u00107\u001a\u00020\u001e¢\u0006\u0004\b8\u00109R\u0014\u0010=\u001a\u00020:8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b;\u0010<R\u0014\u0010A\u001a\u00020>8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b?\u0010@R\u0016\u0010C\u001a\u00020\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bB\u0010\u001aR\u0016\u0010F\u001a\u00020\u001e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bD\u0010ER\u0016\u0010$\u001a\u00020\u00168\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bG\u0010HR\u0018\u0010K\u001a\u0004\u0018\u00010*8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bI\u0010JR\u0018\u0010N\u001a\u0004\u0018\u00010&8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bL\u0010MR\u0016\u0010P\u001a\u00020\u00168\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bO\u0010H¨\u0006R"}, d2 = {"Lcom/transsnet/downloader/widget/TransferBottomToolsView;", "Landroidx/constraintlayout/widget/ConstraintLayout;", "Landroid/content/Context;", "context", "<init>", "(Landroid/content/Context;)V", "Landroid/util/AttributeSet;", "attrs", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "", "res", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "", "F", "()V", TmcStartParams.KEY_URL_SHORT, "count", "setSendSize", "(I)V", "J", "N", "O", "", PushConstants.PUSH_SERVICE_TYPE_SHOW, "setSendLoadingVisibility", "(Z)V", "I", "()Z", "M", "setLeftUIVisibility", "", NotificationCompat.CATEGORY_STATUS, "Q", "(Ljava/lang/String;)V", "L", "K", "isDownloadTab", "setPageStatus", "Lcom/transsnet/downloader/fragment/TransferMainFragment;", "fragment", "setParentFragment", "(Lcom/transsnet/downloader/fragment/TransferMainFragment;)V", "Lhv/b;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "setBehaviorListener", "(Lhv/b;)V", "onPageNotVisible", "changeStatus", "clearSelectStatus", "setLeftIconStatus", "sendingCount", "setSendIconStatus", "(Ljava/lang/String;I)V", "showConnectUI", "connect", "clientPhoneName", "showConnectContent", "(ZLjava/lang/String;)V", "Lpy/k1;", "a", "Lpy/k1;", "viewBinding", "Lcom/transsnet/downloader/viewmodel/DownloadViewModel;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lcom/transsnet/downloader/viewmodel/DownloadViewModel;", "downloadViewModel", "c", "transferTabIndex", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Ljava/lang/String;", "curLeftStatus", "e", "Z", "f", "Lhv/b;", "behaviorListener", "g", "Lcom/transsnet/downloader/fragment/TransferMainFragment;", "parentFragment", "h", "isPhoneConnected", "Companion", "Downloader_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class TransferBottomToolsView extends ConstraintLayout {
    public static final String LEFT_STATUS_CLOSE = "icon_status_close";
    public static final String LEFT_STATUS_SEND = "icon_status_send";
    public static final String SEND_STATUS_NONE = "SEND_STATUS_NONE";
    public static final String SEND_STATUS_NONE_FAIL = "SEND_STATUS_NONE_FAIL";
    public static final String SEND_STATUS_SENDING = "SEND_STATUS_SENDING";
    public static final String SEND_STATUS_SENDING_FAIL = "SEND_STATUS_SENDING_FAIL";
    public static final String STATUS_DEFAULT = "status_default";
    public static final String STATUS_SEND = "status_send";
    public static final String TAG = "Transfer_d";

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private final k1 viewBinding;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private final DownloadViewModel downloadViewModel;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private int transferTabIndex;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private String curLeftStatus;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private boolean isDownloadTab;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private hv.b behaviorListener;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    private TransferMainFragment parentFragment;

    /* JADX INFO: renamed from: h, reason: collision with root package name and from kotlin metadata */
    private boolean isPhoneConnected;

    static final class b implements androidx.p009lifecycle.c0, FunctionAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final /* synthetic */ Function1 f60175a;

        b(Function1 function) {
            Intrinsics.h(function, "function");
            this.f60175a = function;
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        public final Function a() {
            return this.f60175a;
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
            this.f60175a.invoke(obj);
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public TransferBottomToolsView(Context context) {
        this(context, null);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public TransferBottomToolsView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TransferBottomToolsView(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        Intrinsics.h(context, "context");
        this.curLeftStatus = LEFT_STATUS_CLOSE;
        this.isDownloadTab = true;
        View.inflate(getContext(), R$layout.view_transfer_bottom_tools, this);
        k1 k1VarA = k1.a(this);
        Intrinsics.g(k1VarA, "bind(...)");
        this.viewBinding = k1VarA;
        Context context2 = getContext();
        Intrinsics.f(context2, "null cannot be cast to non-null type androidx.fragment.app.FragmentActivity");
        this.downloadViewModel = (DownloadViewModel) new androidx.p009lifecycle.v0((FragmentActivity) context2).a(DownloadViewModel.class);
        F();
        u();
        this.isPhoneConnected = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void A(TransferBottomToolsView transferBottomToolsView, View view) {
        transferBottomToolsView.N();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void B(TransferBottomToolsView transferBottomToolsView, View view) {
        transferBottomToolsView.N();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void C(TransferBottomToolsView transferBottomToolsView, View view) {
        if (com.transsion.baseui.util.c.f43504a.a(transferBottomToolsView.viewBinding.f72812x.hashCode(), 2000L)) {
            return;
        }
        transferBottomToolsView.O();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void D(TransferBottomToolsView transferBottomToolsView, View view) {
        if (com.transsion.baseui.util.c.f43504a.a(transferBottomToolsView.viewBinding.f72813y.hashCode(), 2000L)) {
            return;
        }
        transferBottomToolsView.O();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void E(TransferBottomToolsView transferBottomToolsView, View view) {
        if (com.transsion.baseui.util.c.f43504a.a(transferBottomToolsView.viewBinding.f72811w.hashCode(), 2000L)) {
            return;
        }
        transferBottomToolsView.M();
    }

    private final void F() {
        androidx.p009lifecycle.b0 b0VarH0 = this.downloadViewModel.h0();
        Context context = getContext();
        Intrinsics.f(context, "null cannot be cast to non-null type androidx.fragment.app.FragmentActivity");
        b0VarH0.j((FragmentActivity) context, new b(new Function1() { // from class: com.transsnet.downloader.widget.e0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return TransferBottomToolsView.G(this.f60199a, (Integer) obj);
            }
        }));
        androidx.p009lifecycle.b0 b0VarK0 = this.downloadViewModel.k0();
        Context context2 = getContext();
        Intrinsics.f(context2, "null cannot be cast to non-null type androidx.fragment.app.FragmentActivity");
        b0VarK0.j((FragmentActivity) context2, new b(new Function1() { // from class: com.transsnet.downloader.widget.f0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return TransferBottomToolsView.H(this.f60202a, (Integer) obj);
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit G(TransferBottomToolsView transferBottomToolsView, Integer num) {
        Intrinsics.e(num);
        transferBottomToolsView.setSendSize(num.intValue());
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit H(TransferBottomToolsView transferBottomToolsView, Integer num) {
        Intrinsics.e(num);
        transferBottomToolsView.transferTabIndex = num.intValue();
        return Unit.f67061a;
    }

    private final boolean I() {
        ProgressBar pbLoading = this.viewBinding.f72800l;
        Intrinsics.g(pbLoading, "pbLoading");
        return pbLoading.getVisibility() == 0;
    }

    private final void J() {
        N();
        changeStatus(STATUS_DEFAULT);
    }

    private final void K() {
        hv.b bVar = this.behaviorListener;
        if (bVar != null) {
            bVar.c();
        }
    }

    private final void L() {
        hv.b bVar;
        if (this.isDownloadTab || (bVar = this.behaviorListener) == null) {
            return;
        }
        bVar.a();
    }

    private final void M() {
        ITransferApi iTransferApi = (ITransferApi) TheRouter.d(ITransferApi.class, new Object[0]);
        if (iTransferApi != null) {
            Object context = getContext();
            Intrinsics.f(context, "null cannot be cast to non-null type androidx.lifecycle.LifecycleOwner");
            iTransferApi.b((androidx.p009lifecycle.u) context);
        }
    }

    private final void N() {
        clearSelectStatus();
    }

    private final void O() {
        if (I()) {
            lg.a.f68839a.x(TAG, "onSendClick, isSendLoading-------", true);
            uh.b.f76753a.d(R$string.download_transfer_sending);
            return;
        }
        androidx.p009lifecycle.b0 b0VarF0 = this.downloadViewModel.f0(this.transferTabIndex);
        List list = b0VarF0 != null ? (List) b0VarF0.f() : null;
        lg.a.f68839a.c(TAG, "onSendClick, size:" + (list != null ? Integer.valueOf(list.size()) : null), true);
        List list2 = list;
        if (list2 != null && !list2.isEmpty()) {
            setSendLoadingVisibility(true);
        }
        final long jCurrentTimeMillis = System.currentTimeMillis();
        DownloadTransferUtils downloadTransferUtils = DownloadTransferUtils.f59899a;
        Context context = getContext();
        Intrinsics.g(context, "getContext(...)");
        downloadTransferUtils.e(context, list, new Function1() { // from class: com.transsnet.downloader.widget.g0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return TransferBottomToolsView.P(this.f60204a, jCurrentTimeMillis, (List) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit P(TransferBottomToolsView transferBottomToolsView, long j11, List fileDataList) {
        Intrinsics.h(fileDataList, "fileDataList");
        transferBottomToolsView.setSendLoadingVisibility(false);
        lg.a.C0828a c0828a = lg.a.f68839a;
        c0828a.u(TAG, "transform data duration:" + (System.currentTimeMillis() - j11), true);
        c0828a.c(TAG, "onSendClick--2, isDownloadTab:" + transferBottomToolsView.isDownloadTab + ", size:" + fileDataList.size() + ",data:" + fileDataList, true);
        if (transferBottomToolsView.isDownloadTab) {
            mv.b.f70015a.j(fileDataList);
            ITransferApi iTransferApi = (ITransferApi) TheRouter.d(ITransferApi.class, new Object[0]);
            if (iTransferApi != null) {
                Object context = transferBottomToolsView.getContext();
                Intrinsics.f(context, "null cannot be cast to non-null type androidx.lifecycle.LifecycleOwner");
                iTransferApi.a((androidx.p009lifecycle.u) context);
            }
        } else {
            mv.b.f70015a.a(fileDataList);
            hv.b bVar = transferBottomToolsView.behaviorListener;
            if (bVar != null) {
                bVar.b();
            }
        }
        transferBottomToolsView.clearSelectStatus();
        return Unit.f67061a;
    }

    private final void Q(String status) {
        if (Intrinsics.c(status, LEFT_STATUS_CLOSE)) {
            AppCompatTextView tvClose = this.viewBinding.f72802n;
            Intrinsics.g(tvClose, "tvClose");
            jg.c.k(tvClose);
            AppCompatImageView ivClose = this.viewBinding.f72796h;
            Intrinsics.g(ivClose, "ivClose");
            jg.c.k(ivClose);
            Group groupList = this.viewBinding.f72793e;
            Intrinsics.g(groupList, "groupList");
            jg.c.g(groupList);
            return;
        }
        AppCompatTextView tvClose2 = this.viewBinding.f72802n;
        Intrinsics.g(tvClose2, "tvClose");
        jg.c.h(tvClose2);
        AppCompatImageView ivClose2 = this.viewBinding.f72796h;
        Intrinsics.g(ivClose2, "ivClose");
        jg.c.h(ivClose2);
        Group groupList2 = this.viewBinding.f72793e;
        Intrinsics.g(groupList2, "groupList");
        jg.c.k(groupList2);
    }

    private final void setLeftUIVisibility(boolean show) {
        if (show) {
            Q(this.curLeftStatus);
            return;
        }
        AppCompatTextView tvClose = this.viewBinding.f72802n;
        Intrinsics.g(tvClose, "tvClose");
        jg.c.g(tvClose);
        AppCompatImageView ivClose = this.viewBinding.f72796h;
        Intrinsics.g(ivClose, "ivClose");
        jg.c.g(ivClose);
        Group groupList = this.viewBinding.f72793e;
        Intrinsics.g(groupList, "groupList");
        jg.c.g(groupList);
    }

    public static /* synthetic */ void setSendIconStatus$default(TransferBottomToolsView transferBottomToolsView, String str, int i11, int i12, Object obj) {
        if ((i12 & 2) != 0) {
            i11 = 0;
        }
        transferBottomToolsView.setSendIconStatus(str, i11);
    }

    private final void setSendLoadingVisibility(boolean show) {
        ProgressBar pbLoading = this.viewBinding.f72800l;
        Intrinsics.g(pbLoading, "pbLoading");
        pbLoading.setVisibility(show ? 0 : 8);
        AppCompatTextView tvSend = this.viewBinding.f72805q;
        Intrinsics.g(tvSend, "tvSend");
        tvSend.setVisibility(show ? 8 : 0);
    }

    private final void setSendSize(int count) {
        String string = Utils.a().getString(R$string.download_transfer_btn_send);
        Intrinsics.g(string, "getString(...)");
        AppCompatTextView appCompatTextView = this.viewBinding.f72805q;
        if (count > 0) {
            string = string + " (" + (count > 99 ? "99+" : Integer.valueOf(count)) + ")";
        }
        appCompatTextView.setText(string);
    }

    private final void u() {
        this.viewBinding.f72809u.setOnClickListener(new View.OnClickListener() { // from class: com.transsnet.downloader.widget.d0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TransferBottomToolsView.x(this.f60196a, view);
            }
        });
        this.viewBinding.f72802n.setOnClickListener(new View.OnClickListener() { // from class: com.transsnet.downloader.widget.h0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TransferBottomToolsView.y(this.f60207a, view);
            }
        });
        this.viewBinding.f72796h.setOnClickListener(new View.OnClickListener() { // from class: com.transsnet.downloader.widget.i0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TransferBottomToolsView.z(this.f60209a, view);
            }
        });
        this.viewBinding.f72804p.setOnClickListener(new View.OnClickListener() { // from class: com.transsnet.downloader.widget.j0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TransferBottomToolsView.A(this.f60211a, view);
            }
        });
        this.viewBinding.f72797i.setOnClickListener(new View.OnClickListener() { // from class: com.transsnet.downloader.widget.k0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TransferBottomToolsView.B(this.f60212a, view);
            }
        });
        this.viewBinding.f72812x.setOnClickListener(new View.OnClickListener() { // from class: com.transsnet.downloader.widget.l0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TransferBottomToolsView.C(this.f60214a, view);
            }
        });
        this.viewBinding.f72813y.setOnClickListener(new View.OnClickListener() { // from class: com.transsnet.downloader.widget.m0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TransferBottomToolsView.D(this.f60216a, view);
            }
        });
        this.viewBinding.f72811w.setOnClickListener(new View.OnClickListener() { // from class: com.transsnet.downloader.widget.n0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TransferBottomToolsView.E(this.f60218a, view);
            }
        });
        this.viewBinding.f72798j.setOnClickListener(new View.OnClickListener() { // from class: com.transsnet.downloader.widget.o0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TransferBottomToolsView.v(this.f60221a, view);
            }
        });
        this.viewBinding.f72808t.setOnClickListener(new View.OnClickListener() { // from class: com.transsnet.downloader.widget.p0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TransferBottomToolsView.w(this.f60223a, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void v(TransferBottomToolsView transferBottomToolsView, View view) {
        transferBottomToolsView.L();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void w(TransferBottomToolsView transferBottomToolsView, View view) {
        transferBottomToolsView.L();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void x(TransferBottomToolsView transferBottomToolsView, View view) {
        transferBottomToolsView.K();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void y(TransferBottomToolsView transferBottomToolsView, View view) {
        transferBottomToolsView.J();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void z(TransferBottomToolsView transferBottomToolsView, View view) {
        transferBottomToolsView.J();
    }

    public final void changeStatus(String status) {
        Intrinsics.h(status, "status");
        if (Intrinsics.c(status, STATUS_SEND)) {
            Group groupSend = this.viewBinding.f72794f;
            Intrinsics.g(groupSend, "groupSend");
            jg.c.k(groupSend);
            setLeftUIVisibility(true);
            Group groupDef = this.viewBinding.f72792d;
            Intrinsics.g(groupDef, "groupDef");
            jg.c.g(groupDef);
            return;
        }
        Group groupDef2 = this.viewBinding.f72792d;
        Intrinsics.g(groupDef2, "groupDef");
        jg.c.k(groupDef2);
        Group groupSend2 = this.viewBinding.f72794f;
        Intrinsics.g(groupSend2, "groupSend");
        jg.c.g(groupSend2);
        setLeftUIVisibility(false);
    }

    public final void clearSelectStatus() {
        Iterator it = this.downloadViewModel.g0().entrySet().iterator();
        while (it.hasNext()) {
            ((androidx.p009lifecycle.b0) ((Map.Entry) it.next()).getValue()).q(new ArrayList());
        }
        this.downloadViewModel.e0().q(Boolean.TRUE);
        this.downloadViewModel.c0().q(Boolean.FALSE);
        this.downloadViewModel.h0().q(0);
    }

    public final void onPageNotVisible() {
    }

    public final void setBehaviorListener(hv.b listener) {
        this.behaviorListener = listener;
    }

    public final void setLeftIconStatus(String status) {
        Intrinsics.h(status, "status");
        if (Intrinsics.c(this.curLeftStatus, status)) {
            return;
        }
        this.curLeftStatus = status;
        Group groupSend = this.viewBinding.f72794f;
        Intrinsics.g(groupSend, "groupSend");
        if (groupSend.getVisibility() == 0) {
            Q(status);
        }
    }

    public final void setPageStatus(boolean isDownloadTab) {
        this.isDownloadTab = isDownloadTab;
    }

    public final void setParentFragment(TransferMainFragment fragment) {
        Intrinsics.h(fragment, "fragment");
        this.parentFragment = fragment;
    }

    public final void setSendIconStatus(String status, int sendingCount) {
        Intrinsics.h(status, "status");
        int iHashCode = status.hashCode();
        if (iHashCode != -562350193) {
            if (iHashCode != -344681223) {
                if (iHashCode == 695846276 && status.equals(SEND_STATUS_SENDING)) {
                    AppCompatTextView appCompatTextView = this.viewBinding.f72807s;
                    appCompatTextView.setText(sendingCount <= 99 ? String.valueOf(sendingCount) : "99+");
                    appCompatTextView.setTextColor(androidx.core.content.b.getColor(appCompatTextView.getContext(), R$color.text_01));
                    Intrinsics.e(Glide.with(getContext()).load2(Integer.valueOf(ak.x.f658a.a() ? R$mipmap.ic_transfer_send_ing_dark : R$mipmap.ic_transfer_send_ing)).into(this.viewBinding.f72798j));
                    return;
                }
            } else if (status.equals(SEND_STATUS_SENDING_FAIL)) {
                AppCompatTextView appCompatTextView2 = this.viewBinding.f72807s;
                appCompatTextView2.setText(sendingCount <= 99 ? String.valueOf(sendingCount) : "99+");
                appCompatTextView2.setTextColor(androidx.core.content.b.getColor(appCompatTextView2.getContext(), R$color.error_red));
                Intrinsics.e(Glide.with(getContext()).load2(Integer.valueOf(R$mipmap.ic_transfer_send_ing_error)).into(this.viewBinding.f72798j));
                return;
            }
        } else if (status.equals(SEND_STATUS_NONE_FAIL)) {
            this.viewBinding.f72807s.setText("");
            this.viewBinding.f72798j.setImageResource(R$drawable.ic_transfer_send_none_error);
            return;
        }
        this.viewBinding.f72807s.setText("");
        this.viewBinding.f72798j.setImageResource(R$drawable.ic_transfer_send_none);
    }

    public final void showConnectContent(boolean connect, String clientPhoneName) {
        Intrinsics.h(clientPhoneName, "clientPhoneName");
        if (clientPhoneName.length() == 0) {
            clientPhoneName = "Phone";
        }
        this.isPhoneConnected = connect;
        int i11 = connect ? R$string.download_transfer_connect_to : R$string.download_transfer_disconnect_to;
        try {
            this.viewBinding.f72810v.setText(getContext().getString(i11, clientPhoneName));
        } catch (Throwable unused) {
            AppCompatTextView appCompatTextView = this.viewBinding.f72810v;
            String string = getContext().getString(i11);
            Intrinsics.g(string, "getString(...)");
            String str = clientPhoneName;
            appCompatTextView.setText(StringsKt.Q(StringsKt.Q(string, "s%", str, false, 4, null), "%1$s", str, false, 4, null));
        }
        lg.a.C0828a.f(lg.a.f68839a, TAG, "showConnectContent, connect:" + connect + " 连接的手机名:" + clientPhoneName, false, 4, null);
        this.viewBinding.f72799k.setImageResource(connect ? com.transsion.transfer.R$mipmap.transfer_ic_link : com.transsion.transfer.R$mipmap.transfer_ic_unlink);
    }

    public final void showConnectUI(boolean show) {
        Group groupTopConnect = this.viewBinding.f72795g;
        Intrinsics.g(groupTopConnect, "groupTopConnect");
        groupTopConnect.setVisibility(show ? 0 : 8);
        AppCompatTextView tvTopDisconnect = this.viewBinding.f72809u;
        Intrinsics.g(tvTopDisconnect, "tvTopDisconnect");
        tvTopDisconnect.setVisibility(show ? 0 : 8);
    }
}
