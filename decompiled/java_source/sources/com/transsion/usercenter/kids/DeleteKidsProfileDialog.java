package com.transsion.usercenter.kids;

import ak.o;
import android.os.Bundle;
import android.view.View;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.tn.lib.dialog.BaseDialog;
import com.transsion.baselib.kids.KidsAccountManager;
import com.transsion.usercenter.R$id;
import com.transsion.usercenter.R$layout;
import com.transsion.usercenter.R$style;
import com.transsion.usercenter.kids.DeleteKidsProfileDialog;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import lg.a;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0005\u0018\u0000 \u00112\u00020\u0001:\u0001\u000eB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0019\u0010\u0007\u001a\u00020\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016¢\u0006\u0004\b\u0007\u0010\bJ!\u0010\u000b\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\t2\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016¢\u0006\u0004\b\u000b\u0010\fR\u0016\u0010\u0010\u001a\u00020\r8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000e\u0010\u000f¨\u0006\u0012"}, d2 = {"Lcom/transsion/usercenter/kids/DeleteKidsProfileDialog;", "Lcom/tn/lib/dialog/BaseDialog;", "<init>", "()V", "Landroid/os/Bundle;", "savedInstanceState", "", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "", "a", "Ljava/lang/String;", "kidsId", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "UserCenter_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class DeleteKidsProfileDialog extends BaseDialog {

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static Function0 f56753c;

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private String kidsId;

    /* JADX INFO: renamed from: com.transsion.usercenter.kids.DeleteKidsProfileDialog$a, reason: from kotlin metadata */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final DeleteKidsProfileDialog a(String kidsId, Function0 onDeleted) {
            Intrinsics.h(kidsId, "kidsId");
            Intrinsics.h(onDeleted, "onDeleted");
            DeleteKidsProfileDialog.f56753c = onDeleted;
            DeleteKidsProfileDialog deleteKidsProfileDialog = new DeleteKidsProfileDialog();
            Bundle bundle = new Bundle();
            bundle.putString("arg_kids_id", kidsId);
            deleteKidsProfileDialog.setArguments(bundle);
            return deleteKidsProfileDialog;
        }
    }

    public DeleteKidsProfileDialog() {
        super(R$layout.dialog_delete_kids_profile);
        this.kidsId = "";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void c0(DeleteKidsProfileDialog deleteKidsProfileDialog, View view) {
        deleteKidsProfileDialog.dismissAllowingStateLoss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void d0(DeleteKidsProfileDialog deleteKidsProfileDialog, View view) {
        a.C0828a.f(a.f68839a, "DeleteKidsProfileDialog", "kids account delete success.", false, 4, null);
        KidsAccountManager kidsAccountManager = KidsAccountManager.f43286a;
        kidsAccountManager.b();
        if (o.f646a.i()) {
            kidsAccountManager.d();
        }
        Function0 function0 = f56753c;
        f56753c = null;
        deleteKidsProfileDialog.dismissAllowingStateLoss();
        if (function0 != null) {
            function0.invoke();
        }
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        String string;
        super.onCreate(savedInstanceState);
        setStyle(0, R$style.BaseDialogStyle);
        Bundle arguments = getArguments();
        if (arguments == null || (string = arguments.getString("arg_kids_id")) == null) {
            string = "";
        }
        this.kidsId = string;
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        Intrinsics.h(view, "view");
        super.onViewCreated(view, savedInstanceState);
        View viewFindViewById = view.findViewById(R$id.tvCancel);
        if (viewFindViewById != null) {
            viewFindViewById.setOnClickListener(new View.OnClickListener() { // from class: pw.q
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    DeleteKidsProfileDialog.c0(this.f72532a, view2);
                }
            });
        }
        View viewFindViewById2 = view.findViewById(R$id.tvDelete);
        if (viewFindViewById2 != null) {
            viewFindViewById2.setOnClickListener(new View.OnClickListener() { // from class: pw.r
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    DeleteKidsProfileDialog.d0(this.f72533a, view2);
                }
            });
        }
    }
}
