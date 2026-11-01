package com.transsion.member.dialog;

import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import androidx.activity.result.ActivityResult;
import com.cloud.tmc.integration.event.EventConstants;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.therouter.TheRouter;
import com.therouter.router.Navigator;
import com.tn.lib.widget.R$style;
import com.transsion.baseui.dialog.BaseDialog;
import com.transsion.member.MemberActivity;
import com.transsion.memberapi.MemberSource;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0007\u0018\u0000 -2\u00020\u0001:\u0001.B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0019\u0010\u0007\u001a\u00020\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016¢\u0006\u0004\b\u0007\u0010\bJ\u0017\u0010\u000b\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\tH\u0016¢\u0006\u0004\b\u000b\u0010\fJ\r\u0010\u000e\u001a\u00020\r¢\u0006\u0004\b\u000e\u0010\u000fJ\u0017\u0010\u0012\u001a\u00020\u00062\b\u0010\u0011\u001a\u0004\u0018\u00010\u0010¢\u0006\u0004\b\u0012\u0010\u0013J\u0015\u0010\u0016\u001a\u00020\u00062\u0006\u0010\u0015\u001a\u00020\u0014¢\u0006\u0004\b\u0016\u0010\u0017J\u0017\u0010\u001a\u001a\u00020\u00062\b\u0010\u0019\u001a\u0004\u0018\u00010\u0018¢\u0006\u0004\b\u001a\u0010\u001bR\u0016\u0010\u001e\u001a\u00020\r8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001c\u0010\u001dR\u0018\u0010!\u001a\u0004\u0018\u00010\u00108\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001f\u0010 R\u0018\u0010\u0015\u001a\u0004\u0018\u00010\u00148\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\"\u0010#R\u0018\u0010&\u001a\u0004\u0018\u00010\u00188\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b$\u0010%R\"\u0010,\u001a\u0010\u0012\f\u0012\n )*\u0004\u0018\u00010(0(0'8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b*\u0010+¨\u0006/"}, d2 = {"Lcom/transsion/member/dialog/MemberMiddleStateDialog;", "Lcom/transsion/baseui/dialog/BaseDialog;", "<init>", "()V", "Landroid/os/Bundle;", "savedInstanceState", "", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/content/DialogInterface;", "dialog", "onDismiss", "(Landroid/content/DialogInterface;)V", "", "o0", "()Z", "Lcom/transsion/memberapi/MemberSource;", "memberSource", "q0", "(Lcom/transsion/memberapi/MemberSource;)V", "", "sceneId", "r0", "(Ljava/lang/String;)V", "Lzm/b;", "callback", "p0", "(Lzm/b;)V", "c", "Z", "isPayMemberSuccess", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Lcom/transsion/memberapi/MemberSource;", EventConstants.KEY_SOURCE, "e", "Ljava/lang/String;", "f", "Lzm/b;", "mCallback", "Landroidx/activity/result/b;", "Landroid/content/Intent;", "kotlin.jvm.PlatformType", "g", "Landroidx/activity/result/b;", "startActivity", "h", "a", "Member_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class MemberMiddleStateDialog extends BaseDialog {

    /* JADX INFO: renamed from: h, reason: collision with root package name and from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final int f46463i = 8;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private boolean isPayMemberSuccess;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private MemberSource source;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private String sceneId = "";

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private zm.b mCallback;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    private final androidx.activity.result.b startActivity;

    /* JADX INFO: renamed from: com.transsion.member.dialog.MemberMiddleStateDialog$a, reason: from kotlin metadata */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final MemberMiddleStateDialog a(boolean z10) {
            MemberMiddleStateDialog memberMiddleStateDialog = new MemberMiddleStateDialog();
            Bundle bundle = new Bundle();
            bundle.putBoolean("key_scrolltotask", z10);
            memberMiddleStateDialog.setArguments(bundle);
            return memberMiddleStateDialog;
        }
    }

    public MemberMiddleStateDialog() {
        androidx.activity.result.b bVarRegisterForActivityResult = registerForActivityResult(new f.j(), new androidx.activity.result.a() { // from class: com.transsion.member.dialog.m
            @Override // androidx.activity.result.a
            public final void a(Object obj) {
                MemberMiddleStateDialog.s0(this.f46539a, (ActivityResult) obj);
            }
        });
        Intrinsics.g(bVarRegisterForActivityResult, "registerForActivityResult(...)");
        this.startActivity = bVarRegisterForActivityResult;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void s0(MemberMiddleStateDialog memberMiddleStateDialog, ActivityResult it) {
        Intrinsics.h(it, "it");
        memberMiddleStateDialog.isPayMemberSuccess = it.getResultCode() == -1;
        com.transsion.member.a.f46406a.a(memberMiddleStateDialog.getClassTag() + " --> startActivity --> registerForActivityResult() --> isPayMemberSuccess = " + memberMiddleStateDialog.isPayMemberSuccess);
        if (memberMiddleStateDialog.isAdded()) {
            memberMiddleStateDialog.dismissAllowingStateLoss();
        }
    }

    public final boolean o0() {
        return false;
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setStyle(0, R$style.center_DialogStyle);
        if (o0()) {
            Navigator navigatorC = TheRouter.c("/rewards/center");
            MemberSource memberSource = this.source;
            Navigator.x(navigatorC.K(EventConstants.KEY_SOURCE, memberSource != null ? memberSource.getValue() : null).K("scene_id", this.sceneId), null, null, 3, null);
            return;
        }
        Intent intent = new Intent(requireContext(), (Class<?>) MemberActivity.class);
        MemberSource memberSource2 = this.source;
        intent.putExtra(EventConstants.KEY_SOURCE, memberSource2 != null ? memberSource2.getValue() : null);
        intent.putExtra("scene_id", this.sceneId);
        Bundle arguments = getArguments();
        intent.putExtra("extra_member_scroll_bottom", arguments != null ? Boolean.valueOf(arguments.getBoolean("key_scrolltotask")) : null);
        this.startActivity.a(intent);
    }

    @Override // com.transsion.baseui.dialog.BaseDialog, androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialog) {
        Intrinsics.h(dialog, "dialog");
        super.onDismiss(dialog);
        if (this.isPayMemberSuccess) {
            zm.b bVar = this.mCallback;
            if (bVar != null) {
                bVar.onSuccess();
                return;
            }
            return;
        }
        zm.b bVar2 = this.mCallback;
        if (bVar2 != null) {
            bVar2.a();
        }
    }

    public final void p0(zm.b callback) {
        this.mCallback = callback;
    }

    public final void q0(MemberSource memberSource) {
        this.source = memberSource;
    }

    public final void r0(String sceneId) {
        Intrinsics.h(sceneId, "sceneId");
        this.sceneId = sceneId;
    }
}
