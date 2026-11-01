package com.transsion.shorttv_pugc.ui.dialog;

import android.app.Dialog;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentViewModelLazyKt;
import androidx.p009lifecycle.v0;
import androidx.p009lifecycle.x0;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.transsion.shorttv.R$id;
import com.transsion.shorttv.R$layout;
import com.transsion.shorttv.R$style;
import com.transsion.shorttv_pugc.ShorttvModel;
import com.transsion.shorttv_pugc.base.dialog.BaseDialog;
import com.transsion.shorttv_pugc.ui.adapter.r;
import com.transsion.shorttv_pugc.ui.fragment.ShotTvDialogListFragment;
import com.transsion.shorttv_pugc.utils.ShortTvExtKt;
import com.transsion.shorttv_pugc.viewmodel.ShortTvViewModel;
import com.transsion.web.api.WebConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.IntRange;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u0000 \"2\u00020\u0001:\u0001#B\u0011\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0015\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\t\u0010\nJ!\u0010\u000f\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\u000b2\b\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0016¢\u0006\u0004\b\u000f\u0010\u0010J\u0019\u0010\u0012\u001a\u00020\u00112\b\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0016¢\u0006\u0004\b\u0012\u0010\u0013R\u0019\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017R\u0018\u0010\u001b\u001a\u0004\u0018\u00010\u00188\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0019\u0010\u001aR\u001b\u0010!\u001a\u00020\u001c8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001d\u0010\u001e\u001a\u0004\b\u001f\u0010 ¨\u0006$"}, d2 = {"Lcom/transsion/shorttv_pugc/ui/dialog/ShortTvEpisodeListDialog;", "Lcom/transsion/shorttv_pugc/base/dialog/BaseDialog;", "", "ops", "<init>", "(Ljava/lang/String;)V", "Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;", WebConstants.FIELD_ITEM, "", "n0", "(Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;)V", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "Landroid/os/Bundle;", "savedInstanceState", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "Landroid/app/Dialog;", "onCreateDialog", "(Landroid/os/Bundle;)Landroid/app/Dialog;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Ljava/lang/String;", "getOps", "()Ljava/lang/String;", "Lms/c;", "c", "Lms/c;", "binding", "Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Lkotlin/Lazy;", "k0", "()Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;", "viewModel", "e", "a", "shortTvLib_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class ShortTvEpisodeListDialog extends BaseDialog {

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private final String ops;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private ms.c binding;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private final Lazy viewModel;

    public ShortTvEpisodeListDialog(String str) {
        super(R$layout.pugc_short_tv_dialog_episode_list);
        this.ops = str;
        this.viewModel = FragmentViewModelLazyKt.a(this, Reflection.b(ShortTvViewModel.class), new Function0<x0>() { // from class: com.transsion.shorttv_pugc.ui.dialog.ShortTvEpisodeListDialog$special$$inlined$activityViewModels$default$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final x0 invoke() {
                x0 viewModelStore = this.requireActivity().getViewModelStore();
                Intrinsics.g(viewModelStore, "requireActivity().viewModelStore");
                return viewModelStore;
            }
        }, new Function0<v0.c>() { // from class: com.transsion.shorttv_pugc.ui.dialog.ShortTvEpisodeListDialog$special$$inlined$activityViewModels$default$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final v0.c invoke() {
                v0.c defaultViewModelProviderFactory = this.requireActivity().getDefaultViewModelProviderFactory();
                Intrinsics.g(defaultViewModelProviderFactory, "requireActivity().defaultViewModelProviderFactory");
                return defaultViewModelProviderFactory;
            }
        });
    }

    private final ShortTvViewModel k0() {
        return (ShortTvViewModel) this.viewModel.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void l0(ShortTvEpisodeListDialog shortTvEpisodeListDialog, View view) {
        shortTvEpisodeListDialog.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v2, types: [T, kotlin.ranges.IntProgression, kotlin.ranges.IntRange] */
    /* JADX WARN: Type inference failed for: r3v6, types: [T, com.transsion.shorttv_pugc.ui.fragment.ShotTvDialogListFragment] */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public static final void m0(List list, Ref.ObjectRef objectRef, r rVar, ShortTvEpisodeListDialog shortTvEpisodeListDialog, Ref.ObjectRef objectRef2, BaseQuickAdapter baseQuickAdapter, View view, int i11) {
        Intrinsics.h(baseQuickAdapter, "<unused var>");
        Intrinsics.h(view, "<unused var>");
        ?? r11 = (IntRange) CollectionsKt.l0(list, i11);
        if (r11 == 0 || ((IntRange) objectRef.element).getFirst() == r11.getFirst()) {
            return;
        }
        rVar.E1(r11);
        Fragment fragmentK0 = shortTvEpisodeListDialog.getChildFragmentManager().k0(String.valueOf(r11.getFirst()));
        if (fragmentK0 != null) {
            shortTvEpisodeListDialog.getChildFragmentManager().p().p((Fragment) objectRef2.element).y(fragmentK0).l();
        } else {
            fragmentK0 = ShotTvDialogListFragment.INSTANCE.a(r11);
            shortTvEpisodeListDialog.getChildFragmentManager().p().p((Fragment) objectRef2.element).c(R$id.content_container, fragmentK0, String.valueOf(r11.getFirst())).l();
        }
        Intrinsics.f(fragmentK0, "null cannot be cast to non-null type com.transsion.shorttv_pugc.ui.fragment.ShotTvDialogListFragment");
        objectRef2.element = (ShotTvDialogListFragment) fragmentK0;
        objectRef.element = r11;
    }

    public final void n0(ShorttvModel.UGCVideo item) {
        Intrinsics.h(item, "item");
        k0().c0(item.getEp());
        dismissAllowingStateLoss();
    }

    @Override // androidx.fragment.app.DialogFragment
    public Dialog onCreateDialog(Bundle savedInstanceState) {
        Dialog dialogOnCreateDialog = super.onCreateDialog(savedInstanceState);
        Intrinsics.g(dialogOnCreateDialog, "onCreateDialog(...)");
        Window window = dialogOnCreateDialog.getWindow();
        if (window != null) {
            window.setWindowAnimations(R$style.ShortTvBottomDialogTheme);
            window.setGravity(80);
            window.setDimAmount(0.5f);
            window.getDecorView().setPadding(0, 0, 0, 0);
            WindowManager.LayoutParams attributes = window.getAttributes();
            if (attributes == null) {
                attributes = new WindowManager.LayoutParams();
            }
            attributes.width = -1;
            window.setBackgroundDrawable(null);
            window.setAttributes(attributes);
        }
        return dialogOnCreateDialog;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v4, types: [T, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v12, types: [T, kotlin.ranges.IntRange] */
    /* JADX WARN: Type inference failed for: r2v8, types: [T, com.transsion.shorttv_pugc.ui.fragment.ShotTvDialogListFragment] */
    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        Intrinsics.h(view, "view");
        super.onViewCreated(view, savedInstanceState);
        ms.c cVarA = ms.c.a(view);
        cVarA.f69721c.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.shorttv_pugc.ui.dialog.c
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                ShortTvEpisodeListDialog.l0(this.f54116a, view2);
            }
        });
        if (k0().p().size() > 50) {
            RecyclerView recyclerView = cVarA.f69723e;
            Intrinsics.e(recyclerView);
            yr.b.e(recyclerView);
            recyclerView.setLayoutManager(new LinearLayoutManager(recyclerView.getContext(), 0, false));
            Integer num = (Integer) k0().s().f();
            int iIntValue = num != null ? num.intValue() : 0;
            final List<??> listS = ShortTvExtKt.s(k0().p().size(), 0, 1, null);
            final Ref.ObjectRef objectRef = new Ref.ObjectRef();
            objectRef.element = CollectionsKt.i0(listS);
            for (?? r11 : listS) {
                if (r11.o(iIntValue)) {
                    objectRef.element = r11;
                }
            }
            final Ref.ObjectRef objectRef2 = new Ref.ObjectRef();
            objectRef2.element = ShotTvDialogListFragment.INSTANCE.a((IntRange) objectRef.element);
            final r rVar = new r((IntRange) objectRef.element);
            rVar.n1(listS);
            rVar.w1(new p6.d() { // from class: com.transsion.shorttv_pugc.ui.dialog.d
                @Override // p6.d
                public final void a(BaseQuickAdapter baseQuickAdapter, View view2, int i11) {
                    ShortTvEpisodeListDialog.m0(listS, objectRef, rVar, this, objectRef2, baseQuickAdapter, view2, i11);
                }
            });
            recyclerView.setAdapter(rVar);
            getChildFragmentManager().p().c(R$id.content_container, (Fragment) objectRef2.element, String.valueOf(iIntValue)).l();
        } else {
            RecyclerView tabsRv = cVarA.f69723e;
            Intrinsics.g(tabsRv, "tabsRv");
            yr.b.b(tabsRv);
            getChildFragmentManager().p().s(R$id.content_container, ShotTvDialogListFragment.INSTANCE.a(new IntRange(1, 50))).l();
        }
        this.binding = cVarA;
    }
}
