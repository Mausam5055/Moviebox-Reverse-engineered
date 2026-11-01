package com.transsion.shorttv.ui.dialog;

import android.app.Dialog;
import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.fragment.app.FragmentViewModelLazyKt;
import androidx.p009lifecycle.v0;
import androidx.p009lifecycle.x0;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.transsion.shorttv.R$string;
import com.transsion.shorttv.R$style;
import com.transsion.shorttv.base.dialog.BaseViewBindingDialog;
import com.transsion.shorttv.base.widget.NpaLinearLayoutManager;
import com.transsion.shorttv.bean.DubsInfo;
import com.transsion.shorttv.bean.DubsInfoData;
import com.transsion.shorttv.bean.Subject;
import com.transsion.shorttv.viewmodel.ShortTvViewModel;
import com.transsion.subtitle_download.db.SubtitleDownloadTable;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import ms.t;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u0084\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0006\u0018\u0000 F2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001GB\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u0017\u0010\b\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\b\u0010\tJ\u0017\u0010\n\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\n\u0010\tJ\u000f\u0010\u000b\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u000b\u0010\u0004J\u000f\u0010\f\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\f\u0010\u0004J!\u0010\u0011\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\r2\b\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0002¢\u0006\u0004\b\u0011\u0010\u0012J\u0019\u0010\u0015\u001a\u00020\u00072\b\u0010\u0014\u001a\u0004\u0018\u00010\u0013H\u0002¢\u0006\u0004\b\u0015\u0010\u0016J\u0015\u0010\u0019\u001a\u00020\u00072\u0006\u0010\u0018\u001a\u00020\u0017¢\u0006\u0004\b\u0019\u0010\u001aJ!\u0010\u001e\u001a\u00020\u00072\u0012\u0010\u001d\u001a\u000e\u0012\u0004\u0012\u00020\u001c\u0012\u0004\u0012\u00020\u00070\u001b¢\u0006\u0004\b\u001e\u0010\u001fJ\u0019\u0010\"\u001a\u00020\u00072\b\u0010!\u001a\u0004\u0018\u00010 H\u0016¢\u0006\u0004\b\"\u0010#J\u0019\u0010%\u001a\u00020$2\b\u0010!\u001a\u0004\u0018\u00010 H\u0016¢\u0006\u0004\b%\u0010&J!\u0010'\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u00052\b\u0010!\u001a\u0004\u0018\u00010 H\u0016¢\u0006\u0004\b'\u0010(R\u0014\u0010+\u001a\u00020\u000f8\u0002X\u0082D¢\u0006\u0006\n\u0004\b)\u0010*R\u001b\u00101\u001a\u00020,8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b-\u0010.\u001a\u0004\b/\u00100R\u001b\u00106\u001a\u0002028BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b3\u0010.\u001a\u0004\b4\u00105R\u0018\u0010:\u001a\u0004\u0018\u0001078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b8\u00109R$\u0010\u001d\u001a\u0010\u0012\u0004\u0012\u00020\u001c\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u001b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b;\u0010<R\u0016\u0010\u0018\u001a\u00020\u00178\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b=\u0010>R.\u0010E\u001a\u001c\u0012\u0004\u0012\u00020@\u0012\u0006\u0012\u0004\u0018\u00010A\u0012\u0004\u0012\u00020B\u0012\u0004\u0012\u00020\u00020?8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\bC\u0010D¨\u0006H"}, d2 = {"Lcom/transsion/shorttv/ui/dialog/ShortTvLanguageSelectDialog;", "Lcom/transsion/shorttv/base/dialog/BaseViewBindingDialog;", "Lms/t;", "<init>", "()V", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "", "A0", "(Landroid/view/View;)V", "r0", "initView", "v0", "Lcom/transsion/shorttv/bean/DubsInfoData;", "dubsInfo", "", "currentSubjectId", "w0", "(Lcom/transsion/shorttv/bean/DubsInfoData;Ljava/lang/String;)V", "Lcom/transsion/shorttv/bean/Subject;", "subject", "x0", "(Lcom/transsion/shorttv/bean/Subject;)V", "", NativeComponentConstants.KEY_COMPONENT_TYPE, "D0", "(I)V", "Lkotlin/Function1;", "Lcom/transsion/shorttv/bean/DubsInfo;", "callback", "C0", "(Lkotlin/jvm/functions/Function1;)V", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/app/Dialog;", "onCreateDialog", "(Landroid/os/Bundle;)Landroid/app/Dialog;", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "c", "Ljava/lang/String;", "TAG", "Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Lkotlin/Lazy;", "u0", "()Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;", "shortTvViewModel", "Lws/a;", "e", "t0", "()Lws/a;", "shortTvSubViewModel", "Lcom/transsion/shorttv/ui/adapter/k;", "f", "Lcom/transsion/shorttv/ui/adapter/k;", "selectAdapter", "g", "Lkotlin/jvm/functions/Function1;", "h", "I", "Lkotlin/Function3;", "Landroid/view/LayoutInflater;", "Landroid/view/ViewGroup;", "", "l0", "()Lkotlin/jvm/functions/Function3;", "bindingInflater", "i", "a", "shortTvLib_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class ShortTvLanguageSelectDialog extends BaseViewBindingDialog<t> {

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private final String TAG = "ShortTvLanguageSelectDialog";

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private final Lazy shortTvViewModel = FragmentViewModelLazyKt.a(this, Reflection.b(ShortTvViewModel.class), new Function0<x0>() { // from class: com.transsion.shorttv.ui.dialog.ShortTvLanguageSelectDialog$special$$inlined$activityViewModels$default$1
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final x0 invoke() {
            x0 viewModelStore = this.requireActivity().getViewModelStore();
            Intrinsics.g(viewModelStore, "requireActivity().viewModelStore");
            return viewModelStore;
        }
    }, new Function0<v0.c>() { // from class: com.transsion.shorttv.ui.dialog.ShortTvLanguageSelectDialog$special$$inlined$activityViewModels$default$2
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

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private final Lazy shortTvSubViewModel = FragmentViewModelLazyKt.a(this, Reflection.b(ws.a.class), new Function0<x0>() { // from class: com.transsion.shorttv.ui.dialog.ShortTvLanguageSelectDialog$special$$inlined$activityViewModels$default$3
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final x0 invoke() {
            x0 viewModelStore = this.requireActivity().getViewModelStore();
            Intrinsics.g(viewModelStore, "requireActivity().viewModelStore");
            return viewModelStore;
        }
    }, new Function0<v0.c>() { // from class: com.transsion.shorttv.ui.dialog.ShortTvLanguageSelectDialog$special$$inlined$activityViewModels$default$4
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

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private com.transsion.shorttv.ui.adapter.k selectAdapter;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    private Function1 callback;

    /* JADX INFO: renamed from: h, reason: collision with root package name and from kotlin metadata */
    private int type;

    private final void A0(final View view) {
        view.post(new Runnable() { // from class: com.transsion.shorttv.ui.dialog.o
            @Override // java.lang.Runnable
            public final void run() {
                ShortTvLanguageSelectDialog.B0(this.f53256a, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void B0(ShortTvLanguageSelectDialog shortTvLanguageSelectDialog, View view) {
        int i11 = (int) (shortTvLanguageSelectDialog.getResources().getDisplayMetrics().heightPixels * 0.7f);
        if (view.getMeasuredHeight() > i11) {
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            if (layoutParams != null) {
                layoutParams.height = i11;
            } else {
                layoutParams = null;
            }
            view.setLayoutParams(layoutParams);
        }
    }

    private final void initView() {
        t tVar;
        AppCompatTextView appCompatTextView;
        RecyclerView recyclerView;
        AppCompatTextView appCompatTextView2;
        AppCompatImageView appCompatImageView;
        t tVar2 = (t) getViewBinding();
        if (tVar2 != null && (appCompatImageView = tVar2.f69928b) != null) {
            appCompatImageView.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.shorttv.ui.dialog.l
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    ShortTvLanguageSelectDialog.y0(this.f53254a, view);
                }
            });
        }
        int i11 = this.type;
        if (i11 == 1) {
            t tVar3 = (t) getViewBinding();
            if (tVar3 != null && (appCompatTextView2 = tVar3.f69931e) != null) {
                appCompatTextView2.setText(getString(R$string.short_tv_audio));
            }
        } else if (i11 == 2 && (tVar = (t) getViewBinding()) != null && (appCompatTextView = tVar.f69931e) != null) {
            appCompatTextView.setText(getString(R$string.short_tv_subtitles));
        }
        com.transsion.shorttv.ui.adapter.k kVar = new com.transsion.shorttv.ui.adapter.k();
        kVar.w1(new p6.d() { // from class: com.transsion.shorttv.ui.dialog.m
            @Override // p6.d
            public final void a(BaseQuickAdapter baseQuickAdapter, View view, int i12) {
                ShortTvLanguageSelectDialog.z0(this.f53255a, baseQuickAdapter, view, i12);
            }
        });
        this.selectAdapter = kVar;
        t tVar4 = (t) getViewBinding();
        if (tVar4 == null || (recyclerView = tVar4.f69930d) == null) {
            return;
        }
        recyclerView.setLayoutManager(new NpaLinearLayoutManager(recyclerView.getContext()));
        recyclerView.setAdapter(this.selectAdapter);
    }

    private final void r0(View view) {
        if (Build.VERSION.SDK_INT >= 35) {
            ViewCompat.setOnApplyWindowInsetsListener(view, new OnApplyWindowInsetsListener() { // from class: com.transsion.shorttv.ui.dialog.n
                @Override // androidx.core.view.OnApplyWindowInsetsListener
                public final WindowInsetsCompat onApplyWindowInsets(View view2, WindowInsetsCompat windowInsetsCompat) {
                    return ShortTvLanguageSelectDialog.s0(view2, windowInsetsCompat);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final WindowInsetsCompat s0(View v11, WindowInsetsCompat insets) {
        Intrinsics.h(v11, "v");
        Intrinsics.h(insets, "insets");
        int i11 = insets.getInsets(WindowInsetsCompat.Type.navigationBars()).f79128d;
        if (i11 > 0) {
            v11.setPadding(v11.getPaddingLeft(), v11.getPaddingTop(), v11.getPaddingRight(), i11);
        }
        return insets;
    }

    private final ws.a t0() {
        return (ws.a) this.shortTvSubViewModel.getValue();
    }

    private final ShortTvViewModel u0() {
        return (ShortTvViewModel) this.shortTvViewModel.getValue();
    }

    private final void v0() {
        List<DubsInfo> dubs;
        List<DubsInfo> dubs2;
        DubsInfoData dubsInfoData = (DubsInfoData) u0().Z().f();
        Subject subject = (Subject) u0().H0().f();
        String strY = u0().Y();
        if (strY == null) {
            strY = subject != null ? subject.getSubjectId() : null;
        }
        int i11 = this.type;
        if (i11 == 1) {
            if (dubsInfoData == null || (dubs2 = dubsInfoData.getDubs()) == null || dubs2.isEmpty()) {
                dismissAllowingStateLoss();
                return;
            } else {
                w0(dubsInfoData, strY);
                return;
            }
        }
        if (i11 == 2) {
            x0(subject);
        } else if (dubsInfoData == null || (dubs = dubsInfoData.getDubs()) == null || dubs.isEmpty()) {
            x0(subject);
        } else {
            w0(dubsInfoData, strY);
        }
    }

    private final void w0(DubsInfoData dubsInfo, String currentSubjectId) {
        ArrayList arrayList;
        List<DubsInfo> dubs = dubsInfo.getDubs();
        if (dubs != null) {
            List<DubsInfo> list = dubs;
            arrayList = new ArrayList(CollectionsKt.v(list, 10));
            Iterator<T> it = list.iterator();
            while (it.hasNext()) {
                DubsInfo dubsInfoCopy$default = DubsInfo.copy$default((DubsInfo) it.next(), null, null, null, false, 15, null);
                dubsInfoCopy$default.setSelected(Intrinsics.c(dubsInfoCopy$default.getSubjectId(), currentSubjectId));
                arrayList.add(dubsInfoCopy$default);
            }
        } else {
            arrayList = null;
        }
        lg.a.C0828a.f(lg.a.f68839a, this.TAG, "initDubsData, size:" + (arrayList != null ? Integer.valueOf(arrayList.size()) : null), false, 4, null);
        com.transsion.shorttv.ui.adapter.k kVar = this.selectAdapter;
        if (kVar != null) {
            kVar.n1(arrayList);
        }
    }

    private final void x0(Subject subject) {
        DubsInfo dubsInfo;
        Object next;
        ts.b subInfo;
        SubtitleDownloadTable subtitleDownloadTableA;
        List<ts.b> list = (List) t0().d().f();
        ArrayList arrayList = new ArrayList();
        Object obj = null;
        if (this.type == 2) {
            boolean z10 = false;
            if (list != null) {
                List list2 = list;
                if (!(list2 instanceof Collection) || !list2.isEmpty()) {
                    Iterator it = list2.iterator();
                    while (it.hasNext()) {
                        if (((ts.b) it.next()).d()) {
                            z10 = true;
                            break;
                        }
                    }
                }
            }
            DubsInfo dubsInfo2 = new DubsInfo(subject != null ? subject.getSubjectId() : null, getString(R$string.short_tv_subtitles_off), "off", false, 8, null);
            dubsInfo2.setSubtitle(true);
            dubsInfo2.setSelected(!z10);
            dubsInfo2.setSubInfo(null);
            arrayList.add(dubsInfo2);
        }
        if (list != null) {
            for (ts.b bVar : list) {
                DubsInfo dubsInfo3 = new DubsInfo(subject != null ? subject.getSubjectId() : null, bVar.a().getLanName(), bVar.a().getLan(), false, 8, null);
                dubsInfo3.setSubtitle(true);
                dubsInfo3.setSelected(bVar.d());
                dubsInfo3.setSubInfo(bVar);
                arrayList.add(dubsInfo3);
            }
        }
        if (this.type != 2) {
            lg.a.C0828a.f(lg.a.f68839a, this.TAG, "initSubtitleData, size:" + arrayList.size(), false, 4, null);
            com.transsion.shorttv.ui.adapter.k kVar = this.selectAdapter;
            if (kVar != null) {
                kVar.n1(arrayList);
                return;
            }
            return;
        }
        String strC = t0().c();
        if (strC == null || Intrinsics.c(strC, "OFF")) {
            dubsInfo = null;
        } else {
            Iterator it2 = arrayList.iterator();
            do {
                if (!it2.hasNext()) {
                    next = null;
                    break;
                } else {
                    next = it2.next();
                    subInfo = ((DubsInfo) next).getSubInfo();
                }
            } while (!Intrinsics.c((subInfo == null || (subtitleDownloadTableA = subInfo.a()) == null) ? null : subtitleDownloadTableA.getId(), strC));
            dubsInfo = (DubsInfo) next;
        }
        for (Object obj2 : arrayList) {
            if (Intrinsics.c(((DubsInfo) obj2).getLanCode(), "off")) {
                obj = obj2;
                break;
            }
        }
        DubsInfo dubsInfo4 = (DubsInfo) obj;
        ArrayList arrayList2 = new ArrayList();
        for (Object obj3 : arrayList) {
            DubsInfo dubsInfo5 = (DubsInfo) obj3;
            if (!Intrinsics.c(dubsInfo5, dubsInfo) && !Intrinsics.c(dubsInfo5, dubsInfo4)) {
                arrayList2.add(obj3);
            }
        }
        ArrayList arrayList3 = new ArrayList();
        if (dubsInfo != null) {
            arrayList3.add(dubsInfo);
        }
        if (dubsInfo4 != null) {
            arrayList3.add(dubsInfo4);
        }
        arrayList3.addAll(arrayList2);
        lg.a.C0828a.f(lg.a.f68839a, this.TAG, "initSubtitleData, sorted size:" + arrayList3.size() + ", initialId:" + strC, false, 4, null);
        com.transsion.shorttv.ui.adapter.k kVar2 = this.selectAdapter;
        if (kVar2 != null) {
            kVar2.n1(arrayList3);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void y0(ShortTvLanguageSelectDialog shortTvLanguageSelectDialog, View view) {
        shortTvLanguageSelectDialog.dismissAllowingStateLoss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void z0(ShortTvLanguageSelectDialog shortTvLanguageSelectDialog, BaseQuickAdapter adapter, View view, int i11) {
        Intrinsics.h(adapter, "adapter");
        Intrinsics.h(view, "view");
        if (ds.d.f61428a.a(view.getId(), 1000L)) {
            return;
        }
        Object item = adapter.getItem(i11);
        DubsInfo dubsInfo = item instanceof DubsInfo ? (DubsInfo) item : null;
        if (dubsInfo == null) {
            lg.a.C0828a.f(lg.a.f68839a, "ShortTvLan", "item为空？", false, 4, null);
            shortTvLanguageSelectDialog.dismissAllowingStateLoss();
            return;
        }
        if (dubsInfo.getIsSelected()) {
            lg.a.C0828a.f(lg.a.f68839a, "ShortTvLan", "已选中 直接关闭弹窗", false, 4, null);
            shortTvLanguageSelectDialog.dismissAllowingStateLoss();
            return;
        }
        lg.a.C0828a.f(lg.a.f68839a, "ShortTvLan", "选中 :" + dubsInfo.getLanName(), false, 4, null);
        Function1 function1 = shortTvLanguageSelectDialog.callback;
        if (function1 != null) {
            function1.invoke(dubsInfo);
        }
        shortTvLanguageSelectDialog.dismissAllowingStateLoss();
    }

    public final void C0(Function1 callback) {
        Intrinsics.h(callback, "callback");
        this.callback = callback;
    }

    public final void D0(int type) {
        this.type = type;
    }

    @Override // com.transsion.shorttv.base.dialog.BaseViewBindingDialog
    public Function3 l0() {
        return ShortTvLanguageSelectDialog$bindingInflater$1.INSTANCE;
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setStyle(0, R$style.ShortTvBottomDialogTheme);
    }

    @Override // androidx.fragment.app.DialogFragment
    public Dialog onCreateDialog(Bundle savedInstanceState) {
        Dialog dialogOnCreateDialog = super.onCreateDialog(savedInstanceState);
        Intrinsics.g(dialogOnCreateDialog, "onCreateDialog(...)");
        Window window = dialogOnCreateDialog.getWindow();
        if (window != null) {
            window.setWindowAnimations(R$style.ShortTvBottomDialogAnimation);
            window.setGravity(80);
            window.setDimAmount(0.0f);
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

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        Intrinsics.h(view, "view");
        super.onViewCreated(view, savedInstanceState);
        initView();
        v0();
        A0(view);
        r0(view);
    }
}
