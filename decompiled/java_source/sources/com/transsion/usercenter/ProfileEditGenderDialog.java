package com.transsion.usercenter;

import android.app.Dialog;
import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.TextView;
import androidx.fragment.app.DialogFragment;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0007\u0010\bJ-\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\n\u001a\u00020\t2\b\u0010\f\u001a\u0004\u0018\u00010\u000b2\b\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u0012\u0010\u0003J!\u0010\u0014\u001a\u00020\u00062\u0006\u0010\u0013\u001a\u00020\u000f2\b\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0016¢\u0006\u0004\b\u0014\u0010\u0015R3\u0010\u001b\u001a\u001f\u0012\u0013\u0012\u00110\u0004¢\u0006\f\b\u0017\u0012\b\b\u0018\u0012\u0004\b\b(\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u00168\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0019\u0010\u001aR\u0016\u0010\u001e\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001c\u0010\u001d¨\u0006\u001f"}, d2 = {"Lcom/transsion/usercenter/ProfileEditGenderDialog;", "Landroidx/fragment/app/DialogFragment;", "<init>", "()V", "", "code", "", "c0", "(I)V", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/os/Bundle;", "savedInstanceState", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", TmcConstants.NAVIGATION_ON_START, MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", "a", "Lkotlin/jvm/functions/Function1;", "callback", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "I", "selectorItem", "UserCenter_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class ProfileEditGenderDialog extends DialogFragment {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private Function1 callback = new Function1() { // from class: com.transsion.usercenter.l
        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Object obj) {
            return ProfileEditGenderDialog.b0(((Integer) obj).intValue());
        }
    };

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private int selectorItem;

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit b0(int i11) {
        return Unit.f67061a;
    }

    private final void c0(int code) {
        this.callback.invoke(Integer.valueOf(code));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void d0(ProfileEditGenderDialog profileEditGenderDialog, View view) {
        profileEditGenderDialog.c0(1);
        profileEditGenderDialog.dismissAllowingStateLoss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void e0(ProfileEditGenderDialog profileEditGenderDialog, View view) {
        profileEditGenderDialog.c0(2);
        profileEditGenderDialog.dismissAllowingStateLoss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void f0(ProfileEditGenderDialog profileEditGenderDialog, View view) {
        profileEditGenderDialog.c0(0);
        profileEditGenderDialog.dismissAllowingStateLoss();
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        Intrinsics.h(inflater, "inflater");
        return inflater.inflate(R$layout.profile_edit_gender_dialog, container, false);
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onStart() {
        Window window;
        super.onStart();
        Dialog dialog = getDialog();
        if (dialog == null || (window = dialog.getWindow()) == null) {
            return;
        }
        WindowManager.LayoutParams attributes = window.getAttributes();
        Intrinsics.g(attributes, "getAttributes(...)");
        attributes.gravity = 80;
        attributes.width = -1;
        window.setAttributes(attributes);
        window.setBackgroundDrawable(new ColorDrawable(0));
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        TextView textView;
        Context context;
        Intrinsics.h(view, "view");
        super.onViewCreated(view, savedInstanceState);
        ((TextView) view.findViewById(R$id.tvFemale)).setOnClickListener(new View.OnClickListener() { // from class: com.transsion.usercenter.m
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                ProfileEditGenderDialog.d0(this.f56873a, view2);
            }
        });
        ((TextView) view.findViewById(R$id.tvMale)).setOnClickListener(new View.OnClickListener() { // from class: com.transsion.usercenter.n
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                ProfileEditGenderDialog.e0(this.f57038a, view2);
            }
        });
        ((TextView) view.findViewById(R$id.tvNotToSay)).setOnClickListener(new View.OnClickListener() { // from class: com.transsion.usercenter.o
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                ProfileEditGenderDialog.f0(this.f57039a, view2);
            }
        });
        int i11 = this.selectorItem;
        if (i11 > 0) {
            if (i11 != 1) {
                textView = i11 != 2 ? null : (TextView) view.findViewById(R$id.tvMale);
            } else {
                textView = (TextView) view.findViewById(R$id.tvFemale);
            }
            if (textView == null || (context = getContext()) == null) {
                return;
            }
            androidx.core.content.b.getColor(context, com.tn.lib.widget.R$color.cl32);
        }
    }
}
