package com.transsnet.downloader.dialog;

import android.app.Dialog;
import android.graphics.Color;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.ViewPager2;
import com.bumptech.glide.Glide;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.tn.lib.view.indicator.CircleIndicator;
import com.tn.lib.widget.R$style;
import com.transsion.baseui.dialog.BaseDialog;
import com.transsnet.downloader.R$id;
import com.transsnet.downloader.R$layout;
import com.transsnet.downloader.R$mipmap;
import com.transsnet.downloader.R$string;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\u0010\b\n\u0002\b\t\u0018\u0000 \u00192\u00020\u0001:\u0002\u001a\u001bB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0005\u0010\u0003J\u0019\u0010\b\u001a\u00020\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016¢\u0006\u0004\b\b\u0010\tJ!\u0010\f\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\n2\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016¢\u0006\u0004\b\f\u0010\rR\u0018\u0010\u0011\u001a\u0004\u0018\u00010\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010R\u001a\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00130\u00128\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015R\u001a\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00130\u00128\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0017\u0010\u0015¨\u0006\u001c"}, d2 = {"Lcom/transsnet/downloader/dialog/TransferGuideDialog;", "Lcom/transsion/baseui/dialog/BaseDialog;", "<init>", "()V", "", "initView", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "Lpy/o;", "c", "Lpy/o;", "bind", "", "", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "[Ljava/lang/Integer;", "imageIds", "e", "descIds", "f", "a", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Downloader_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class TransferGuideDialog extends BaseDialog {

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private py.o bind;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private final Integer[] imageIds;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private final Integer[] descIds;

    /* JADX INFO: renamed from: com.transsnet.downloader.dialog.TransferGuideDialog$a, reason: from kotlin metadata */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final boolean a() {
            return com.transsnet.downloader.util.f0.f59935a.c();
        }

        public final TransferGuideDialog b() {
            TransferGuideDialog transferGuideDialog = new TransferGuideDialog();
            transferGuideDialog.setArguments(new Bundle());
            return transferGuideDialog;
        }

        public final void c() {
            com.transsnet.downloader.util.f0.f59935a.e(true);
        }
    }

    public static final class b extends RecyclerView.Adapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Integer[] f58721a;

        public static final class a extends RecyclerView.b0 {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private final ImageView f58722a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(View itemView) {
                super(itemView);
                Intrinsics.h(itemView, "itemView");
                View viewFindViewById = itemView.findViewById(R$id.f58409iv);
                Intrinsics.g(viewFindViewById, "findViewById(...)");
                this.f58722a = (ImageView) viewFindViewById;
            }

            public final ImageView f() {
                return this.f58722a;
            }
        }

        public b(Integer[] dataList) {
            Intrinsics.h(dataList, "dataList");
            this.f58721a = dataList;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
        public void onBindViewHolder(a holder, int i11) {
            Intrinsics.h(holder, "holder");
            Integer num = this.f58721a[i11];
            num.intValue();
            Glide.with(holder.f()).load2(num).into(holder.f());
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return this.f58721a.length;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
        public a onCreateViewHolder(ViewGroup parent, int i11) {
            Intrinsics.h(parent, "parent");
            View viewInflate = LayoutInflater.from(parent.getContext()).inflate(R$layout.adapter_transfer_tips_dialog_item, parent, false);
            Intrinsics.g(viewInflate, "inflate(...)");
            return new a(viewInflate);
        }
    }

    public static final class c extends ViewPager2.OnPageChangeCallback {
        c() {
        }

        @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
        public void onPageSelected(int i11) {
            TextView textView;
            CircleIndicator circleIndicator;
            TextView textView2;
            TextView textView3;
            super.onPageSelected(i11);
            py.o oVar = TransferGuideDialog.this.bind;
            if (oVar != null && (textView3 = oVar.f72859b) != null) {
                TransferGuideDialog transferGuideDialog = TransferGuideDialog.this;
                textView3.setText(transferGuideDialog.getString(transferGuideDialog.descIds[i11].intValue()));
            }
            if (i11 == TransferGuideDialog.this.imageIds.length - 1) {
                py.o oVar2 = TransferGuideDialog.this.bind;
                if (oVar2 != null && (textView2 = oVar2.f72863f) != null) {
                    textView2.setText(TransferGuideDialog.this.getString(R$string.download_tab_transfer_tips_get));
                }
            } else {
                py.o oVar3 = TransferGuideDialog.this.bind;
                if (oVar3 != null && (textView = oVar3.f72863f) != null) {
                    textView.setText(TransferGuideDialog.this.getString(R$string.download_tab_transfer_tips_next));
                }
            }
            py.o oVar4 = TransferGuideDialog.this.bind;
            if (oVar4 == null || (circleIndicator = oVar4.f72861d) == null) {
                return;
            }
            circleIndicator.onPageSelected(i11 % TransferGuideDialog.this.imageIds.length);
        }
    }

    public TransferGuideDialog() {
        super(R$layout.dialog_transfer_tips_layout);
        this.imageIds = new Integer[]{Integer.valueOf(R$mipmap.image_transfer_tips_step1), Integer.valueOf(R$mipmap.image_transfer_tips_step2), Integer.valueOf(R$mipmap.image_transfer_tips_step3)};
        this.descIds = new Integer[]{Integer.valueOf(R$string.download_tab_transfer_tips_desc_1), Integer.valueOf(R$string.download_tab_transfer_tips_desc_2), Integer.valueOf(R$string.download_tab_transfer_tips_desc_3)};
    }

    private final void initView() {
        CircleIndicator circleIndicator;
        CircleIndicator circleIndicator2;
        com.tn.lib.view.indicator.a indicatorConfig;
        AppCompatImageView appCompatImageView;
        TextView textView;
        ViewPager2 viewPager2;
        py.o oVar = this.bind;
        if (oVar != null && (viewPager2 = oVar.f72860c) != null) {
            viewPager2.registerOnPageChangeCallback(new c());
            viewPager2.setAdapter(new b(this.imageIds));
            viewPager2.setCurrentItem(0);
        }
        py.o oVar2 = this.bind;
        if (oVar2 != null && (textView = oVar2.f72863f) != null) {
            textView.setOnClickListener(new View.OnClickListener() { // from class: com.transsnet.downloader.dialog.i0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    TransferGuideDialog.t0(this.f58742a, view);
                }
            });
        }
        py.o oVar3 = this.bind;
        if (oVar3 != null && (appCompatImageView = oVar3.f72862e) != null) {
            appCompatImageView.setOnClickListener(new View.OnClickListener() { // from class: com.transsnet.downloader.dialog.j0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    TransferGuideDialog.u0(this.f58744a, view);
                }
            });
        }
        py.o oVar4 = this.bind;
        if (oVar4 != null && (circleIndicator2 = oVar4.f72861d) != null && (indicatorConfig = circleIndicator2.getIndicatorConfig()) != null) {
            indicatorConfig.s(Color.parseColor("#10A84D"));
            indicatorConfig.q(Color.parseColor("#66FFFFFF"));
            indicatorConfig.r(com.blankj.utilcode.util.a0.a(8.0f));
            indicatorConfig.t(com.blankj.utilcode.util.a0.a(8.0f));
            indicatorConfig.n(this.imageIds.length);
        }
        py.o oVar5 = this.bind;
        if (oVar5 == null || (circleIndicator = oVar5.f72861d) == null) {
            return;
        }
        circleIndicator.post(new Runnable() { // from class: com.transsnet.downloader.dialog.k0
            @Override // java.lang.Runnable
            public final void run() {
                TransferGuideDialog.v0(this.f58746a);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void t0(TransferGuideDialog transferGuideDialog, View view) {
        ViewPager2 viewPager2;
        ViewPager2 viewPager3;
        py.o oVar = transferGuideDialog.bind;
        int currentItem = (oVar == null || (viewPager3 = oVar.f72860c) == null) ? 0 : viewPager3.getCurrentItem();
        if (currentItem == transferGuideDialog.imageIds.length - 1) {
            transferGuideDialog.dismissAllowingStateLoss();
            return;
        }
        int i11 = currentItem + 1;
        py.o oVar2 = transferGuideDialog.bind;
        if (oVar2 == null || (viewPager2 = oVar2.f72860c) == null) {
            return;
        }
        viewPager2.setCurrentItem(i11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void u0(TransferGuideDialog transferGuideDialog, View view) {
        transferGuideDialog.dismissAllowingStateLoss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void v0(TransferGuideDialog transferGuideDialog) {
        CircleIndicator circleIndicator;
        py.o oVar = transferGuideDialog.bind;
        if (oVar == null || (circleIndicator = oVar.f72861d) == null) {
            return;
        }
        circleIndicator.requestLayout();
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setStyle(0, R$style.center_DialogStyle);
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
            dialog3.setCancelable(true);
        }
        Dialog dialog4 = getDialog();
        if (dialog4 != null) {
            dialog4.setCanceledOnTouchOutside(false);
        }
        this.bind = py.o.a(view);
        initView();
    }
}
