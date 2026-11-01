package com.transsion.home.fragment.dialog;

import android.app.Dialog;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.cloud.config.utils.XLogUtil;
import com.google.android.flexbox.FlexboxLayoutManager;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.noober.background.view.BLTextView;
import com.transsion.baseui.R$style;
import com.transsion.baseui.dialog.BaseDialog;
import com.transsion.home.R$id;
import com.transsion.home.R$layout;
import com.transsion.home.bean.HomePreferencesConfig;
import com.transsion.home.bean.HomePreferencesSelectType;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.LinkedHashSet;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010#\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\b\n\b\u0007\u0018\u0000 -2\u00020\u0001:\u0001.B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0019\u0010\u0007\u001a\u00020\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0002¢\u0006\u0004\b\u0007\u0010\bJ\u0015\u0010\u000b\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u000b\u0010\fJ\u0019\u0010\u000f\u001a\u00020\u00062\b\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0016¢\u0006\u0004\b\u000f\u0010\u0010J!\u0010\u0013\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u00112\b\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0016¢\u0006\u0004\b\u0013\u0010\u0014R\u0018\u0010\n\u001a\u0004\u0018\u00010\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016R\u001a\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u00180\u00178\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0019\u0010\u001aR*\u0010#\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u001c8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001d\u0010\u001e\u001a\u0004\b\u001f\u0010 \"\u0004\b!\u0010\"R6\u0010,\u001a\u0016\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00180%\u0012\u0004\u0012\u00020\u0006\u0018\u00010$8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b&\u0010'\u001a\u0004\b(\u0010)\"\u0004\b*\u0010+¨\u0006/"}, d2 = {"Lcom/transsion/home/fragment/dialog/HomePreferencesEnterPopDialog;", "Lcom/transsion/baseui/dialog/BaseDialog;", "<init>", "()V", "Lcom/noober/background/view/BLTextView;", "button", "", "w0", "(Lcom/noober/background/view/BLTextView;)V", "Lcom/transsion/home/bean/HomePreferencesConfig;", XLogUtil.TAG, "t0", "(Lcom/transsion/home/bean/HomePreferencesConfig;)V", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "c", "Lcom/transsion/home/bean/HomePreferencesConfig;", "", "", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Ljava/util/Set;", "selectedIds", "Lkotlin/Function0;", "e", "Lkotlin/jvm/functions/Function0;", "getOnSkip", "()Lkotlin/jvm/functions/Function0;", "v0", "(Lkotlin/jvm/functions/Function0;)V", "onSkip", "Lkotlin/Function1;", "", "f", "Lkotlin/jvm/functions/Function1;", "getOnConfirm", "()Lkotlin/jvm/functions/Function1;", "u0", "(Lkotlin/jvm/functions/Function1;)V", "onConfirm", "g", "a", "Home_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class HomePreferencesEnterPopDialog extends BaseDialog {

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final int f44915h = 8;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private HomePreferencesConfig config;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private final Set selectedIds;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private Function0 onSkip;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private Function1 onConfirm;

    /* JADX INFO: renamed from: com.transsion.home.fragment.dialog.HomePreferencesEnterPopDialog$a, reason: from kotlin metadata */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final HomePreferencesEnterPopDialog a() {
            return new HomePreferencesEnterPopDialog();
        }
    }

    public HomePreferencesEnterPopDialog() {
        super(R$layout.dialog_home_preferences_enter_pop);
        this.selectedIds = new LinkedHashSet();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit q0(HomePreferencesEnterPopDialog homePreferencesEnterPopDialog, BLTextView bLTextView) {
        homePreferencesEnterPopDialog.w0(bLTextView);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void r0(HomePreferencesEnterPopDialog homePreferencesEnterPopDialog, View view) {
        if (homePreferencesEnterPopDialog.selectedIds.isEmpty()) {
            return;
        }
        Function1 function1 = homePreferencesEnterPopDialog.onConfirm;
        if (function1 != null) {
            function1.invoke(CollectionsKt.R0(homePreferencesEnterPopDialog.selectedIds));
        }
        homePreferencesEnterPopDialog.dismissAllowingStateLoss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void s0(HomePreferencesEnterPopDialog homePreferencesEnterPopDialog, View view) {
        Function0 function0 = homePreferencesEnterPopDialog.onSkip;
        if (function0 != null) {
            function0.invoke();
        }
        homePreferencesEnterPopDialog.dismissAllowingStateLoss();
    }

    private final void w0(BLTextView button) {
        if (button != null) {
            button.setAlpha(this.selectedIds.isEmpty() ? 0.5f : 1.0f);
        }
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setStyle(0, R$style.BottomDialogTheme);
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        Window window;
        Intrinsics.h(view, "view");
        super.onViewCreated(view, savedInstanceState);
        Dialog dialog = getDialog();
        if (dialog != null) {
            dialog.setCancelable(false);
        }
        Dialog dialog2 = getDialog();
        if (dialog2 != null && (window = dialog2.getWindow()) != null) {
            window.setLayout(-1, -2);
            window.setGravity(80);
        }
        HomePreferencesConfig homePreferencesConfig = this.config;
        if (homePreferencesConfig == null) {
            return;
        }
        ((TextView) view.findViewById(R$id.tvTitle)).setText(homePreferencesConfig.getTitle());
        TextView textView = (TextView) view.findViewById(R$id.tvSubtitle);
        String subTitle = homePreferencesConfig.getSubTitle();
        if (subTitle == null || StringsKt.q0(subTitle)) {
            textView.setVisibility(8);
        } else {
            textView.setText(homePreferencesConfig.getSubTitle());
            textView.setVisibility(0);
        }
        final BLTextView bLTextView = (BLTextView) view.findViewById(R$id.btnConfirm);
        w0(bLTextView);
        com.transsion.home.adapter.preferences.b bVar = new com.transsion.home.adapter.preferences.b(this.selectedIds, Intrinsics.c(homePreferencesConfig.getSelectType(), HomePreferencesSelectType.SINGLE.getValue()), homePreferencesConfig.getMaxSelectNum(), new Function0() { // from class: com.transsion.home.fragment.dialog.l
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return HomePreferencesEnterPopDialog.q0(this.f44940a, bLTextView);
            }
        });
        bVar.p1(CollectionsKt.U0(homePreferencesConfig.getOptions()));
        RecyclerView recyclerView = (RecyclerView) view.findViewById(R$id.rvTags);
        FlexboxLayoutManager flexboxLayoutManager = new FlexboxLayoutManager(view.getContext());
        flexboxLayoutManager.c0(0);
        flexboxLayoutManager.d0(1);
        flexboxLayoutManager.e0(2);
        flexboxLayoutManager.b0(0);
        recyclerView.setLayoutManager(flexboxLayoutManager);
        recyclerView.setAdapter(bVar);
        recyclerView.setNestedScrollingEnabled(false);
        bLTextView.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.home.fragment.dialog.m
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                HomePreferencesEnterPopDialog.r0(this.f44942a, view2);
            }
        });
        view.findViewById(R$id.btnSkip).setOnClickListener(new View.OnClickListener() { // from class: com.transsion.home.fragment.dialog.n
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                HomePreferencesEnterPopDialog.s0(this.f44943a, view2);
            }
        });
    }

    public final void t0(HomePreferencesConfig config) {
        Intrinsics.h(config, "config");
        this.config = config;
        this.selectedIds.clear();
    }

    public final void u0(Function1 function1) {
        this.onConfirm = function1;
    }

    public final void v0(Function0 function0) {
        this.onSkip = function0;
    }
}
