package com.transsion.publish.ui;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.transsion.baseui.dialog.BaseDialog;
import com.transsion.publish.R$id;
import com.transsion.publish.R$layout;
import com.transsion.publish.R$style;
import com.transsion.publish.view.operation.OperationBean;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u0000 #2\u00020\u0001:\u0001$B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0007\u0010\bJ\u0019\u0010\u000b\u001a\u00020\u00062\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0016¢\u0006\u0004\b\u000b\u0010\fJ!\u0010\r\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00042\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0016¢\u0006\u0004\b\r\u0010\u000eJ\u0019\u0010\u0010\u001a\u00020\u000f2\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0016¢\u0006\u0004\b\u0010\u0010\u0011R\u001c\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00130\u00128\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015R\u0018\u0010\u001a\u001a\u0004\u0018\u00010\u00178\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019R\u0018\u0010\u001e\u001a\u0004\u0018\u00010\u001b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001c\u0010\u001dR\u0018\u0010\"\u001a\u0004\u0018\u00010\u001f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b \u0010!¨\u0006%"}, d2 = {"Lcom/transsion/publish/ui/OpertaionVerticalDialogFragment;", "Lcom/transsion/baseui/dialog/BaseDialog;", "<init>", "()V", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "", "o0", "(Landroid/view/View;)V", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "Landroid/app/Dialog;", "onCreateDialog", "(Landroid/os/Bundle;)Landroid/app/Dialog;", "", "Lcom/transsion/publish/view/operation/OperationBean;", "c", "Ljava/util/List;", "list", "Landroidx/recyclerview/widget/RecyclerView;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Landroidx/recyclerview/widget/RecyclerView;", CampaignEx.JSON_KEY_REWARD_TEMPLATE, "Lop/i;", "e", "Lop/i;", "adapter", "Lcom/transsion/publish/adapter/a;", "f", "Lcom/transsion/publish/adapter/a;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "g", "a", "Publish_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class OpertaionVerticalDialogFragment extends BaseDialog {

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private List list;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private RecyclerView rv;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private op.i adapter;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private com.transsion.publish.adapter.a listener;

    public static final class b implements op.b {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ View f50493b;

        b(View view) {
            this.f50493b = view;
        }

        @Override // op.b
        public void a(OperationBean item, int i11) {
            com.transsion.publish.adapter.a aVar;
            Intrinsics.h(item, "item");
            int type = item.getType();
            if (type == 0) {
                com.transsion.publish.adapter.a aVar2 = OpertaionVerticalDialogFragment.this.listener;
                if (aVar2 != null) {
                    Context context = this.f50493b.getContext();
                    Intrinsics.g(context, "getContext(...)");
                    aVar2.startPhoto(context);
                    return;
                }
                return;
            }
            if (type == 1) {
                com.transsion.publish.adapter.a aVar3 = OpertaionVerticalDialogFragment.this.listener;
                if (aVar3 != null) {
                    Context context2 = this.f50493b.getContext();
                    Intrinsics.g(context2, "getContext(...)");
                    aVar3.startVideo(context2);
                    return;
                }
                return;
            }
            if (type == 2) {
                com.transsion.publish.adapter.a aVar4 = OpertaionVerticalDialogFragment.this.listener;
                if (aVar4 != null) {
                    Context context3 = this.f50493b.getContext();
                    Intrinsics.g(context3, "getContext(...)");
                    aVar4.startAudio(context3);
                    return;
                }
                return;
            }
            if (type != 3) {
                if (type == 4 && (aVar = OpertaionVerticalDialogFragment.this.listener) != null) {
                    Context context4 = this.f50493b.getContext();
                    Intrinsics.g(context4, "getContext(...)");
                    aVar.startLink(context4);
                    return;
                }
                return;
            }
            com.transsion.publish.adapter.a aVar5 = OpertaionVerticalDialogFragment.this.listener;
            if (aVar5 != null) {
                Context context5 = this.f50493b.getContext();
                Intrinsics.g(context5, "getContext(...)");
                aVar5.startWork(context5);
            }
        }
    }

    public OpertaionVerticalDialogFragment() {
        super(R$layout.opertaion_vertical_layout);
        this.list = new ArrayList();
    }

    private final void o0(View view) {
        this.rv = (RecyclerView) view.findViewById(R$id.f50310rv);
        op.i iVar = new op.i();
        this.adapter = iVar;
        iVar.setData(this.list);
        RecyclerView recyclerView = this.rv;
        if (recyclerView != null) {
            recyclerView.setLayoutManager(new LinearLayoutManager(view.getContext(), 1, false));
            recyclerView.setAdapter(this.adapter);
        }
        op.i iVar2 = this.adapter;
        if (iVar2 != null) {
            iVar2.l(new b(view));
        }
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setStyle(0, R$style.BottomDialogThemes);
    }

    @Override // androidx.fragment.app.DialogFragment
    public Dialog onCreateDialog(Bundle savedInstanceState) {
        Context contextRequireContext = requireContext();
        Intrinsics.g(contextRequireContext, "requireContext(...)");
        com.google.android.material.bottomsheet.c cVar = new com.google.android.material.bottomsheet.c(contextRequireContext, getTheme());
        Window window = cVar.getWindow();
        if (window != null) {
            window.setWindowAnimations(R$style.bottom_dialog_animations);
        }
        Window window2 = cVar.getWindow();
        if (window2 != null) {
            window2.setGravity(80);
            window2.setDimAmount(0.5f);
            WindowManager.LayoutParams attributes = window2.getAttributes();
            if (attributes == null) {
                attributes = new WindowManager.LayoutParams();
            }
            attributes.width = com.transsion.baseui.util.a.f43502a.b(contextRequireContext);
            attributes.height = -2;
            attributes.flags = 32;
            window2.setBackgroundDrawable(null);
            window2.setAttributes(attributes);
        }
        return cVar;
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        Intrinsics.h(view, "view");
        super.onViewCreated(view, savedInstanceState);
        o0(view);
    }
}
