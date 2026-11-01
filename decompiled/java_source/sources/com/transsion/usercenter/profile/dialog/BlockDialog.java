package com.transsion.usercenter.profile.dialog;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentViewModelLazyKt;
import androidx.p009lifecycle.c0;
import androidx.p009lifecycle.m;
import androidx.p009lifecycle.v0;
import androidx.p009lifecycle.x0;
import androidx.p009lifecycle.y0;
import com.cloud.tmc.kernel.utils.UrlUtils;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.tn.lib.net.bean.BaseDto;
import com.transsion.baseui.dialog.BaseDialog;
import com.transsion.mpush.core.config.MsgShowStatus;
import com.transsion.usercenter.R$id;
import com.transsion.usercenter.R$layout;
import com.transsion.usercenter.R$string;
import com.transsion.usercenter.R$style;
import com.transsion.usercenter.profile.report.ReportViewModel;
import com.transsnet.loginapi.bean.UserInfo;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Function;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0006\u0018\u0000 /2\u00020\u0001:\u00010B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0005\u0010\u0003J\u000f\u0010\u0006\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0006\u0010\u0003J\u000f\u0010\u0007\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0007\u0010\u0003J\u0017\u0010\n\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\bH\u0002¢\u0006\u0004\b\n\u0010\u000bJ\u0019\u0010\u000e\u001a\u00020\u00042\b\u0010\r\u001a\u0004\u0018\u00010\fH\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0010\u0010\u0003J!\u0010\u0011\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\b2\b\u0010\r\u001a\u0004\u0018\u00010\fH\u0016¢\u0006\u0004\b\u0011\u0010\u0012J1\u0010\u0019\u001a\u00020\u00042\b\u0010\u0014\u001a\u0004\u0018\u00010\u00132\b\u0010\u0016\u001a\u0004\u0018\u00010\u00152\u000e\b\u0002\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00040\u0017¢\u0006\u0004\b\u0019\u0010\u001aR\u001c\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u00040\u00178\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001b\u0010\u001cR\u001b\u0010#\u001a\u00020\u001e8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001f\u0010 \u001a\u0004\b!\u0010\"R\u0018\u0010&\u001a\u0004\u0018\u00010\u00158\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b$\u0010%R\u0018\u0010*\u001a\u0004\u0018\u00010'8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b(\u0010)R\u0016\u0010.\u001a\u00020+8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b,\u0010-¨\u00061"}, d2 = {"Lcom/transsion/usercenter/profile/dialog/BlockDialog;", "Lcom/transsion/baseui/dialog/BaseDialog;", "<init>", "()V", "", "r0", "u0", "v0", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "x0", "(Landroid/view/View;)V", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "onResume", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "Landroid/content/Context;", "context", "", "tag", "Lkotlin/Function0;", "callback", "A0", "(Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V", "c", "Lkotlin/jvm/functions/Function0;", "callBack", "Lcom/transsion/usercenter/profile/report/ReportViewModel;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Lkotlin/Lazy;", "w0", "()Lcom/transsion/usercenter/profile/report/ReportViewModel;", "mViewModel", "e", "Ljava/lang/String;", "reportType", "Lcom/transsnet/loginapi/bean/UserInfo;", "f", "Lcom/transsnet/loginapi/bean/UserInfo;", "userInfo", "", "g", "Z", "isBlock", "h", "a", "UserCenter_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class BlockDialog extends BaseDialog {

    /* JADX INFO: renamed from: h, reason: collision with root package name and from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private Function0 callBack;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private final Lazy mViewModel;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private String reportType;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private UserInfo userInfo;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    private boolean isBlock;

    /* JADX INFO: renamed from: com.transsion.usercenter.profile.dialog.BlockDialog$a, reason: from kotlin metadata */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final BlockDialog a(String str, boolean z10, UserInfo userInfo) {
            BlockDialog blockDialog = new BlockDialog();
            blockDialog.setArguments(androidx.core.os.d.b(TuplesKt.a("report_type", str), TuplesKt.a("userInfo", userInfo), TuplesKt.a("isBlock", Boolean.valueOf(z10))));
            return blockDialog;
        }
    }

    static final class b implements c0, FunctionAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final /* synthetic */ Function1 f57123a;

        b(Function1 function) {
            Intrinsics.h(function, "function");
            this.f57123a = function;
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        public final Function a() {
            return this.f57123a;
        }

        public final boolean equals(Object obj) {
            if ((obj instanceof c0) && (obj instanceof FunctionAdapter)) {
                return Intrinsics.c(a(), ((FunctionAdapter) obj).a());
            }
            return false;
        }

        public final int hashCode() {
            return a().hashCode();
        }

        @Override // androidx.p009lifecycle.c0
        public final /* synthetic */ void onChanged(Object obj) {
            this.f57123a.invoke(obj);
        }
    }

    public BlockDialog() {
        super(R$layout.layout_block);
        this.callBack = new Function0() { // from class: com.transsion.usercenter.profile.dialog.d
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return BlockDialog.t0();
            }
        };
        final Function0<Fragment> function0 = new Function0<Fragment>() { // from class: com.transsion.usercenter.profile.dialog.BlockDialog$special$$inlined$viewModels$default$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final Fragment invoke() {
                return this;
            }
        };
        this.mViewModel = FragmentViewModelLazyKt.a(this, Reflection.b(ReportViewModel.class), new Function0<x0>() { // from class: com.transsion.usercenter.profile.dialog.BlockDialog$special$$inlined$viewModels$default$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final x0 invoke() {
                x0 viewModelStore = ((y0) function0.invoke()).getViewModelStore();
                Intrinsics.g(viewModelStore, "ownerProducer().viewModelStore");
                return viewModelStore;
            }
        }, new Function0<v0.c>() { // from class: com.transsion.usercenter.profile.dialog.BlockDialog$special$$inlined$viewModels$default$3
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final v0.c invoke() {
                Object objInvoke = function0.invoke();
                m mVar = objInvoke instanceof m ? (m) objInvoke : null;
                v0.c defaultViewModelProviderFactory = mVar != null ? mVar.getDefaultViewModelProviderFactory() : null;
                if (defaultViewModelProviderFactory == null) {
                    defaultViewModelProviderFactory = this.getDefaultViewModelProviderFactory();
                }
                Intrinsics.g(defaultViewModelProviderFactory, "(ownerProducer() as? Has…tViewModelProviderFactory");
                return defaultViewModelProviderFactory;
            }
        });
        this.isBlock = true;
    }

    private final void r0() {
        w0().i().j(this, new b(new Function1() { // from class: com.transsion.usercenter.profile.dialog.c
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return BlockDialog.s0(this.f57127a, (BaseDto) obj);
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit s0(BlockDialog blockDialog, BaseDto baseDto) {
        if (baseDto != null) {
            if (Intrinsics.c(baseDto.getCode(), MsgShowStatus.STATUS_OK)) {
                blockDialog.callBack.invoke();
            } else {
                uh.b.f76753a.e(baseDto.getMsg());
            }
        }
        blockDialog.dismiss();
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit t0() {
        return Unit.f67061a;
    }

    private final void u0() {
        String userId;
        UserInfo userInfo = this.userInfo;
        if (userInfo == null || (userId = userInfo.getUserId()) == null) {
            return;
        }
        w0().g(userId);
    }

    private final void v0() {
        String userId;
        UserInfo userInfo = this.userInfo;
        if (userInfo == null || (userId = userInfo.getUserId()) == null) {
            return;
        }
        w0().o(userId);
    }

    private final ReportViewModel w0() {
        return (ReportViewModel) this.mViewModel.getValue();
    }

    private final void x0(View view) {
        String str;
        String str2;
        TextView textView = (TextView) view.findViewById(R$id.tvTitle);
        TextView textView2 = (TextView) view.findViewById(R$id.tvDesc);
        TextView textView3 = (TextView) view.findViewById(R$id.tvBlock);
        UserInfo userInfo = this.userInfo;
        if (userInfo != null) {
            if (this.isBlock) {
                str = getString(R$string.str_unblock) + " " + userInfo.getNickname() + UrlUtils.QUESTION_MARK;
            } else {
                str = getString(R$string.str_block) + " " + userInfo.getNickname() + UrlUtils.QUESTION_MARK;
            }
            textView.setText(str);
            if (this.isBlock) {
                str2 = userInfo.getNickname() + " " + getString(R$string.unblock_desc);
            } else {
                str2 = userInfo.getNickname() + " " + getString(R$string.block_desc);
            }
            textView2.setText(str2);
        }
        ((TextView) view.findViewById(R$id.tvCancel)).setOnClickListener(new View.OnClickListener() { // from class: com.transsion.usercenter.profile.dialog.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                BlockDialog.y0(this.f57125a, view2);
            }
        });
        textView3.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.usercenter.profile.dialog.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                BlockDialog.z0(this.f57126a, view2);
            }
        });
        textView3.setText(this.isBlock ? getString(R$string.str_unblock) : getString(R$string.str_block));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void y0(BlockDialog blockDialog, View view) {
        blockDialog.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void z0(BlockDialog blockDialog, View view) {
        if (blockDialog.isBlock) {
            blockDialog.v0();
        } else {
            blockDialog.u0();
        }
    }

    public final void A0(Context context, String tag, Function0 callback) {
        Intrinsics.h(callback, "callback");
        k0(context, tag);
        this.callBack = callback;
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setStyle(0, R$style.report_style);
    }

    @Override // com.transsion.baseui.dialog.BaseDialog, androidx.fragment.app.Fragment
    public void onResume() {
        Window window;
        Window window2;
        Dialog dialog = getDialog();
        if (dialog != null && (window2 = dialog.getWindow()) != null) {
            window2.setLayout(-1, -2);
        }
        Dialog dialog2 = getDialog();
        if (dialog2 != null && (window = dialog2.getWindow()) != null) {
            window.setGravity(17);
        }
        super.onResume();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        Intrinsics.h(view, "view");
        super.onViewCreated(view, savedInstanceState);
        Bundle arguments = getArguments();
        this.reportType = arguments != null ? arguments.getString("report_type") : null;
        Bundle arguments2 = getArguments();
        this.userInfo = (UserInfo) (arguments2 != null ? arguments2.getSerializable("userInfo") : null);
        Bundle arguments3 = getArguments();
        this.isBlock = arguments3 != null ? arguments3.getBoolean("isBlock") : true;
        x0(view);
        r0();
    }
}
