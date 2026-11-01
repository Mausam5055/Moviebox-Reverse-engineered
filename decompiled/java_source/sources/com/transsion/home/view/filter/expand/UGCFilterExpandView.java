package com.transsion.home.view.filter.expand;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.core.view.ViewGroupKt;
import androidx.p009lifecycle.b0;
import com.cloud.tmc.integration.params.TmcStartParams;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.tn.lib.widget.R$string;
import com.transsion.home.bean.ugc.UGCFilterGrade;
import com.transsion.home.bean.ugc.UGCFilterItem;
import com.transsion.home.view.filter.expand.UGCFilterExpandView;
import com.transsion.home.viewmodel.UGCFilterViewModel;
import com.transsion.web.api.WebConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import lg.a;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000v\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0010!\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u000e\n\u0002\u0010$\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010%\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u000e\b\u0007\u0018\u0000 b2\u00020\u0001:\u00014B\u0011\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005B\u0019\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\u0004\u0010\bB!\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u0004\u0010\u000bJ\u0017\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\fH\u0002¢\u0006\u0004\b\u000f\u0010\u0010J+\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u000e0\u00132\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u000e0\u00112\u0006\u0010\r\u001a\u00020\fH\u0002¢\u0006\u0004\b\u0014\u0010\u0015J\u0017\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0016\u001a\u00020\u000eH\u0002¢\u0006\u0004\b\u0018\u0010\u0019J\u001d\u0010\u001b\u001a\u00020\u001a2\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u000e0\u0011H\u0002¢\u0006\u0004\b\u001b\u0010\u001cJ\u001d\u0010\u001d\u001a\u00020\u001a2\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u000e0\u0011H\u0002¢\u0006\u0004\b\u001d\u0010\u001cJ\u001d\u0010\u001e\u001a\u00020\u001a2\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u000e0\u0011H\u0002¢\u0006\u0004\b\u001e\u0010\u001cJ\u000f\u0010\u001f\u001a\u00020\u001aH\u0002¢\u0006\u0004\b\u001f\u0010 J\u0017\u0010\"\u001a\u00020\u001a2\u0006\u0010!\u001a\u00020\tH\u0002¢\u0006\u0004\b\"\u0010#J\u000f\u0010$\u001a\u00020\u001aH\u0002¢\u0006\u0004\b$\u0010 J\u000f\u0010%\u001a\u00020\u001aH\u0002¢\u0006\u0004\b%\u0010 J\u000f\u0010&\u001a\u00020\u001aH\u0002¢\u0006\u0004\b&\u0010 JM\u0010-\u001a\u00020\u001a2\f\u0010'\u001a\b\u0012\u0004\u0012\u00020\u000e0\u00112\b\b\u0002\u0010(\u001a\u00020\f2\u0016\b\u0002\u0010*\u001a\u0010\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\f\u0018\u00010)2\u000e\b\u0002\u0010,\u001a\b\u0012\u0004\u0012\u00020+0\u0011¢\u0006\u0004\b-\u0010.J\u0015\u00100\u001a\u00020\u001a2\u0006\u0010/\u001a\u00020\t¢\u0006\u0004\b0\u0010#J\r\u00101\u001a\u00020\u001a¢\u0006\u0004\b1\u0010 J\u0019\u00102\u001a\u000e\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\f0)¢\u0006\u0004\b2\u00103R\"\u0010:\u001a\u00020\u00178\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b4\u00105\u001a\u0004\b6\u00107\"\u0004\b8\u00109R$\u0010B\u001a\u0004\u0018\u00010;8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b<\u0010=\u001a\u0004\b>\u0010?\"\u0004\b@\u0010AR&\u0010F\u001a\u0014\u0012\u0004\u0012\u00020\f\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000e0\u00110C8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bD\u0010ER \u0010H\u001a\u000e\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\u000e0C8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bG\u0010ER\u0016\u0010K\u001a\u00020\f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bI\u0010JR\u0018\u0010M\u001a\u0004\u0018\u00010\f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bL\u0010JR\u0018\u0010O\u001a\u0004\u0018\u00010\f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bN\u0010JR\u0018\u0010P\u001a\u0004\u0018\u00010\f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\"\u0010JR\u0018\u0010R\u001a\u0004\u0018\u00010\f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bQ\u0010JR\u001c\u0010,\u001a\b\u0012\u0004\u0012\u00020+0\u00118\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001b\u0010SR\u0086\u0001\u0010a\u001af\u0012\u0015\u0012\u0013\u0018\u00010\f¢\u0006\f\bU\u0012\b\bV\u0012\u0004\b\b(W\u0012\u0015\u0012\u0013\u0018\u00010\f¢\u0006\f\bU\u0012\b\bV\u0012\u0004\b\b(X\u0012\u0015\u0012\u0013\u0018\u00010\f¢\u0006\f\bU\u0012\b\bV\u0012\u0004\b\b(Y\u0012\u0015\u0012\u0013\u0018\u00010\f¢\u0006\f\bU\u0012\b\bV\u0012\u0004\b\b(Z\u0012\u0004\u0012\u00020\u001a\u0018\u00010T8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b[\u0010\\\u001a\u0004\b]\u0010^\"\u0004\b_\u0010`¨\u0006c"}, d2 = {"Lcom/transsion/home/view/filter/expand/UGCFilterExpandView;", "Landroidx/appcompat/widget/LinearLayoutCompat;", "Landroid/content/Context;", "context", "<init>", "(Landroid/content/Context;)V", "Landroid/util/AttributeSet;", "attrs", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "", "defStyleAttr", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "", "parentId", "Lcom/transsion/home/bean/ugc/UGCFilterItem;", CampaignEx.JSON_KEY_AD_Q, "(Ljava/lang/String;)Lcom/transsion/home/bean/ugc/UGCFilterItem;", "", "categories", "", "v", "(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;", WebConstants.FIELD_ITEM, "", TtmlNode.TAG_P, "(Lcom/transsion/home/bean/ugc/UGCFilterItem;)Z", "", "j", "(Ljava/util/List;)V", "l", "n", CampaignEx.JSON_KEY_AD_R, "()V", "parentIndex", "h", "(I)V", "s", "t", TmcStartParams.KEY_URL_SHORT, "items", "rootParentId", "", "selectedIds", "Lcom/transsion/home/bean/ugc/UGCFilterGrade;", "grades", "updateList", "(Ljava/util/List;Ljava/lang/String;Ljava/util/Map;Ljava/util/List;)V", "target", "expandFilter", "collapseAll", "getSelectedIds", "()Ljava/util/Map;", "a", "Z", "getHasInit", "()Z", "setHasInit", "(Z)V", "hasInit", "Lcom/transsion/home/viewmodel/UGCFilterViewModel;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lcom/transsion/home/viewmodel/UGCFilterViewModel;", "getFilterViewModel", "()Lcom/transsion/home/viewmodel/UGCFilterViewModel;", "setFilterViewModel", "(Lcom/transsion/home/viewmodel/UGCFilterViewModel;)V", "filterViewModel", "", "c", "Ljava/util/Map;", "categoryTree", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "itemById", "e", "Ljava/lang/String;", "mRootParentId", "f", "selectedLevel2Id", "g", "selectedLevel3Id", "selectedLevel4Id", "i", "selectedGradeId", "Ljava/util/List;", "Lkotlin/Function4;", "Lkotlin/ParameterName;", "name", "level2", "level3", "level4", "grade", CampaignEx.JSON_KEY_AD_K, "Lkotlin/jvm/functions/Function4;", "getOnSelectionChanged", "()Lkotlin/jvm/functions/Function4;", "setOnSelectionChanged", "(Lkotlin/jvm/functions/Function4;)V", "onSelectionChanged", "Companion", "Home_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class UGCFilterExpandView extends LinearLayoutCompat {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private boolean hasInit;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private UGCFilterViewModel filterViewModel;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private final Map categoryTree;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private final Map itemById;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private String mRootParentId;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private String selectedLevel2Id;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    private String selectedLevel3Id;

    /* JADX INFO: renamed from: h, reason: collision with root package name and from kotlin metadata */
    private String selectedLevel4Id;

    /* JADX INFO: renamed from: i, reason: collision with root package name and from kotlin metadata */
    private String selectedGradeId;

    /* JADX INFO: renamed from: j, reason: collision with root package name and from kotlin metadata */
    private List grades;

    /* JADX INFO: renamed from: k, reason: collision with root package name and from kotlin metadata */
    private Function4 onSelectionChanged;
    public static final int $stable = 8;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UGCFilterExpandView(Context context) {
        super(context);
        Intrinsics.h(context, "context");
        this.categoryTree = new LinkedHashMap();
        this.itemById = new LinkedHashMap();
        this.mRootParentId = "4";
        this.grades = CollectionsKt.l();
        setOrientation(1);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UGCFilterExpandView(Context context, AttributeSet attrs) {
        super(context, attrs);
        Intrinsics.h(context, "context");
        Intrinsics.h(attrs, "attrs");
        this.categoryTree = new LinkedHashMap();
        this.itemById = new LinkedHashMap();
        this.mRootParentId = "4";
        this.grades = CollectionsKt.l();
        setOrientation(1);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UGCFilterExpandView(Context context, AttributeSet attrs, int i11) {
        super(context, attrs, i11);
        Intrinsics.h(context, "context");
        Intrinsics.h(attrs, "attrs");
        this.categoryTree = new LinkedHashMap();
        this.itemById = new LinkedHashMap();
        this.mRootParentId = "4";
        this.grades = CollectionsKt.l();
        setOrientation(1);
    }

    private final void h(int parentIndex) {
        if (this.grades.isEmpty()) {
            a.f68839a.x("UGCFilterExpandView", "createGradeTab: grades is empty", false);
            return;
        }
        List<UGCFilterGrade> list = this.grades;
        List arrayList = new ArrayList(CollectionsKt.v(list, 10));
        for (UGCFilterGrade uGCFilterGrade : list) {
            arrayList.add(new UGCFilterItem(uGCFilterGrade.getGrade(), uGCFilterGrade.getDescName(), null, uGCFilterGrade.getDescName(), Boolean.FALSE));
        }
        List listV = v(arrayList, "");
        Context context = getContext();
        Intrinsics.g(context, "getContext(...)");
        UGCTabExpandView uGCTabExpandView = new UGCTabExpandView(context);
        uGCTabExpandView.updateData(CollectionsKt.U0(listV), this.selectedGradeId);
        uGCTabExpandView.collapse();
        uGCTabExpandView.setInParentIndex(parentIndex);
        uGCTabExpandView.setTag("grade_tab");
        uGCTabExpandView.setOnItemClickListener(new Function1() { // from class: sl.h
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return UGCFilterExpandView.i(this.f75396a, (UGCFilterItem) obj);
            }
        });
        addView(uGCTabExpandView, getChildCount());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit i(UGCFilterExpandView uGCFilterExpandView, UGCFilterItem item) {
        b0 b0VarL;
        b0 b0VarL2;
        Intrinsics.h(item, "item");
        a.f68839a.c("UGCFilterExpandView", "grade selected: id=" + item.getCategoryId() + ", name=" + item.getName(), false);
        if (uGCFilterExpandView.p(item)) {
            uGCFilterExpandView.selectedGradeId = null;
            uGCFilterExpandView.collapseAll();
            Function4 function4 = uGCFilterExpandView.onSelectionChanged;
            if (function4 != null) {
                function4.invoke(uGCFilterExpandView.selectedLevel2Id, uGCFilterExpandView.selectedLevel3Id, uGCFilterExpandView.selectedLevel4Id, uGCFilterExpandView.selectedGradeId);
            }
            UGCFilterViewModel uGCFilterViewModel = uGCFilterExpandView.filterViewModel;
            if (uGCFilterViewModel != null && (b0VarL2 = uGCFilterViewModel.l()) != null) {
                b0VarL2.q(item);
            }
            return Unit.f67061a;
        }
        uGCFilterExpandView.selectedGradeId = item.getCategoryId();
        uGCFilterExpandView.collapseAll();
        Function4 function5 = uGCFilterExpandView.onSelectionChanged;
        if (function5 != null) {
            function5.invoke(uGCFilterExpandView.selectedLevel2Id, uGCFilterExpandView.selectedLevel3Id, uGCFilterExpandView.selectedLevel4Id, uGCFilterExpandView.selectedGradeId);
        }
        UGCFilterViewModel uGCFilterViewModel2 = uGCFilterExpandView.filterViewModel;
        if (uGCFilterViewModel2 != null && (b0VarL = uGCFilterViewModel2.l()) != null) {
            b0VarL.q(item);
        }
        return Unit.f67061a;
    }

    private final void j(List categories) {
        if (categories.isEmpty()) {
            return;
        }
        Context context = getContext();
        Intrinsics.g(context, "getContext(...)");
        UGCTabExpandView uGCTabExpandView = new UGCTabExpandView(context);
        uGCTabExpandView.updateData(CollectionsKt.U0(categories), this.selectedLevel2Id);
        uGCTabExpandView.collapse();
        uGCTabExpandView.setInParentIndex(0);
        uGCTabExpandView.setOnItemClickListener(new Function1() { // from class: sl.g
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return UGCFilterExpandView.k(this.f75395a, (UGCFilterItem) obj);
            }
        });
        addView(uGCTabExpandView, 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit k(UGCFilterExpandView uGCFilterExpandView, UGCFilterItem item) {
        b0 b0VarL;
        b0 b0VarL2;
        Intrinsics.h(item, "item");
        a.f68839a.c("UGCFilterExpandView", "level2 selected: id=" + item.getCategoryId() + ", name=" + item.getName(), false);
        if (uGCFilterExpandView.p(item)) {
            uGCFilterExpandView.selectedLevel2Id = null;
            uGCFilterExpandView.selectedLevel3Id = null;
            uGCFilterExpandView.selectedLevel4Id = null;
            uGCFilterExpandView.selectedGradeId = null;
            uGCFilterExpandView.t();
            Function4 function4 = uGCFilterExpandView.onSelectionChanged;
            if (function4 != null) {
                function4.invoke(uGCFilterExpandView.selectedLevel2Id, uGCFilterExpandView.selectedLevel3Id, uGCFilterExpandView.selectedLevel4Id, uGCFilterExpandView.selectedGradeId);
            }
            UGCFilterViewModel uGCFilterViewModel = uGCFilterExpandView.filterViewModel;
            if (uGCFilterViewModel != null && (b0VarL2 = uGCFilterViewModel.l()) != null) {
                b0VarL2.q(item);
            }
            uGCFilterExpandView.expandFilter(0);
            return Unit.f67061a;
        }
        uGCFilterExpandView.selectedLevel2Id = item.getCategoryId();
        uGCFilterExpandView.selectedLevel3Id = null;
        uGCFilterExpandView.selectedLevel4Id = null;
        uGCFilterExpandView.selectedGradeId = null;
        uGCFilterExpandView.t();
        List listL = (List) uGCFilterExpandView.categoryTree.get(item.getCategoryId());
        if (listL == null) {
            listL = CollectionsKt.l();
        }
        if (!listL.isEmpty()) {
            String categoryId = item.getCategoryId();
            if (categoryId == null) {
                categoryId = uGCFilterExpandView.mRootParentId;
            }
            uGCFilterExpandView.l(uGCFilterExpandView.v(listL, categoryId));
            uGCFilterExpandView.expandFilter(1);
        }
        uGCFilterExpandView.r();
        Function4 function5 = uGCFilterExpandView.onSelectionChanged;
        if (function5 != null) {
            function5.invoke(uGCFilterExpandView.selectedLevel2Id, uGCFilterExpandView.selectedLevel3Id, uGCFilterExpandView.selectedLevel4Id, uGCFilterExpandView.selectedGradeId);
        }
        UGCFilterViewModel uGCFilterViewModel2 = uGCFilterExpandView.filterViewModel;
        if (uGCFilterViewModel2 != null && (b0VarL = uGCFilterViewModel2.l()) != null) {
            b0VarL.q(item);
        }
        return Unit.f67061a;
    }

    private final void l(List categories) {
        if (categories.isEmpty()) {
            return;
        }
        Context context = getContext();
        Intrinsics.g(context, "getContext(...)");
        final UGCTabExpandView uGCTabExpandView = new UGCTabExpandView(context);
        uGCTabExpandView.updateData(CollectionsKt.U0(categories), this.selectedLevel3Id);
        uGCTabExpandView.collapse();
        uGCTabExpandView.setInParentIndex(1);
        uGCTabExpandView.setOnItemClickListener(new Function1() { // from class: sl.f
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return UGCFilterExpandView.m(this.f75393a, uGCTabExpandView, (UGCFilterItem) obj);
            }
        });
        addView(uGCTabExpandView, 1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit m(UGCFilterExpandView uGCFilterExpandView, UGCTabExpandView uGCTabExpandView, UGCFilterItem item) {
        b0 b0VarL;
        UGCFilterItem uGCFilterItem;
        b0 b0VarL2;
        Intrinsics.h(item, "item");
        a.f68839a.c("UGCFilterExpandView", "level3 selected: id=" + item.getCategoryId() + ", name=" + item.getName(), false);
        if (!uGCFilterExpandView.p(item)) {
            uGCFilterExpandView.selectedLevel3Id = item.getCategoryId();
            uGCFilterExpandView.selectedLevel4Id = null;
            uGCFilterExpandView.selectedGradeId = null;
            uGCFilterExpandView.u();
            List listL = (List) uGCFilterExpandView.categoryTree.get(item.getCategoryId());
            if (listL == null) {
                listL = CollectionsKt.l();
            }
            if (!listL.isEmpty()) {
                String categoryId = item.getCategoryId();
                uGCFilterExpandView.n(uGCFilterExpandView.v(listL, categoryId != null ? categoryId : ""));
                uGCFilterExpandView.expandFilter(2);
            }
            uGCFilterExpandView.r();
            Function4 function4 = uGCFilterExpandView.onSelectionChanged;
            if (function4 != null) {
                function4.invoke(uGCFilterExpandView.selectedLevel2Id, uGCFilterExpandView.selectedLevel3Id, uGCFilterExpandView.selectedLevel4Id, uGCFilterExpandView.selectedGradeId);
            }
            UGCFilterViewModel uGCFilterViewModel = uGCFilterExpandView.filterViewModel;
            if (uGCFilterViewModel != null && (b0VarL = uGCFilterViewModel.l()) != null) {
                b0VarL.q(item);
            }
            return Unit.f67061a;
        }
        uGCFilterExpandView.selectedLevel3Id = null;
        uGCFilterExpandView.selectedLevel4Id = null;
        uGCFilterExpandView.selectedGradeId = null;
        uGCFilterExpandView.s();
        uGCFilterExpandView.u();
        List<UGCFilterItem> listL2 = (List) uGCFilterExpandView.categoryTree.get(uGCFilterExpandView.selectedLevel2Id);
        if (listL2 == null) {
            listL2 = CollectionsKt.l();
        }
        ArrayList arrayList = new ArrayList();
        for (UGCFilterItem uGCFilterItem2 : listL2) {
            Map map = uGCFilterExpandView.categoryTree;
            String categoryId2 = uGCFilterItem2.getCategoryId();
            if (categoryId2 == null) {
                categoryId2 = "";
            }
            List listL3 = (List) map.get(categoryId2);
            if (listL3 == null) {
                listL3 = CollectionsKt.l();
            }
            arrayList.addAll(listL3);
        }
        HashSet hashSet = new HashSet();
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : arrayList) {
            if (hashSet.add(((UGCFilterItem) obj).getCategoryId())) {
                arrayList2.add(obj);
            }
        }
        if (arrayList2.isEmpty()) {
            uGCFilterExpandView.expandFilter(1);
            String str = uGCFilterExpandView.selectedLevel2Id;
            uGCFilterItem = str != null ? (UGCFilterItem) uGCFilterExpandView.itemById.get(str) : null;
            if (uGCFilterItem != null ? Intrinsics.c(uGCFilterItem.getWithGrade(), Boolean.TRUE) : false) {
                uGCFilterExpandView.h(uGCTabExpandView.getChildCount());
            }
        } else {
            String str2 = uGCFilterExpandView.selectedLevel2Id;
            if (str2 == null) {
                str2 = uGCFilterExpandView.mRootParentId;
            }
            uGCFilterExpandView.n(uGCFilterExpandView.v(arrayList2, str2));
            uGCFilterExpandView.expandFilter(2);
            String str3 = uGCFilterExpandView.selectedLevel2Id;
            uGCFilterItem = str3 != null ? (UGCFilterItem) uGCFilterExpandView.itemById.get(str3) : null;
            if (uGCFilterItem != null ? Intrinsics.c(uGCFilterItem.getWithGrade(), Boolean.TRUE) : false) {
                uGCFilterExpandView.h(uGCTabExpandView.getChildCount());
            }
        }
        Function4 function5 = uGCFilterExpandView.onSelectionChanged;
        if (function5 != null) {
            function5.invoke(uGCFilterExpandView.selectedLevel2Id, uGCFilterExpandView.selectedLevel3Id, uGCFilterExpandView.selectedLevel4Id, uGCFilterExpandView.selectedGradeId);
        }
        UGCFilterViewModel uGCFilterViewModel2 = uGCFilterExpandView.filterViewModel;
        if (uGCFilterViewModel2 != null && (b0VarL2 = uGCFilterViewModel2.l()) != null) {
            b0VarL2.q(item);
        }
        return Unit.f67061a;
    }

    private final void n(List categories) {
        if (categories.isEmpty()) {
            return;
        }
        Context context = getContext();
        Intrinsics.g(context, "getContext(...)");
        UGCTabExpandView uGCTabExpandView = new UGCTabExpandView(context);
        uGCTabExpandView.updateData(CollectionsKt.U0(categories), this.selectedLevel4Id);
        uGCTabExpandView.collapse();
        uGCTabExpandView.setInParentIndex(2);
        uGCTabExpandView.setOnItemClickListener(new Function1() { // from class: sl.i
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return UGCFilterExpandView.o(this.f75397a, (UGCFilterItem) obj);
            }
        });
        addView(uGCTabExpandView, 2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit o(UGCFilterExpandView uGCFilterExpandView, UGCFilterItem item) {
        b0 b0VarL;
        b0 b0VarL2;
        Intrinsics.h(item, "item");
        a.f68839a.c("UGCFilterExpandView", "level4 selected: id=" + item.getCategoryId() + ", name=" + item.getName(), false);
        if (!uGCFilterExpandView.p(item)) {
            uGCFilterExpandView.selectedLevel4Id = item.getCategoryId();
            uGCFilterExpandView.collapseAll();
            uGCFilterExpandView.r();
            Function4 function4 = uGCFilterExpandView.onSelectionChanged;
            if (function4 != null) {
                function4.invoke(uGCFilterExpandView.selectedLevel2Id, uGCFilterExpandView.selectedLevel3Id, uGCFilterExpandView.selectedLevel4Id, uGCFilterExpandView.selectedGradeId);
            }
            UGCFilterViewModel uGCFilterViewModel = uGCFilterExpandView.filterViewModel;
            if (uGCFilterViewModel != null && (b0VarL = uGCFilterViewModel.l()) != null) {
                b0VarL.q(item);
            }
            return Unit.f67061a;
        }
        uGCFilterExpandView.selectedLevel4Id = null;
        uGCFilterExpandView.selectedGradeId = null;
        uGCFilterExpandView.collapseAll();
        uGCFilterExpandView.r();
        Function4 function5 = uGCFilterExpandView.onSelectionChanged;
        if (function5 != null) {
            function5.invoke(uGCFilterExpandView.selectedLevel2Id, uGCFilterExpandView.selectedLevel3Id, uGCFilterExpandView.selectedLevel4Id, uGCFilterExpandView.selectedGradeId);
        }
        UGCFilterViewModel uGCFilterViewModel2 = uGCFilterExpandView.filterViewModel;
        if (uGCFilterViewModel2 != null && (b0VarL2 = uGCFilterViewModel2.l()) != null) {
            b0VarL2.q(item);
        }
        return Unit.f67061a;
    }

    private final boolean p(UGCFilterItem item) {
        return Intrinsics.c(item.getName(), getContext().getString(R$string.all));
    }

    private final UGCFilterItem q(String parentId) {
        return new UGCFilterItem(parentId + "_all", getContext().getString(R$string.all), parentId, getContext().getString(R$string.all), null, 16, null);
    }

    private final void r() {
        boolean zC;
        boolean zC2;
        s();
        String str = this.selectedLevel2Id;
        if (str == null && this.selectedLevel3Id == null && this.selectedLevel4Id == null) {
            return;
        }
        boolean zC3 = false;
        if (str != null) {
            UGCFilterItem uGCFilterItem = (UGCFilterItem) this.itemById.get(str);
            zC = Intrinsics.c(uGCFilterItem != null ? uGCFilterItem.getWithGrade() : null, Boolean.TRUE);
        } else {
            zC = false;
        }
        String str2 = this.selectedLevel3Id;
        if (str2 != null) {
            UGCFilterItem uGCFilterItem2 = (UGCFilterItem) this.itemById.get(str2);
            zC2 = Intrinsics.c(uGCFilterItem2 != null ? uGCFilterItem2.getWithGrade() : null, Boolean.TRUE);
        } else {
            zC2 = false;
        }
        String str3 = this.selectedLevel4Id;
        if (str3 != null) {
            UGCFilterItem uGCFilterItem3 = (UGCFilterItem) this.itemById.get(str3);
            zC3 = Intrinsics.c(uGCFilterItem3 != null ? uGCFilterItem3.getWithGrade() : null, Boolean.TRUE);
        }
        if (zC || zC2 || zC3) {
            h(getChildCount());
        }
    }

    private final void s() {
        int childCount = getChildCount();
        do {
            childCount--;
            if (-1 >= childCount) {
                return;
            }
        } while (!Intrinsics.c(getChildAt(childCount).getTag(), "grade_tab"));
        removeViewAt(childCount);
    }

    private final void t() {
        while (getChildCount() > 1) {
            removeViewAt(1);
        }
    }

    private final void u() {
        while (getChildCount() > 2) {
            removeViewAt(2);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void updateList$default(UGCFilterExpandView uGCFilterExpandView, List list, String str, Map map, List list2, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            str = "4";
        }
        if ((i11 & 4) != 0) {
            map = null;
        }
        if ((i11 & 8) != 0) {
            list2 = CollectionsKt.l();
        }
        uGCFilterExpandView.updateList(list, str, map, list2);
    }

    private final List v(List categories, String parentId) {
        if (categories.isEmpty()) {
            return new ArrayList();
        }
        List listQ = CollectionsKt.q(q(parentId));
        listQ.addAll(categories);
        return listQ;
    }

    public final void collapseAll() {
        for (View view : ViewGroupKt.getChildren(this)) {
            UGCTabExpandView uGCTabExpandView = view instanceof UGCTabExpandView ? (UGCTabExpandView) view : null;
            if (uGCTabExpandView != null) {
                uGCTabExpandView.collapse();
            }
        }
    }

    public final void expandFilter(int target) {
        UGCTabExpandView uGCTabExpandView;
        int i11 = 0;
        for (Object obj : ViewGroupKt.getChildren(this)) {
            int i12 = i11 + 1;
            if (i11 < 0) {
                CollectionsKt.u();
            }
            View view = (View) obj;
            if (i11 != target) {
                uGCTabExpandView = view instanceof UGCTabExpandView ? (UGCTabExpandView) view : null;
                if (uGCTabExpandView != null) {
                    uGCTabExpandView.collapse();
                }
            } else {
                uGCTabExpandView = view instanceof UGCTabExpandView ? (UGCTabExpandView) view : null;
                if (uGCTabExpandView != null) {
                    uGCTabExpandView.expand();
                }
            }
            i11 = i12;
        }
    }

    public final UGCFilterViewModel getFilterViewModel() {
        return this.filterViewModel;
    }

    public final boolean getHasInit() {
        return this.hasInit;
    }

    public final Function4<String, String, String, String, Unit> getOnSelectionChanged() {
        return this.onSelectionChanged;
    }

    public final Map<String, String> getSelectedIds() {
        Map mapC = MapsKt.c();
        String str = this.selectedLevel2Id;
        if (str != null) {
        }
        String str2 = this.selectedLevel3Id;
        if (str2 != null) {
        }
        String str3 = this.selectedLevel4Id;
        if (str3 != null) {
        }
        String str4 = this.selectedGradeId;
        if (str4 != null) {
            mapC.put("grade", str4);
        }
        return MapsKt.b(mapC);
    }

    public final void setFilterViewModel(UGCFilterViewModel uGCFilterViewModel) {
        this.filterViewModel = uGCFilterViewModel;
    }

    public final void setHasInit(boolean z10) {
        this.hasInit = z10;
    }

    public final void setOnSelectionChanged(Function4<? super String, ? super String, ? super String, ? super String, Unit> function4) {
        this.onSelectionChanged = function4;
    }

    public final void updateList(List<UGCFilterItem> items, String rootParentId, Map<String, String> selectedIds, List<UGCFilterGrade> grades) {
        Intrinsics.h(items, "items");
        Intrinsics.h(rootParentId, "rootParentId");
        Intrinsics.h(grades, "grades");
        this.hasInit = true;
        this.mRootParentId = rootParentId;
        this.grades = grades;
        this.categoryTree.clear();
        Map map = this.categoryTree;
        List<UGCFilterItem> list = items;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Object obj : list) {
            String parentId = ((UGCFilterItem) obj).getParentId();
            if (parentId == null) {
                parentId = rootParentId;
            }
            Object arrayList = linkedHashMap.get(parentId);
            if (arrayList == null) {
                arrayList = new ArrayList();
                linkedHashMap.put(parentId, arrayList);
            }
            ((List) arrayList).add(obj);
        }
        map.putAll(linkedHashMap);
        this.itemById.clear();
        for (UGCFilterItem uGCFilterItem : list) {
            String categoryId = uGCFilterItem.getCategoryId();
            if (categoryId != null) {
                this.itemById.put(categoryId, uGCFilterItem);
            }
        }
        if (selectedIds != null) {
            this.selectedLevel2Id = selectedIds.get("level2");
            this.selectedLevel3Id = selectedIds.get("level3");
            this.selectedLevel4Id = selectedIds.get("level4");
            this.selectedGradeId = selectedIds.get("grade");
        }
        a.C0828a c0828a = a.f68839a;
        c0828a.c("UGCFilterExpandView", "updateList: items size=" + items.size() + ", tree size=" + this.categoryTree.size() + ", selected: lv2=" + this.selectedLevel2Id + ", lv3=" + this.selectedLevel3Id + ", lv4=" + this.selectedLevel4Id, false);
        removeAllViews();
        List listL = (List) this.categoryTree.get(rootParentId);
        if (listL == null) {
            listL = CollectionsKt.l();
        }
        if (listL.isEmpty()) {
            c0828a.x("UGCFilterExpandView", "updateList: no root categories found", false);
            return;
        }
        j(v(listL, rootParentId));
        String str = this.selectedLevel2Id;
        if (str != null) {
            List listL2 = (List) this.categoryTree.get(str);
            if (listL2 == null) {
                listL2 = CollectionsKt.l();
            }
            if (!listL2.isEmpty()) {
                l(v(listL2, str));
                String str2 = this.selectedLevel3Id;
                if (str2 != null) {
                    List listL3 = (List) this.categoryTree.get(str2);
                    if (listL3 == null) {
                        listL3 = CollectionsKt.l();
                    }
                    if (!listL3.isEmpty()) {
                        n(v(listL3, str2));
                    }
                }
            }
        }
        r();
    }
}
