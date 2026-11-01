package com.transsion.home.viewmodel;

import android.app.Application;
import android.net.Uri;
import androidx.p009lifecycle.u0;
import com.google.gson.Gson;
import com.tencent.mmkv.MMKV;
import com.tn.lib.net.bean.BaseDto;
import com.transsion.edcation.CourseManager;
import com.transsion.home.bean.DisplayMeta;
import com.transsion.home.bean.FeedsLayoutType;
import com.transsion.home.bean.OperateItem;
import com.transsion.home.bean.SubOperateData;
import com.transsion.home.bean.TrendingRequestEntity;
import com.transsion.home.bean.TrendingRespItem;
import com.transsion.home.bean.TrendingRespItemType;
import com.transsion.home.p004enum.HomeTabId;
import com.transsion.moviedetailapi.bean.PostItemType;
import com.transsion.ugcvideodetail.api.bean.UGCContent;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes5.dex */
public final class SubTabViewModel extends androidx.p009lifecycle.b {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final a f45827h = new a(null);

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final int f45828i = 8;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final androidx.p009lifecycle.b0 f45829b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final androidx.p009lifecycle.b0 f45830c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Lazy f45831d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final ol.e f45832e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f45833f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f45834g;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SubTabViewModel(Application application) {
        super(application);
        Intrinsics.h(application, "application");
        this.f45829b = new androidx.p009lifecycle.b0();
        this.f45830c = new androidx.p009lifecycle.b0();
        this.f45831d = LazyKt.b(new Function0() { // from class: com.transsion.home.viewmodel.n
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return SubTabViewModel.x();
            }
        });
        this.f45832e = (ol.e) zg.c.f79414e.a().h(ol.e.class);
        this.f45833f = 1;
        this.f45834g = ak.g.f639a.b();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final List l(List list) {
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            TrendingRespItem trendingRespItem = (TrendingRespItem) it.next();
            Integer type = trendingRespItem.getType();
            int value = TrendingRespItemType.SUBJECT.getValue();
            if (type != null && type.intValue() == value && trendingRespItem.getSubject() != null) {
                OperateItem operateItem = new OperateItem(null, PostItemType.SUBJECT.getValue(), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 2147483645, null);
                operateItem.setFeedsSubject(trendingRespItem.getSubject());
                arrayList.add(operateItem);
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final List m(List list) {
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            TrendingRespItem trendingRespItem = (TrendingRespItem) it.next();
            UGCContent content = trendingRespItem.getContent();
            if ((content != null ? content.getVideo() : null) != null) {
                DisplayMeta displayMeta = trendingRespItem.getDisplayMeta();
                if (Intrinsics.c(displayMeta != null ? displayMeta.getLayoutType() : null, FeedsLayoutType.FULL.getValue())) {
                    String value = PostItemType.TRENDING_FEES_BIG.getValue();
                    UGCContent content2 = trendingRespItem.getContent();
                    arrayList.add(new OperateItem(null, value, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, content2 != null ? content2.getVideo() : null, null, null, null, null, null, null, null, null, null, null, 2146435069, null));
                } else {
                    String value2 = PostItemType.TRENDING_FEES_GRID.getValue();
                    UGCContent content3 = trendingRespItem.getContent();
                    arrayList.add(new OperateItem(null, value2, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, content3 != null ? content3.getVideo() : null, null, null, null, null, null, null, null, null, null, null, 2146435069, null));
                }
            }
        }
        return arrayList;
    }

    private final String o(String str, int i11) {
        return str + "_" + i11;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:8:0x0019  */
    public final Object r(int i11, String str, Continuation continuation) throws Throwable {
        SubTabViewModel$getSubOperation$1 subTabViewModel$getSubOperation$1;
        int i12;
        String str2;
        BaseDto baseDto;
        List<OperateItem> items;
        SubOperateData subOperateData;
        List<OperateItem> items2;
        SubOperateData subOperateData2;
        String version;
        if (continuation instanceof SubTabViewModel$getSubOperation$1) {
            subTabViewModel$getSubOperation$1 = (SubTabViewModel$getSubOperation$1) continuation;
            int i13 = subTabViewModel$getSubOperation$1.label;
            if ((i13 & Integer.MIN_VALUE) != 0) {
                subTabViewModel$getSubOperation$1.label = i13 - Integer.MIN_VALUE;
            } else {
                subTabViewModel$getSubOperation$1 = new SubTabViewModel$getSubOperation$1(this, continuation);
            }
        } else {
            subTabViewModel$getSubOperation$1 = new SubTabViewModel$getSubOperation$1(this, continuation);
        }
        SubTabViewModel$getSubOperation$1 subTabViewModel$getSubOperation$2 = subTabViewModel$getSubOperation$1;
        Object objD = subTabViewModel$getSubOperation$2.result;
        Object objF = IntrinsicsKt.f();
        int i14 = subTabViewModel$getSubOperation$2.label;
        if (i14 == 0) {
            ResultKt.b(objD);
            String string = rl.e.f74553a.b().getString(o("sub_operation_version_prefix", i11), "");
            if (this.f45834g) {
                ol.e eVar = this.f45832e;
                subTabViewModel$getSubOperation$2.L$0 = string;
                subTabViewModel$getSubOperation$2.I$0 = i11;
                subTabViewModel$getSubOperation$2.label = 1;
                objD = ol.e.a.f(eVar, null, i11, string, str, subTabViewModel$getSubOperation$2, 1, null);
                if (objD == objF) {
                    return objF;
                }
                i12 = i11;
                str2 = string;
                baseDto = (BaseDto) objD;
            } else {
                ol.e eVar2 = this.f45832e;
                subTabViewModel$getSubOperation$2.L$0 = string;
                subTabViewModel$getSubOperation$2.I$0 = i11;
                subTabViewModel$getSubOperation$2.label = 2;
                objD = ol.e.a.d(eVar2, null, i11, string, subTabViewModel$getSubOperation$2, 1, null);
                if (objD == objF) {
                    return objF;
                }
                i12 = i11;
                str2 = string;
                baseDto = (BaseDto) objD;
            }
        } else if (i14 == 1) {
            i12 = subTabViewModel$getSubOperation$2.I$0;
            str2 = (String) subTabViewModel$getSubOperation$2.L$0;
            ResultKt.b(objD);
            baseDto = (BaseDto) objD;
        } else {
            if (i14 != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            i12 = subTabViewModel$getSubOperation$2.I$0;
            str2 = (String) subTabViewModel$getSubOperation$2.L$0;
            ResultKt.b(objD);
            baseDto = (BaseDto) objD;
        }
        if (str2 == null || str2.length() == 0 || (subOperateData = (SubOperateData) baseDto.getData()) == null || (items2 = subOperateData.getItems()) == null || !items2.isEmpty() || (subOperateData2 = (SubOperateData) baseDto.getData()) == null || (version = subOperateData2.getVersion()) == null || version.length() <= 0) {
            SubOperateData subOperateData3 = (SubOperateData) baseDto.getData();
            if (subOperateData3 != null && (items = subOperateData3.getItems()) != null && (!items.isEmpty())) {
                String json = new Gson().toJson(baseDto.getData());
                rl.e eVar3 = rl.e.f74553a;
                eVar3.b().putString(o("sub_operation_prefix", i12), json);
                MMKV mmkvB = eVar3.b();
                String strO = o("sub_operation_version_prefix", i12);
                SubOperateData subOperateData4 = (SubOperateData) baseDto.getData();
                mmkvB.putString(strO, subOperateData4 != null ? subOperateData4.getVersion() : null);
            }
        } else {
            baseDto.setData(com.blankj.utilcode.util.o.d(rl.e.f74553a.b().getString(o("sub_operation_prefix", i12), ""), SubOperateData.class));
        }
        return baseDto.getData();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void u(SubOperateData subOperateData) {
        List<OperateItem> items;
        if (subOperateData == null || (items = subOperateData.getItems()) == null) {
            return;
        }
        for (OperateItem operateItem : items) {
            if (Intrinsics.c(operateItem.getType(), PostItemType.UGC_SUBJECT_LIST.getValue()) && Intrinsics.c(operateItem.getStyleTemplate(), com.transsion.home.adapter.operateUGC.b.O)) {
                operateItem.setType(PostItemType.UGC_VERTICAL_OPT_LIST.getValue());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void v(int i11, SubOperateData subOperateData) {
        List<OperateItem> items;
        List<OperateItem> items2;
        if (HomeTabId.INSTANCE.h(Integer.valueOf(i11), true) && !ak.o.f646a.i()) {
            CourseManager.s(CourseManager.f44085a, null, null, 3, null);
            if (subOperateData != null && (items2 = subOperateData.getItems()) != null) {
                items2.add(1, new OperateItem(null, PostItemType.MY_COURSE.getValue(), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 2147483645, null));
            }
        }
        String trendingTitle = subOperateData != null ? subOperateData.getTrendingTitle() : null;
        if (trendingTitle == null || trendingTitle.length() == 0 || subOperateData == null || (items = subOperateData.getItems()) == null) {
            return;
        }
        items.add(new OperateItem(subOperateData.getTrendingTitle(), PostItemType.FEEDS_TITLE.getValue(), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 2147483644, null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final androidx.p009lifecycle.b0 x() {
        return new androidx.p009lifecycle.b0();
    }

    public final void n(int i11, boolean z10, String str) {
        kotlinx.coroutines.k.d(u0.a(this), y0.b(), null, new SubTabViewModel$fetchOperateData$1(z10, this, new Ref.ObjectRef(), i11, str, null), 2, null);
    }

    public final androidx.p009lifecycle.b0 p() {
        return this.f45829b;
    }

    public final androidx.p009lifecycle.b0 q() {
        return this.f45830c;
    }

    public final androidx.p009lifecycle.b0 s() {
        return (androidx.p009lifecycle.b0) this.f45831d.getValue();
    }

    public final void t(int i11, String str, boolean z10) {
        String string;
        if (z10) {
            this.f45833f = 1;
        }
        TrendingRequestEntity trendingRequestEntity = new TrendingRequestEntity();
        int i12 = this.f45833f;
        this.f45833f = i12 + 1;
        trendingRequestEntity.setPage(String.valueOf(i12));
        trendingRequestEntity.setPerPage(this.f45834g ? 14 : 12);
        trendingRequestEntity.setSessionId(yg.b.f79009a.h());
        Uri uriC = com.transsion.baselib.report.h.f43348a.c();
        if (uriC == null || (string = uriC.toString()) == null) {
            string = "";
        }
        trendingRequestEntity.setDeepLink(string);
        trendingRequestEntity.setLatest_events(new wj.a(wj.b.f77693a.e()));
        ak.o oVar = ak.o.f646a;
        if (oVar.i()) {
            trendingRequestEntity.setGrade(oVar.e());
        }
        kotlinx.coroutines.k.d(u0.a(this), y0.b(), null, new SubTabViewModel$getTrendingList$1(trendingRequestEntity, this, str, i11, null), 2, null);
    }

    public final void w(boolean z10) {
        this.f45834g = z10;
    }
}
