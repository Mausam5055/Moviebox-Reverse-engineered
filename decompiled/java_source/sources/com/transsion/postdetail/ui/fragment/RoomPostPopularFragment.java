package com.transsion.postdetail.ui.fragment;

import android.os.Bundle;
import com.transsion.moviedetailapi.bean.PostSubjectBean;
import com.transsion.moviedetailapi.bean.PostSubjectItem;
import com.transsion.postdetail.ui.adapter.PostAdapterFrom;
import com.transsion.postdetail.viewmodel.RoomPostViewModel;
import com.transsion.web.api.WebConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.HashMap;
import kotlin.Function;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0010\b\n\u0002\b\u0006\b\u0016\u0018\u0000 \u001f2\u00020\u0001:\u0001 B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0005\u0010\u0003J\u000f\u0010\u0006\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0006\u0010\u0003J\u000f\u0010\b\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\b\u0010\tJ\u0019\u0010\f\u001a\u00020\u00042\b\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0016¢\u0006\u0004\b\f\u0010\rJ\u000f\u0010\u000f\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u000f\u0010\u0010J\u001f\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\u0014\u0010\u0015J\u000f\u0010\u0016\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u0016\u0010\u0010J\u000f\u0010\u0017\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u0017\u0010\u0010J\u000f\u0010\u0018\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\u0018\u0010\u0019J\u000f\u0010\u001a\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\u001a\u0010\u0019J\u000f\u0010\u001c\u001a\u00020\u001bH\u0016¢\u0006\u0004\b\u001c\u0010\u001dJ\u000f\u0010\u001e\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\u001e\u0010\u0019¨\u0006!"}, d2 = {"Lcom/transsion/postdetail/ui/fragment/RoomPostPopularFragment;", "Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;", "<init>", "()V", "", "initViewData", "initViewModel", "Lcom/transsion/postdetail/ui/adapter/PostAdapterFrom;", "postAdapterFrom", "()Lcom/transsion/postdetail/ui/adapter/PostAdapterFrom;", "Lcom/transsion/moviedetailapi/bean/PostSubjectItem;", WebConstants.FIELD_ITEM, "onItemHeaderClick", "(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V", "", "onItemHeaderModuleName", "()Ljava/lang/String;", "", "isFirstLoad", "isRefresh", "loadData", "(ZZ)V", "pageName", "subpageName", "isSwipeRefreshEnable", "()Z", "isNeedInsertPublishPost", "", "tabIndex", "()I", "isStaggeredPost", "Companion", "a", "PostDetail_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public class RoomPostPopularFragment extends RoomPostBaseFragment {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final String GROUP_ID = "id";
    public static final String SUBPAGE_NAME = "room_detail_popular";

    /* JADX INFO: renamed from: com.transsion.postdetail.ui.fragment.RoomPostPopularFragment$a, reason: from kotlin metadata */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final RoomPostPopularFragment a(String str) {
            RoomPostPopularFragment roomPostPopularFragment = new RoomPostPopularFragment();
            Bundle bundle = new Bundle();
            bundle.putString("id", str);
            roomPostPopularFragment.setArguments(bundle);
            return roomPostPopularFragment;
        }
    }

    static final class b implements androidx.p009lifecycle.c0, FunctionAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final /* synthetic */ Function1 f49611a;

        b(Function1 function) {
            Intrinsics.h(function, "function");
            this.f49611a = function;
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        public final Function a() {
            return this.f49611a;
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
            this.f49611a.invoke(obj);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit initViewModel$lambda$1(RoomPostPopularFragment roomPostPopularFragment, PostSubjectBean postSubjectBean) {
        roomPostPopularFragment.updateData(postSubjectBean);
        return Unit.f67061a;
    }

    @Override // com.transsion.postdetail.ui.fragment.RoomPostBaseFragment, com.transsion.baseui.fragment.PageStatusFragment
    public void initViewData() {
        hj.b logViewConfig;
        HashMap mapG;
        super.initViewData();
        Bundle arguments = getArguments();
        setMGroupId(arguments != null ? arguments.getString("id") : null);
        String mGroupId = getMGroupId();
        if (mGroupId == null || (logViewConfig = getLogViewConfig()) == null || (mapG = logViewConfig.g()) == null) {
            return;
        }
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void initViewModel() {
        androidx.p009lifecycle.b0 b0VarI;
        RoomPostViewModel mViewModel = getMViewModel();
        if (mViewModel == null || (b0VarI = mViewModel.I()) == null) {
            return;
        }
        b0VarI.j(this, new b(new Function1() { // from class: com.transsion.postdetail.ui.fragment.c5
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return RoomPostPopularFragment.initViewModel$lambda$1(this.f49663a, (PostSubjectBean) obj);
            }
        }));
    }

    @Override // com.transsion.postdetail.ui.fragment.RoomPostBaseFragment
    public boolean isNeedInsertPublishPost() {
        return false;
    }

    @Override // com.transsion.postdetail.ui.fragment.RoomPostBaseFragment
    public boolean isStaggeredPost() {
        return false;
    }

    @Override // com.transsion.postdetail.ui.fragment.RoomPostBaseFragment
    public boolean isSwipeRefreshEnable() {
        return true;
    }

    @Override // com.transsion.postdetail.ui.fragment.RoomPostBaseFragment
    public void loadData(boolean isFirstLoad, boolean isRefresh) {
        RoomPostViewModel mViewModel;
        String mGroupId = getMGroupId();
        if (mGroupId == null || (mViewModel = getMViewModel()) == null) {
            return;
        }
        mViewModel.N(isRefresh, mGroupId, getMPage(), 8, isRefresh);
    }

    @Override // com.transsion.postdetail.ui.fragment.RoomPostBaseFragment
    public void onItemHeaderClick(PostSubjectItem item) {
        openUserCenter(item);
    }

    @Override // com.transsion.postdetail.ui.fragment.RoomPostBaseFragment
    public String onItemHeaderModuleName() {
        return "user_center";
    }

    @Override // com.transsion.postdetail.ui.fragment.RoomPostBaseFragment
    public String pageName() {
        return "room_detail";
    }

    @Override // com.transsion.postdetail.ui.fragment.RoomPostBaseFragment
    public PostAdapterFrom postAdapterFrom() {
        return PostAdapterFrom.DETAIL;
    }

    @Override // com.transsion.postdetail.ui.fragment.RoomPostBaseFragment
    public String subpageName() {
        return SUBPAGE_NAME;
    }

    @Override // com.transsion.postdetail.ui.fragment.RoomPostBaseFragment
    public int tabIndex() {
        return 0;
    }
}
