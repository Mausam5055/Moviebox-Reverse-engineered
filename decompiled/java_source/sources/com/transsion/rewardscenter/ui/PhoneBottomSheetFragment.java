package com.transsion.rewardscenter.ui;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.inputmethod.InputMethodManager;
import androidx.activity.result.ActivityResult;
import androidx.appcompat.widget.AppCompatEditText;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.LinearLayoutCompat;
import com.cloud.tmc.integration.event.EventConstants;
import com.google.android.libraries.places.api.model.PlaceTypes;
import com.google.android.material.R$id;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.google.android.material.bottomsheet.BottomSheetDialogFragment;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.therouter.TheRouter;
import com.transsion.rewardscenter.R$string;
import com.transsion.rewardscenterapi.SkuPoint;
import com.transsion.rewardscenterapi.TopUpType;
import com.transsnet.loginapi.bean.Country;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import java.math.BigDecimal;
import kotlin.Metadata;
import kotlin.Triple;
import kotlin.TuplesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\n\b\u0007\u0018\u0000 .2\u00020\u0001:\u0001/B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0005\u0010\u0003J\u000f\u0010\u0006\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0006\u0010\u0003J\u000f\u0010\u0007\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0007\u0010\u0003J\u000f\u0010\b\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\b\u0010\u0003J\u0019\u0010\u000b\u001a\u00020\u00042\b\b\u0002\u0010\n\u001a\u00020\tH\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u0019\u0010\u0010\u001a\u00020\u000f2\b\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0016¢\u0006\u0004\b\u0010\u0010\u0011J+\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0013\u001a\u00020\u00122\b\u0010\u0015\u001a\u0004\u0018\u00010\u00142\b\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0016¢\u0006\u0004\b\u0017\u0010\u0018J!\u0010\u001a\u001a\u00020\u00042\u0006\u0010\u0019\u001a\u00020\u00162\b\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0016¢\u0006\u0004\b\u001a\u0010\u001bJ\u000f\u0010\u001c\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u001c\u0010\u0003R\u0018\u0010 \u001a\u0004\u0018\u00010\u001d8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001e\u0010\u001fR\u0016\u0010$\u001a\u00020!8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\"\u0010#R\"\u0010*\u001a\u0010\u0012\f\u0012\n '*\u0004\u0018\u00010&0&0%8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b(\u0010)R\u0014\u0010-\u001a\u00020\u001d8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b+\u0010,¨\u00060"}, d2 = {"Lcom/transsion/rewardscenter/ui/PhoneBottomSheetFragment;", "Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;", "<init>", "()V", "", "s0", "v0", "t0", "n0", "", "setCursor", "j0", "(Z)V", "Landroid/os/Bundle;", "savedInstanceState", "Landroid/app/Dialog;", "onCreateDialog", "(Landroid/os/Bundle;)Landroid/app/Dialog;", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "onDestroyView", "Lvp/e;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lvp/e;", "_binding", "Lcom/transsnet/loginapi/bean/Country;", "c", "Lcom/transsnet/loginapi/bean/Country;", PlaceTypes.COUNTRY, "Landroidx/activity/result/b;", "Landroid/content/Intent;", "kotlin.jvm.PlatformType", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Landroidx/activity/result/b;", "countryPickerLauncher", "m0", "()Lvp/e;", "binding", "e", "a", "RewardsCenter_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class PhoneBottomSheetFragment extends BottomSheetDialogFragment {

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final int f51220f = 8;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private vp.e _binding;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private Country country = new Country();

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private final androidx.activity.result.b countryPickerLauncher;

    /* JADX INFO: renamed from: com.transsion.rewardscenter.ui.PhoneBottomSheetFragment$a, reason: from kotlin metadata */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final PhoneBottomSheetFragment a(TopUpType topUpType, SkuPoint skuPoint) {
            Intrinsics.h(topUpType, "topUpType");
            PhoneBottomSheetFragment phoneBottomSheetFragment = new PhoneBottomSheetFragment();
            Bundle bundle = new Bundle();
            bundle.putInt(EventConstants.KEY_SOURCE, topUpType.getValue());
            bundle.putSerializable("sku_point", skuPoint);
            phoneBottomSheetFragment.setArguments(bundle);
            return phoneBottomSheetFragment;
        }
    }

    public static final class b implements TextWatcher {
        public b() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            PhoneBottomSheetFragment.k0(PhoneBottomSheetFragment.this, false, 1, null);
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i11, int i12, int i13) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i11, int i12, int i13) {
        }
    }

    public PhoneBottomSheetFragment() {
        androidx.activity.result.b bVarRegisterForActivityResult = registerForActivityResult(new f.j(), new androidx.activity.result.a() { // from class: com.transsion.rewardscenter.ui.o
            @Override // androidx.activity.result.a
            public final void a(Object obj) {
                PhoneBottomSheetFragment.l0(this.f51271a, (ActivityResult) obj);
            }
        });
        Intrinsics.g(bVarRegisterForActivityResult, "registerForActivityResult(...)");
        this.countryPickerLauncher = bVarRegisterForActivityResult;
    }

    private final void j0(boolean setCursor) {
        Editable text = m0().f77386c.getText();
        String string = text != null ? text.toString() : null;
        if (string == null) {
            string = "";
        }
        boolean zB = com.transsion.rewardscenter.utils.c.f51298a.b(string);
        m0().f77385b.setEnabled(zB);
        m0().f77385b.setAlpha(zB ? 1.0f : 0.4f);
        AppCompatImageView ivClear = m0().f77388e;
        Intrinsics.g(ivClear, "ivClear");
        ivClear.setVisibility(string.length() > 0 ? 0 : 8);
        if (setCursor) {
            m0().f77386c.setSelection(string.length());
        }
    }

    static /* synthetic */ void k0(PhoneBottomSheetFragment phoneBottomSheetFragment, boolean z10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            z10 = false;
        }
        phoneBottomSheetFragment.j0(z10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void l0(PhoneBottomSheetFragment phoneBottomSheetFragment, ActivityResult result) {
        Intrinsics.h(result, "result");
        if (result.getResultCode() == -1) {
            Intent data = result.getData();
            Serializable serializableExtra = data != null ? data.getSerializableExtra("countryCode") : null;
            Country country = serializableExtra instanceof Country ? (Country) serializableExtra : null;
            if (country != null) {
                phoneBottomSheetFragment.country = country;
                vp.e eVar = phoneBottomSheetFragment._binding;
                if (eVar == null) {
                    return;
                }
                eVar.f77393j.setText("+" + country.getCode());
            }
        }
    }

    private final vp.e m0() {
        vp.e eVar = this._binding;
        Intrinsics.e(eVar);
        return eVar;
    }

    private final void n0() {
        m0().f77387d.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.rewardscenter.ui.r
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                PhoneBottomSheetFragment.o0(this.f51277a, view);
            }
        });
        m0().f77389f.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.rewardscenter.ui.s
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                PhoneBottomSheetFragment.p0(this.f51279a, view);
            }
        });
        m0().f77390g.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.rewardscenter.ui.t
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                PhoneBottomSheetFragment.q0(this.f51281a, view);
            }
        });
        m0().f77385b.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.rewardscenter.ui.u
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                PhoneBottomSheetFragment.r0(this.f51282a, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void o0(PhoneBottomSheetFragment phoneBottomSheetFragment, View view) {
        phoneBottomSheetFragment.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void p0(PhoneBottomSheetFragment phoneBottomSheetFragment, View view) {
        phoneBottomSheetFragment.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void q0(PhoneBottomSheetFragment phoneBottomSheetFragment, View view) {
        phoneBottomSheetFragment.countryPickerLauncher.a(TheRouter.c("/loginapi/select_country").l(phoneBottomSheetFragment.requireContext()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void r0(PhoneBottomSheetFragment phoneBottomSheetFragment, View view) {
        vp.e eVar = phoneBottomSheetFragment._binding;
        if (eVar == null) {
            return;
        }
        Editable text = eVar.f77386c.getText();
        String string = text != null ? text.toString() : null;
        if (string == null) {
            string = "";
        }
        if (StringsKt.q0(string) || !com.transsion.rewardscenter.utils.c.f51298a.b(string)) {
            k0(phoneBottomSheetFragment, false, 1, null);
            return;
        }
        Bundle arguments = phoneBottomSheetFragment.getArguments();
        int i11 = arguments != null ? arguments.getInt(EventConstants.KEY_SOURCE) : TopUpType.BANNER.getValue();
        eVar.f77385b.setEnabled(false);
        eVar.f77385b.setAlpha(0.4f);
        phoneBottomSheetFragment.getParentFragmentManager().F1("phone_bottom_sheet_result", androidx.core.os.d.b(TuplesKt.a(EventConstants.KEY_SOURCE, Integer.valueOf(i11)), TuplesKt.a("cc", phoneBottomSheetFragment.country.getCode()), TuplesKt.a("iso", phoneBottomSheetFragment.country.getCountry_s()), TuplesKt.a("number", string)));
    }

    private final void s0() {
        Triple tripleA = com.transsion.rewardscenter.utils.c.f51298a.a();
        Country country = this.country;
        country.setCode((String) tripleA.getFirst());
        country.setCountry_s((String) tripleA.getSecond());
        lg.a.C0828a.f(lg.a.f68839a, "RewardsCenter", "initCountry --> country: " + this.country, false, 4, null);
        String code = this.country.getCode();
        if (code != null && (!StringsKt.q0(code))) {
            m0().f77393j.setText("+" + this.country.getCode());
        }
        if (StringsKt.q0((CharSequence) tripleA.getThird())) {
            return;
        }
        m0().f77386c.setText((CharSequence) tripleA.getThird());
    }

    private final void t0() {
        j0(true);
        AppCompatEditText etPhone = m0().f77386c;
        Intrinsics.g(etPhone, "etPhone");
        etPhone.addTextChangedListener(new b());
        m0().f77388e.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.rewardscenter.ui.q
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                PhoneBottomSheetFragment.u0(this.f51275a, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void u0(PhoneBottomSheetFragment phoneBottomSheetFragment, View view) {
        phoneBottomSheetFragment.m0().f77386c.setText("");
    }

    private final void v0() {
        Bundle arguments = getArguments();
        if ((arguments != null ? arguments.getInt(EventConstants.KEY_SOURCE) : TopUpType.BANNER.getValue()) == TopUpType.PHONE_CREDIT.getValue()) {
            AppCompatTextView tvPrice = m0().f77394k;
            Intrinsics.g(tvPrice, "tvPrice");
            tvPrice.setVisibility(8);
            AppCompatTextView tvSubtitle = m0().f77396m;
            Intrinsics.g(tvSubtitle, "tvSubtitle");
            tvSubtitle.setVisibility(8);
            m0().f77385b.setText(getString(R$string.redeem_continue));
            return;
        }
        Bundle arguments2 = getArguments();
        Serializable serializable = arguments2 != null ? arguments2.getSerializable("sku_point") : null;
        SkuPoint skuPoint = serializable instanceof SkuPoint ? (SkuPoint) serializable : null;
        if (skuPoint == null) {
            AppCompatTextView tvPrice2 = m0().f77394k;
            Intrinsics.g(tvPrice2, "tvPrice");
            tvPrice2.setVisibility(8);
            AppCompatTextView tvSubtitle2 = m0().f77396m;
            Intrinsics.g(tvSubtitle2, "tvSubtitle");
            tvSubtitle2.setVisibility(8);
            return;
        }
        String currencySymbol = skuPoint.getCurrencySymbol();
        if (currencySymbol == null) {
            currencySymbol = "";
        }
        String plainString = com.cloud.hisavana.sdk.common.util.n0.a(new BigDecimal(String.valueOf(skuPoint.getPrice()))).toPlainString();
        m0().f77394k.setText(currencySymbol + plainString);
        m0().f77396m.setText(getString(R$string.payment_sheet_tips, currencySymbol + plainString));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void w0(com.google.android.material.bottomsheet.c cVar, DialogInterface dialogInterface) {
        View viewFindViewById = cVar.findViewById(R$id.design_bottom_sheet);
        if (viewFindViewById != null) {
            BottomSheetBehavior bottomSheetBehaviorM0 = BottomSheetBehavior.m0(viewFindViewById);
            bottomSheetBehaviorM0.U0(3);
            bottomSheetBehaviorM0.T0(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void x0(PhoneBottomSheetFragment phoneBottomSheetFragment) {
        Context context;
        vp.e eVar = phoneBottomSheetFragment._binding;
        if (eVar == null || (context = phoneBottomSheetFragment.getContext()) == null) {
            return;
        }
        eVar.f77386c.requestFocus();
        InputMethodManager inputMethodManager = (InputMethodManager) androidx.core.content.b.getSystemService(context, InputMethodManager.class);
        if (inputMethodManager != null) {
            inputMethodManager.showSoftInput(eVar.f77386c, 1);
        }
    }

    @Override // com.google.android.material.bottomsheet.BottomSheetDialogFragment, androidx.appcompat.app.AppCompatDialogFragment, androidx.fragment.app.DialogFragment
    public Dialog onCreateDialog(Bundle savedInstanceState) {
        Dialog dialogOnCreateDialog = super.onCreateDialog(savedInstanceState);
        Intrinsics.f(dialogOnCreateDialog, "null cannot be cast to non-null type com.google.android.material.bottomsheet.BottomSheetDialog");
        final com.google.android.material.bottomsheet.c cVar = (com.google.android.material.bottomsheet.c) dialogOnCreateDialog;
        Window window = cVar.getWindow();
        if (window != null) {
            window.setSoftInputMode(16);
        }
        cVar.setOnShowListener(new DialogInterface.OnShowListener() { // from class: com.transsion.rewardscenter.ui.p
            @Override // android.content.DialogInterface.OnShowListener
            public final void onShow(DialogInterface dialogInterface) {
                PhoneBottomSheetFragment.w0(cVar, dialogInterface);
            }
        });
        return cVar;
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        Intrinsics.h(inflater, "inflater");
        this._binding = vp.e.c(inflater, container, false);
        LinearLayoutCompat root = m0().getRoot();
        Intrinsics.g(root, "getRoot(...)");
        return root;
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this._binding = null;
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        Intrinsics.h(view, "view");
        super.onViewCreated(view, savedInstanceState);
        s0();
        v0();
        t0();
        n0();
        m0().f77386c.post(new Runnable() { // from class: com.transsion.rewardscenter.ui.n
            @Override // java.lang.Runnable
            public final void run() {
                PhoneBottomSheetFragment.x0(this.f51269a);
            }
        });
    }
}
