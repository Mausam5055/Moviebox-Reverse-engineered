package com.transsion.publish.ui;

import android.location.Address;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.fragment.app.FragmentActivity;
import androidx.recyclerview.widget.RecyclerView;
import com.blankj.utilcode.util.Utils;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.therouter.TheRouter;
import com.tn.lib.view.layoutmanager.NpaLinearLayoutManager;
import com.transsion.baseui.fragment.PageStatusFragment;
import com.transsion.mb.config.manager.ConfigBean;
import com.transsion.publish.R$layout;
import com.transsion.publish.R$string;
import com.transsion.publish.adapter.SelectLocationAdapter;
import com.transsion.publish.viewmodel.LocationPlaceViewModel;
import com.transsion.room.api.IRoomApi;
import com.transsion.room.api.bean.LocationPlace;
import com.transsion.web.api.WebConstants;
import com.transsnet.flow.event.AppScopeVMlProvider;
import com.transsnet.flow.event.FlowEventBus;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Function;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0006\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u0000 P2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001-B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0006\u0010\u0004J\u000f\u0010\u0007\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0007\u0010\u0004J\u000f\u0010\b\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\b\u0010\u0004J\u000f\u0010\t\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\t\u0010\u0004J\u000f\u0010\n\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\n\u0010\u0004J\u000f\u0010\u000b\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u000b\u0010\u0004J\u000f\u0010\f\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\f\u0010\u0004J\u0017\u0010\u000f\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u00020\rH\u0002¢\u0006\u0004\b\u000f\u0010\u0010J\u001d\u0010\u0014\u001a\u00020\u00052\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00120\u0011H\u0002¢\u0006\u0004\b\u0014\u0010\u0015J\u0017\u0010\u0017\u001a\u00020\u00052\u0006\u0010\u0016\u001a\u00020\u0012H\u0002¢\u0006\u0004\b\u0017\u0010\u0018J\u0017\u0010\u001b\u001a\u00020\u00022\u0006\u0010\u001a\u001a\u00020\u0019H\u0016¢\u0006\u0004\b\u001b\u0010\u001cJ\u0019\u0010\u001f\u001a\u00020\u00052\b\u0010\u001e\u001a\u0004\u0018\u00010\u001dH\u0016¢\u0006\u0004\b\u001f\u0010 J\u000f\u0010\"\u001a\u00020!H\u0016¢\u0006\u0004\b\"\u0010#J\u000f\u0010$\u001a\u00020!H\u0016¢\u0006\u0004\b$\u0010#J\u000f\u0010%\u001a\u00020\u0005H\u0016¢\u0006\u0004\b%\u0010\u0004J\u000f\u0010&\u001a\u00020\u0005H\u0016¢\u0006\u0004\b&\u0010\u0004J\u000f\u0010'\u001a\u00020\u0005H\u0016¢\u0006\u0004\b'\u0010\u0004J\u000f\u0010(\u001a\u00020\u0005H\u0016¢\u0006\u0004\b(\u0010\u0004J\u0011\u0010*\u001a\u0004\u0018\u00010)H\u0016¢\u0006\u0004\b*\u0010+R\u0018\u0010/\u001a\u0004\u0018\u00010,8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b-\u0010.R\u0018\u00103\u001a\u0004\u0018\u0001008\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b1\u00102R\u0018\u00107\u001a\u0004\u0018\u0001048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b5\u00106R\u0018\u00109\u001a\u0004\u0018\u0001048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b8\u00106R\u0018\u0010<\u001a\u0004\u0018\u00010!8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b:\u0010;R\u0018\u0010?\u001a\u0004\u0018\u00010\u00128\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b=\u0010>R\u0018\u0010B\u001a\u0004\u0018\u00010)8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b@\u0010AR\u0016\u0010E\u001a\u00020\r8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bC\u0010DR\u0018\u0010I\u001a\u0004\u0018\u00010F8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bG\u0010HR\u001d\u0010O\u001a\u0004\u0018\u00010J8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bK\u0010L\u001a\u0004\bM\u0010N¨\u0006Q"}, d2 = {"Lcom/transsion/publish/ui/SelectLocationFragment;", "Lcom/transsion/baseui/fragment/PageStatusFragment;", "Lhp/i;", "<init>", "()V", "", "checkGPS", "t0", "requestCurrentLocation", "A0", "r0", "D0", "F0", "", NativeComponentConstants.KEY_COMPONENT_TYPE, "z0", "(I)V", "", "Lcom/transsion/room/api/bean/LocationPlace;", "list", "G0", "(Ljava/util/List;)V", WebConstants.FIELD_ITEM, "B0", "(Lcom/transsion/room/api/bean/LocationPlace;)V", "Landroid/view/LayoutInflater;", "inflater", "s0", "(Landroid/view/LayoutInflater;)Lhp/i;", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "", "getPageStateLayoutTitle", "()Ljava/lang/String;", "getEmptyDescText", "initViewData", "initViewModel", "initListener", "retryLoadData", "Landroid/view/View;", "getLoadingView", "()Landroid/view/View;", "Lcom/transsion/publish/adapter/SelectLocationAdapter;", "a", "Lcom/transsion/publish/adapter/SelectLocationAdapter;", "mAdapter", "Lcom/transsion/publish/viewmodel/LocationPlaceViewModel;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lcom/transsion/publish/viewmodel/LocationPlaceViewModel;", "mViewModel", "", "c", "Ljava/lang/Double;", "lat", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "lon", "e", "Ljava/lang/String;", "countryCode", "f", "Lcom/transsion/room/api/bean/LocationPlace;", "curLocationPlace", "g", "Landroid/view/View;", "mLoadingView", "h", "I", "placeType", "Laq/a;", "i", "Laq/a;", "mGpsServiceHelper", "Lcom/transsion/room/api/IRoomApi;", "j", "Lkotlin/Lazy;", "getMRoomApi", "()Lcom/transsion/room/api/IRoomApi;", "mRoomApi", CampaignEx.JSON_KEY_AD_K, "Publish_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class SelectLocationFragment extends PageStatusFragment<hp.i> {

    /* JADX INFO: renamed from: k, reason: collision with root package name and from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private SelectLocationAdapter mAdapter;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private LocationPlaceViewModel mViewModel;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private Double lat;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private Double lon;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private String countryCode;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private LocationPlace curLocationPlace;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    private View mLoadingView;

    /* JADX INFO: renamed from: h, reason: collision with root package name and from kotlin metadata */
    private int placeType;

    /* JADX INFO: renamed from: i, reason: collision with root package name and from kotlin metadata */
    private aq.a mGpsServiceHelper;

    /* JADX INFO: renamed from: j, reason: collision with root package name and from kotlin metadata */
    private final Lazy mRoomApi = LazyKt.b(new Function0() { // from class: com.transsion.publish.ui.r0
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return SelectLocationFragment.mRoomApi_delegate$lambda$0();
        }
    });

    /* JADX INFO: renamed from: com.transsion.publish.ui.SelectLocationFragment$a, reason: from kotlin metadata */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final SelectLocationFragment a(LocationPlace locationPlace) {
            SelectLocationFragment selectLocationFragment = new SelectLocationFragment();
            selectLocationFragment.setArguments(androidx.core.os.d.b(TuplesKt.a("location_data", locationPlace)));
            return selectLocationFragment;
        }
    }

    static final class b implements androidx.p009lifecycle.c0, FunctionAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final /* synthetic */ Function1 f50524a;

        b(Function1 function) {
            Intrinsics.h(function, "function");
            this.f50524a = function;
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        public final Function a() {
            return this.f50524a;
        }

        public final boolean equals(Object obj) {
            if ((obj instanceof androidx.p009lifecycle.c0) && (obj instanceof FunctionAdapter)) {
                return Intrinsics.c(a(), ((FunctionAdapter) obj).a());
            }
            return false;
        }

        public final int hashCode() {
            return a().hashCode();
        }

        @Override // androidx.p009lifecycle.c0
        public final /* synthetic */ void onChanged(Object obj) {
            this.f50524a.invoke(obj);
        }
    }

    private final void A0() {
        SelectLocationAdapter selectLocationAdapter = this.mAdapter;
        if (selectLocationAdapter != null) {
            selectLocationAdapter.D1(this.lat, this.lon);
        }
        lg.a.C0828a.f(lg.a.f68839a, "LocationS", "Select--- get location success, placeType:" + this.placeType + ", do next", false, 4, null);
        int i11 = this.placeType;
        if (i11 == 0) {
            r0();
        } else if (i11 == 1) {
            F0();
        } else if (i11 == 2) {
            z0(2);
        }
        if (this.lat == null || this.lon == null) {
            return;
        }
        com.transsion.baselib.report.launch.b.f43370a.b().putString("key_lo_last_lat_lon", this.lat + "," + this.lon);
    }

    private final void B0(LocationPlace item) {
        fp.a aVar = new fp.a();
        aVar.o(8);
        aVar.n(1);
        aVar.q(item);
        FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
        String name = fp.a.class.getName();
        Intrinsics.g(name, "getName(...)");
        flowEventBus.postEvent(name, aVar, 0L);
        FragmentActivity activity = getActivity();
        if (activity != null) {
            activity.finish();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit C0(SelectLocationFragment selectLocationFragment, LocationPlace locationPlace) {
        if (locationPlace == null) {
            lg.a.C0828a.f(lg.a.f68839a, "LocationS", "Select--- get location fail", false, 4, null);
            selectLocationFragment.showContentView();
            SelectLocationAdapter selectLocationAdapter = selectLocationFragment.mAdapter;
            if (selectLocationAdapter != null) {
                selectLocationAdapter.Y0(selectLocationFragment.getErrorView(false));
            }
            return Unit.f67061a;
        }
        selectLocationFragment.lat = locationPlace.getLat();
        selectLocationFragment.lon = locationPlace.getLon();
        Address locationAddress = locationPlace.getLocationAddress();
        selectLocationFragment.countryCode = locationAddress != null ? locationAddress.getCountryCode() : null;
        selectLocationFragment.curLocationPlace = locationPlace;
        selectLocationFragment.A0();
        return Unit.f67061a;
    }

    private final void D0() {
        Double d11 = this.lat;
        if (d11 != null) {
            double dDoubleValue = d11.doubleValue();
            Double d12 = this.lon;
            if (d12 != null) {
                double dDoubleValue2 = d12.doubleValue();
                IRoomApi mRoomApi = getMRoomApi();
                if (mRoomApi != null) {
                    mRoomApi.e(dDoubleValue, dDoubleValue2, new Function1() { // from class: com.transsion.publish.ui.y0
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj) {
                            return SelectLocationFragment.E0(this.f50620a, (List) obj);
                        }
                    });
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit E0(SelectLocationFragment selectLocationFragment, List list) {
        String name;
        String distance;
        List list2 = list;
        if (list2 == null || list2.isEmpty()) {
            selectLocationFragment.z0(0);
        } else {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                ((LocationPlace) it.next()).setCountryCode(selectLocationFragment.countryCode);
            }
            LocationPlaceViewModel locationPlaceViewModel = selectLocationFragment.mViewModel;
            if (locationPlaceViewModel != null) {
                locationPlaceViewModel.o(list);
            }
            ArrayList arrayList = new ArrayList();
            arrayList.addAll(list2);
            LocationPlace locationPlace = selectLocationFragment.curLocationPlace;
            if (locationPlace != null && (name = locationPlace.getName()) != null && name.length() != 0 && (distance = locationPlace.getDistance()) != null && distance.length() != 0) {
                arrayList.add(locationPlace);
            }
            selectLocationFragment.G0(arrayList);
        }
        return Unit.f67061a;
    }

    private final void F0() {
        LocationPlaceViewModel locationPlaceViewModel = this.mViewModel;
        if (locationPlaceViewModel != null) {
            Double d11 = this.lat;
            Double dValueOf = Double.valueOf(d11 != null ? d11.doubleValue() : 0.0d);
            Double d12 = this.lon;
            locationPlaceViewModel.k(dValueOf, Double.valueOf(d12 != null ? d12.doubleValue() : 0.0d));
        }
    }

    private final void G0(List list) {
        showContentView();
        if (list.isEmpty()) {
            showEmptyView(false);
            return;
        }
        SelectLocationAdapter selectLocationAdapter = this.mAdapter;
        if (selectLocationAdapter != null) {
            selectLocationAdapter.n1(CollectionsKt.U0(list));
        }
    }

    private final void checkGPS() {
        LinearLayout linearLayout;
        aq.a aVar = this.mGpsServiceHelper;
        if (aVar == null || !aVar.b()) {
            hp.i mViewBinding = getMViewBinding();
            if (mViewBinding == null || (linearLayout = mViewBinding.f64803b) == null) {
                return;
            }
            jg.c.k(linearLayout);
            return;
        }
        if (this.lon == null || this.lat == null) {
            lg.a.C0828a.r(lg.a.f68839a, "LocationS", new String[]{"Select---GPS is open, location null, get location----"}, false, 4, null);
            requestCurrentLocation();
        } else {
            lg.a.C0828a.r(lg.a.f68839a, "LocationS", new String[]{"Select---GPS is open, location not null"}, false, 4, null);
            A0();
        }
    }

    private final IRoomApi getMRoomApi() {
        return (IRoomApi) this.mRoomApi.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final IRoomApi mRoomApi_delegate$lambda$0() {
        return (IRoomApi) TheRouter.d(IRoomApi.class, new Object[0]);
    }

    /* JADX WARN: Code duplicated, block: B:6:0x0032  */
    private final void r0() {
        boolean z10;
        Object objM454constructorimpl;
        lg.a.C0828a.f(lg.a.f68839a, "LocationS", "Select--- client, getCache", false, 4, null);
        String string = com.transsion.baselib.report.launch.b.f43370a.b().getString("key_lo_last_lat_lon", null);
        if (string != null) {
            try {
                Result.Companion companion = Result.INSTANCE;
                List listS0 = StringsKt.S0(string, new String[]{","}, false, 0, 6, null);
                if (!listS0.isEmpty()) {
                    Double dS = StringsKt.s((String) listS0.get(0));
                    Double dS2 = StringsKt.s((String) listS0.get(1));
                    Double d11 = this.lat;
                    if (d11 != null && this.lon != null && dS != null && dS2 != null) {
                        ak.s sVar = ak.s.f651a;
                        Intrinsics.e(d11);
                        double dDoubleValue = d11.doubleValue();
                        Double d12 = this.lon;
                        Intrinsics.e(d12);
                        z10 = sVar.b(dDoubleValue, d12.doubleValue(), dS.doubleValue(), dS2.doubleValue()) <= 30000.0f;
                    }
                }
                try {
                    objM454constructorimpl = Result.m454constructorimpl(Unit.f67061a);
                } catch (Throwable th2) {
                    th = th2;
                    Result.Companion companion2 = Result.INSTANCE;
                    objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th));
                }
            } catch (Throwable th3) {
                th = th3;
                z10 = true;
            }
            Result.m453boximpl(objM454constructorimpl);
        } else {
            z10 = true;
        }
        if (z10) {
            LocationPlaceViewModel locationPlaceViewModel = this.mViewModel;
            if (locationPlaceViewModel != null) {
                locationPlaceViewModel.i();
                return;
            }
            return;
        }
        lg.a.f68839a.c("LocationS", "Select--- client 已超距离，清除缓存，使用 getNearbyPlaces", true);
        LocationPlaceViewModel locationPlaceViewModel2 = this.mViewModel;
        if (locationPlaceViewModel2 != null) {
            locationPlaceViewModel2.h();
        }
        D0();
    }

    private final void requestCurrentLocation() {
        IRoomApi mRoomApi;
        showLoadingView();
        FragmentActivity activity = getActivity();
        if (activity == null || (mRoomApi = getMRoomApi()) == null) {
            return;
        }
        mRoomApi.b(activity, new Function1() { // from class: com.transsion.publish.ui.w0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return SelectLocationFragment.C0(this.f50616a, (LocationPlace) obj);
            }
        });
    }

    private final void t0() {
        Integer numV;
        ConfigBean configBeanC = sm.f.f75407c.a().c("sa_use_server_place", true);
        String value = configBeanC != null ? configBeanC.getValue() : null;
        int iIntValue = 0;
        if (value != null && value.length() != 0 && (numV = StringsKt.v(value)) != null) {
            iIntValue = numV.intValue();
        }
        this.placeType = iIntValue;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void u0(final SelectLocationFragment selectLocationFragment, View view) {
        aq.a aVar;
        lg.a.C0828a.f(lg.a.f68839a, "LocationS", "Select--- openGPS click", false, 4, null);
        if (selectLocationFragment.getActivity() == null || (aVar = selectLocationFragment.mGpsServiceHelper) == null) {
            return;
        }
        aVar.a(new Function1() { // from class: com.transsion.publish.ui.x0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return SelectLocationFragment.v0(this.f50618a, ((Boolean) obj).booleanValue());
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit v0(SelectLocationFragment selectLocationFragment, boolean z10) {
        LinearLayout linearLayout;
        LinearLayout linearLayout2;
        if (z10) {
            hp.i mViewBinding = selectLocationFragment.getMViewBinding();
            if (mViewBinding != null && (linearLayout2 = mViewBinding.f64803b) != null) {
                jg.c.g(linearLayout2);
            }
            selectLocationFragment.requestCurrentLocation();
        } else {
            hp.i mViewBinding2 = selectLocationFragment.getMViewBinding();
            if (mViewBinding2 != null && (linearLayout = mViewBinding2.f64803b) != null) {
                jg.c.k(linearLayout);
            }
        }
        lg.a.C0828a.f(lg.a.f68839a, "LocationS", "Select--- openGPS result:" + z10, false, 4, null);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void w0(SelectLocationFragment selectLocationFragment, BaseQuickAdapter adapter, View view, int i11) {
        Intrinsics.h(adapter, "adapter");
        Intrinsics.h(view, "view");
        if (com.transsion.baseui.util.c.f43504a.a(view.getId(), 500L)) {
            return;
        }
        Object item = adapter.getItem(i11);
        LocationPlace locationPlace = item instanceof LocationPlace ? (LocationPlace) item : null;
        if (locationPlace == null) {
            return;
        }
        selectLocationFragment.B0(locationPlace);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit x0(SelectLocationFragment selectLocationFragment, List list) {
        String name;
        String distance;
        List list2 = list;
        if (list2 == null || list2.isEmpty()) {
            lg.a.f68839a.c("LocationS", "Select--- server, 无数据", true);
            selectLocationFragment.z0(1);
        } else {
            List listU0 = CollectionsKt.U0(list2);
            lg.a.f68839a.c("LocationS", "Select--- server,有数据展示，count:" + list.size(), true);
            LocationPlace locationPlace = selectLocationFragment.curLocationPlace;
            if (locationPlace != null && (name = locationPlace.getName()) != null && name.length() != 0 && (distance = locationPlace.getDistance()) != null && distance.length() != 0) {
                listU0.add(0, locationPlace);
            }
            selectLocationFragment.G0(listU0);
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit y0(SelectLocationFragment selectLocationFragment, List list) {
        String name;
        String distance;
        List list2 = list;
        if (list2 == null || list2.isEmpty()) {
            lg.a.f68839a.c("LocationS", "Select--- client 无缓存 getNearbyPlaces", true);
            selectLocationFragment.D0();
        } else {
            List listU0 = CollectionsKt.U0(list2);
            lg.a.f68839a.c("LocationS", "Select--- client, 有缓存，使用缓存数据，count:" + list.size(), true);
            LocationPlace locationPlace = selectLocationFragment.curLocationPlace;
            if (locationPlace != null && (name = locationPlace.getName()) != null && name.length() != 0 && (distance = locationPlace.getDistance()) != null && distance.length() != 0) {
                listU0.add(0, locationPlace);
            }
            selectLocationFragment.G0(listU0);
        }
        return Unit.f67061a;
    }

    private final void z0(int type) {
        String name;
        String distance;
        ArrayList arrayList = new ArrayList();
        LocationPlace locationPlace = this.curLocationPlace;
        if (locationPlace != null && (name = locationPlace.getName()) != null && name.length() != 0 && (distance = locationPlace.getDistance()) != null && distance.length() != 0) {
            arrayList.add(locationPlace);
        }
        G0(arrayList);
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public String getEmptyDescText() {
        String string = Utils.a().getString(R$string.location_fail_tips);
        Intrinsics.g(string, "getString(...)");
        return string;
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public View getLoadingView() {
        if (this.mLoadingView == null) {
            this.mLoadingView = LayoutInflater.from(requireContext()).inflate(R$layout.layout_select_location_loading, (ViewGroup) getFlStateView(), false);
        }
        return this.mLoadingView;
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public String getPageStateLayoutTitle() {
        return "";
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void initListener() {
        AppCompatTextView appCompatTextView;
        hp.i mViewBinding = getMViewBinding();
        if (mViewBinding == null || (appCompatTextView = mViewBinding.f64805d) == null) {
            return;
        }
        appCompatTextView.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.publish.ui.t0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SelectLocationFragment.u0(this.f50611a, view);
            }
        });
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void initViewData() {
        RecyclerView recyclerView;
        t0();
        SelectLocationAdapter selectLocationAdapter = new SelectLocationAdapter();
        selectLocationAdapter.w1(new p6.d() { // from class: com.transsion.publish.ui.s0
            @Override // p6.d
            public final void a(BaseQuickAdapter baseQuickAdapter, View view, int i11) {
                SelectLocationFragment.w0(this.f50608a, baseQuickAdapter, view, i11);
            }
        });
        this.mAdapter = selectLocationAdapter;
        hp.i mViewBinding = getMViewBinding();
        if (mViewBinding == null || (recyclerView = mViewBinding.f64804c) == null) {
            return;
        }
        recyclerView.setLayoutManager(new NpaLinearLayoutManager(recyclerView.getContext()));
        recyclerView.setAdapter(this.mAdapter);
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void initViewModel() {
        LocationPlaceViewModel locationPlaceViewModel = (LocationPlaceViewModel) new androidx.p009lifecycle.v0(this).a(LocationPlaceViewModel.class);
        locationPlaceViewModel.l().j(this, new b(new Function1() { // from class: com.transsion.publish.ui.u0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return SelectLocationFragment.x0(this.f50613a, (List) obj);
            }
        }));
        locationPlaceViewModel.j().j(this, new b(new Function1() { // from class: com.transsion.publish.ui.v0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return SelectLocationFragment.y0(this.f50615a, (List) obj);
            }
        }));
        this.mViewModel = locationPlaceViewModel;
        checkGPS();
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        LocationPlace locationPlace;
        super.onCreate(savedInstanceState);
        Bundle arguments = getArguments();
        Serializable serializable = arguments != null ? arguments.getSerializable("location_data") : null;
        LocationPlace locationPlace2 = serializable instanceof LocationPlace ? (LocationPlace) serializable : null;
        this.curLocationPlace = locationPlace2;
        lg.a.C0828a c0828a = lg.a.f68839a;
        Double lat = locationPlace2 != null ? locationPlace2.getLat() : null;
        LocationPlace locationPlace3 = this.curLocationPlace;
        Double lon = locationPlace3 != null ? locationPlace3.getLon() : null;
        LocationPlace locationPlace4 = this.curLocationPlace;
        String name = locationPlace4 != null ? locationPlace4.getName() : null;
        LocationPlace locationPlace5 = this.curLocationPlace;
        lg.a.C0828a.v(c0828a, "LocationS", "Select--- onCreate, lat:" + lat + ", lon：" + lon + " name:" + name + ",distance:" + (locationPlace5 != null ? locationPlace5.getDistance() : null), false, 4, null);
        LocationPlace locationPlace6 = this.curLocationPlace;
        if (locationPlace6 != null) {
            String distance = locationPlace6 != null ? locationPlace6.getDistance() : null;
            if ((distance == null || distance.length() == 0) && (locationPlace = this.curLocationPlace) != null) {
                locationPlace.setDistance("<1m");
            }
            LocationPlace locationPlace7 = this.curLocationPlace;
            this.lat = locationPlace7 != null ? locationPlace7.getLat() : null;
            LocationPlace locationPlace8 = this.curLocationPlace;
            this.lon = locationPlace8 != null ? locationPlace8.getLon() : null;
            LocationPlace locationPlace9 = this.curLocationPlace;
            this.countryCode = locationPlace9 != null ? locationPlace9.getCountryCode() : null;
        }
        IRoomApi mRoomApi = getMRoomApi();
        this.mGpsServiceHelper = mRoomApi != null ? mRoomApi.f(this) : null;
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void retryLoadData() {
        requestCurrentLocation();
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    /* JADX INFO: renamed from: s0, reason: merged with bridge method [inline-methods] */
    public hp.i getViewBinding(LayoutInflater inflater) {
        Intrinsics.h(inflater, "inflater");
        hp.i iVarC = hp.i.c(inflater);
        Intrinsics.g(iVarC, "inflate(...)");
        return iVarC;
    }
}
