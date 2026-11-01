package com.transsion.moviedetail.fragment;

import android.app.Dialog;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import android.view.Window;
import android.widget.ImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.LinearLayoutCompat;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.noober.background.view.BLTextView;
import com.tn.lib.view.MaxHeightNestedScrollView;
import com.transsion.baseui.R$style;
import com.transsion.baseui.dialog.BaseDialog;
import com.transsion.moviedetail.R$layout;
import com.transsion.web.api.WebConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.HashMap;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0013\u0018\u0000 +2\u00020\u0001:\u0001,B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\t\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\t\u0010\u0003J\u0017\u0010\f\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\nH\u0002¢\u0006\u0004\b\f\u0010\rJ\u0019\u0010\u0010\u001a\u00020\u00062\b\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0016¢\u0006\u0004\b\u0010\u0010\u0011J!\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00042\b\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0016¢\u0006\u0004\b\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u0014\u0010\u0003J!\u0010\u0018\u001a\u00020\u00062\u0012\u0010\u0017\u001a\u000e\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u00060\u0015¢\u0006\u0004\b\u0018\u0010\u0019R\u0018\u0010\u001d\u001a\u0004\u0018\u00010\u001a8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001b\u0010\u001cR\u0018\u0010 \u001a\u0004\u0018\u00010\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001e\u0010\u001fR\u0018\u0010\"\u001a\u0004\u0018\u00010\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b!\u0010\u001fR\u0018\u0010$\u001a\u0004\u0018\u00010\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b#\u0010\u001fR$\u0010'\u001a\u0010\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00158\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b%\u0010&R\u0016\u0010*\u001a\u00020\u00168\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b(\u0010)¨\u0006-"}, d2 = {"Lcom/transsion/moviedetail/fragment/RestrictTipsDialog;", "Lcom/transsion/baseui/dialog/BaseDialog;", "<init>", "()V", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "", "r0", "(Landroid/view/View;)V", "x0", "", "optType", "w0", "(Ljava/lang/String;)V", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "onDestroy", "Lkotlin/Function1;", "", "call", "y0", "(Lkotlin/jvm/functions/Function1;)V", "Lcn/d;", "c", "Lcn/d;", "viewBinding", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Ljava/lang/String;", "tips", "e", "pageFrom", "f", "subjectId", "g", "Lkotlin/jvm/functions/Function1;", "resultCallback", "h", "Z", "isSelectNotShowAgain", "i", "a", "MovieDetail_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class RestrictTipsDialog extends BaseDialog {

    /* JADX INFO: renamed from: i, reason: collision with root package name and from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private cn.d viewBinding;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private String tips;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private String pageFrom;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private String subjectId;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    private Function1 resultCallback;

    /* JADX INFO: renamed from: h, reason: collision with root package name and from kotlin metadata */
    private boolean isSelectNotShowAgain;

    /* JADX INFO: renamed from: com.transsion.moviedetail.fragment.RestrictTipsDialog$a, reason: from kotlin metadata */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final RestrictTipsDialog a(String tips, String pageFrom, String str) {
            Intrinsics.h(tips, "tips");
            Intrinsics.h(pageFrom, "pageFrom");
            RestrictTipsDialog restrictTipsDialog = new RestrictTipsDialog();
            restrictTipsDialog.setArguments(androidx.core.os.d.b(TuplesKt.a("tips", tips), TuplesKt.a(WebConstants.PAGE_FROM, pageFrom), TuplesKt.a("subject_id", str)));
            return restrictTipsDialog;
        }
    }

    public RestrictTipsDialog() {
        super(R$layout.dialog_restrict_tips);
    }

    private final void r0(View view) {
        LinearLayoutCompat linearLayoutCompat;
        BLTextView bLTextView;
        BLTextView bLTextView2;
        AppCompatTextView appCompatTextView;
        MaxHeightNestedScrollView maxHeightNestedScrollView;
        cn.d dVarA = cn.d.a(view);
        this.viewBinding = dVarA;
        if (dVarA != null && (maxHeightNestedScrollView = dVarA.f17333d) != null) {
            maxHeightNestedScrollView.setMaxHeight(com.blankj.utilcode.util.a0.a(368.0f));
        }
        cn.d dVar = this.viewBinding;
        if (dVar != null && (appCompatTextView = dVar.f17336g) != null) {
            appCompatTextView.setText(this.tips);
        }
        cn.d dVar2 = this.viewBinding;
        if (dVar2 != null && (bLTextView2 = dVar2.f17335f) != null) {
            bLTextView2.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.moviedetail.fragment.i1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    RestrictTipsDialog.s0(this.f47185a, view2);
                }
            });
        }
        cn.d dVar3 = this.viewBinding;
        if (dVar3 != null && (bLTextView = dVar3.f17334e) != null) {
            bLTextView.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.moviedetail.fragment.j1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    RestrictTipsDialog.t0(this.f47188a, view2);
                }
            });
        }
        cn.d dVar4 = this.viewBinding;
        if (dVar4 == null || (linearLayoutCompat = dVar4.f17332c) == null) {
            return;
        }
        linearLayoutCompat.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.moviedetail.fragment.k1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                RestrictTipsDialog.u0(this.f47191a, view2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void s0(RestrictTipsDialog restrictTipsDialog, View view) {
        restrictTipsDialog.w0("confirm");
        Function1 function1 = restrictTipsDialog.resultCallback;
        if (function1 != null) {
            function1.invoke(Boolean.TRUE);
        }
        restrictTipsDialog.dismissAllowingStateLoss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void t0(RestrictTipsDialog restrictTipsDialog, View view) {
        restrictTipsDialog.w0("btn_back");
        restrictTipsDialog.isSelectNotShowAgain = false;
        Function1 function1 = restrictTipsDialog.resultCallback;
        if (function1 != null) {
            function1.invoke(Boolean.FALSE);
        }
        restrictTipsDialog.dismissAllowingStateLoss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void u0(RestrictTipsDialog restrictTipsDialog, View view) {
        ImageView imageView;
        cn.d dVar = restrictTipsDialog.viewBinding;
        if (dVar != null && (imageView = dVar.f17331b) != null) {
            imageView.setSelected(!restrictTipsDialog.isSelectNotShowAgain);
        }
        restrictTipsDialog.isSelectNotShowAgain = !restrictTipsDialog.isSelectNotShowAgain;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean v0(RestrictTipsDialog restrictTipsDialog, DialogInterface dialogInterface, int i11, KeyEvent keyEvent) {
        if (i11 != 4 || keyEvent.getAction() != 1) {
            return false;
        }
        restrictTipsDialog.w0("action_back");
        restrictTipsDialog.isSelectNotShowAgain = false;
        Function1 function1 = restrictTipsDialog.resultCallback;
        if (function1 != null) {
            function1.invoke(Boolean.FALSE);
        }
        restrictTipsDialog.dismissAllowingStateLoss();
        return true;
    }

    private final void w0(String optType) {
        HashMap map = new HashMap();
        map.put("opt_type", optType);
        map.put("not_show_select", String.valueOf(this.isSelectNotShowAgain));
        String str = this.subjectId;
        if (str == null) {
            str = "";
        }
        map.put("subject_id", str);
        String str2 = this.pageFrom;
        map.put(WebConstants.PAGE_FROM, str2 != null ? str2 : "");
        hj.i.f64505a.p("restrict_tips_dialog", map);
    }

    private final void x0() {
        HashMap map = new HashMap();
        String str = this.pageFrom;
        if (str == null) {
            str = "";
        }
        map.put(WebConstants.PAGE_FROM, str);
        String str2 = this.subjectId;
        map.put("subject_id", str2 != null ? str2 : "");
        hj.i.f64505a.s("restrict_tips_dialog", "dialog_show", map);
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setCancelable(false);
        setStyle(0, R$style.NormalDialogTheme);
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.tips = arguments.getString("tips");
            this.pageFrom = arguments.getString(WebConstants.PAGE_FROM);
            this.subjectId = arguments.getString("subject_id");
        }
    }

    @Override // com.transsion.baseui.dialog.BaseDialog, androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        if (this.isSelectNotShowAgain) {
            com.transsion.baselib.report.launch.b.f43370a.b().putBoolean("restrict_tips_dialog_again", false);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        Window window;
        Intrinsics.h(view, "view");
        super.onViewCreated(view, savedInstanceState);
        int iE = com.blankj.utilcode.util.y.e() - com.blankj.utilcode.util.a0.a(80.0f);
        Dialog dialog = getDialog();
        if (dialog != null && (window = dialog.getWindow()) != null) {
            window.setLayout(iE, -2);
            window.setGravity(17);
        }
        Dialog dialog2 = getDialog();
        if (dialog2 != null) {
            dialog2.setOnKeyListener(new DialogInterface.OnKeyListener() { // from class: com.transsion.moviedetail.fragment.h1
                @Override // android.content.DialogInterface.OnKeyListener
                public final boolean onKey(DialogInterface dialogInterface, int i11, KeyEvent keyEvent) {
                    return RestrictTipsDialog.v0(this.f47179a, dialogInterface, i11, keyEvent);
                }
            });
        }
        x0();
        r0(view);
    }

    public final void y0(Function1 call) {
        Intrinsics.h(call, "call");
        this.resultCallback = call;
    }
}
