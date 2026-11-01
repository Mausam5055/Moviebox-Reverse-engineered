package com.transsion.search_pugc.dialog;

import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.widget.TextView;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.transsion.baseui.dialog.BaseDialog;
import com.transsion.search.R$id;
import com.transsion.search.R$layout;
import com.transsion.search.R$style;
import com.transsion.search_pugc.dialog.CheckTipsDialog;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\n\u0018\u0000 \u00172\u00020\u0001:\u0001\u0018B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0007\u0010\bJ\u0019\u0010\u000b\u001a\u00020\u00062\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0016¢\u0006\u0004\b\u000b\u0010\fJ!\u0010\r\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00042\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0016¢\u0006\u0004\b\r\u0010\u000eR\u0016\u0010\u0012\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011R\u0016\u0010\u0014\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0013\u0010\u0011R\u0016\u0010\u0016\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0015\u0010\u0011¨\u0006\u0019"}, d2 = {"Lcom/transsion/search_pugc/dialog/CheckTipsDialog;", "Lcom/transsion/baseui/dialog/BaseDialog;", "<init>", "()V", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "", "p0", "(Landroid/view/View;)V", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "", "c", "Ljava/lang/String;", CampaignEx.JSON_KEY_TITLE, DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "btnLeft", "e", "btnRight", "f", "a", "Search_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class CheckTipsDialog extends BaseDialog {

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private String title;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private String btnLeft;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private String btnRight;

    public CheckTipsDialog() {
        super(R$layout.dialog_check);
        this.title = "";
        this.btnLeft = "";
        this.btnRight = "";
    }

    private final void p0(View view) {
        TextView textView;
        TextView textView2;
        TextView textView3;
        View viewFindViewById = view.findViewById(R$id.btn_left);
        if (viewFindViewById != null) {
            viewFindViewById.setOnClickListener(new View.OnClickListener() { // from class: cr.a
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    CheckTipsDialog.q0(this.f60887a, view2);
                }
            });
        }
        View viewFindViewById2 = view.findViewById(R$id.btn_yes);
        if (viewFindViewById2 != null) {
            viewFindViewById2.setOnClickListener(new View.OnClickListener() { // from class: cr.b
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    CheckTipsDialog.r0(this.f60888a, view2);
                }
            });
        }
        if (!TextUtils.isEmpty(this.title) && (textView3 = (TextView) view.findViewById(R$id.tv_tips)) != null) {
            textView3.setText(this.title);
        }
        if (!TextUtils.isEmpty(this.btnLeft) && (textView2 = (TextView) view.findViewById(R$id.btn_yes)) != null) {
            textView2.setText(this.btnLeft);
        }
        if (TextUtils.isEmpty(this.btnRight) || (textView = (TextView) view.findViewById(R$id.btn_left)) == null) {
            return;
        }
        textView.setText(this.btnRight);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void q0(CheckTipsDialog checkTipsDialog, View view) {
        checkTipsDialog.getClass();
        checkTipsDialog.dismissAllowingStateLoss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void r0(CheckTipsDialog checkTipsDialog, View view) {
        checkTipsDialog.getClass();
        checkTipsDialog.dismissAllowingStateLoss();
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setStyle(0, R$style.BaseDialogStyle);
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        Intrinsics.h(view, "view");
        super.onViewCreated(view, savedInstanceState);
        p0(view);
    }
}
