package com.transsion.usercenter.laboratory;

import android.app.Application;
import android.os.Bundle;
import android.view.View;
import android.widget.Toast;
import androidx.appcompat.widget.AppCompatTextView;
import com.blankj.utilcode.util.Utils;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import com.tencent.mmkv.MMKV;
import com.transsion.ad.db.MbAdDatabase;
import com.transsion.baseui.dialog.BaseDialog;
import com.transsion.baseui.widget.EditTextWithClear;
import com.transsion.usercenter.R$layout;
import com.transsion.usercenter.R$style;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u00012\u00020\u0002B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u0019\u0010\b\u001a\u00020\u00072\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0002¢\u0006\u0004\b\b\u0010\tJ\u001f\u0010\f\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\f\u0010\rJ\u0019\u0010\u0010\u001a\u00020\u00072\b\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0016¢\u0006\u0004\b\u0010\u0010\u0011J!\u0010\u0014\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u00122\b\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0016¢\u0006\u0004\b\u0014\u0010\u0015J\u0019\u0010\u0017\u001a\u00020\u00072\b\u0010\u0016\u001a\u0004\u0018\u00010\u0012H\u0016¢\u0006\u0004\b\u0017\u0010\u0018R\u001b\u0010\u001e\u001a\u00020\u00198BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001a\u0010\u001b\u001a\u0004\b\u001c\u0010\u001dR$\u0010&\u001a\u0004\u0018\u00010\u001f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b \u0010!\u001a\u0004\b\"\u0010#\"\u0004\b$\u0010%¨\u0006'"}, d2 = {"Lcom/transsion/usercenter/laboratory/LabCountryDialog;", "Lcom/transsion/baseui/dialog/BaseDialog;", "Landroid/view/View$OnClickListener;", "<init>", "()V", "", MimeTypes.BASE_TYPE_TEXT, "", "w0", "(Ljava/lang/String;)V", AppMeasurementSdk.ConditionalUserProperty.VALUE, "mcc", "D0", "(Ljava/lang/String;Ljava/lang/String;)V", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "v", "onClick", "(Landroid/view/View;)V", "Lki/a;", "c", "Lkotlin/Lazy;", "v0", "()Lki/a;", "localMccDao", "Lfw/u;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Lfw/u;", "getViewBinding", "()Lfw/u;", "setViewBinding", "(Lfw/u;)V", "viewBinding", "UserCenter_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class LabCountryDialog extends BaseDialog implements View.OnClickListener {

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private final Lazy localMccDao;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private fw.u viewBinding;

    public LabCountryDialog() {
        super(R$layout.dialog_lab_country);
        this.localMccDao = LazyKt.b(new Function0() { // from class: com.transsion.usercenter.laboratory.l
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return LabCountryDialog.x0();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void A0(LabCountryDialog labCountryDialog, View view) {
        AppCompatTextView appCompatTextView;
        CharSequence text;
        fw.u uVar = labCountryDialog.viewBinding;
        labCountryDialog.w0((uVar == null || (appCompatTextView = uVar.f62942g) == null || (text = appCompatTextView.getText()) == null) ? null : text.toString());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void B0(LabCountryDialog labCountryDialog, View view) {
        AppCompatTextView appCompatTextView;
        CharSequence text;
        fw.u uVar = labCountryDialog.viewBinding;
        labCountryDialog.w0((uVar == null || (appCompatTextView = uVar.f62941f) == null || (text = appCompatTextView.getText()) == null) ? null : text.toString());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void C0(LabCountryDialog labCountryDialog, View view) {
        Toast.makeText(labCountryDialog.getContext(), "reset success", 1).show();
        MMKV mmkvC = bh.a.f16469a.c();
        if (mmkvC != null) {
            mmkvC.putString("sp_code", "");
        }
        labCountryDialog.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void D0(String value, String mcc) {
        Toast.makeText(getContext(), "set value:" + value + " mcc: \"" + mcc + "\" success", 1).show();
        MMKV mmkvC = bh.a.f16469a.c();
        if (mmkvC != null) {
            mmkvC.putString("sp_code", mcc);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ki.a v0() {
        return (ki.a) this.localMccDao.getValue();
    }

    private final void w0(String text) {
        if (text == null || text.length() == 0) {
            uh.b.f76753a.e("text is null~");
        } else {
            kotlinx.coroutines.k.d(kotlinx.coroutines.o0.a(kotlinx.coroutines.y0.c()), null, null, new LabCountryDialog$handleMcc$1(this, text, null), 3, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ki.a x0() {
        MbAdDatabase.Companion companion = MbAdDatabase.INSTANCE;
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        return companion.b(applicationA).y0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void y0(LabCountryDialog labCountryDialog, View view) {
        labCountryDialog.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void z0(LabCountryDialog labCountryDialog, View view) {
        EditTextWithClear editTextWithClear;
        fw.u uVar = labCountryDialog.viewBinding;
        labCountryDialog.w0(String.valueOf((uVar == null || (editTextWithClear = uVar.f62939d) == null) ? null : editTextWithClear.getText()));
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View v11) {
        String strValueOf;
        EditTextWithClear editTextWithClear;
        if (v11 instanceof AppCompatTextView) {
            strValueOf = ((AppCompatTextView) v11).getText().toString();
        } else {
            fw.u uVar = this.viewBinding;
            strValueOf = String.valueOf((uVar == null || (editTextWithClear = uVar.f62939d) == null) ? null : editTextWithClear.getText());
        }
        w0(strValueOf);
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setStyle(0, R$style.BaseDialogStyle);
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        AppCompatTextView appCompatTextView;
        AppCompatTextView appCompatTextView2;
        AppCompatTextView appCompatTextView3;
        AppCompatTextView appCompatTextView4;
        AppCompatTextView appCompatTextView5;
        AppCompatTextView appCompatTextView6;
        Intrinsics.h(view, "view");
        super.onViewCreated(view, savedInstanceState);
        this.viewBinding = fw.u.a(view);
        MMKV mmkvC = bh.a.f16469a.c();
        String string = mmkvC != null ? mmkvC.getString("sp_code", "") : null;
        fw.u uVar = this.viewBinding;
        if (uVar != null && (appCompatTextView6 = uVar.f62940e) != null) {
            appCompatTextView6.setText(string);
        }
        fw.u uVar2 = this.viewBinding;
        if (uVar2 != null && (appCompatTextView5 = uVar2.f62937b) != null) {
            appCompatTextView5.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.usercenter.laboratory.g
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    LabCountryDialog.y0(this.f56831a, view2);
                }
            });
        }
        fw.u uVar3 = this.viewBinding;
        if (uVar3 != null && (appCompatTextView4 = uVar3.f62938c) != null) {
            appCompatTextView4.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.usercenter.laboratory.h
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    LabCountryDialog.z0(this.f56835a, view2);
                }
            });
        }
        fw.u uVar4 = this.viewBinding;
        if (uVar4 != null && (appCompatTextView3 = uVar4.f62942g) != null) {
            appCompatTextView3.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.usercenter.laboratory.i
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    LabCountryDialog.A0(this.f56837a, view2);
                }
            });
        }
        fw.u uVar5 = this.viewBinding;
        if (uVar5 != null && (appCompatTextView2 = uVar5.f62941f) != null) {
            appCompatTextView2.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.usercenter.laboratory.j
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    LabCountryDialog.B0(this.f56839a, view2);
                }
            });
        }
        fw.u uVar6 = this.viewBinding;
        if (uVar6 == null || (appCompatTextView = uVar6.f62943h) == null) {
            return;
        }
        appCompatTextView.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.usercenter.laboratory.k
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                LabCountryDialog.C0(this.f56842a, view2);
            }
        });
    }
}
