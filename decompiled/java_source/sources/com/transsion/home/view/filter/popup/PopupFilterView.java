package com.transsion.home.view.filter.popup;

import android.content.Context;
import android.content.res.Configuration;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.BorderKt;
import androidx.compose.foundation.ClickableKt;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.a0;
import androidx.compose.foundation.layout.b0;
import androidx.compose.foundation.layout.d0;
import androidx.compose.foundation.layout.e0;
import androidx.compose.material3.IconKt;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.f3;
import androidx.compose.runtime.g;
import androidx.compose.runtime.g2;
import androidx.compose.runtime.i;
import androidx.compose.runtime.i1;
import androidx.compose.runtime.k;
import androidx.compose.runtime.s;
import androidx.compose.runtime.snapshots.t;
import androidx.compose.runtime.u2;
import androidx.compose.runtime.v1;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.f;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.platform.ComposeView;
import androidx.compose.ui.text.font.h;
import androidx.compose.ui.text.font.p;
import androidx.p009lifecycle.ViewTreeLifecycleOwner;
import androidx.p009lifecycle.ViewTreeViewModelStoreOwner;
import androidx.p009lifecycle.u;
import androidx.p009lifecycle.y0;
import androidx.p010savedstate.ViewTreeSavedStateRegistryOwner;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.tn.lib.widget.R$color;
import com.transsion.baseui.R$drawable;
import com.transsion.home.R$mipmap;
import com.transsion.home.bean.FilterVal;
import com.transsion.home.bean.Item;
import com.transsion.home.view.filter.popup.PopupFilterView;
import com.vungle.ads.internal.presenter.MRAIDPresenter;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import o0.x;
import ul.w;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\t\b\u0007\u0018\u0000 (2\u00020\u0001:\u0001\"B\u0011\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005B\u0019\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\u0004\u0010\bB!\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u0004\u0010\u000bJ\u001f\u0010\u0010\u001a\u00020\u000f2\u000e\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\fH\u0002¢\u0006\u0004\b\u0010\u0010\u0011JG\u0010\u0018\u001a\u00020\u00172\u000e\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\f2(\b\u0002\u0010\u0016\u001a\"\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u0014\u0018\u00010\u0013j\u0010\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u0014\u0018\u0001`\u0015¢\u0006\u0004\b\u0018\u0010\u0019J-\u0010\u001d\u001a\u00020\u00172\u001e\u0010\u001c\u001a\u001a\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u00140\u001b\u0012\u0004\u0012\u00020\u00170\u001a¢\u0006\u0004\b\u001d\u0010\u001eJ\u001f\u0010\u001f\u001a\u00020\u00172\u000e\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\fH\u0007¢\u0006\u0004\b\u001f\u0010 R \u0010$\u001a\u000e\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u00140!8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\"\u0010#R0\u0010'\u001a\u001c\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u00140\u001b\u0012\u0004\u0012\u00020\u0017\u0018\u00010\u001a8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b%\u0010&¨\u0006*²\u0006\u000e\u0010)\u001a\u00020\u00148\n@\nX\u008a\u008e\u0002"}, d2 = {"Lcom/transsion/home/view/filter/popup/PopupFilterView;", "Landroid/widget/FrameLayout;", "Landroid/content/Context;", "context", "<init>", "(Landroid/content/Context;)V", "Landroid/util/AttributeSet;", "attrs", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "", "defStyleAttr", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "", "Lcom/transsion/home/bean/Item;", "filterItem", "", "m", "(Ljava/util/List;)Z", "data", "Ljava/util/HashMap;", "", "Lkotlin/collections/HashMap;", "selectItems", "", "initSelectData", "(Ljava/util/List;Ljava/util/HashMap;)V", "Lkotlin/Function1;", "", "callback", "setOnFilterListener", "(Lkotlin/jvm/functions/Function1;)V", "FilterLinear", "(Ljava/util/List;Landroidx/compose/runtime/i;I)V", "Landroidx/compose/runtime/snapshots/t;", "a", "Landroidx/compose/runtime/snapshots/t;", "selectItemsMap", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lkotlin/jvm/functions/Function1;", "onFilterChangedListener", "Companion", "currentPopup", "Home_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class PopupFilterView extends FrameLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private final t selectItemsMap;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private Function1 onFilterChangedListener;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public static final int $stable = 8;

    /* JADX INFO: renamed from: com.transsion.home.view.filter.popup.PopupFilterView$a, reason: from kotlin metadata */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final String a(float f11, float f12) {
            return ((int) f11) + "," + ((int) f12);
        }
    }

    static final class b implements Function2 {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ List f45763b;

        b(List list) {
            this.f45763b = list;
        }

        public final void a(i iVar, int i11) {
            if ((i11 & 3) == 2 && iVar.h()) {
                iVar.G();
                return;
            }
            if (k.H()) {
                k.Q(486758898, i11, -1, "com.transsion.home.view.filter.popup.PopupFilterView.initSelectData.<anonymous>.<anonymous> (PopupFilterView.kt:93)");
            }
            PopupFilterView.this.FilterLinear(this.f45763b, iVar, 0);
            if (k.H()) {
                k.P();
            }
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
            a((i) obj, ((Number) obj2).intValue());
            return Unit.f67061a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PopupFilterView(Context context) {
        super(context);
        Intrinsics.h(context, "context");
        this.selectItemsMap = new t();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PopupFilterView(Context context, AttributeSet attrs) {
        super(context, attrs);
        Intrinsics.h(context, "context");
        Intrinsics.h(attrs, "attrs");
        this.selectItemsMap = new t();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PopupFilterView(Context context, AttributeSet attrs, int i11) {
        super(context, attrs, i11);
        Intrinsics.h(context, "context");
        Intrinsics.h(attrs, "attrs");
        this.selectItemsMap = new t();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit f(PopupFilterView popupFilterView, Item item, i1 i1Var, String str) {
        if (str != null) {
            popupFilterView.selectItemsMap.put(item.getFilterType(), str);
            Function1 function1 = popupFilterView.onFilterChangedListener;
            if (function1 != null) {
                function1.invoke(popupFilterView.selectItemsMap.l());
            }
        }
        l(i1Var, "");
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit g(Item item, i1 i1Var) {
        l(i1Var, item.getFilterType());
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit h(i1 i1Var) {
        l(i1Var, "multi");
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit i(PopupFilterView popupFilterView, i1 i1Var, boolean z10) {
        Function1 function1;
        l(i1Var, "");
        if (z10 && (function1 = popupFilterView.onFilterChangedListener) != null) {
            function1.invoke(popupFilterView.selectItemsMap.l());
        }
        return Unit.f67061a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void initSelectData$default(PopupFilterView popupFilterView, List list, HashMap map, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            map = null;
        }
        popupFilterView.initSelectData(list, map);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit j(PopupFilterView popupFilterView, List list, int i11, i iVar, int i12) {
        popupFilterView.FilterLinear(list, iVar, v1.a(i11 | 1));
        return Unit.f67061a;
    }

    private static final String k(i1 i1Var) {
        return (String) i1Var.getValue();
    }

    private static final void l(i1 i1Var, String str) {
        i1Var.setValue(str);
    }

    private final boolean m(List filterItem) {
        if (filterItem != null) {
            Iterator it = filterItem.iterator();
            while (it.hasNext()) {
                Item item = (Item) it.next();
                String str = (String) this.selectItemsMap.get(item.getFilterType());
                if (item.getRangeVals() == null && Intrinsics.c(item.getShowOut(), "false")) {
                    if (str != null && !Intrinsics.c(str, item.getFilterValsV2().get(0).getId())) {
                        return true;
                    }
                } else if (item.getRangeVals() != null) {
                    String strA = INSTANCE.a(item.getRangeVals().getMinVal(), item.getRangeVals().getMaxVal());
                    if (str != null && !Intrinsics.c(str, strA)) {
                        return true;
                    }
                } else {
                    continue;
                }
            }
        }
        return false;
    }

    public final void FilterLinear(final List<Item> list, i iVar, final int i11) {
        ArrayList arrayList;
        ArrayList arrayList2;
        int i12;
        i iVar2;
        ArrayList arrayList3;
        final i1 i1Var;
        int i13;
        long jA;
        long jA2;
        Object next;
        String name;
        long jA3;
        int i14 = 1;
        i iVarG = iVar.g(541655127);
        int i15 = (i11 & 6) == 0 ? (iVarG.A(list) ? 4 : 2) | i11 : i11;
        if ((i11 & 48) == 0) {
            i15 |= iVarG.A(this) ? 32 : 16;
        }
        if ((i15 & 19) == 18 && iVarG.h()) {
            iVarG.G();
            iVar2 = iVarG;
        } else {
            if (k.H()) {
                k.Q(541655127, i15, -1, "com.transsion.home.view.filter.popup.PopupFilterView.FilterLinear (PopupFilterView.kt:127)");
            }
            if (list != null) {
                arrayList = new ArrayList();
                for (Object obj : list) {
                    Item item = (Item) obj;
                    if (Intrinsics.c(item.getShowOut(), "true") && item.getRangeVals() == null) {
                        arrayList.add(obj);
                    }
                }
            } else {
                arrayList = null;
            }
            if (list != null) {
                arrayList2 = new ArrayList();
                for (Object obj2 : list) {
                    if (Intrinsics.c(((Item) obj2).getShowOut(), "false")) {
                        arrayList2.add(obj2);
                    }
                }
            } else {
                arrayList2 = new ArrayList();
            }
            ArrayList arrayList4 = arrayList2;
            Iterator it = arrayList4.iterator();
            while (true) {
                i12 = 0;
                if (!it.hasNext()) {
                    break;
                }
                Item item2 = (Item) it.next();
                if (!item2.getFilterValsV2().isEmpty() && this.selectItemsMap.get(item2.getFilterType()) == null) {
                    this.selectItemsMap.put(item2.getFilterType(), item2.getFilterValsV2().get(0).getId());
                }
            }
            iVarG.P(1849434622);
            Object objY = iVarG.y();
            if (objY == i.f3736a.a()) {
                objY = u2.c("", null, 2, null);
                iVarG.p(objY);
            }
            final i1 i1Var2 = (i1) objY;
            iVarG.K();
            f fVarP = SizeKt.p(SizeKt.d(f.f4178a, 0.0f, 1, null), null, false, 3, null);
            androidx.compose.ui.layout.t tVarB = a0.b(androidx.compose.foundation.layout.b.f2836a.c(), androidx.compose.ui.b.f4087a.h(), iVarG, 48);
            int iA = g.a(iVarG, 0);
            s sVarN = iVarG.n();
            f fVarE = ComposedModifierKt.e(iVarG, fVarP);
            ComposeUiNode.Companion companion = ComposeUiNode.f5224c1;
            Function0 function0A = companion.a();
            if (!(iVarG.i() instanceof androidx.compose.runtime.f)) {
                g.b();
            }
            iVarG.C();
            if (iVarG.e()) {
                iVarG.F(function0A);
            } else {
                iVarG.o();
            }
            i iVarA = f3.a(iVarG);
            f3.b(iVarA, tVarB, companion.c());
            f3.b(iVarA, sVarN, companion.e());
            Function2 function2B = companion.b();
            if (iVarA.e() || !Intrinsics.c(iVarA.y(), Integer.valueOf(iA))) {
                iVarA.p(Integer.valueOf(iA));
                iVarA.k(Integer.valueOf(iA), function2B);
            }
            f3.b(iVarA, fVarE, companion.d());
            d0 d0Var = d0.f2849a;
            int size = arrayList != null ? arrayList.size() : 1;
            float f11 = 2 + ((((Configuration) iVarG.l(AndroidCompositionLocals_androidKt.f())).screenWidthDp - ((size * 46) + 52.0f)) / size);
            iVarG.P(-1055580859);
            if (arrayList == null) {
                iVar2 = iVarG;
                arrayList3 = arrayList4;
                i1Var = i1Var2;
                i13 = 0;
            } else {
                int i16 = 0;
                for (Object obj3 : arrayList) {
                    int i17 = i16 + 1;
                    if (i16 < 0) {
                        CollectionsKt.u();
                    }
                    final Item item3 = (Item) obj3;
                    String title = (String) this.selectItemsMap.get(item3.getFilterType());
                    if (title == null) {
                        title = item3.getFilterValsV2().get(i12).getId();
                    }
                    if (Intrinsics.c(title, item3.getFilterValsV2().get(i12).getId())) {
                        iVarG.P(-1987907022);
                        jA = i0.b.a(R$color.text_03, iVarG, i12);
                        jA2 = i0.b.a(R$color.transparent, iVarG, i12);
                        title = item3.getTitle();
                        iVarG.K();
                    } else {
                        iVarG.P(-1988249107);
                        jA = i0.b.a(R$color.white, iVarG, i12);
                        jA2 = i0.b.a(com.transsion.wrapperad.R$color.white_40, iVarG, i12);
                        Iterator<T> it2 = item3.getFilterValsV2().iterator();
                        do {
                            if (!it2.hasNext()) {
                                next = null;
                                break;
                            }
                            next = it2.next();
                        } while (!Intrinsics.c(((FilterVal) next).getId(), title));
                        FilterVal filterVal = (FilterVal) next;
                        if (filterVal != null && (name = filterVal.getName()) != null) {
                            title = name;
                        }
                        iVarG.K();
                    }
                    String str = title;
                    long j11 = jA2;
                    iVarG.P(-1055550993);
                    if (Intrinsics.c(k(i1Var2), item3.getFilterType())) {
                        iVarG.P(-1746271574);
                        boolean zA = iVarG.A(this) | iVarG.A(item3);
                        Object objY2 = iVarG.y();
                        if (zA || objY2 == i.f3736a.a()) {
                            objY2 = new Function1() { // from class: ul.k
                                @Override // kotlin.jvm.functions.Function1
                                public final Object invoke(Object obj4) {
                                    return PopupFilterView.f(this.f76789a, item3, i1Var2, (String) obj4);
                                }
                            };
                            iVarG.p(objY2);
                        }
                        iVarG.K();
                        w.e(item3, str, (Function1) objY2, iVarG, i12);
                    }
                    iVarG.K();
                    androidx.compose.ui.b.c cVarH = androidx.compose.ui.b.f4087a.h();
                    f.a aVar = f.f4178a;
                    float f12 = i14;
                    ArrayList arrayList5 = arrayList4;
                    float f13 = 100;
                    f fVarA = BackgroundKt.a(BorderKt.e(SizeKt.e(aVar, o0.i.g(28)), o0.i.g(f12), jA, q.g.c(o0.i.g(f13))), j11, q.g.c(o0.i.g(f13)));
                    iVarG.P(-1633490746);
                    boolean zA2 = iVarG.A(item3);
                    Object objY3 = iVarG.y();
                    if (zA2 || objY3 == i.f3736a.a()) {
                        objY3 = new Function0() { // from class: ul.l
                            @Override // kotlin.jvm.functions.Function0
                            public final Object invoke() {
                                return PopupFilterView.g(item3, i1Var2);
                            }
                        };
                        iVarG.p(objY3);
                    }
                    iVarG.K();
                    f fVarD = ClickableKt.d(fVarA, false, null, null, (Function0) objY3, 7, null);
                    androidx.compose.ui.layout.t tVarB2 = a0.b(androidx.compose.foundation.layout.b.f2836a.c(), cVarH, iVarG, 48);
                    int iA2 = g.a(iVarG, 0);
                    s sVarN2 = iVarG.n();
                    f fVarE2 = ComposedModifierKt.e(iVarG, fVarD);
                    ComposeUiNode.Companion companion2 = ComposeUiNode.f5224c1;
                    Function0 function0A2 = companion2.a();
                    if (!(iVarG.i() instanceof androidx.compose.runtime.f)) {
                        g.b();
                    }
                    iVarG.C();
                    if (iVarG.e()) {
                        iVarG.F(function0A2);
                    } else {
                        iVarG.o();
                    }
                    i iVarA2 = f3.a(iVarG);
                    f3.b(iVarA2, tVarB2, companion2.c());
                    f3.b(iVarA2, sVarN2, companion2.e());
                    Function2 function2B2 = companion2.b();
                    if (iVarA2.e() || !Intrinsics.c(iVarA2.y(), Integer.valueOf(iA2))) {
                        iVarA2.p(Integer.valueOf(iA2));
                        iVarA2.k(Integer.valueOf(iA2), function2B2);
                    }
                    f3.b(iVarA2, fVarE2, companion2.d());
                    d0 d0Var2 = d0.f2849a;
                    e0.a(SizeKt.l(aVar, o0.i.g(12)), iVarG, 6);
                    i iVar3 = iVarG;
                    TextKt.a(str, SizeKt.n(aVar, 0.0f, o0.i.g(f11), 1, null), i0.b.a(R$color.white, iVarG, 0), x.c(14), null, p.f6149b.c(), h.f6124b.b(), 0L, null, null, 0L, androidx.compose.ui.text.style.p.f6442a.b(), false, 1, 0, null, null, iVar3, 199680, 3120, 120720);
                    IconKt.a(i0.e.c(R$drawable.ic_arrow_down, iVar3, 0), MRAIDPresenter.OPEN, PaddingKt.i(SizeKt.e(SizeKt.l(aVar, o0.i.g(16)), o0.i.g(17)), 0.0f, o0.i.g(f12), 0.0f, 0.0f, 13, null), i0.b.a(R$color.white, iVar3, 0), iVar3, 432, 0);
                    e0.a(SizeKt.l(aVar, o0.i.g(10)), iVar3, 6);
                    iVar3.r();
                    e0.a(SizeKt.l(aVar, o0.i.g(8)), iVar3, 6);
                    i1Var2 = i1Var2;
                    iVarG = iVar3;
                    i12 = 0;
                    arrayList4 = arrayList5;
                    i16 = i17;
                    f11 = f11;
                    i14 = 1;
                }
                iVar2 = iVarG;
                arrayList3 = arrayList4;
                i1Var = i1Var2;
                i13 = i12;
                Unit unit = Unit.f67061a;
            }
            iVar2.K();
            f.a aVar2 = f.f4178a;
            e0.a(b0.a(d0Var, SizeKt.l(aVar2, o0.i.g(i13)), 1.0f, false, 2, null), iVar2, i13);
            iVar2.P(-1055474072);
            if (!arrayList3.isEmpty()) {
                if (m(list)) {
                    iVar2.P(1640111020);
                    jA3 = i0.b.a(R$color.brand, iVar2, i13);
                    iVar2.K();
                } else {
                    iVar2.P(1640207244);
                    jA3 = i0.b.a(R$color.white, iVar2, i13);
                    iVar2.K();
                }
                long j12 = jA3;
                Painter painterC = i0.e.c(R$mipmap.ic_sub_operation_filter, iVar2, i13);
                float f14 = 24;
                f fVarE3 = SizeKt.e(SizeKt.l(aVar2, o0.i.g(f14)), o0.i.g(f14));
                iVar2.P(5004770);
                Object objY4 = iVar2.y();
                if (objY4 == i.f3736a.a()) {
                    objY4 = new Function0() { // from class: ul.m
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return PopupFilterView.h(i1Var);
                        }
                    };
                    iVar2.p(objY4);
                }
                iVar2.K();
                IconKt.a(painterC, "filter", ClickableKt.d(fVarE3, false, null, null, (Function0) objY4, 7, null), j12, iVar2, 48, 0);
            }
            iVar2.K();
            iVar2.P(-1055450448);
            if (Intrinsics.c(k(i1Var), "multi")) {
                t tVar = this.selectItemsMap;
                iVar2.P(-1633490746);
                boolean zA3 = iVar2.A(this);
                Object objY5 = iVar2.y();
                if (zA3 || objY5 == i.f3736a.a()) {
                    objY5 = new Function1() { // from class: ul.n
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj4) {
                            return PopupFilterView.i(this.f76795a, i1Var, ((Boolean) obj4).booleanValue());
                        }
                    };
                    iVar2.p(objY5);
                }
                iVar2.K();
                e.p(arrayList3, tVar, (Function1) objY5, iVar2, i13);
            }
            iVar2.K();
            iVar2.r();
            if (k.H()) {
                k.P();
            }
        }
        g2 g2VarJ = iVar2.j();
        if (g2VarJ != null) {
            g2VarJ.a(new Function2() { // from class: ul.o
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj4, Object obj5) {
                    return PopupFilterView.j(this.f76797a, list, i11, (androidx.compose.runtime.i) obj4, ((Integer) obj5).intValue());
                }
            });
        }
    }

    public final void initSelectData(List<Item> data, HashMap<String, String> selectItems) {
        List<Item> list = data;
        if (list == null || list.isEmpty()) {
            jg.c.g(this);
        } else {
            jg.c.k(this);
        }
        removeAllViews();
        this.selectItemsMap.clear();
        if (selectItems != null) {
            this.selectItemsMap.putAll(selectItems);
        }
        Context context = getContext();
        Intrinsics.g(context, "getContext(...)");
        ComposeView composeView = new ComposeView(context, null, 0, 6, null);
        Object context2 = composeView.getContext();
        ViewTreeLifecycleOwner.b(composeView, context2 instanceof u ? (u) context2 : null);
        Object context3 = composeView.getContext();
        ViewTreeViewModelStoreOwner.b(composeView, context3 instanceof y0 ? (y0) context3 : null);
        Object context4 = composeView.getContext();
        ViewTreeSavedStateRegistryOwner.b(composeView, context4 instanceof androidx.p010savedstate.e ? (androidx.p010savedstate.e) context4 : null);
        composeView.setContent(androidx.compose.runtime.internal.b.b(486758898, true, new b(data)));
        addView(composeView);
    }

    public final void setOnFilterListener(Function1<? super Map<String, String>, Unit> callback) {
        Intrinsics.h(callback, "callback");
        this.onFilterChangedListener = callback;
    }
}
