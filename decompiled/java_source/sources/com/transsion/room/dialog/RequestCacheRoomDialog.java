package com.transsion.room.dialog;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.fragment.app.FragmentManager;
import bq.k;
import com.cloud.tmc.integration.event.EventConstants;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.google.android.material.bottomsheet.c;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.transsion.baseui.R$style;
import com.transsion.baseui.dialog.BaseDialog;
import com.transsion.baseui.util.a;
import com.transsion.mb.config.manager.ConfigBean;
import com.transsion.push.PushConstants;
import com.transsion.room.R$layout;
import com.transsion.room.dialog.RequestCacheRoomDialog;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import hj.i;
import java.util.HashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import sm.f;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0006\u0018\u0000 22\u00020\u0001:\u00013B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0007\u0010\bJ\u0019\u0010\u000b\u001a\u00020\u00062\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0016¢\u0006\u0004\b\u000b\u0010\fJ!\u0010\r\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00042\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0016¢\u0006\u0004\b\r\u0010\u000eJ\u0017\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0011\u0010\u0012J\u001b\u0010\u0015\u001a\u00020\u00062\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00060\u0013¢\u0006\u0004\b\u0015\u0010\u0016J\u0019\u0010\u0018\u001a\u00020\u00172\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0016¢\u0006\u0004\b\u0018\u0010\u0019J#\u0010\u001d\u001a\u00020\u00062\u0014\u0010\u001c\u001a\u0010\u0012\u0004\u0012\u00020\u001b\u0012\u0006\u0012\u0004\u0018\u00010\u001b0\u001a¢\u0006\u0004\b\u001d\u0010\u001eJ!\u0010\"\u001a\u00020\u00062\u0006\u0010 \u001a\u00020\u001f2\b\u0010!\u001a\u0004\u0018\u00010\u001bH\u0016¢\u0006\u0004\b\"\u0010#J\u000f\u0010$\u001a\u00020\u0006H\u0016¢\u0006\u0004\b$\u0010\u0003R \u0010'\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0018\u00010\u00138\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b%\u0010&R\u001e\u0010)\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00138\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b(\u0010&R\u0018\u0010-\u001a\u0004\u0018\u00010*8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b+\u0010,R\u0016\u00101\u001a\u00020.8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b/\u00100¨\u00064"}, d2 = {"Lcom/transsion/room/dialog/RequestCacheRoomDialog;", "Lcom/transsion/baseui/dialog/BaseDialog;", "<init>", "()V", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "", "p0", "(Landroid/view/View;)V", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "Landroid/content/DialogInterface;", "dialog", "onDismiss", "(Landroid/content/DialogInterface;)V", "Lkotlin/Function0;", "call", "t0", "(Lkotlin/jvm/functions/Function0;)V", "Landroid/app/Dialog;", "onCreateDialog", "(Landroid/os/Bundle;)Landroid/app/Dialog;", "", "", "map", "s0", "(Ljava/util/Map;)V", "Landroidx/fragment/app/FragmentManager;", "manager", "tag", PushConstants.PUSH_SERVICE_TYPE_SHOW, "(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V", "onDestroyView", "c", "Lkotlin/jvm/functions/Function0;", "dismissListener", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "callback", "Lbq/k;", "e", "Lbq/k;", "viewBinding", "", "f", "Z", "isReport", "g", "a", "Room_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class RequestCacheRoomDialog extends BaseDialog {

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private Function0 dismissListener;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private Function0 callback;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private k viewBinding;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private boolean isReport;

    /* JADX INFO: renamed from: com.transsion.room.dialog.RequestCacheRoomDialog$a, reason: from kotlin metadata */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final RequestCacheRoomDialog a() {
            return new RequestCacheRoomDialog();
        }
    }

    public RequestCacheRoomDialog() {
        super(R$layout.dialog_request_cache_room_list);
    }

    private final void p0(View view) {
        AppCompatImageView appCompatImageView;
        View view2;
        k kVar;
        AppCompatTextView appCompatTextView;
        String value;
        ConfigBean configBeanC = f.f75407c.a().c("room_cache_dialog_desc", true);
        this.viewBinding = k.a(view);
        String string = null;
        String value2 = configBeanC != null ? configBeanC.getValue() : null;
        if (value2 != null && value2.length() != 0 && (kVar = this.viewBinding) != null && (appCompatTextView = kVar.f16786f) != null) {
            if (configBeanC != null && (value = configBeanC.getValue()) != null) {
                string = value.toString();
            }
            appCompatTextView.setText(string);
        }
        k kVar2 = this.viewBinding;
        if (kVar2 != null && (view2 = kVar2.f16782b) != null) {
            view2.setOnClickListener(new View.OnClickListener() { // from class: dq.a
                @Override // android.view.View.OnClickListener
                public final void onClick(View view3) {
                    RequestCacheRoomDialog.q0(this.f61403a, view3);
                }
            });
        }
        k kVar3 = this.viewBinding;
        if (kVar3 == null || (appCompatImageView = kVar3.f16783c) == null) {
            return;
        }
        appCompatImageView.setOnClickListener(new View.OnClickListener() { // from class: dq.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view3) {
                RequestCacheRoomDialog.r0(this.f61404a, view3);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void q0(RequestCacheRoomDialog requestCacheRoomDialog, View view) {
        Function0 function0 = requestCacheRoomDialog.callback;
        if (function0 != null) {
            function0.invoke();
        }
        HashMap map = new HashMap();
        map.put(NativeComponentConstants.KEY_COMPONENT_TYPE, "allow");
        requestCacheRoomDialog.s0(map);
        requestCacheRoomDialog.isReport = true;
        requestCacheRoomDialog.dismissAllowingStateLoss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void r0(RequestCacheRoomDialog requestCacheRoomDialog, View view) {
        HashMap map = new HashMap();
        map.put(NativeComponentConstants.KEY_COMPONENT_TYPE, "back");
        requestCacheRoomDialog.s0(map);
        requestCacheRoomDialog.isReport = true;
        requestCacheRoomDialog.dismissAllowingStateLoss();
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setStyle(0, R$style.BottomDialogTheme);
    }

    @Override // androidx.fragment.app.DialogFragment
    public Dialog onCreateDialog(Bundle savedInstanceState) {
        Context contextRequireContext = requireContext();
        Intrinsics.g(contextRequireContext, "requireContext(...)");
        c cVar = new c(contextRequireContext, getTheme());
        Window window = cVar.getWindow();
        if (window != null) {
            window.setWindowAnimations(R$style.BaseBottomDialogAnimation);
        }
        Window window2 = cVar.getWindow();
        if (window2 != null) {
            window2.setGravity(80);
            window2.setDimAmount(0.5f);
            WindowManager.LayoutParams attributes = window2.getAttributes();
            if (attributes == null) {
                attributes = new WindowManager.LayoutParams();
            }
            attributes.width = a.f43502a.b(contextRequireContext);
            window2.setBackgroundDrawable(null);
            window2.setAttributes(attributes);
        }
        return cVar;
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        HashMap map = new HashMap();
        map.put(NativeComponentConstants.KEY_COMPONENT_TYPE, "others");
        s0(map);
        this.isReport = false;
    }

    @Override // com.transsion.baseui.dialog.BaseDialog, androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialog) {
        Intrinsics.h(dialog, "dialog");
        super.onDismiss(dialog);
        Function0 function0 = this.dismissListener;
        if (function0 != null) {
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        Intrinsics.h(view, "view");
        super.onViewCreated(view, savedInstanceState);
        p0(view);
    }

    public final void s0(Map map) {
        Intrinsics.h(map, "map");
        if (this.isReport) {
            return;
        }
        i.f64505a.p("request_room_cache", map);
    }

    @Override // com.transsion.baseui.dialog.BaseDialog, androidx.fragment.app.DialogFragment
    public void show(FragmentManager manager, String tag) {
        Intrinsics.h(manager, "manager");
        super.show(manager, tag);
        HashMap map = new HashMap();
        map.put(EventConstants.KEY_ACTION, PushConstants.PUSH_SERVICE_TYPE_SHOW);
        i.f64505a.D("request_room_cache", map);
    }

    public final void t0(Function0 call) {
        Intrinsics.h(call, "call");
        this.callback = call;
    }
}
