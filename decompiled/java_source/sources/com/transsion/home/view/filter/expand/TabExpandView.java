package com.transsion.home.view.filter.expand;

import android.content.Context;
import android.graphics.Typeface;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.content.b;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.tn.lib.widget.R$color;
import com.transsion.home.R$drawable;
import com.transsion.home.R$id;
import com.transsion.home.R$layout;
import com.transsion.home.view.filter.expand.TabExpandView;
import com.transsion.web.api.WebConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import gl.l0;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import jg.c;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import tl.a;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010%\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u000f\b\u0007\u0018\u00002\u00020\u0001B\u0011\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005B\u001b\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\u0004\u0010\bB#\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u0004\u0010\u000bJ\u001d\u0010\u0010\u001a\u00020\u000f2\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\r0\fH\u0002¢\u0006\u0004\b\u0010\u0010\u0011J#\u0010\u0015\u001a\u00020\u00132\u0006\u0010\u0012\u001a\u00020\r2\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0013H\u0002¢\u0006\u0004\b\u0015\u0010\u0016J\u0017\u0010\u0017\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\rH\u0002¢\u0006\u0004\b\u0017\u0010\u0018J\u000f\u0010\u0019\u001a\u00020\u000fH\u0002¢\u0006\u0004\b\u0019\u0010\u001aJ\u0015\u0010\u001d\u001a\u00020\u000f2\u0006\u0010\u001c\u001a\u00020\u001b¢\u0006\u0004\b\u001d\u0010\u001eJ\r\u0010\u001f\u001a\u00020\u000f¢\u0006\u0004\b\u001f\u0010\u001aJ\r\u0010 \u001a\u00020\u000f¢\u0006\u0004\b \u0010\u001aJ0\u0010%\u001a\u00020\u000f2!\u0010$\u001a\u001d\u0012\u0013\u0012\u00110\r¢\u0006\f\b\"\u0012\b\b#\u0012\u0004\b\b(\u0012\u0012\u0004\u0012\u00020\u000f0!¢\u0006\u0004\b%\u0010&J\u001b\u0010'\u001a\u00020\u000f2\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\r0\f¢\u0006\u0004\b'\u0010\u0011R\"\u0010/\u001a\u00020(8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b)\u0010*\u001a\u0004\b+\u0010,\"\u0004\b-\u0010.R\u001c\u00102\u001a\b\u0012\u0004\u0012\u00020\r0\f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b0\u00101R(\u00106\u001a\u0014\u0012\u0004\u0012\u00020\t\u0012\n\u0012\b\u0012\u0004\u0012\u00020\r0\f038\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b4\u00105R\"\u00109\u001a\u000e\u0012\u0004\u0012\u000207\u0012\u0004\u0012\u00020\t038\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b8\u00105R3\u0010<\u001a\u001f\u0012\u0013\u0012\u00110\r¢\u0006\f\b\"\u0012\b\b#\u0012\u0004\b\b(\u0012\u0012\u0004\u0012\u00020\u000f\u0018\u00010!8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b:\u0010;R\u0018\u0010>\u001a\u0004\u0018\u00010\r8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0015\u0010=R\"\u0010E\u001a\u00020\t8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b?\u0010@\u001a\u0004\bA\u0010B\"\u0004\bC\u0010D¨\u0006F"}, d2 = {"Lcom/transsion/home/view/filter/expand/TabExpandView;", "Landroid/widget/FrameLayout;", "Landroid/content/Context;", "context", "<init>", "(Landroid/content/Context;)V", "Landroid/util/AttributeSet;", "attrs", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "", "defStyleAttr", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "", "Ltl/a;", "list", "", "l", "(Ljava/util/List;)V", WebConstants.FIELD_ITEM, "Landroid/view/View;", "itemView", "f", "(Ltl/a;Landroid/view/View;)Landroid/view/View;", "m", "(Ltl/a;)V", "i", "()V", "", OfflineConstantsKt.OFFLINE_CONFIG_ENABLE, "enableExpand", "(Z)V", "collapse", "expand", "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", "onItemClickListener", "setOnItemClickListener", "(Lkotlin/jvm/functions/Function1;)V", "updateData", "Lgl/l0;", "a", "Lgl/l0;", "getBinding", "()Lgl/l0;", "setBinding", "(Lgl/l0;)V", "binding", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Ljava/util/List;", "datas", "", "c", "Ljava/util/Map;", "rowMap", "", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "itemInRow", "e", "Lkotlin/jvm/functions/Function1;", "mOnItemClickListener", "Ltl/a;", "curSelectItem", "g", "I", "getInParentIndex", "()I", "setInParentIndex", "(I)V", "inParentIndex", "Home_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class TabExpandView extends FrameLayout {
    public static final int $stable = 8;

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private l0 binding;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private List datas;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private Map rowMap;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private Map itemInRow;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private Function1 mOnItemClickListener;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private a curSelectItem;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    private int inParentIndex;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public TabExpandView(Context context) {
        this(context, null);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public TabExpandView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TabExpandView(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        Intrinsics.h(context, "context");
        l0 l0VarC = l0.c(LayoutInflater.from(getContext()), this, true);
        Intrinsics.g(l0VarC, "inflate(...)");
        this.binding = l0VarC;
        this.datas = new ArrayList();
        this.rowMap = new LinkedHashMap();
        this.itemInRow = new LinkedHashMap();
        this.inParentIndex = -1;
        this.binding.f63775c.setOnClickListener(new View.OnClickListener() { // from class: sl.c
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TabExpandView.e(this.f75388a, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void e(TabExpandView tabExpandView, View view) {
        AppCompatTextView appCompatTextView = tabExpandView.binding.f63775c;
        appCompatTextView.setSelected(!appCompatTextView.isSelected());
        if (tabExpandView.binding.f63775c.isSelected()) {
            tabExpandView.expand();
        } else {
            tabExpandView.collapse();
        }
    }

    private final View f(final a item, final View itemView) {
        Typeface typefaceDefaultFromStyle;
        if (itemView == null) {
            itemView = s6.a.a(this, R$layout.adapter_filter_item);
        }
        TextView textView = (TextView) itemView.findViewById(R$id.filter_item_name);
        textView.setText(item.a());
        if (item.d()) {
            this.curSelectItem = item;
            textView.setBackgroundResource(R$drawable.bg_selected_filter_item);
            textView.setTextColor(b.getColor(textView.getContext(), R$color.text_01));
            typefaceDefaultFromStyle = Typeface.defaultFromStyle(1);
        } else {
            textView.setBackgroundResource(R$color.transparent);
            textView.setTextColor(b.getColor(textView.getContext(), R$color.text_02));
            typefaceDefaultFromStyle = Typeface.defaultFromStyle(0);
        }
        textView.setTypeface(typefaceDefaultFromStyle);
        itemView.setOnClickListener(new View.OnClickListener() { // from class: sl.e
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TabExpandView.h(this.f75390a, item, itemView, view);
            }
        });
        return itemView;
    }

    static /* synthetic */ View g(TabExpandView tabExpandView, a aVar, View view, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            view = null;
        }
        return tabExpandView.f(aVar, view);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void h(TabExpandView tabExpandView, a aVar, View view, View view2) {
        tabExpandView.m(aVar);
        tabExpandView.f(aVar, view);
        Function1 function1 = tabExpandView.mOnItemClickListener;
        if (function1 != null) {
            function1.invoke(aVar);
        }
    }

    private final void i() {
        this.binding.f63774b.post(new Runnable() { // from class: sl.b
            @Override // java.lang.Runnable
            public final void run() {
                TabExpandView.j(this.f75387a);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void j(TabExpandView tabExpandView) {
        int rowsCount = tabExpandView.binding.f63774b.getRowsCount();
        int i11 = 0;
        for (int i12 = 0; i12 < rowsCount; i12++) {
            ArrayList arrayList = new ArrayList();
            int countInRow = tabExpandView.binding.f63774b.getCountInRow(i12);
            int i13 = 0;
            while (i13 < countInRow) {
                int i14 = i11 + 1;
                a aVar = (a) tabExpandView.datas.get(i11);
                tabExpandView.itemInRow.put(aVar.c(), Integer.valueOf(i12));
                arrayList.add(aVar);
                i13++;
                i11 = i14;
            }
            tabExpandView.rowMap.put(Integer.valueOf(i12), arrayList);
        }
        if (tabExpandView.rowMap.size() > 1) {
            AppCompatTextView tvExpand = tabExpandView.binding.f63775c;
            Intrinsics.g(tvExpand, "tvExpand");
            c.k(tvExpand);
        } else {
            AppCompatTextView tvExpand2 = tabExpandView.binding.f63775c;
            Intrinsics.g(tvExpand2, "tvExpand");
            c.h(tvExpand2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void k(TabExpandView tabExpandView) {
        Map map = tabExpandView.itemInRow;
        a aVar = tabExpandView.curSelectItem;
        List list = (List) tabExpandView.rowMap.get((Integer) map.get(aVar != null ? aVar.c() : null));
        if (list == null) {
            list = tabExpandView.datas;
        }
        tabExpandView.l(list);
    }

    private final void l(List list) {
        int childCount = this.binding.f63774b.getChildCount();
        int i11 = 0;
        if (list.size() <= childCount) {
            while (i11 < childCount) {
                View childAt = this.binding.f63774b.getChildAt(i11);
                if (i11 < list.size()) {
                    Intrinsics.e(childAt);
                    c.k(childAt);
                    f((a) list.get(i11), childAt);
                } else {
                    Intrinsics.e(childAt);
                    c.g(childAt);
                }
                i11++;
            }
            return;
        }
        this.binding.f63774b.removeAllViews();
        for (Object obj : list) {
            int i12 = i11 + 1;
            if (i11 < 0) {
                CollectionsKt.u();
            }
            a aVar = (a) obj;
            View childAt2 = this.binding.f63774b.getChildAt(i11);
            if (childAt2 != null) {
                f(aVar, childAt2);
            } else {
                this.binding.f63774b.addView(g(this, aVar, null, 2, null));
            }
            i11 = i12;
        }
    }

    private final void m(a item) {
        for (a aVar : this.datas) {
            aVar.e(Intrinsics.c(aVar, item));
        }
        this.curSelectItem = item;
    }

    public final void collapse() {
        this.binding.f63774b.setMaxRows(1);
        this.binding.f63775c.setSelected(false);
        this.binding.f63774b.post(new Runnable() { // from class: sl.d
            @Override // java.lang.Runnable
            public final void run() {
                TabExpandView.k(this.f75389a);
            }
        });
    }

    public final void enableExpand(boolean enable) {
        this.binding.f63775c.setEnabled(enable);
    }

    public final void expand() {
        this.binding.f63774b.setMaxRows(Integer.MAX_VALUE);
        this.binding.f63775c.setSelected(true);
        l(this.datas);
    }

    public final l0 getBinding() {
        return this.binding;
    }

    public final int getInParentIndex() {
        return this.inParentIndex;
    }

    public final void setBinding(l0 l0Var) {
        Intrinsics.h(l0Var, "<set-?>");
        this.binding = l0Var;
    }

    public final void setInParentIndex(int i11) {
        this.inParentIndex = i11;
    }

    public final void setOnItemClickListener(Function1<? super a, Unit> onItemClickListener) {
        Intrinsics.h(onItemClickListener, "onItemClickListener");
        this.mOnItemClickListener = onItemClickListener;
    }

    public final void updateData(List<a> list) {
        Intrinsics.h(list, "list");
        this.datas = list;
        this.rowMap.clear();
        this.itemInRow.clear();
        l(list);
        i();
    }
}
