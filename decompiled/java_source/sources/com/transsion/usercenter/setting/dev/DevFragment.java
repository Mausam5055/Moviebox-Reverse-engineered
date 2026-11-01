package com.transsion.usercenter.setting.dev;

import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.p009lifecycle.c0;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.transsion.baseui.fragment.BaseListFragment;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import kotlin.Function;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0005\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\u0007\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0007\u0010\u0006J\u000f\u0010\t\u001a\u00020\bH\u0016¢\u0006\u0004\b\t\u0010\nJ\u001b\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\f0\u000bH\u0016¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u0010\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0010\u0010\u0004J\u000f\u0010\u0011\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0011\u0010\u0004J\u000f\u0010\u0012\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0012\u0010\u0004J\u000f\u0010\u0013\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0013\u0010\u0004J\u000f\u0010\u0014\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0014\u0010\u0004R\u0016\u0010\u0018\u001a\u00020\u00158\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017R\u0016\u0010\u001a\u001a\u00020\u00158\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0019\u0010\u0017R\u0014\u0010\u001d\u001a\u00020\u00028\u0002X\u0082D¢\u0006\u0006\n\u0004\b\u001b\u0010\u001cR\u0016\u0010 \u001a\u00020\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001e\u0010\u001fR\u001b\u0010&\u001a\u00020!8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\"\u0010#\u001a\u0004\b$\u0010%¨\u0006'"}, d2 = {"Lcom/transsion/usercenter/setting/dev/DevFragment;", "Lcom/transsion/baseui/fragment/BaseListFragment;", "", "<init>", "()V", "s0", "()Ljava/lang/String;", "getPageStateLayoutTitle", "", "isShowPageStateLayoutTitle", "()Z", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "m0", "()Lcom/chad/library/adapter/base/BaseQuickAdapter;", "", "G0", "loadMore", "initViewModel", "lazyLoadData", "retryLoadData", "", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "I", "page", "c", "pageSize", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Ljava/lang/String;", "id", "e", "Z", "isSetRvEmptyLayout", "Lcom/transsion/usercenter/setting/dev/f;", "f", "Lkotlin/Lazy;", "R0", "()Lcom/transsion/usercenter/setting/dev/f;", "mViewModel", "UserCenter_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class DevFragment extends BaseListFragment<String> {

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private int page;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private boolean isSetRvEmptyLayout;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private int pageSize = 10;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private final String id = "ID:001";

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private final Lazy mViewModel = LazyKt.b(new Function0() { // from class: com.transsion.usercenter.setting.dev.a
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return DevFragment.U0();
        }
    });

    static final class a implements c0, FunctionAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final /* synthetic */ Function1 f57388a;

        a(Function1 function) {
            Intrinsics.h(function, "function");
            this.f57388a = function;
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        public final Function a() {
            return this.f57388a;
        }

        public final boolean equals(Object obj) {
            if ((obj instanceof c0) && (obj instanceof FunctionAdapter)) {
                return Intrinsics.c(a(), ((FunctionAdapter) obj).a());
            }
            return false;
        }

        public final int hashCode() {
            return a().hashCode();
        }

        @Override // androidx.p009lifecycle.c0
        public final /* synthetic */ void onChanged(Object obj) {
            this.f57388a.invoke(obj);
        }
    }

    private final f R0() {
        return (f) this.mViewModel.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit S0(DevFragment devFragment, List list) {
        List<Object> data;
        List<Object> data2;
        devFragment.changeLoadingState(false);
        if (devFragment.isSetRvEmptyLayout) {
            BaseListFragment.K0(devFragment, null, 1, null);
            devFragment.I0(false);
            return Unit.f67061a;
        }
        devFragment.page++;
        if (devFragment.A0()) {
            if (list == null) {
                BaseListFragment.K0(devFragment, null, 1, null);
            } else {
                BaseQuickAdapter mBaseAdapter = devFragment.getMBaseAdapter();
                if (mBaseAdapter != null) {
                    mBaseAdapter.n1(list);
                }
            }
            devFragment.I0(false);
            return Unit.f67061a;
        }
        if (list == null) {
            devFragment.E0();
        } else {
            BaseQuickAdapter mBaseAdapter2 = devFragment.getMBaseAdapter();
            if (((mBaseAdapter2 == null || (data2 = mBaseAdapter2.getData()) == null) ? 0 : data2.size()) > 20) {
                devFragment.E0();
                return Unit.f67061a;
            }
            BaseQuickAdapter mBaseAdapter3 = devFragment.getMBaseAdapter();
            if (((mBaseAdapter3 == null || (data = mBaseAdapter3.getData()) == null) ? 0 : data.size()) > 30) {
                BaseListFragment.D0(devFragment, false, 1, null);
            } else {
                BaseQuickAdapter mBaseAdapter4 = devFragment.getMBaseAdapter();
                if (mBaseAdapter4 != null) {
                    mBaseAdapter4.q(list);
                }
                devFragment.B0();
            }
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void T0(DevFragment devFragment) {
        devFragment.R0().e(devFragment.page, devFragment.pageSize, devFragment.id);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final f U0() {
        return new f();
    }

    @Override // com.transsion.baseui.fragment.BaseListFragment
    public void G0() {
        this.page = 0;
        lazyLoadData();
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public String getPageStateLayoutTitle() {
        return "无网络、无数据的时候展示的标题";
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void initViewModel() {
        R0().d().j(this, new a(new Function1() { // from class: com.transsion.usercenter.setting.dev.c
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return DevFragment.S0(this.f57390a, (List) obj);
            }
        }));
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public boolean isShowPageStateLayoutTitle() {
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.transsion.baseui.fragment.LazyFragment
    public void lazyLoadData() {
        ConstraintLayout root;
        BaseListFragment.M0(this, null, 1, null);
        bk.b bVar = (bk.b) getMViewBinding();
        if (bVar == null || (root = bVar.getRoot()) == null) {
            return;
        }
        root.postDelayed(new Runnable() { // from class: com.transsion.usercenter.setting.dev.b
            @Override // java.lang.Runnable
            public final void run() {
                DevFragment.T0(this.f57389a);
            }
        }, 3000L);
    }

    @Override // com.transsion.baseui.fragment.BaseListFragment
    public void loadMore() {
        lazyLoadData();
    }

    @Override // com.transsion.baseui.fragment.BaseListFragment
    public BaseQuickAdapter m0() {
        return new d();
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void retryLoadData() {
        uh.b.f76753a.e("联网重试");
        lazyLoadData();
    }

    @Override // com.transsion.baseui.fragment.BaseListFragment
    public String s0() {
        return "我是标题";
    }
}
