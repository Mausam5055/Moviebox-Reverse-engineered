package com.transsion.member.dialog;

import android.content.Context;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.View;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.transsion.baseui.dialog.BaseMemberLoadingDialog;
import com.transsion.member.R$string;
import com.transsion.memberapi.MemberCheckResult;
import com.transsion.memberapi.MemberSceneType;
import com.transsion.memberapi.OpType;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\r\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0005\u0010\u0003J\u0019\u0010\b\u001a\u00020\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0002¢\u0006\u0004\b\b\u0010\tJ\u0019\u0010\f\u001a\u00020\u00042\b\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0016¢\u0006\u0004\b\f\u0010\rJ!\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u000e2\b\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\u0017\u0010\u0014\u001a\u00020\u00042\b\u0010\u0013\u001a\u0004\u0018\u00010\u0012¢\u0006\u0004\b\u0014\u0010\u0015J#\u0010\u001a\u001a\u00020\u00042\b\u0010\u0017\u001a\u0004\u0018\u00010\u00162\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u0018¢\u0006\u0004\b\u001a\u0010\u001bR\u0018\u0010\u001e\u001a\u0004\u0018\u00010\u00128\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001c\u0010\u001dR\u0018\u0010!\u001a\u0004\u0018\u00010\u00168\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001f\u0010 R\u0018\u0010$\u001a\u0004\u0018\u00010\u00188\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\"\u0010#¨\u0006%"}, d2 = {"Lcom/transsion/member/dialog/CheckMemberRightsLoadingDialog;", "Lcom/transsion/baseui/dialog/BaseMemberLoadingDialog;", "<init>", "()V", "", "t0", "Lcom/transsion/memberapi/MemberCheckResult;", "it", "s0", "(Lcom/transsion/memberapi/MemberCheckResult;)V", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "Lzm/a;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "u0", "(Lzm/a;)V", "Lcom/transsion/memberapi/MemberSceneType;", "sceneType", "", "resolution", "v0", "(Lcom/transsion/memberapi/MemberSceneType;Ljava/lang/Integer;)V", "c", "Lzm/a;", "mListener", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Lcom/transsion/memberapi/MemberSceneType;", "mSceneType", "e", "Ljava/lang/Integer;", "mResolution", "Member_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class CheckMemberRightsLoadingDialog extends BaseMemberLoadingDialog {

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private zm.a mListener;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private MemberSceneType mSceneType;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private Integer mResolution;

    /* JADX INFO: Access modifiers changed from: private */
    public final void s0(MemberCheckResult it) {
        Resources resources;
        com.transsion.member.a.f46406a.a(getClassTag() + " --> checkMember() --> it = " + it);
        String string = null;
        if (it == null) {
            uh.b.a aVar = uh.b.f76753a;
            Context context = getContext();
            if (context != null && (resources = context.getResources()) != null) {
                string = resources.getString(R$string.co_network_error);
            }
            aVar.e(string);
            zm.a aVar2 = this.mListener;
            if (aVar2 != null) {
                aVar2.onFail("权益校验接口请求失败");
            }
            if (!isAdded() || isDetached()) {
                return;
            }
            dismissAllowingStateLoss();
            return;
        }
        if (Intrinsics.c(it.isPassed(), Boolean.TRUE)) {
            zm.a aVar3 = this.mListener;
            if (aVar3 != null) {
                aVar3.e();
            }
        } else {
            String interceptType = it.getInterceptType();
            if (Intrinsics.c(interceptType, OpType.OP_INSTALL.getValue())) {
                zm.a aVar4 = this.mListener;
                if (aVar4 != null) {
                    aVar4.d(it);
                }
            } else if (Intrinsics.c(interceptType, OpType.OP_AD.getValue())) {
                zm.a aVar5 = this.mListener;
                if (aVar5 != null) {
                    aVar5.b(it);
                }
            } else if (Intrinsics.c(interceptType, OpType.OP_VIP.getValue())) {
                zm.a aVar6 = this.mListener;
                if (aVar6 != null) {
                    aVar6.a(it);
                }
            } else if (Intrinsics.c(interceptType, OpType.LOTTERY_DRAW.getValue())) {
                zm.a aVar7 = this.mListener;
                if (aVar7 != null) {
                    aVar7.c(it);
                }
            } else {
                zm.a aVar8 = this.mListener;
                if (aVar8 != null) {
                    aVar8.f(it);
                }
            }
        }
        kotlinx.coroutines.k.d(androidx.p009lifecycle.v.a(this), null, null, new CheckMemberRightsLoadingDialog$analysis$1(this, null), 3, null);
    }

    private final void t0() {
        kotlinx.coroutines.k.d(androidx.p009lifecycle.v.a(this), null, null, new CheckMemberRightsLoadingDialog$checkMember$1(this, null), 3, null);
    }

    @Override // com.transsion.baseui.dialog.BaseMemberLoadingDialog, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        com.transsion.member.a.f46406a.a(getClassTag() + " --> onCreate() --> 会员权益校验 --> 中间过度弹窗 --> 请求接口判断是否需要拦截");
    }

    @Override // com.transsion.baseui.dialog.BaseMemberLoadingDialog, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        Intrinsics.h(view, "view");
        super.onViewCreated(view, savedInstanceState);
        t0();
    }

    public final void u0(zm.a listener) {
        this.mListener = listener;
    }

    public final void v0(MemberSceneType sceneType, Integer resolution) {
        this.mSceneType = sceneType;
        this.mResolution = resolution;
    }
}
