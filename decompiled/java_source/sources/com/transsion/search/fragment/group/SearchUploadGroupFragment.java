package com.transsion.search.fragment.group;

import android.annotation.SuppressLint;
import android.content.Context;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.fragment.app.FragmentActivity;
import androidx.p009lifecycle.v0;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.blankj.utilcode.util.KeyboardUtils;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.mbridge.msdk.MBridgeConstans;
import com.therouter.TheRouter;
import com.therouter.router.Navigator;
import com.tn.lib.widget.R$mipmap;
import com.tn.lib.widget.dialog.TRDialog;
import com.tn.lib.widget.dialog.TRDialogListener;
import com.transsion.baseui.R$color;
import com.transsion.baseui.fragment.BaseFragment;
import com.transsion.moviedetailapi.SubjectType;
import com.transsion.publish.api.GroupBean;
import com.transsion.search.R$drawable;
import com.transsion.search.R$id;
import com.transsion.search.R$layout;
import com.transsion.search.R$string;
import com.transsion.search.SearchManager;
import com.transsion.search.bean.Pager;
import com.transsion.search.bean.PagerEntity;
import com.transsion.search.bean.SearchGroupEntity;
import com.transsion.search.bean.SearchSubject;
import com.transsion.search.bean.SearchWorkEntity;
import com.transsion.search.dialog.CheckTipsDialog;
import com.transsion.search.viewmodel.SearchViewModel;
import com.transsnet.downloader.DownloadManagerApi;
import com.transsnet.flow.event.AppScopeVMlProvider;
import com.transsnet.flow.event.FlowEventBus;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import kotlin.Function;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
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
@Metadata(d1 = {"\u0000\u0092\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u0000 R2\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003:\u0001SB\u0007¢\u0006\u0004\b\u0004\u0010\u0005J\u0017\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\bH\u0002¢\u0006\u0004\b\u000b\u0010\u0005J\u0019\u0010\u000e\u001a\u00020\b2\b\u0010\r\u001a\u0004\u0018\u00010\fH\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\bH\u0002¢\u0006\u0004\b\u0010\u0010\u0005J\u000f\u0010\u0011\u001a\u00020\bH\u0003¢\u0006\u0004\b\u0011\u0010\u0005J\u000f\u0010\u0013\u001a\u00020\u0012H\u0002¢\u0006\u0004\b\u0013\u0010\u0014J\u000f\u0010\u0015\u001a\u00020\bH\u0002¢\u0006\u0004\b\u0015\u0010\u0005J\u000f\u0010\u0016\u001a\u00020\bH\u0002¢\u0006\u0004\b\u0016\u0010\u0005J5\u0010\u001d\u001a\u00020\b2\b\u0010\u0018\u001a\u0004\u0018\u00010\u00172\b\u0010\u0019\u001a\u0004\u0018\u00010\u00172\b\u0010\u001a\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u001c\u001a\u00020\u001bH\u0002¢\u0006\u0004\b\u001d\u0010\u001eJ\u0017\u0010!\u001a\u00020\u00022\u0006\u0010 \u001a\u00020\u001fH\u0016¢\u0006\u0004\b!\u0010\"J!\u0010&\u001a\u00020\b2\u0006\u0010#\u001a\u00020\u00122\b\u0010%\u001a\u0004\u0018\u00010$H\u0016¢\u0006\u0004\b&\u0010'J!\u0010(\u001a\u00020\b2\u0006\u0010#\u001a\u00020\u00122\b\u0010%\u001a\u0004\u0018\u00010$H\u0016¢\u0006\u0004\b(\u0010'J\u000f\u0010)\u001a\u00020\bH\u0016¢\u0006\u0004\b)\u0010\u0005J\u000f\u0010*\u001a\u00020\bH\u0016¢\u0006\u0004\b*\u0010\u0005J\u0017\u0010-\u001a\u00020\b2\u0006\u0010,\u001a\u00020+H\u0016¢\u0006\u0004\b-\u0010.J\u0017\u0010/\u001a\u00020\b2\u0006\u0010,\u001a\u00020+H\u0016¢\u0006\u0004\b/\u0010.J\u0011\u00101\u001a\u0004\u0018\u000100H\u0016¢\u0006\u0004\b1\u00102R\u0016\u00103\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b3\u00104R\u0018\u00106\u001a\u0004\u0018\u0001058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b6\u00107R\u0018\u00109\u001a\u0004\u0018\u0001088\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b9\u0010:R\u0018\u0010<\u001a\u0004\u0018\u00010;8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b<\u0010=R\u001c\u0010?\u001a\b\u0012\u0004\u0012\u00020\u00170>8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b?\u0010@R\u0018\u0010B\u001a\u0004\u0018\u00010A8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bB\u0010CR\u0016\u0010D\u001a\u00020\u001b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bD\u0010ER\u0016\u0010F\u001a\u00020\u001b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bF\u0010ER\u0016\u0010G\u001a\u00020\u001b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bG\u0010ER\u0016\u0010H\u001a\u00020\u00178\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bH\u0010IR\u0018\u0010J\u001a\u0004\u0018\u00010\f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bJ\u0010KR\u001b\u0010Q\u001a\u00020L8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bM\u0010N\u001a\u0004\bO\u0010P¨\u0006T"}, d2 = {"Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;", "Lcom/transsion/baseui/fragment/BaseFragment;", "Lrq/d;", "Lcom/tn/lib/widget/dialog/TRDialogListener;", "<init>", "()V", "", "clear", "", "resetContent", "(Z)V", "postFinsh", "Lcom/transsion/publish/api/GroupBean;", "groupBean", "postGroup", "(Lcom/transsion/publish/api/GroupBean;)V", "searchJob", "initViewModel", "Landroid/view/View;", "emptyView", "()Landroid/view/View;", "clearTipsDialog", "showCheckDialog", "", "group_id", "subject_id", "opt", "", RequestParameters.POSITION, "reportClick", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V", "Landroid/view/LayoutInflater;", "inflater", "getViewBinding", "(Landroid/view/LayoutInflater;)Lrq/d;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "Landroid/os/Bundle;", "savedInstanceState", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "initView", "lazyLoadData", "onDestroyView", "Lcom/tn/lib/widget/dialog/TRDialog;", "dialog", "onLeftButtonClick", "(Lcom/tn/lib/widget/dialog/TRDialog;)V", "onRightButtonClick", "Lhj/b;", "newLogViewConfig", "()Lhj/b;", "isRefreshing", "Z", "Lcom/transsion/search/fragment/group/adapter/a;", "mSearchGroupAdapter", "Lcom/transsion/search/fragment/group/adapter/a;", "Lcom/transsion/search/fragment/group/adapter/b;", "mSearchKeywordAdapter", "Lcom/transsion/search/fragment/group/adapter/b;", "Lcom/transsion/search/adapter/b;", "mSearchWorkAdapter", "Lcom/transsion/search/adapter/b;", "", "mHistoryList", "Ljava/util/List;", "Lcom/transsion/search/viewmodel/SearchViewModel;", "mSearchViewModel", "Lcom/transsion/search/viewmodel/SearchViewModel;", "mType", "I", "page", "perPage", "mKeyword", "Ljava/lang/String;", "selectGroup", "Lcom/transsion/publish/api/GroupBean;", "Lcom/transsion/search/dialog/CheckTipsDialog;", "mCheckTipsDialog$delegate", "Lkotlin/Lazy;", "getMCheckTipsDialog", "()Lcom/transsion/search/dialog/CheckTipsDialog;", "mCheckTipsDialog", "Companion", "a", "Search_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class SearchUploadGroupFragment extends BaseFragment<rq.d> implements TRDialogListener {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private boolean isRefreshing;
    private com.transsion.search.fragment.group.adapter.a mSearchGroupAdapter;
    private com.transsion.search.fragment.group.adapter.b mSearchKeywordAdapter;
    private SearchViewModel mSearchViewModel;
    private com.transsion.search.adapter.b mSearchWorkAdapter;
    private int mType;
    private GroupBean selectGroup;
    private List<String> mHistoryList = new ArrayList();
    private int page = 1;
    private int perPage = 10;
    private String mKeyword = "";

    /* JADX INFO: renamed from: mCheckTipsDialog$delegate, reason: from kotlin metadata */
    private final Lazy mCheckTipsDialog = LazyKt.b(new Function0() { // from class: com.transsion.search.fragment.group.e
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return SearchUploadGroupFragment.mCheckTipsDialog_delegate$lambda$0();
        }
    });

    /* JADX INFO: renamed from: com.transsion.search.fragment.group.SearchUploadGroupFragment$a, reason: from kotlin metadata */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final SearchUploadGroupFragment a(int i11) {
            SearchUploadGroupFragment searchUploadGroupFragment = new SearchUploadGroupFragment();
            Bundle bundle = new Bundle();
            bundle.putInt(NativeComponentConstants.KEY_COMPONENT_TYPE, i11);
            searchUploadGroupFragment.setArguments(bundle);
            return searchUploadGroupFragment;
        }
    }

    public static final class b implements nh.n {
        b() {
        }

        @Override // nh.n
        public void onConnected() {
            nh.n.a.a(this);
        }

        @Override // nh.n
        public void onConnected(Network network, NetworkCapabilities networkCapabilities) {
            r6.f fVarH0;
            r6.f fVarH1;
            List<Object> data;
            List<Object> data2;
            Intrinsics.h(network, "network");
            Intrinsics.h(networkCapabilities, "networkCapabilities");
            com.transsion.search.adapter.b bVar = SearchUploadGroupFragment.this.mSearchWorkAdapter;
            if (bVar == null || (data2 = bVar.getData()) == null || !data2.isEmpty()) {
                com.transsion.search.adapter.b bVar2 = SearchUploadGroupFragment.this.mSearchWorkAdapter;
                if (bVar2 != null && (fVarH0 = bVar2.h0()) != null) {
                    fVarH0.w();
                }
            } else {
                SearchUploadGroupFragment.this.searchJob();
            }
            com.transsion.search.fragment.group.adapter.a aVar = SearchUploadGroupFragment.this.mSearchGroupAdapter;
            if (aVar != null && (data = aVar.getData()) != null && data.isEmpty()) {
                SearchUploadGroupFragment.this.searchJob();
                return;
            }
            com.transsion.search.fragment.group.adapter.a aVar2 = SearchUploadGroupFragment.this.mSearchGroupAdapter;
            if (aVar2 == null || (fVarH1 = aVar2.h0()) == null) {
                return;
            }
            fVarH1.w();
        }

        @Override // nh.n
        public void onDisconnected() {
        }
    }

    public static final class c implements TextView.OnEditorActionListener {
        c() {
        }

        @Override // android.widget.TextView.OnEditorActionListener
        public boolean onEditorAction(TextView textView, int i11, KeyEvent keyEvent) {
            if (i11 != 0 && i11 != 3) {
                return false;
            }
            SearchUploadGroupFragment.this.mKeyword = String.valueOf(textView != null ? textView.getText() : null);
            SearchUploadGroupFragment.this.searchJob();
            return true;
        }
    }

    public static final class d implements sq.a {
        d() {
        }

        @Override // sq.a
        public void a() {
            String groupId;
            SearchViewModel searchViewModel;
            GroupBean groupBean = SearchUploadGroupFragment.this.selectGroup;
            if (groupBean == null || (groupId = groupBean.getGroupId()) == null || (searchViewModel = SearchUploadGroupFragment.this.mSearchViewModel) == null) {
                return;
            }
            searchViewModel.y(groupId);
        }

        @Override // sq.a
        public void b() {
        }
    }

    public static final class e extends RecyclerView.r {
        e() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.r
        public void onScrollStateChanged(RecyclerView recyclerView, int i11) {
            FragmentActivity activity;
            rq.d mViewBinding;
            EditText editText;
            Intrinsics.h(recyclerView, "recyclerView");
            super.onScrollStateChanged(recyclerView, i11);
            if (i11 != 1 || (activity = SearchUploadGroupFragment.this.getActivity()) == null) {
                return;
            }
            SearchUploadGroupFragment searchUploadGroupFragment = SearchUploadGroupFragment.this;
            if (!KeyboardUtils.g(activity) || (mViewBinding = searchUploadGroupFragment.getMViewBinding()) == null || (editText = mViewBinding.f74623b) == null) {
                return;
            }
            KeyboardUtils.e(editText);
        }
    }

    public static final class f implements com.transsion.search.a {
        f() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void c(List list, SearchUploadGroupFragment searchUploadGroupFragment) {
            RelativeLayout relativeLayout;
            List list2 = list;
            if (list2.isEmpty()) {
                rq.d mViewBinding = searchUploadGroupFragment.getMViewBinding();
                if (mViewBinding == null || (relativeLayout = mViewBinding.f74628g) == null) {
                    return;
                }
                relativeLayout.setVisibility(8);
                return;
            }
            ArrayList arrayList = new ArrayList();
            arrayList.addAll(list2);
            CollectionsKt.Y(arrayList);
            searchUploadGroupFragment.mHistoryList = arrayList;
            com.transsion.search.fragment.group.adapter.b bVar = searchUploadGroupFragment.mSearchKeywordAdapter;
            if (bVar != null) {
                bVar.q1(arrayList);
            }
        }

        @Override // com.transsion.search.a
        public void a(final List list) {
            Intrinsics.h(list, "list");
            FragmentActivity activity = SearchUploadGroupFragment.this.getActivity();
            if (activity != null) {
                final SearchUploadGroupFragment searchUploadGroupFragment = SearchUploadGroupFragment.this;
                activity.runOnUiThread(new Runnable() { // from class: com.transsion.search.fragment.group.s
                    @Override // java.lang.Runnable
                    public final void run() {
                        SearchUploadGroupFragment.f.c(list, searchUploadGroupFragment);
                    }
                });
            }
        }
    }

    public static final class g implements TextWatcher {
        g() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            AppCompatImageView appCompatImageView;
            AppCompatImageView appCompatImageView2;
            if ((editable != null ? editable.length() : 0) > 0) {
                rq.d mViewBinding = SearchUploadGroupFragment.this.getMViewBinding();
                if (mViewBinding != null && (appCompatImageView2 = mViewBinding.f74625d) != null) {
                    appCompatImageView2.setVisibility(0);
                }
            } else {
                rq.d mViewBinding2 = SearchUploadGroupFragment.this.getMViewBinding();
                if (mViewBinding2 != null && (appCompatImageView = mViewBinding2.f74625d) != null) {
                    appCompatImageView.setVisibility(8);
                }
                SearchUploadGroupFragment.this.resetContent(true);
            }
            SearchUploadGroupFragment.this.mKeyword = String.valueOf(editable);
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i11, int i12, int i13) {
            TextView textView;
            rq.d mViewBinding = SearchUploadGroupFragment.this.getMViewBinding();
            if (mViewBinding == null || (textView = mViewBinding.f74631j) == null) {
                return;
            }
            jg.c.k(textView);
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i11, int i12, int i13) {
        }
    }

    static final class h implements androidx.p009lifecycle.c0, FunctionAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final /* synthetic */ Function1 f52007a;

        h(Function1 function) {
            Intrinsics.h(function, "function");
            this.f52007a = function;
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        public final Function a() {
            return this.f52007a;
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
            this.f52007a.invoke(obj);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void clearTipsDialog() {
        try {
            TRDialog.a aVar = new TRDialog.a();
            String string = getString(R$string.search_clear_title);
            Intrinsics.g(string, "getString(...)");
            TRDialog.a aVarK = aVar.k(string);
            String string2 = getString(R$string.search_clear_des);
            Intrinsics.g(string2, "getString(...)");
            TRDialog.a aVarG = aVarK.g(string2);
            String string3 = getString(R$string.search_clear_cancel);
            Intrinsics.g(string3, "getString(...)");
            TRDialog.a aVarE = aVarG.e(string3);
            String string4 = getString(R$string.search_clear_clear);
            Intrinsics.g(string4, "getString(...)");
            aVarE.j(string4).h(R$drawable.btn_bg_dialog_edit_selector).c(R$drawable.btn_bg_dialog_edit_selector).i(com.blankj.utilcode.util.h.a(R$color.base_color_black)).f(this).a().d0(this, "clear_tips");
        } catch (Exception unused) {
        }
    }

    private final View emptyView() {
        EditText editText;
        Editable text = null;
        View viewInflate = getLayoutInflater().inflate(R$layout.view_search_manager_empty, (ViewGroup) null);
        TextView textView = (TextView) viewInflate.findViewById(R$id.tv_empty_tips);
        ImageView imageView = (ImageView) viewInflate.findViewById(R$id.iv_tips);
        AppCompatTextView appCompatTextView = (AppCompatTextView) viewInflate.findViewById(R$id.tv_retry);
        if (nh.m.f70474a.e()) {
            rq.d mViewBinding = getMViewBinding();
            if (mViewBinding != null && (editText = mViewBinding.f74623b) != null) {
                text = editText.getText();
            }
            String strValueOf = String.valueOf(text);
            textView.setText(getString(R$string.user_works_empty) + " \"" + strValueOf + "\"");
            appCompatTextView.setVisibility(8);
            imageView.setImageResource(R$mipmap.ic_no_content);
        } else {
            textView.setText(com.transsion.baseui.R$string.base_net_err);
            imageView.setImageResource(R$mipmap.ic_no_network);
            appCompatTextView.setVisibility(0);
            appCompatTextView.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.search.fragment.group.d
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f52030a.searchJob();
                }
            });
        }
        Intrinsics.e(viewInflate);
        return viewInflate;
    }

    private final CheckTipsDialog getMCheckTipsDialog() {
        return (CheckTipsDialog) this.mCheckTipsDialog.getValue();
    }

    @SuppressLint({"InflateParams"})
    private final void initViewModel() {
        FragmentActivity fragmentActivityRequireActivity = requireActivity();
        Intrinsics.g(fragmentActivityRequireActivity, "requireActivity(...)");
        SearchViewModel searchViewModel = (SearchViewModel) new v0(fragmentActivityRequireActivity).a(SearchViewModel.class);
        searchViewModel.o().j(getViewLifecycleOwner(), new h(new Function1() { // from class: com.transsion.search.fragment.group.f
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return SearchUploadGroupFragment.initViewModel$lambda$28$lambda$24(this.f52033a, (SearchGroupEntity) obj);
            }
        }));
        searchViewModel.q().j(getViewLifecycleOwner(), new h(new Function1() { // from class: com.transsion.search.fragment.group.g
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return SearchUploadGroupFragment.initViewModel$lambda$28$lambda$26(this.f52035a, (SearchWorkEntity) obj);
            }
        }));
        searchViewModel.m().j(getViewLifecycleOwner(), new h(new Function1() { // from class: com.transsion.search.fragment.group.h
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return SearchUploadGroupFragment.initViewModel$lambda$28$lambda$27(this.f52036a, (String) obj);
            }
        }));
        this.mSearchViewModel = searchViewModel;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit initViewModel$lambda$28$lambda$24(SearchUploadGroupFragment searchUploadGroupFragment, SearchGroupEntity searchGroupEntity) {
        List<Object> data;
        RecyclerView recyclerView;
        RelativeLayout relativeLayout;
        RecyclerView recyclerView2;
        ProgressBar progressBar;
        PagerEntity pager;
        PagerEntity pager2;
        String nextPage;
        Integer numV;
        PagerEntity pager3;
        RecyclerView.Adapter adapter = null;
        List<GroupBean> items = searchGroupEntity != null ? searchGroupEntity.getItems() : null;
        boolean hasMore = (searchGroupEntity == null || (pager3 = searchGroupEntity.getPager()) == null) ? false : pager3.getHasMore();
        searchUploadGroupFragment.page = (searchGroupEntity == null || (pager2 = searchGroupEntity.getPager()) == null || (nextPage = pager2.getNextPage()) == null || (numV = StringsKt.v(nextPage)) == null) ? 1 : numV.intValue();
        searchUploadGroupFragment.perPage = (searchGroupEntity == null || (pager = searchGroupEntity.getPager()) == null) ? 10 : pager.getPerPage();
        rq.d mViewBinding = searchUploadGroupFragment.getMViewBinding();
        if (mViewBinding != null && (progressBar = mViewBinding.f74627f) != null) {
            jg.c.g(progressBar);
        }
        com.transsion.search.fragment.group.adapter.a aVar = searchUploadGroupFragment.mSearchGroupAdapter;
        if (aVar != null) {
            aVar.h0().s();
            List<GroupBean> list = items;
            if (list == null || list.isEmpty()) {
                com.transsion.search.fragment.group.adapter.a aVar2 = searchUploadGroupFragment.mSearchGroupAdapter;
                if (aVar2 != null) {
                    aVar2.q1(new ArrayList());
                }
                aVar.Y0(searchUploadGroupFragment.emptyView());
                aVar.z1(true);
            }
            rq.d mViewBinding2 = searchUploadGroupFragment.getMViewBinding();
            if (mViewBinding2 != null && (recyclerView2 = mViewBinding2.f74629h) != null) {
                adapter = recyclerView2.getAdapter();
            }
            if (adapter instanceof com.transsion.search.fragment.group.adapter.b) {
                rq.d mViewBinding3 = searchUploadGroupFragment.getMViewBinding();
                if (mViewBinding3 != null && (relativeLayout = mViewBinding3.f74628g) != null) {
                    relativeLayout.setVisibility(8);
                }
                rq.d mViewBinding4 = searchUploadGroupFragment.getMViewBinding();
                if (mViewBinding4 != null && (recyclerView = mViewBinding4.f74629h) != null) {
                    recyclerView.setAdapter(searchUploadGroupFragment.mSearchGroupAdapter);
                }
            }
            if (list != null && !list.isEmpty()) {
                ArrayList arrayList = new ArrayList();
                for (Object obj : items) {
                    GroupBean groupBean = (GroupBean) obj;
                    com.transsion.search.fragment.group.adapter.a aVar3 = searchUploadGroupFragment.mSearchGroupAdapter;
                    if (aVar3 != null && (data = aVar3.getData()) != null && !data.contains(groupBean)) {
                        arrayList.add(obj);
                    }
                }
                if (arrayList.isEmpty()) {
                    aVar.h0().t(false);
                } else if (searchUploadGroupFragment.isRefreshing) {
                    searchUploadGroupFragment.isRefreshing = false;
                    com.transsion.search.fragment.group.adapter.a aVar4 = searchUploadGroupFragment.mSearchGroupAdapter;
                    if (aVar4 != null) {
                        aVar4.n1(arrayList);
                    }
                } else {
                    com.transsion.search.fragment.group.adapter.a aVar5 = searchUploadGroupFragment.mSearchGroupAdapter;
                    if (aVar5 != null) {
                        aVar5.q(arrayList);
                    }
                }
            }
            if (!hasMore) {
                aVar.h0().t(false);
            }
            if (searchGroupEntity == null) {
                aVar.h0().v();
            }
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit initViewModel$lambda$28$lambda$26(SearchUploadGroupFragment searchUploadGroupFragment, SearchWorkEntity searchWorkEntity) {
        Pager pager;
        HashMap mapG;
        RecyclerView recyclerView;
        RelativeLayout relativeLayout;
        RecyclerView recyclerView2;
        List<Object> data;
        ProgressBar progressBar;
        Pager pager2;
        Pager pager3;
        Pager pager4;
        RecyclerView.Adapter adapter = null;
        List<SearchSubject> items = searchWorkEntity != null ? searchWorkEntity.getItems() : null;
        boolean hasMore = (searchWorkEntity == null || (pager4 = searchWorkEntity.getPager()) == null) ? false : pager4.getHasMore();
        searchUploadGroupFragment.page = (searchWorkEntity == null || (pager3 = searchWorkEntity.getPager()) == null) ? 1 : pager3.getNextPage();
        searchUploadGroupFragment.perPage = (searchWorkEntity == null || (pager2 = searchWorkEntity.getPager()) == null) ? 10 : pager2.getPerPage();
        rq.d mViewBinding = searchUploadGroupFragment.getMViewBinding();
        if (mViewBinding != null && (progressBar = mViewBinding.f74627f) != null) {
            jg.c.g(progressBar);
        }
        com.transsion.search.adapter.b bVar = searchUploadGroupFragment.mSearchWorkAdapter;
        if (bVar != null) {
            bVar.h0().s();
            com.transsion.search.adapter.b bVar2 = searchUploadGroupFragment.mSearchWorkAdapter;
            Boolean boolValueOf = (bVar2 == null || (data = bVar2.getData()) == null) ? null : Boolean.valueOf(data.isEmpty());
            List<SearchSubject> list = items;
            if ((list == null || list.isEmpty()) && Intrinsics.c(boolValueOf, Boolean.TRUE) && (searchUploadGroupFragment.page == 1 || (searchWorkEntity != null && (pager = searchWorkEntity.getPager()) != null && pager.getPage() == 1))) {
                com.transsion.search.adapter.b bVar3 = searchUploadGroupFragment.mSearchWorkAdapter;
                if (bVar3 != null) {
                    bVar3.q1(new ArrayList());
                }
                bVar.Y0(searchUploadGroupFragment.emptyView());
                bVar.z1(true);
            }
            rq.d mViewBinding2 = searchUploadGroupFragment.getMViewBinding();
            if (mViewBinding2 != null && (recyclerView2 = mViewBinding2.f74629h) != null) {
                adapter = recyclerView2.getAdapter();
            }
            if (adapter instanceof com.transsion.search.fragment.group.adapter.b) {
                rq.d mViewBinding3 = searchUploadGroupFragment.getMViewBinding();
                if (mViewBinding3 != null && (relativeLayout = mViewBinding3.f74628g) != null) {
                    relativeLayout.setVisibility(8);
                }
                rq.d mViewBinding4 = searchUploadGroupFragment.getMViewBinding();
                if (mViewBinding4 != null && (recyclerView = mViewBinding4.f74629h) != null) {
                    recyclerView.setAdapter(searchUploadGroupFragment.mSearchWorkAdapter);
                }
            }
            if (list == null || list.isEmpty()) {
                bVar.h0().t(false);
            } else {
                if (searchUploadGroupFragment.isRefreshing) {
                    searchUploadGroupFragment.isRefreshing = false;
                    com.transsion.search.adapter.b bVar4 = searchUploadGroupFragment.mSearchWorkAdapter;
                    if (bVar4 != null) {
                        bVar4.n1(list);
                    }
                } else {
                    com.transsion.search.adapter.b bVar5 = searchUploadGroupFragment.mSearchWorkAdapter;
                    if (bVar5 != null) {
                        bVar5.q(list);
                    }
                }
                hj.b logViewConfig = searchUploadGroupFragment.getLogViewConfig();
                if (logViewConfig != null) {
                    logViewConfig.k(true);
                }
                hj.b logViewConfig2 = searchUploadGroupFragment.getLogViewConfig();
                if (logViewConfig2 != null && (mapG = logViewConfig2.g()) != null) {
                    mapG.put(NativeComponentConstants.KEY_COMPONENT_TYPE, String.valueOf(searchUploadGroupFragment.mType));
                }
            }
            if (!hasMore) {
                bVar.h0().t(false);
            }
            if (searchWorkEntity == null) {
                bVar.h0().v();
            }
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit initViewModel$lambda$28$lambda$27(SearchUploadGroupFragment searchUploadGroupFragment, String str) {
        if (!TextUtils.isEmpty(str) && searchUploadGroupFragment.selectGroup != null) {
            searchUploadGroupFragment.postFinsh();
            searchUploadGroupFragment.postGroup(searchUploadGroupFragment.selectGroup);
            FragmentActivity activity = searchUploadGroupFragment.getActivity();
            if (activity != null) {
                activity.finish();
            }
            return Unit.f67061a;
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CheckTipsDialog mCheckTipsDialog_delegate$lambda$0() {
        return CheckTipsDialog.INSTANCE.a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$10$lambda$7(final SearchUploadGroupFragment searchUploadGroupFragment) {
        RecyclerView recyclerView;
        if (nh.m.f70474a.e()) {
            SearchViewModel searchViewModel = searchUploadGroupFragment.mSearchViewModel;
            if (searchViewModel != null) {
                searchViewModel.C(searchUploadGroupFragment.page, searchUploadGroupFragment.perPage, searchUploadGroupFragment.mKeyword);
                return;
            }
            return;
        }
        uh.b.f76753a.d(com.tn.lib.widget.R$string.no_network_toast);
        rq.d mViewBinding = searchUploadGroupFragment.getMViewBinding();
        if (mViewBinding == null || (recyclerView = mViewBinding.f74629h) == null) {
            return;
        }
        recyclerView.postDelayed(new Runnable() { // from class: com.transsion.search.fragment.group.a
            @Override // java.lang.Runnable
            public final void run() {
                SearchUploadGroupFragment.onViewCreated$lambda$10$lambda$7$lambda$6(this.f52024a);
            }
        }, 300L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$10$lambda$7$lambda$6(SearchUploadGroupFragment searchUploadGroupFragment) {
        r6.f fVarH0;
        com.transsion.search.adapter.b bVar = searchUploadGroupFragment.mSearchWorkAdapter;
        if (bVar == null || (fVarH0 = bVar.h0()) == null) {
            return;
        }
        fVarH0.v();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$10$lambda$9(SearchUploadGroupFragment searchUploadGroupFragment, BaseQuickAdapter baseQuickAdapter, View view, int i11) {
        List<Object> data;
        GroupBean groupBean;
        Intrinsics.h(baseQuickAdapter, "<unused var>");
        Intrinsics.h(view, "view");
        com.transsion.search.fragment.group.adapter.a aVar = searchUploadGroupFragment.mSearchGroupAdapter;
        if (aVar == null || (data = aVar.getData()) == null || (groupBean = (GroupBean) data.get(i11)) == null) {
            return;
        }
        searchUploadGroupFragment.selectGroup = groupBean;
        searchUploadGroupFragment.reportClick(groupBean.getGroupId(), "", groupBean.getOps(), i11);
        searchUploadGroupFragment.postFinsh();
        searchUploadGroupFragment.postGroup(searchUploadGroupFragment.selectGroup);
        FragmentActivity activity = searchUploadGroupFragment.getActivity();
        if (activity != null) {
            activity.finish();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$14(SearchUploadGroupFragment searchUploadGroupFragment, BaseQuickAdapter adapter, View view, int i11) {
        ProgressBar progressBar;
        EditText editText;
        EditText editText2;
        Intrinsics.h(adapter, "adapter");
        Intrinsics.h(view, "view");
        if (view.getId() == R$id.tv_keyword) {
            FragmentActivity activity = searchUploadGroupFragment.getActivity();
            if (activity != null) {
                KeyboardUtils.d(activity);
            }
            com.transsion.search.fragment.group.adapter.b bVar = searchUploadGroupFragment.mSearchKeywordAdapter;
            searchUploadGroupFragment.mKeyword = String.valueOf(bVar != null ? (String) bVar.getItem(i11) : null);
            rq.d mViewBinding = searchUploadGroupFragment.getMViewBinding();
            if (mViewBinding != null && (editText2 = mViewBinding.f74623b) != null) {
                editText2.setText(searchUploadGroupFragment.mKeyword);
            }
            int length = searchUploadGroupFragment.mKeyword.length();
            rq.d mViewBinding2 = searchUploadGroupFragment.getMViewBinding();
            if (mViewBinding2 != null && (editText = mViewBinding2.f74623b) != null) {
                editText.setSelection(length);
            }
            rq.d mViewBinding3 = searchUploadGroupFragment.getMViewBinding();
            if (mViewBinding3 != null && (progressBar = mViewBinding3.f74627f) != null) {
                progressBar.setVisibility(0);
            }
            int i12 = searchUploadGroupFragment.mType;
            if (i12 == 1 || i12 == 2 || i12 == 3) {
                searchUploadGroupFragment.page = 1;
                searchUploadGroupFragment.searchJob();
            }
            SearchManager.f51941f.a().g(searchUploadGroupFragment.mKeyword);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$15(SearchUploadGroupFragment searchUploadGroupFragment, View view) {
        TextView textView;
        rq.d mViewBinding = searchUploadGroupFragment.getMViewBinding();
        if (mViewBinding == null || (textView = mViewBinding.f74631j) == null) {
            return;
        }
        jg.c.k(textView);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:25:0x003d  */
    /* JADX WARN: Code duplicated, block: B:38:0x0062  */
    public static final void onViewCreated$lambda$16(SearchUploadGroupFragment searchUploadGroupFragment, View view, boolean z10) {
        HashMap mapG;
        com.transsion.search.adapter.b bVar;
        List<Object> data;
        rq.d mViewBinding;
        com.transsion.search.fragment.group.adapter.b bVar2;
        RelativeLayout relativeLayout;
        List<Object> data2;
        RelativeLayout relativeLayout2;
        view.dispatchWindowFocusChanged(z10);
        if (z10) {
            int i11 = searchUploadGroupFragment.mType;
            if (i11 == 1) {
                bVar = searchUploadGroupFragment.mSearchWorkAdapter;
                if (bVar != null && (data = bVar.getData()) != null && data.isEmpty()) {
                    mViewBinding = searchUploadGroupFragment.getMViewBinding();
                    if (mViewBinding != null && (relativeLayout = mViewBinding.f74628g) != null) {
                        relativeLayout.setVisibility(0);
                    }
                    bVar2 = searchUploadGroupFragment.mSearchKeywordAdapter;
                    if (bVar2 != null) {
                        bVar2.q1(searchUploadGroupFragment.mHistoryList);
                    }
                }
            } else if (i11 == 2) {
                com.transsion.search.fragment.group.adapter.a aVar = searchUploadGroupFragment.mSearchGroupAdapter;
                if (aVar != null && (data2 = aVar.getData()) != null && data2.isEmpty()) {
                    rq.d mViewBinding2 = searchUploadGroupFragment.getMViewBinding();
                    if (mViewBinding2 != null && (relativeLayout2 = mViewBinding2.f74628g) != null) {
                        relativeLayout2.setVisibility(0);
                    }
                    com.transsion.search.fragment.group.adapter.b bVar3 = searchUploadGroupFragment.mSearchKeywordAdapter;
                    if (bVar3 != null) {
                        bVar3.q1(searchUploadGroupFragment.mHistoryList);
                    }
                }
            } else if (i11 == 3) {
                bVar = searchUploadGroupFragment.mSearchWorkAdapter;
                if (bVar != null) {
                    mViewBinding = searchUploadGroupFragment.getMViewBinding();
                    if (mViewBinding != null) {
                        relativeLayout.setVisibility(0);
                    }
                    bVar2 = searchUploadGroupFragment.mSearchKeywordAdapter;
                    if (bVar2 != null) {
                        bVar2.q1(searchUploadGroupFragment.mHistoryList);
                    }
                }
            }
        }
        String strJ = com.blankj.utilcode.util.o.j(searchUploadGroupFragment.mHistoryList);
        hj.b logViewConfig = searchUploadGroupFragment.getLogViewConfig();
        if (logViewConfig == null || (mapG = logViewConfig.g()) == null) {
            return;
        }
        mapG.put("keyword", strJ);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$19(SearchUploadGroupFragment searchUploadGroupFragment, View view) {
        searchUploadGroupFragment.postFinsh();
        FragmentActivity activity = searchUploadGroupFragment.getActivity();
        if (activity != null) {
            activity.finish();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$5$lambda$2(final SearchUploadGroupFragment searchUploadGroupFragment) {
        RecyclerView recyclerView;
        if (nh.m.f70474a.e()) {
            SearchViewModel searchViewModel = searchUploadGroupFragment.mSearchViewModel;
            if (searchViewModel != null) {
                searchViewModel.D(searchUploadGroupFragment.page, searchUploadGroupFragment.perPage, searchUploadGroupFragment.mKeyword);
                return;
            }
            return;
        }
        uh.b.f76753a.d(com.tn.lib.widget.R$string.no_network_toast);
        rq.d mViewBinding = searchUploadGroupFragment.getMViewBinding();
        if (mViewBinding == null || (recyclerView = mViewBinding.f74629h) == null) {
            return;
        }
        recyclerView.postDelayed(new Runnable() { // from class: com.transsion.search.fragment.group.i
            @Override // java.lang.Runnable
            public final void run() {
                SearchUploadGroupFragment.onViewCreated$lambda$5$lambda$2$lambda$1(this.f52037a);
            }
        }, 300L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$5$lambda$2$lambda$1(SearchUploadGroupFragment searchUploadGroupFragment) {
        r6.f fVarH0;
        com.transsion.search.adapter.b bVar = searchUploadGroupFragment.mSearchWorkAdapter;
        if (bVar == null || (fVarH0 = bVar.h0()) == null) {
            return;
        }
        fVarH0.v();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$5$lambda$4(SearchUploadGroupFragment searchUploadGroupFragment, com.transsion.search.adapter.b bVar, BaseQuickAdapter baseQuickAdapter, View view, int i11) {
        List<Object> data;
        SearchSubject searchSubject;
        Intrinsics.h(baseQuickAdapter, "<unused var>");
        Intrinsics.h(view, "view");
        com.transsion.search.adapter.b bVar2 = searchUploadGroupFragment.mSearchWorkAdapter;
        if (bVar2 == null || (data = bVar2.getData()) == null || (searchSubject = (SearchSubject) data.get(i11)) == null) {
            return;
        }
        searchUploadGroupFragment.reportClick("", searchSubject.getSubjectId(), searchSubject.getOps(), i11);
        if (searchUploadGroupFragment.mType == 3) {
            Integer subjectType = searchSubject.getSubjectType();
            int value = SubjectType.SHORT_TV.getValue();
            if (subjectType == null || subjectType.intValue() != value) {
                Navigator navigatorC = TheRouter.c("/movie/detail");
                Integer subjectType2 = searchSubject.getSubjectType();
                Navigator.x(navigatorC.F("subject_type", subjectType2 != null ? subjectType2.intValue() : SubjectType.MOVIE.getValue()).K("id", searchSubject.getSubjectId()).K("ops", searchSubject.getOps()), searchUploadGroupFragment.requireContext(), null, 2, null);
                return;
            } else {
                DownloadManagerApi downloadManagerApiA = DownloadManagerApi.f58398j.a();
                Context context = bVar.getContext();
                Intrinsics.f(context, "null cannot be cast to non-null type androidx.fragment.app.FragmentActivity");
                downloadManagerApiA.d0((FragmentActivity) context, "searchpage", (384 & 4) != 0 ? "" : "", searchSubject.getOps(), (384 & 16) != 0 ? null : "download_subject", (384 & 32) != 0 ? false : false, (384 & 64) != 0 ? null : searchSubject, (384 & 128) != 0 ? null : null, (384 & 256) != 0 ? Boolean.FALSE : null);
                return;
            }
        }
        fp.a aVar = new fp.a();
        aVar.o(3);
        aVar.n(1);
        aVar.s(searchSubject);
        FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
        String name = fp.a.class.getName();
        Intrinsics.g(name, "getName(...)");
        flowEventBus.postEvent(name, aVar, 0L);
        FragmentActivity activity = searchUploadGroupFragment.getActivity();
        if (activity != null) {
            activity.finish();
        }
    }

    private final void postFinsh() {
        pq.a aVar = new pq.a();
        FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
        String name = pq.a.class.getName();
        Intrinsics.g(name, "getName(...)");
        flowEventBus.postEvent(name, aVar, 0L);
    }

    private final void postGroup(GroupBean groupBean) {
        fp.a aVar = new fp.a();
        aVar.o(6);
        aVar.n(1);
        aVar.m(groupBean);
        FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
        String name = fp.a.class.getName();
        Intrinsics.g(name, "getName(...)");
        flowEventBus.postEvent(name, aVar, 0L);
    }

    private final void reportClick(String group_id, String subject_id, String opt, int position) {
        HashMap map = new HashMap();
        if (group_id == null) {
            group_id = "";
        }
        map.put("group_id", group_id);
        if (subject_id == null) {
            subject_id = "";
        }
        map.put("subject_id", subject_id);
        map.put("sequence", String.valueOf(position));
        if (opt == null) {
            opt = "";
        }
        map.put("ops", opt);
        com.transsion.baselib.helper.a.f43262a.f("searchresult", map);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:22:0x0036  */
    /* JADX WARN: Code duplicated, block: B:24:0x003a  */
    /* JADX WARN: Code duplicated, block: B:27:0x0046  */
    /* JADX WARN: Code duplicated, block: B:30:0x0066  */
    /* JADX WARN: Code duplicated, block: B:38:0x0080  */
    /* JADX WARN: Code duplicated, block: B:43:0x0091  */
    public final void resetContent(boolean clear) {
        com.transsion.search.adapter.b bVar;
        com.transsion.search.adapter.b bVar2;
        ArrayList arrayList;
        com.transsion.search.fragment.group.adapter.b bVar3;
        rq.d mViewBinding;
        rq.d mViewBinding2;
        RelativeLayout relativeLayout;
        rq.d mViewBinding3;
        RelativeLayout relativeLayout2;
        RecyclerView recyclerView;
        EditText editText;
        EditText editText2;
        if (!clear) {
            rq.d mViewBinding4 = getMViewBinding();
            if (mViewBinding4 != null && (editText2 = mViewBinding4.f74623b) != null) {
                editText2.setText("");
            }
            this.mKeyword = "";
        }
        int i11 = this.mType;
        if (i11 == 1) {
            bVar = this.mSearchWorkAdapter;
            if (bVar != null) {
                bVar.q1(new ArrayList());
            }
            bVar2 = this.mSearchWorkAdapter;
            if (bVar2 != null) {
                bVar2.H0();
            }
            arrayList = new ArrayList();
            arrayList.addAll(SearchManager.f51941f.a().l());
            CollectionsKt.Y(arrayList);
            this.mHistoryList = arrayList;
            bVar3 = this.mSearchKeywordAdapter;
            if (bVar3 != null) {
                bVar3.q1(arrayList);
            }
            mViewBinding = getMViewBinding();
            if (mViewBinding != null && (recyclerView = mViewBinding.f74629h) != null) {
                recyclerView.setAdapter(this.mSearchKeywordAdapter);
            }
            if (arrayList.isEmpty()) {
                mViewBinding2 = getMViewBinding();
                if (mViewBinding2 != null && (relativeLayout = mViewBinding2.f74628g) != null) {
                    relativeLayout.setVisibility(8);
                }
            } else {
                mViewBinding3 = getMViewBinding();
                if (mViewBinding3 != null && (relativeLayout2 = mViewBinding3.f74628g) != null) {
                    relativeLayout2.setVisibility(0);
                }
            }
        } else if (i11 == 2) {
            com.transsion.search.fragment.group.adapter.a aVar = this.mSearchGroupAdapter;
            if (aVar != null) {
                aVar.q1(new ArrayList());
            }
            com.transsion.search.adapter.b bVar4 = this.mSearchWorkAdapter;
            if (bVar4 != null) {
                bVar4.H0();
            }
        } else if (i11 == 3) {
            bVar = this.mSearchWorkAdapter;
            if (bVar != null) {
                bVar.q1(new ArrayList());
            }
            bVar2 = this.mSearchWorkAdapter;
            if (bVar2 != null) {
                bVar2.H0();
            }
            arrayList = new ArrayList();
            arrayList.addAll(SearchManager.f51941f.a().l());
            CollectionsKt.Y(arrayList);
            this.mHistoryList = arrayList;
            bVar3 = this.mSearchKeywordAdapter;
            if (bVar3 != null) {
                bVar3.q1(arrayList);
            }
            mViewBinding = getMViewBinding();
            if (mViewBinding != null) {
                recyclerView.setAdapter(this.mSearchKeywordAdapter);
            }
            if (arrayList.isEmpty()) {
                mViewBinding3 = getMViewBinding();
                if (mViewBinding3 != null) {
                    relativeLayout2.setVisibility(0);
                }
            } else {
                mViewBinding2 = getMViewBinding();
                if (mViewBinding2 != null) {
                    relativeLayout.setVisibility(8);
                }
            }
        }
        rq.d mViewBinding5 = getMViewBinding();
        if (mViewBinding5 == null || (editText = mViewBinding5.f74623b) == null) {
            return;
        }
        KeyboardUtils.i(editText);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:51:0x00c4  */
    /* JADX WARN: Code duplicated, block: B:53:0x00ca  */
    public final void searchJob() {
        SearchViewModel searchViewModel;
        TextView textView;
        ProgressBar progressBar;
        if (TextUtils.isEmpty(this.mKeyword)) {
            if (this.mType == 2) {
                com.tn.lib.widget.toast.core.h hVar = com.tn.lib.widget.toast.core.h.f41479a;
                hVar.e(16);
                hVar.l(getString(R$string.tips_room));
                return;
            } else {
                com.tn.lib.widget.toast.core.h hVar2 = com.tn.lib.widget.toast.core.h.f41479a;
                hVar2.e(16);
                hVar2.l(getString(R$string.tips_movie));
                return;
            }
        }
        this.isRefreshing = true;
        SearchManager.f51941f.a().g(this.mKeyword);
        rq.d mViewBinding = getMViewBinding();
        EditText editText = mViewBinding != null ? mViewBinding.f74623b : null;
        Intrinsics.e(editText);
        KeyboardUtils.e(editText);
        if (!nh.m.f70474a.e()) {
            int i11 = this.mType;
            if (i11 != 1) {
                if (i11 == 2) {
                    com.transsion.search.fragment.group.adapter.a aVar = this.mSearchGroupAdapter;
                    if (aVar != null) {
                        aVar.Y0(emptyView());
                    }
                    com.transsion.search.fragment.group.adapter.a aVar2 = this.mSearchGroupAdapter;
                    if (aVar2 != null) {
                        aVar2.q1(new ArrayList());
                        return;
                    }
                    return;
                }
                if (i11 != 3) {
                    return;
                }
            }
            com.transsion.search.adapter.b bVar = this.mSearchWorkAdapter;
            if (bVar != null) {
                bVar.Y0(emptyView());
            }
            com.transsion.search.adapter.b bVar2 = this.mSearchWorkAdapter;
            if (bVar2 != null) {
                bVar2.q1(new ArrayList());
                return;
            }
            return;
        }
        rq.d mViewBinding2 = getMViewBinding();
        if (mViewBinding2 != null && (progressBar = mViewBinding2.f74627f) != null) {
            jg.c.k(progressBar);
        }
        rq.d mViewBinding3 = getMViewBinding();
        if (mViewBinding3 != null && (textView = mViewBinding3.f74631j) != null) {
            jg.c.g(textView);
        }
        int i12 = this.mType;
        if (i12 == 1) {
            this.page = 1;
            searchViewModel = this.mSearchViewModel;
            if (searchViewModel != null) {
                searchViewModel.D(1, this.perPage, this.mKeyword);
            }
        } else if (i12 == 2) {
            this.page = 1;
            SearchViewModel searchViewModel2 = this.mSearchViewModel;
            if (searchViewModel2 != null) {
                searchViewModel2.C(1, this.perPage, this.mKeyword);
            }
        } else if (i12 == 3) {
            this.page = 1;
            searchViewModel = this.mSearchViewModel;
            if (searchViewModel != null) {
                searchViewModel.D(1, this.perPage, this.mKeyword);
            }
        }
        HashMap map = new HashMap();
        map.put("module_name", "search");
        map.put(MBridgeConstans.KEY_WORD, this.mKeyword);
        map.put(NativeComponentConstants.KEY_COMPONENT_TYPE, String.valueOf(this.mType));
        com.transsion.baselib.helper.a.f43262a.f("searchpage", map);
    }

    private final void showCheckDialog() {
        getMCheckTipsDialog().l0(this, "mCheckTipsDialog");
    }

    @Override // com.transsion.baseui.fragment.BaseFragment
    public rq.d getViewBinding(LayoutInflater inflater) {
        Intrinsics.h(inflater, "inflater");
        rq.d dVarC = rq.d.c(inflater);
        Intrinsics.g(dVarC, "inflate(...)");
        return dVarC;
    }

    @Override // com.transsion.baseui.fragment.BaseFragment
    public void initView(View view, Bundle savedInstanceState) {
        Intrinsics.h(view, "view");
        setNetListener(new b());
    }

    @Override // com.transsion.baseui.fragment.BaseFragment
    public void lazyLoadData() {
    }

    @Override // com.transsion.baseui.fragment.BaseFragment
    public hj.b newLogViewConfig() {
        return new hj.b("searchpage", false, 2, null);
    }

    @Override // com.transsion.baseui.fragment.BaseFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        ProgressBar progressBar;
        rq.d mViewBinding = getMViewBinding();
        if (mViewBinding != null && (progressBar = mViewBinding.f74627f) != null) {
            jg.c.g(progressBar);
        }
        super.onDestroyView();
    }

    @Override // com.tn.lib.widget.dialog.TRDialogListener
    public void onLeftButtonClick(TRDialog dialog) {
        Intrinsics.h(dialog, "dialog");
    }

    @Override // com.tn.lib.widget.dialog.TRDialogListener
    public void onRightButtonClick(TRDialog dialog) {
        RelativeLayout relativeLayout;
        Intrinsics.h(dialog, "dialog");
        if (TextUtils.equals(dialog.getTag(), "clear_tips")) {
            SearchManager.f51941f.a().j();
            rq.d mViewBinding = getMViewBinding();
            if (mViewBinding != null && (relativeLayout = mViewBinding.f74628g) != null) {
                relativeLayout.setVisibility(8);
            }
            com.transsion.search.fragment.group.adapter.b bVar = this.mSearchKeywordAdapter;
            if (bVar != null) {
                bVar.q1(new ArrayList());
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:27:0x0070  */
    /* JADX WARN: Code duplicated, block: B:43:0x00d4  */
    /* JADX WARN: Code duplicated, block: B:44:0x00d9  */
    @Override // com.transsion.baseui.fragment.BaseFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        rq.d mViewBinding;
        rq.d mViewBinding2;
        rq.d mViewBinding3;
        RecyclerView recyclerView;
        com.transsion.search.adapter.b bVar;
        r6.f fVarH0;
        RecyclerView recyclerView2;
        RecyclerView recyclerView3;
        RecyclerView recyclerView4;
        EditText editText;
        EditText editText2;
        ImageView imageView;
        ProgressBar progressBar;
        AppCompatImageView appCompatImageView;
        EditText editText3;
        EditText editText4;
        TextView textView;
        EditText editText5;
        EditText editText6;
        RecyclerView recyclerView5;
        RecyclerView recyclerView6;
        TextView textView2;
        RecyclerView recyclerView7;
        EditText editText7;
        Intrinsics.h(view, "view");
        super.onViewCreated(view, savedInstanceState);
        Bundle arguments = getArguments();
        int i11 = 1;
        int i12 = arguments != null ? arguments.getInt(NativeComponentConstants.KEY_COMPONENT_TYPE) : 1;
        this.mType = i12;
        DefaultConstructorMarker defaultConstructorMarker = null;
        int i13 = 0;
        if (i12 == 1) {
            Context contextRequireContext = requireContext();
            Intrinsics.g(contextRequireContext, "requireContext(...)");
            final com.transsion.search.adapter.b bVar2 = new com.transsion.search.adapter.b(contextRequireContext, new ArrayList());
            bVar2.h0().D(new p6.f() { // from class: com.transsion.search.fragment.group.j
                @Override // p6.f
                public final void a() {
                    SearchUploadGroupFragment.onViewCreated$lambda$5$lambda$2(this.f52038a);
                }
            });
            bVar2.w1(new p6.d() { // from class: com.transsion.search.fragment.group.l
                @Override // p6.d
                public final void a(BaseQuickAdapter baseQuickAdapter, View view2, int i14) {
                    SearchUploadGroupFragment.onViewCreated$lambda$5$lambda$4(this.f52040a, bVar2, baseQuickAdapter, view2, i14);
                }
            });
            this.mSearchWorkAdapter = bVar2;
            mViewBinding = getMViewBinding();
            if (mViewBinding != null && (recyclerView3 = mViewBinding.f74629h) != null) {
                recyclerView3.setLayoutManager(new LinearLayoutManager(requireContext(), 1, false));
            }
            mViewBinding2 = getMViewBinding();
            if (mViewBinding2 != null && (recyclerView2 = mViewBinding2.f74629h) != null) {
                recyclerView2.setAdapter(this.mSearchWorkAdapter);
            }
            mViewBinding3 = getMViewBinding();
            if (mViewBinding3 != null && (recyclerView = mViewBinding3.f74629h) != null) {
                bVar = this.mSearchWorkAdapter;
                if (bVar != null) {
                    fVarH0 = bVar.h0();
                } else {
                    fVarH0 = null;
                }
                recyclerView.addOnScrollListener(new fk.a(fVarH0));
            }
        } else if (i12 == 2) {
            rq.d mViewBinding4 = getMViewBinding();
            if (mViewBinding4 != null && (editText7 = mViewBinding4.f74623b) != null) {
                editText7.setHint(R$string.search_hint_input_group);
            }
            com.transsion.search.fragment.group.adapter.a aVar = new com.transsion.search.fragment.group.adapter.a(i13, i11, defaultConstructorMarker);
            aVar.h0().D(new p6.f() { // from class: com.transsion.search.fragment.group.m
                @Override // p6.f
                public final void a() {
                    SearchUploadGroupFragment.onViewCreated$lambda$10$lambda$7(this.f52042a);
                }
            });
            aVar.w1(new p6.d() { // from class: com.transsion.search.fragment.group.n
                @Override // p6.d
                public final void a(BaseQuickAdapter baseQuickAdapter, View view2, int i14) {
                    SearchUploadGroupFragment.onViewCreated$lambda$10$lambda$9(this.f52043a, baseQuickAdapter, view2, i14);
                }
            });
            this.mSearchGroupAdapter = aVar;
            rq.d mViewBinding5 = getMViewBinding();
            if (mViewBinding5 != null && (recyclerView7 = mViewBinding5.f74629h) != null) {
                com.transsion.search.fragment.group.adapter.a aVar2 = this.mSearchGroupAdapter;
                recyclerView7.addOnScrollListener(new fk.a(aVar2 != null ? aVar2.h0() : null));
            }
        } else if (i12 == 3) {
            Context contextRequireContext2 = requireContext();
            Intrinsics.g(contextRequireContext2, "requireContext(...)");
            final com.transsion.search.adapter.b bVar3 = new com.transsion.search.adapter.b(contextRequireContext2, new ArrayList());
            bVar3.h0().D(new p6.f() { // from class: com.transsion.search.fragment.group.j
                @Override // p6.f
                public final void a() {
                    SearchUploadGroupFragment.onViewCreated$lambda$5$lambda$2(this.f52038a);
                }
            });
            bVar3.w1(new p6.d() { // from class: com.transsion.search.fragment.group.l
                @Override // p6.d
                public final void a(BaseQuickAdapter baseQuickAdapter, View view2, int i14) {
                    SearchUploadGroupFragment.onViewCreated$lambda$5$lambda$4(this.f52040a, bVar3, baseQuickAdapter, view2, i14);
                }
            });
            this.mSearchWorkAdapter = bVar3;
            mViewBinding = getMViewBinding();
            if (mViewBinding != null) {
                recyclerView3.setLayoutManager(new LinearLayoutManager(requireContext(), 1, false));
            }
            mViewBinding2 = getMViewBinding();
            if (mViewBinding2 != null) {
                recyclerView2.setAdapter(this.mSearchWorkAdapter);
            }
            mViewBinding3 = getMViewBinding();
            if (mViewBinding3 != null) {
                bVar = this.mSearchWorkAdapter;
                if (bVar != null) {
                    fVarH0 = bVar.h0();
                } else {
                    fVarH0 = null;
                }
                recyclerView.addOnScrollListener(new fk.a(fVarH0));
            }
        }
        rq.d mViewBinding6 = getMViewBinding();
        if (mViewBinding6 != null && (textView2 = mViewBinding6.f74630i) != null) {
            textView2.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.search.fragment.group.o
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    this.f52044a.clearTipsDialog();
                }
            });
        }
        com.transsion.search.fragment.group.adapter.b bVar4 = new com.transsion.search.fragment.group.adapter.b(i13, i11, defaultConstructorMarker);
        this.mSearchKeywordAdapter = bVar4;
        bVar4.l(R$id.tv_keyword);
        com.transsion.search.fragment.group.adapter.b bVar5 = this.mSearchKeywordAdapter;
        if (bVar5 != null) {
            bVar5.s1(new p6.b() { // from class: com.transsion.search.fragment.group.p
                @Override // p6.b
                public final void a(BaseQuickAdapter baseQuickAdapter, View view2, int i14) {
                    SearchUploadGroupFragment.onViewCreated$lambda$14(this.f52045a, baseQuickAdapter, view2, i14);
                }
            });
        }
        rq.d mViewBinding7 = getMViewBinding();
        if (mViewBinding7 != null && (recyclerView6 = mViewBinding7.f74629h) != null) {
            recyclerView6.setLayoutManager(new LinearLayoutManager(requireContext(), 1, false));
        }
        rq.d mViewBinding8 = getMViewBinding();
        if (mViewBinding8 != null && (recyclerView5 = mViewBinding8.f74629h) != null) {
            recyclerView5.setAdapter(this.mSearchKeywordAdapter);
        }
        SearchManager.f51941f.a().m(this.mType, new f());
        initViewModel();
        rq.d mViewBinding9 = getMViewBinding();
        if (mViewBinding9 != null && (editText6 = mViewBinding9.f74623b) != null) {
            editText6.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.search.fragment.group.q
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    SearchUploadGroupFragment.onViewCreated$lambda$15(this.f52046a, view2);
                }
            });
        }
        rq.d mViewBinding10 = getMViewBinding();
        if (mViewBinding10 != null && (editText5 = mViewBinding10.f74623b) != null) {
            editText5.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: com.transsion.search.fragment.group.r
                @Override // android.view.View.OnFocusChangeListener
                public final void onFocusChange(View view2, boolean z10) {
                    SearchUploadGroupFragment.onViewCreated$lambda$16(this.f52047a, view2, z10);
                }
            });
        }
        rq.d mViewBinding11 = getMViewBinding();
        if (mViewBinding11 != null && (textView = mViewBinding11.f74631j) != null) {
            textView.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.search.fragment.group.b
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    this.f52026a.searchJob();
                }
            });
        }
        rq.d mViewBinding12 = getMViewBinding();
        if (mViewBinding12 != null && (editText4 = mViewBinding12.f74623b) != null) {
            editText4.addTextChangedListener(new g());
        }
        rq.d mViewBinding13 = getMViewBinding();
        if (mViewBinding13 != null && (editText3 = mViewBinding13.f74623b) != null) {
            editText3.setOnEditorActionListener(new c());
        }
        rq.d mViewBinding14 = getMViewBinding();
        if (mViewBinding14 != null && (appCompatImageView = mViewBinding14.f74625d) != null) {
            appCompatImageView.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.search.fragment.group.c
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    this.f52028a.resetContent(false);
                }
            });
        }
        rq.d mViewBinding15 = getMViewBinding();
        if (mViewBinding15 != null && (progressBar = mViewBinding15.f74627f) != null) {
            jg.c.g(progressBar);
        }
        getMCheckTipsDialog().s0(new d());
        rq.d mViewBinding16 = getMViewBinding();
        if (mViewBinding16 != null && (imageView = mViewBinding16.f74624c) != null) {
            imageView.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.search.fragment.group.k
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    SearchUploadGroupFragment.onViewCreated$lambda$19(this.f52039a, view2);
                }
            });
        }
        rq.d mViewBinding17 = getMViewBinding();
        if (mViewBinding17 != null && (editText2 = mViewBinding17.f74623b) != null) {
            editText2.requestFocus();
        }
        rq.d mViewBinding18 = getMViewBinding();
        if (mViewBinding18 != null && (editText = mViewBinding18.f74623b) != null) {
            KeyboardUtils.i(editText);
        }
        hj.b logViewConfig = getLogViewConfig();
        if (logViewConfig != null) {
            logViewConfig.k(true);
        }
        rq.d mViewBinding19 = getMViewBinding();
        if (mViewBinding19 == null || (recyclerView4 = mViewBinding19.f74629h) == null) {
            return;
        }
        recyclerView4.addOnScrollListener(new e());
    }
}
