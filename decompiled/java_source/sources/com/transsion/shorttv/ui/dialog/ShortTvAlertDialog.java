package com.transsion.shorttv.ui.dialog;

import android.app.Dialog;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.transsion.shorttv.base.dialog.BaseViewBindingDialog;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import ms.r;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0006\u0018\u0000 \u001e2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u001fB\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u0019\u0010\b\u001a\u00020\u00072\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0016¢\u0006\u0004\b\b\u0010\tJ\u0019\u0010\u000b\u001a\u00020\n2\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0016¢\u0006\u0004\b\u000b\u0010\fJ!\u0010\u000f\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\r2\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0016¢\u0006\u0004\b\u000f\u0010\u0010R\u001e\u0010\u0014\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u00118\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013R\u001e\u0010\u0016\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u00118\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0015\u0010\u0013R.\u0010\u001d\u001a\u001c\u0012\u0004\u0012\u00020\u0018\u0012\u0006\u0012\u0004\u0018\u00010\u0019\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020\u00020\u00178VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u001b\u0010\u001c¨\u0006 "}, d2 = {"Lcom/transsion/shorttv/ui/dialog/ShortTvAlertDialog;", "Lcom/transsion/shorttv/base/dialog/BaseViewBindingDialog;", "Lms/r;", "<init>", "()V", "Landroid/os/Bundle;", "savedInstanceState", "", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/app/Dialog;", "onCreateDialog", "(Landroid/os/Bundle;)Landroid/app/Dialog;", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "Lkotlin/Function0;", "c", "Lkotlin/jvm/functions/Function0;", "primaryAction", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "secondaryAction", "Lkotlin/Function3;", "Landroid/view/LayoutInflater;", "Landroid/view/ViewGroup;", "", "l0", "()Lkotlin/jvm/functions/Function3;", "bindingInflater", "e", "a", "shortTvLib_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class ShortTvAlertDialog extends BaseViewBindingDialog<r> {

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private Function0 primaryAction;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private Function0 secondaryAction;

    /* JADX INFO: renamed from: com.transsion.shorttv.ui.dialog.ShortTvAlertDialog$a, reason: from kotlin metadata */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final ShortTvAlertDialog a(String title, String message, String primaryBtnText, Function0 function0, String str, Function0 function1) {
            Intrinsics.h(title, "title");
            Intrinsics.h(message, "message");
            Intrinsics.h(primaryBtnText, "primaryBtnText");
            ShortTvAlertDialog shortTvAlertDialog = new ShortTvAlertDialog();
            Bundle bundle = new Bundle();
            bundle.putString(CampaignEx.JSON_KEY_TITLE, title);
            bundle.putString("message", message);
            bundle.putString("primary_btn_text", primaryBtnText);
            if (str != null && str.length() != 0) {
                bundle.putString("secondary_btn_text", str);
            }
            shortTvAlertDialog.setArguments(bundle);
            shortTvAlertDialog.primaryAction = function0;
            shortTvAlertDialog.secondaryAction = function1;
            return shortTvAlertDialog;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void r0(ShortTvAlertDialog shortTvAlertDialog, View view) {
        shortTvAlertDialog.dismissAllowingStateLoss();
        Function0 function0 = shortTvAlertDialog.primaryAction;
        if (function0 != null) {
            function0.invoke();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void s0(ShortTvAlertDialog shortTvAlertDialog, View view) {
        shortTvAlertDialog.dismissAllowingStateLoss();
        Function0 function0 = shortTvAlertDialog.secondaryAction;
        if (function0 != null) {
            function0.invoke();
        }
    }

    @Override // com.transsion.shorttv.base.dialog.BaseViewBindingDialog
    public Function3 l0() {
        return ShortTvAlertDialog$bindingInflater$1.INSTANCE;
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setStyle(1, 0);
        setCancelable(false);
    }

    @Override // androidx.fragment.app.DialogFragment
    public Dialog onCreateDialog(Bundle savedInstanceState) {
        Dialog dialogOnCreateDialog = super.onCreateDialog(savedInstanceState);
        Intrinsics.g(dialogOnCreateDialog, "onCreateDialog(...)");
        Window window = dialogOnCreateDialog.getWindow();
        if (window != null) {
            window.setBackgroundDrawable(new ColorDrawable(0));
            window.addFlags(2);
            window.setDimAmount(0.5f);
            window.setGravity(17);
        }
        return dialogOnCreateDialog;
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        Bundle arguments;
        Intrinsics.h(view, "view");
        super.onViewCreated(view, savedInstanceState);
        r rVar = (r) getViewBinding();
        if (rVar == null || (arguments = getArguments()) == null) {
            return;
        }
        rVar.f69908e.setText(arguments.getString(CampaignEx.JSON_KEY_TITLE, ""));
        rVar.f69907d.setText(arguments.getString("message", ""));
        rVar.f69905b.setText(arguments.getString("primary_btn_text", ""));
        rVar.f69905b.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.shorttv.ui.dialog.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                ShortTvAlertDialog.r0(this.f53245a, view2);
            }
        });
        String string = arguments.getString("secondary_btn_text");
        if (string == null || string.length() == 0) {
            return;
        }
        rVar.f69906c.setVisibility(0);
        rVar.f69906c.setText(string);
        rVar.f69906c.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.shorttv.ui.dialog.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                ShortTvAlertDialog.s0(this.f53246a, view2);
            }
        });
    }
}
