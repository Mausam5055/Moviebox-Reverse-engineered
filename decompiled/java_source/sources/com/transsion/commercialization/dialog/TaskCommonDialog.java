package com.transsion.commercialization.dialog;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import androidx.appcompat.widget.AppCompatImageView;
import com.bumptech.glide.Glide;
import com.bumptech.glide.RequestManager;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.engine.GlideException;
import com.bumptech.glide.request.RequestListener;
import com.bumptech.glide.request.target.Target;
import com.google.android.material.imageview.ShapeableImageView;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.tn.lib.widget.R$style;
import com.transsion.baseui.dialog.BaseDialog;
import com.transsion.bean.HomePopupEntity;
import com.transsion.bean.HomePopupInfo;
import com.transsion.commercialization.R$layout;
import com.transsion.commercialization.dialog.TaskCommonDialog;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import hj.i;
import java.util.HashMap;
import kk.c;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import lg.a;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u0000 ,2\u00020\u0001:\u0001-B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0005\u0010\u0003J\u000f\u0010\u0006\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0006\u0010\u0003J\u0019\u0010\t\u001a\u00020\u00042\b\b\u0002\u0010\b\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\t\u0010\nJ\u0019\u0010\r\u001a\u00020\u00042\b\u0010\f\u001a\u0004\u0018\u00010\u000bH\u0016¢\u0006\u0004\b\r\u0010\u000eJ!\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u000f2\b\u0010\f\u001a\u0004\u0018\u00010\u000bH\u0016¢\u0006\u0004\b\u0011\u0010\u0012J\u0017\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00020\u0013H\u0016¢\u0006\u0004\b\u0015\u0010\u0016J2\u0010\u001c\u001a\u00020\u00002#\u0010\u001b\u001a\u001f\u0012\u0013\u0012\u00110\u0007¢\u0006\f\b\u0018\u0012\b\b\u0019\u0012\u0004\b\b(\u001a\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u0017¢\u0006\u0004\b\u001c\u0010\u001dJ\u0017\u0010 \u001a\u00020\u00002\b\u0010\u001f\u001a\u0004\u0018\u00010\u001e¢\u0006\u0004\b \u0010!R&\u0010$\u001a\u0012\u0012\u0004\u0012\u00020\u0007\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0018\u00010\u00178\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\"\u0010#R\u0018\u0010(\u001a\u0004\u0018\u00010%8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b&\u0010'R\u0018\u0010+\u001a\u0004\u0018\u00010\u001e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b)\u0010*¨\u0006."}, d2 = {"Lcom/transsion/commercialization/dialog/TaskCommonDialog;", "Lcom/transsion/baseui/dialog/BaseDialog;", "<init>", "()V", "", "init", "v0", "", "isClose", "t0", "(Z)V", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "Landroid/content/DialogInterface;", "dialog", "onDismiss", "(Landroid/content/DialogInterface;)V", "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", "isShow", "callback", "w0", "(Lkotlin/jvm/functions/Function1;)Lcom/transsion/commercialization/dialog/TaskCommonDialog;", "Lcom/transsion/bean/HomePopupEntity;", "homePopupEntity", "x0", "(Lcom/transsion/bean/HomePopupEntity;)Lcom/transsion/commercialization/dialog/TaskCommonDialog;", "c", "Lkotlin/jvm/functions/Function1;", "mCallback", "Lkk/c;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Lkk/c;", "bind", "e", "Lcom/transsion/bean/HomePopupEntity;", "mHomePopupEntity", "f", "a", "Commercialization_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class TaskCommonDialog extends BaseDialog {

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private Function1 mCallback;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private c bind;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private HomePopupEntity mHomePopupEntity;

    public static final class b implements RequestListener {
        b() {
        }

        @Override // com.bumptech.glide.request.RequestListener
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public boolean onResourceReady(Drawable resource, Object model, Target target, DataSource dataSource, boolean z10) {
            Intrinsics.h(resource, "resource");
            Intrinsics.h(model, "model");
            Intrinsics.h(dataSource, "dataSource");
            a.C0828a.f(a.f68839a, "zxb_popup", TaskCommonDialog.this.getClassTag() + " --> init() --> onResourceReady() --> 图片加载成功", false, 4, null);
            Function1 function1 = TaskCommonDialog.this.mCallback;
            if (function1 != null) {
            }
            TaskCommonDialog.this.v0();
            return false;
        }

        @Override // com.bumptech.glide.request.RequestListener
        public boolean onLoadFailed(GlideException glideException, Object obj, Target target, boolean z10) {
            Intrinsics.h(target, "target");
            TaskCommonDialog.this.dismissAllowingStateLoss();
            return true;
        }
    }

    public TaskCommonDialog() {
        super(R$layout.dialog_common_task_layout);
    }

    private final void init() {
        c cVar;
        ShapeableImageView shapeableImageView;
        HomePopupInfo popup;
        AppCompatImageView appCompatImageView;
        c cVar2 = this.bind;
        if (cVar2 != null && (appCompatImageView = cVar2.f66816d) != null) {
            appCompatImageView.setOnClickListener(new View.OnClickListener() { // from class: lk.f
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    TaskCommonDialog.r0(this.f68958a, view);
                }
            });
        }
        final Context context = getContext();
        if (context == null || (cVar = this.bind) == null || (shapeableImageView = cVar.f66815c) == null) {
            return;
        }
        a.C0828a.f(a.f68839a, "zxb_popup", getClassTag() + " --> init() --> mHomePopupEntity = " + this.mHomePopupEntity, false, 4, null);
        RequestManager requestManagerWith = Glide.with(context);
        HomePopupEntity homePopupEntity = this.mHomePopupEntity;
        requestManagerWith.load2((homePopupEntity == null || (popup = homePopupEntity.getPopup()) == null) ? null : popup.getImg()).listener(new b()).into(shapeableImageView);
        shapeableImageView.setOnClickListener(new View.OnClickListener() { // from class: lk.g
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TaskCommonDialog.s0(this.f68959a, context, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void r0(TaskCommonDialog taskCommonDialog, View view) {
        taskCommonDialog.t0(true);
        taskCommonDialog.dismissAllowingStateLoss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void s0(TaskCommonDialog taskCommonDialog, Context context, View view) {
        HomePopupInfo popup;
        String innerUrl;
        HomePopupInfo popup2;
        String innerUrl2;
        String externalUrl;
        HomePopupInfo popup3;
        String innerUrl3;
        HomePopupInfo popup4;
        HomePopupInfo popup5;
        com.transsion.ad.strategy.b bVar = com.transsion.ad.strategy.b.f42227a;
        HomePopupEntity homePopupEntity = taskCommonDialog.mHomePopupEntity;
        if (!bVar.g((homePopupEntity == null || (popup5 = homePopupEntity.getPopup()) == null) ? null : popup5.getExternalUrl())) {
            HomePopupEntity homePopupEntity2 = taskCommonDialog.mHomePopupEntity;
            String str = "";
            if (homePopupEntity2 == null || (popup2 = homePopupEntity2.getPopup()) == null || (innerUrl2 = popup2.getInnerUrl()) == null || StringsKt.W(innerUrl2, "oneroom://com.community.oneroom?type=", false, 2, null)) {
                zj.b bVar2 = zj.b.f79427a;
                HomePopupEntity homePopupEntity3 = taskCommonDialog.mHomePopupEntity;
                zj.b.d(bVar2, context, (homePopupEntity3 == null || (popup = homePopupEntity3.getPopup()) == null || (innerUrl = popup.getInnerUrl()) == null) ? "" : innerUrl, null, 4, null);
            } else {
                HomePopupEntity homePopupEntity4 = taskCommonDialog.mHomePopupEntity;
                if (homePopupEntity4 == null || (popup4 = homePopupEntity4.getPopup()) == null || (externalUrl = popup4.getExternalUrl()) == null) {
                    externalUrl = "";
                }
                HomePopupEntity homePopupEntity5 = taskCommonDialog.mHomePopupEntity;
                if (homePopupEntity5 != null && (popup3 = homePopupEntity5.getPopup()) != null && (innerUrl3 = popup3.getInnerUrl()) != null) {
                    str = innerUrl3;
                }
                com.transsion.ad.strategy.b.b(bVar, externalUrl, str, null, 4, null);
            }
        }
        u0(taskCommonDialog, false, 1, null);
        taskCommonDialog.dismissAllowingStateLoss();
    }

    private final void t0(boolean isClose) {
        HomePopupInfo popup;
        HomePopupInfo popup2;
        HomePopupInfo popup3;
        HashMap map = new HashMap();
        HomePopupEntity homePopupEntity = this.mHomePopupEntity;
        String name = null;
        map.put("dialog_id", String.valueOf((homePopupEntity == null || (popup3 = homePopupEntity.getPopup()) == null) ? null : Long.valueOf(popup3.getId())));
        HomePopupEntity homePopupEntity2 = this.mHomePopupEntity;
        map.put("dialog_type", String.valueOf((homePopupEntity2 == null || (popup2 = homePopupEntity2.getPopup()) == null) ? null : Integer.valueOf(popup2.getType())));
        HomePopupEntity homePopupEntity3 = this.mHomePopupEntity;
        if (homePopupEntity3 != null && (popup = homePopupEntity3.getPopup()) != null) {
            name = popup.getName();
        }
        map.put("dialog_name", String.valueOf(name));
        if (isClose) {
            map.put("dialog_close", "close");
        }
        i.f64505a.p("task_common_dialog", map);
    }

    static /* synthetic */ void u0(TaskCommonDialog taskCommonDialog, boolean z10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            z10 = false;
        }
        taskCommonDialog.t0(z10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void v0() {
        HomePopupInfo popup;
        HomePopupInfo popup2;
        HomePopupInfo popup3;
        HashMap map = new HashMap();
        HomePopupEntity homePopupEntity = this.mHomePopupEntity;
        String name = null;
        map.put("dialog_id", String.valueOf((homePopupEntity == null || (popup3 = homePopupEntity.getPopup()) == null) ? null : Long.valueOf(popup3.getId())));
        HomePopupEntity homePopupEntity2 = this.mHomePopupEntity;
        map.put("dialog_type", String.valueOf((homePopupEntity2 == null || (popup2 = homePopupEntity2.getPopup()) == null) ? null : Integer.valueOf(popup2.getType())));
        HomePopupEntity homePopupEntity3 = this.mHomePopupEntity;
        if (homePopupEntity3 != null && (popup = homePopupEntity3.getPopup()) != null) {
            name = popup.getName();
        }
        map.put("dialog_name", String.valueOf(name));
        i.f64505a.D("task_common_dialog", map);
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setStyle(0, R$style.center_DialogStyle);
        a.C0828a.f(a.f68839a, "zxb_popup", getClassTag() + " --> onCreate() --> 观看广告弹窗", false, 4, null);
    }

    @Override // com.transsion.baseui.dialog.BaseDialog, androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialog) {
        Intrinsics.h(dialog, "dialog");
        super.onDismiss(dialog);
        Function1 function1 = this.mCallback;
        if (function1 != null) {
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        Window window;
        Window window2;
        Intrinsics.h(view, "view");
        super.onViewCreated(view, savedInstanceState);
        Dialog dialog = getDialog();
        if (dialog != null && (window2 = dialog.getWindow()) != null) {
            window2.setLayout(-1, -2);
        }
        Dialog dialog2 = getDialog();
        if (dialog2 != null && (window = dialog2.getWindow()) != null) {
            window.setGravity(17);
        }
        Dialog dialog3 = getDialog();
        if (dialog3 != null) {
            dialog3.setCancelable(false);
        }
        this.bind = c.a(view);
        init();
    }

    public final TaskCommonDialog w0(Function1 callback) {
        Intrinsics.h(callback, "callback");
        this.mCallback = callback;
        return this;
    }

    public final TaskCommonDialog x0(HomePopupEntity homePopupEntity) {
        this.mHomePopupEntity = homePopupEntity;
        return this;
    }
}
