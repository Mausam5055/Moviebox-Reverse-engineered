package com.transsion.search_pugc.fragment;

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
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.activity.u;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.w;
import androidx.p009lifecycle.c0;
import androidx.p009lifecycle.v;
import androidx.p009lifecycle.v0;
import com.blankj.utilcode.util.KeyboardUtils;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.tn.lib.widget.R$string;
import com.transsion.baseui.fragment.BaseFragment;
import com.transsion.search.R$id;
import com.transsion.search.SearchManager;
import com.transsion.search_pugc.bean.SearchSuggestItem;
import com.transsion.search_pugc.fragment.hot.SearchHotFragment;
import com.transsion.search_pugc.fragment.result.SearchResultFragment;
import com.transsion.search_pugc.fragment.result.SearchResultViewModel;
import com.transsion.search_pugc.fragment.suggest.SearchSuggestFragment;
import com.transsion.search_pugc.speech.SpeechRecognizerView;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import kotlin.Function;
import kotlin.KotlinNothingValueException;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.RangesKt;
import kotlinx.coroutines.flow.x0;
import kotlinx.coroutines.n0;
import nh.m;
import nh.n;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u0092\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0012\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u0000 e2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u00018B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0006\u0010\u0004J\u000f\u0010\u0007\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0007\u0010\u0004J\u0017\u0010\n\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\bH\u0002¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\f\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\f\u0010\u0004J\u0019\u0010\u000f\u001a\u00020\u00052\b\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0002¢\u0006\u0004\b\u000f\u0010\u0010J\u0017\u0010\u0012\u001a\u00020\u00052\u0006\u0010\u0011\u001a\u00020\bH\u0002¢\u0006\u0004\b\u0012\u0010\u000bJ%\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0014\u001a\u00020\u00132\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\b0\u0015H\u0002¢\u0006\u0004\b\u0018\u0010\u0019J\u000f\u0010\u001a\u001a\u00020\bH\u0002¢\u0006\u0004\b\u001a\u0010\u001bJ\u0017\u0010\u001e\u001a\u00020\u00052\u0006\u0010\u001d\u001a\u00020\u001cH\u0002¢\u0006\u0004\b\u001e\u0010\u001fJ\u000f\u0010 \u001a\u00020\u0005H\u0002¢\u0006\u0004\b \u0010\u0004J\u0017\u0010\"\u001a\u00020\u00052\u0006\u0010!\u001a\u00020\u001cH\u0002¢\u0006\u0004\b\"\u0010\u001fJ\u000f\u0010#\u001a\u00020\u0005H\u0002¢\u0006\u0004\b#\u0010\u0004J\u0017\u0010&\u001a\u00020\u00022\u0006\u0010%\u001a\u00020$H\u0016¢\u0006\u0004\b&\u0010'J!\u0010,\u001a\u00020\u00052\u0006\u0010)\u001a\u00020(2\b\u0010+\u001a\u0004\u0018\u00010*H\u0016¢\u0006\u0004\b,\u0010-J\r\u0010.\u001a\u00020\u0005¢\u0006\u0004\b.\u0010\u0004J3\u00102\u001a\u00020\u00052\u0006\u0010\u001d\u001a\u00020\u001c2\b\u0010/\u001a\u0004\u0018\u00010\u001c2\u0012\u00101\u001a\u000e\u0012\u0004\u0012\u00020\u001c\u0012\u0004\u0012\u00020\u000500¢\u0006\u0004\b2\u00103J!\u00104\u001a\u00020\u00052\u0006\u0010)\u001a\u00020(2\b\u0010+\u001a\u0004\u0018\u00010*H\u0016¢\u0006\u0004\b4\u0010-J\u0017\u00105\u001a\u00020\u00052\b\u0010/\u001a\u0004\u0018\u00010\u001c¢\u0006\u0004\b5\u0010\u001fJ\u000f\u00106\u001a\u00020\u0005H\u0016¢\u0006\u0004\b6\u0010\u0004R\u0016\u0010:\u001a\u0002078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b8\u00109R\u0016\u0010=\u001a\u00020\u001c8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b;\u0010<R\u0018\u0010?\u001a\u0004\u0018\u00010\u001c8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b>\u0010<R\u0016\u0010A\u001a\u0002078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b@\u00109R\u0016\u0010D\u001a\u00020\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bB\u0010CR\u0018\u0010F\u001a\u0004\u0018\u00010\u001c8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bE\u0010<R\u0018\u0010I\u001a\u0004\u0018\u00010\r8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bG\u0010HR\u0018\u0010M\u001a\u0004\u0018\u00010J8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bK\u0010LR\u0018\u0010Q\u001a\u0004\u0018\u00010N8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bO\u0010PR\u0018\u0010U\u001a\u0004\u0018\u00010R8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bS\u0010TR\u0016\u0010W\u001a\u00020\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bV\u0010CR\u0016\u0010Y\u001a\u00020\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bX\u0010CR\u001b\u0010_\u001a\u00020Z8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b[\u0010\\\u001a\u0004\b]\u0010^R\u001b\u0010d\u001a\u00020`8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\ba\u0010\\\u001a\u0004\bb\u0010c¨\u0006f"}, d2 = {"Lcom/transsion/search_pugc/fragment/SearchSubjectFragment;", "Lcom/transsion/baseui/fragment/BaseFragment;", "Lrq/i;", "<init>", "()V", "", "F0", "w0", "", "withoutKeyboard", "O0", "(Z)V", "D0", "Landroidx/fragment/app/Fragment;", "fragment", "N0", "(Landroidx/fragment/app/Fragment;)V", "showKeyboard", "J0", "Landroidx/lifecycle/u;", "owner", "Lkotlin/Function0;", "onBackPressed", "Landroidx/activity/u;", "x0", "(Landroidx/lifecycle/u;Lkotlin/jvm/functions/Function0;)Landroidx/activity/u;", "I0", "()Z", "", "keyWord", "W0", "(Ljava/lang/String;)V", "y0", "keyword", "X0", "z0", "Landroid/view/LayoutInflater;", "inflater", "B0", "(Landroid/view/LayoutInflater;)Lrq/i;", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "Landroid/os/Bundle;", "savedInstanceState", "initView", "(Landroid/view/View;Landroid/os/Bundle;)V", "V0", "searchFrom", "Lkotlin/Function1;", "callback", "A0", "(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V", "initData", "L0", "lazyLoadData", "", "a", "I", "page", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Ljava/lang/String;", "mKeyword", "c", "hintSearchWord", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "hintSearchIndex", "e", "Z", "backExitSearch", "f", "fromUGCVideoId", "g", "Landroidx/fragment/app/Fragment;", "currentPage", "Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;", "h", "Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;", "hotFragment", "Lcom/transsion/search_pugc/fragment/suggest/SearchSuggestFragment;", "i", "Lcom/transsion/search_pugc/fragment/suggest/SearchSuggestFragment;", "suggestFragment", "Lcom/transsion/search_pugc/fragment/result/SearchResultFragment;", "j", "Lcom/transsion/search_pugc/fragment/result/SearchResultFragment;", "searchResultFragment", CampaignEx.JSON_KEY_AD_K, "ignoreEditChanged", "l", "isSuggestClick", "Lcom/transsion/search_pugc/g;", "m", "Lkotlin/Lazy;", "getSearchReporter", "()Lcom/transsion/search_pugc/g;", "searchReporter", "Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel;", "n", "C0", "()Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel;", "viewModel", "o", "Search_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class SearchSubjectFragment extends BaseFragment<rq.i> {

    /* JADX INFO: renamed from: o, reason: collision with root package name and from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private String hintSearchWord;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private int hintSearchIndex;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private boolean backExitSearch;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private String fromUGCVideoId;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    private Fragment currentPage;

    /* JADX INFO: renamed from: h, reason: collision with root package name and from kotlin metadata */
    private SearchHotFragment hotFragment;

    /* JADX INFO: renamed from: i, reason: collision with root package name and from kotlin metadata */
    private SearchSuggestFragment suggestFragment;

    /* JADX INFO: renamed from: j, reason: collision with root package name and from kotlin metadata */
    private SearchResultFragment searchResultFragment;

    /* JADX INFO: renamed from: k, reason: collision with root package name and from kotlin metadata */
    private boolean ignoreEditChanged;

    /* JADX INFO: renamed from: l, reason: collision with root package name and from kotlin metadata */
    private boolean isSuggestClick;

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private int page = 1;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private String mKeyword = "";

    /* JADX INFO: renamed from: m, reason: collision with root package name and from kotlin metadata */
    private final Lazy searchReporter = LazyKt.b(new Function0() { // from class: com.transsion.search_pugc.fragment.e
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return SearchSubjectFragment.M0(this.f52341a);
        }
    });

    /* JADX INFO: renamed from: n, reason: collision with root package name and from kotlin metadata */
    private final Lazy viewModel = LazyKt.b(new Function0() { // from class: com.transsion.search_pugc.fragment.f
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return SearchSubjectFragment.Y0(this.f52342a);
        }
    });

    /* JADX INFO: renamed from: com.transsion.search_pugc.fragment.SearchSubjectFragment$a, reason: from kotlin metadata */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final SearchSubjectFragment a(String str, String str2, boolean z10, String str3) {
            SearchSubjectFragment searchSubjectFragment = new SearchSubjectFragment();
            Bundle bundle = new Bundle();
            bundle.putString("hot_search_word", str);
            bundle.putString("keyword", str2);
            bundle.putString("form_ugc_video_id", str3);
            bundle.putBoolean("back_exit", z10);
            searchSubjectFragment.setArguments(bundle);
            return searchSubjectFragment;
        }
    }

    public static final class b extends u {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Function0 f52329a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ SearchSubjectFragment f52330b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(Function0 function0, SearchSubjectFragment searchSubjectFragment) {
            super(true);
            this.f52329a = function0;
            this.f52330b = searchSubjectFragment;
        }

        @Override // androidx.activity.u
        public void handleOnBackPressed() {
            if (((Boolean) this.f52329a.invoke()).booleanValue()) {
                return;
            }
            setEnabled(false);
            this.f52330b.requireActivity().getOnBackPressedDispatcher().l();
            setEnabled(true);
        }
    }

    public static final class c implements SearchSuggestFragment.b {
        c() {
        }

        @Override // com.transsion.search_pugc.fragment.suggest.SearchSuggestFragment.b
        public void a(SearchSuggestItem searchSuggestItem, int i11, String keyWord, String mOps) {
            String word;
            EditText editText;
            Intrinsics.h(keyWord, "keyWord");
            Intrinsics.h(mOps, "mOps");
            rq.i mViewBinding = SearchSubjectFragment.this.getMViewBinding();
            if (mViewBinding != null && (editText = mViewBinding.f74655b) != null) {
                KeyboardUtils.e(editText);
            }
            SearchSubjectFragment.this.mKeyword = keyWord;
            SearchSubjectFragment.this.isSuggestClick = true;
            SearchSubjectFragment searchSubjectFragment = SearchSubjectFragment.this;
            if (searchSuggestItem == null || (word = searchSuggestItem.getWord()) == null) {
                word = "";
            }
            searchSubjectFragment.W0(word);
            SearchSubjectFragment.this.L0("suggest");
            SearchSubjectFragment.this.getSearchReporter().E("suggest", SearchSubjectFragment.this.mKeyword);
        }
    }

    public static final class d implements n {
        d() {
        }

        @Override // nh.n
        public void onConnected() {
            n.a.a(this);
        }

        @Override // nh.n
        public void onConnected(Network network, NetworkCapabilities networkCapabilities) {
            Intrinsics.h(network, "network");
            Intrinsics.h(networkCapabilities, "networkCapabilities");
            if (SearchSubjectFragment.this.currentPage instanceof SearchHotFragment) {
                Fragment fragment = SearchSubjectFragment.this.currentPage;
                Intrinsics.f(fragment, "null cannot be cast to non-null type com.transsion.search_pugc.fragment.hot.SearchHotFragment");
                ((SearchHotFragment) fragment).onConnected();
            }
        }

        @Override // nh.n
        public void onDisconnected() {
        }
    }

    static final class e implements c0, FunctionAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final /* synthetic */ Function1 f52333a;

        e(Function1 function) {
            Intrinsics.h(function, "function");
            this.f52333a = function;
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        public final Function a() {
            return this.f52333a;
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
            this.f52333a.invoke(obj);
        }
    }

    public static final class f implements TextWatcher {
        f() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            SearchSubjectFragment.this.C0().i().n(Boolean.FALSE);
            if (SearchSubjectFragment.this.ignoreEditChanged) {
                SearchSubjectFragment.this.ignoreEditChanged = false;
                return;
            }
            SearchSubjectFragment.this.mKeyword = String.valueOf(editable);
            SearchSubjectFragment searchSubjectFragment = SearchSubjectFragment.this;
            searchSubjectFragment.X0(searchSubjectFragment.mKeyword);
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i11, int i12, int i13) {
            TextView textView;
            rq.i mViewBinding = SearchSubjectFragment.this.getMViewBinding();
            if (mViewBinding == null || (textView = mViewBinding.f74663j) == null) {
                return;
            }
            jg.c.k(textView);
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i11, int i12, int i13) {
        }
    }

    public static final class g implements TextView.OnEditorActionListener {
        g() {
        }

        @Override // android.widget.TextView.OnEditorActionListener
        public boolean onEditorAction(TextView textView, int i11, KeyEvent keyEvent) {
            if (i11 != 0 && i11 != 3) {
                return false;
            }
            SearchSubjectFragment.this.mKeyword = String.valueOf(textView != null ? textView.getText() : null);
            SearchSubjectFragment.this.L0("input");
            SearchSubjectFragment.this.getSearchReporter().E("input", SearchSubjectFragment.this.mKeyword);
            return true;
        }
    }

    /* JADX INFO: renamed from: com.transsion.search_pugc.fragment.SearchSubjectFragment$initView$3, reason: invalid class name */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.search_pugc.fragment.SearchSubjectFragment$initView$3", f = "SearchSubjectFragment.kt", l = {Sdk$SDKError.Reason.JSON_ENCODE_ERROR_VALUE}, m = "invokeSuspend")
    static final class AnonymousClass3 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
        int label;

        /* JADX INFO: renamed from: com.transsion.search_pugc.fragment.SearchSubjectFragment$initView$3$a */
        static final class a implements kotlinx.coroutines.flow.c {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final a f52336a = new a();

            a() {
            }

            public final Object a(com.transsion.search_pugc.k.a aVar, Continuation continuation) {
                throw new NoWhenBranchMatchedException();
            }

            @Override // kotlinx.coroutines.flow.c
            public /* bridge */ /* synthetic */ Object emit(Object obj, Continuation continuation) {
                android.support.v4.media.session.c.a(obj);
                return a(null, continuation);
            }
        }

        AnonymousClass3(Continuation<? super AnonymousClass3> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass3(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
            return ((AnonymousClass3) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            Object objF = IntrinsicsKt.f();
            int i11 = this.label;
            if (i11 == 0) {
                ResultKt.b(obj);
                x0 x0VarA = com.transsion.search_pugc.k.f52493a.a();
                a aVar = a.f52336a;
                this.label = 1;
                if (x0VarA.a(aVar, this) == objF) {
                    return objF;
                }
            } else {
                if (i11 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
            }
            throw new KotlinNothingValueException();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final SearchResultViewModel C0() {
        return (SearchResultViewModel) this.viewModel.getValue();
    }

    private final void D0() {
        EditText editText;
        if (this.backExitSearch) {
            FragmentActivity activity = getActivity();
            if (activity != null) {
                activity.finish();
                return;
            }
            return;
        }
        Fragment fragment = this.currentPage;
        if (fragment instanceof SearchHotFragment) {
            FragmentActivity activity2 = getActivity();
            if (activity2 != null) {
                activity2.finish();
                return;
            }
            return;
        }
        if (this.isSuggestClick && !(fragment instanceof SearchSuggestFragment)) {
            if (fragment instanceof SearchResultFragment) {
                N0(this.suggestFragment);
            }
        } else {
            this.isSuggestClick = false;
            rq.i mViewBinding = getMViewBinding();
            if (mViewBinding == null || (editText = mViewBinding.f74655b) == null) {
                return;
            }
            editText.setText("");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit E0(SearchSubjectFragment searchSubjectFragment, Boolean bool) {
        if (bool.booleanValue()) {
            searchSubjectFragment.N0(searchSubjectFragment.hotFragment);
        }
        return Unit.f67061a;
    }

    private final void F0() {
        rq.i mViewBinding;
        EditText editText;
        Bundle arguments = getArguments();
        String string = arguments != null ? arguments.getString("hot_search_word") : null;
        this.hintSearchWord = string;
        if (string == null || string.length() <= 0 || (mViewBinding = getMViewBinding()) == null || (editText = mViewBinding.f74655b) == null) {
            return;
        }
        editText.setHint(this.hintSearchWord);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit G0(final SearchSubjectFragment searchSubjectFragment, String str) {
        EditText editText;
        if (TextUtils.isEmpty(str)) {
            rq.i mViewBinding = searchSubjectFragment.getMViewBinding();
            if (mViewBinding != null && (editText = mViewBinding.f74655b) != null) {
                editText.postDelayed(new Runnable() { // from class: com.transsion.search_pugc.fragment.h
                    @Override // java.lang.Runnable
                    public final void run() {
                        SearchSubjectFragment.H0(this.f52345a);
                    }
                }, 500L);
            }
            com.transsion.search_pugc.speech.f.f52525a.b(SearchSubjectFragment.class.getSimpleName() + " --> mViewBinding?.sRView?.setCallback{} --> onResult = " + str + " --> 拉起键盘");
        } else {
            searchSubjectFragment.W0(str == null ? "" : str);
            searchSubjectFragment.L0("voice");
            searchSubjectFragment.getSearchReporter().E("voice", searchSubjectFragment.mKeyword);
            com.transsion.search_pugc.speech.f.f52525a.b(SearchSubjectFragment.class.getSimpleName() + " --> mViewBinding?.sRView?.setCallback{} --> onResult = " + str + " --> 隐藏键盘");
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void H0(SearchSubjectFragment searchSubjectFragment) {
        EditText editText;
        EditText editText2;
        rq.i mViewBinding = searchSubjectFragment.getMViewBinding();
        if (mViewBinding != null && (editText2 = mViewBinding.f74655b) != null) {
            editText2.requestFocus();
        }
        rq.i mViewBinding2 = searchSubjectFragment.getMViewBinding();
        if (mViewBinding2 == null || (editText = mViewBinding2.f74655b) == null) {
            return;
        }
        KeyboardUtils.i(editText);
    }

    private final boolean I0() {
        D0();
        return true;
    }

    private final void J0(boolean showKeyboard) {
        final EditText editText;
        rq.i mViewBinding = getMViewBinding();
        if (mViewBinding == null || (editText = mViewBinding.f74655b) == null) {
            return;
        }
        if (!editText.hasFocus()) {
            editText.requestFocus();
        }
        if (showKeyboard) {
            editText.post(new Runnable() { // from class: com.transsion.search_pugc.fragment.g
                @Override // java.lang.Runnable
                public final void run() {
                    SearchSubjectFragment.K0(this.f52343a, editText);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void K0(SearchSubjectFragment searchSubjectFragment, EditText editText) {
        if (searchSubjectFragment.isAdded() && editText.hasFocus()) {
            KeyboardUtils.i(editText);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final com.transsion.search_pugc.g M0(SearchSubjectFragment searchSubjectFragment) {
        return com.transsion.search_pugc.g.f52478h.a(searchSubjectFragment.getContext());
    }

    private final void N0(Fragment fragment) {
        EditText editText;
        if (fragment == null || Intrinsics.c(this.currentPage, fragment) || !isAdded() || isDetached() || isRemoving()) {
            return;
        }
        this.currentPage = fragment;
        w wVarP = getChildFragmentManager().p();
        SearchHotFragment searchHotFragment = this.hotFragment;
        if (searchHotFragment != null && !Intrinsics.c(this.currentPage, searchHotFragment)) {
            wVarP.p(searchHotFragment);
        }
        SearchSuggestFragment searchSuggestFragment = this.suggestFragment;
        if (searchSuggestFragment != null && !Intrinsics.c(this.currentPage, searchSuggestFragment)) {
            wVarP.p(searchSuggestFragment);
        }
        SearchResultFragment searchResultFragment = this.searchResultFragment;
        if (searchResultFragment != null && !Intrinsics.c(this.currentPage, searchResultFragment)) {
            wVarP.p(searchResultFragment);
        }
        wVarP.y(fragment);
        wVarP.j();
        if (!Intrinsics.c(fragment, this.searchResultFragment)) {
            Boolean bool = (Boolean) C0().i().f();
            if (bool == null || !bool.booleanValue()) {
                J0(false);
                return;
            }
            return;
        }
        rq.i mViewBinding = getMViewBinding();
        if (mViewBinding == null || (editText = mViewBinding.f74655b) == null) {
            return;
        }
        editText.clearFocus();
        KeyboardUtils.e(editText);
    }

    private final void O0(boolean withoutKeyboard) {
        AppCompatImageView appCompatImageView;
        ImageView imageView;
        EditText editText;
        EditText editText2;
        EditText editText3;
        TextView textView;
        EditText editText4;
        rq.i mViewBinding = getMViewBinding();
        if (mViewBinding != null && (editText4 = mViewBinding.f74655b) != null) {
            editText4.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.search_pugc.fragment.i
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    SearchSubjectFragment.P0(this.f52366a, view);
                }
            });
        }
        rq.i mViewBinding2 = getMViewBinding();
        if (mViewBinding2 != null && (textView = mViewBinding2.f74663j) != null) {
            textView.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.search_pugc.fragment.j
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    SearchSubjectFragment.Q0(this.f52367a, view);
                }
            });
        }
        rq.i mViewBinding3 = getMViewBinding();
        if (mViewBinding3 != null && (editText3 = mViewBinding3.f74655b) != null) {
            editText3.addTextChangedListener(new f());
        }
        rq.i mViewBinding4 = getMViewBinding();
        if (mViewBinding4 != null && (editText2 = mViewBinding4.f74655b) != null) {
            editText2.setOnEditorActionListener(new g());
        }
        rq.i mViewBinding5 = getMViewBinding();
        if (mViewBinding5 != null && (editText = mViewBinding5.f74655b) != null) {
            editText.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: com.transsion.search_pugc.fragment.k
                @Override // android.view.View.OnFocusChangeListener
                public final void onFocusChange(View view, boolean z10) {
                    SearchSubjectFragment.R0(this.f52368a, view, z10);
                }
            });
        }
        rq.i mViewBinding6 = getMViewBinding();
        if (mViewBinding6 != null && (imageView = mViewBinding6.f74660g) != null) {
            imageView.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.search_pugc.fragment.l
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    SearchSubjectFragment.S0(this.f52369a, view);
                }
            });
        }
        rq.i mViewBinding7 = getMViewBinding();
        if (mViewBinding7 != null && (appCompatImageView = mViewBinding7.f74657d) != null) {
            appCompatImageView.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.search_pugc.fragment.b
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    SearchSubjectFragment.T0(this.f52338a, view);
                }
            });
        }
        if (!withoutKeyboard) {
            J0(true);
        }
        hj.b logViewConfig = getLogViewConfig();
        if (logViewConfig != null) {
            logViewConfig.k(true);
        }
        x0(this, new Function0() { // from class: com.transsion.search_pugc.fragment.c
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Boolean.valueOf(SearchSubjectFragment.U0(this.f52339a));
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void P0(SearchSubjectFragment searchSubjectFragment, View view) {
        TextView textView;
        rq.i mViewBinding = searchSubjectFragment.getMViewBinding();
        if (mViewBinding == null || (textView = mViewBinding.f74663j) == null) {
            return;
        }
        jg.c.k(textView);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void Q0(SearchSubjectFragment searchSubjectFragment, View view) {
        searchSubjectFragment.L0("input");
        searchSubjectFragment.getSearchReporter().E("input", searchSubjectFragment.mKeyword);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void R0(SearchSubjectFragment searchSubjectFragment, View view, boolean z10) {
        EditText editText;
        ViewGroup.LayoutParams layoutParams;
        ImageView imageView;
        TextView textView;
        String string;
        EditText editText2;
        EditText editText3;
        ViewGroup.LayoutParams layoutParams2;
        ImageView imageView2;
        TextView textView2;
        if (!z10) {
            rq.i mViewBinding = searchSubjectFragment.getMViewBinding();
            if (mViewBinding != null && (textView = mViewBinding.f74663j) != null) {
                jg.c.g(textView);
            }
            rq.i mViewBinding2 = searchSubjectFragment.getMViewBinding();
            if (mViewBinding2 != null && (imageView = mViewBinding2.f74660g) != null) {
                jg.c.k(imageView);
            }
            rq.i mViewBinding3 = searchSubjectFragment.getMViewBinding();
            if (mViewBinding3 == null || (editText = mViewBinding3.f74655b) == null || (layoutParams = editText.getLayoutParams()) == null || !(layoutParams instanceof RelativeLayout.LayoutParams)) {
                return;
            }
            ((RelativeLayout.LayoutParams) layoutParams).addRule(16, R$id.search_edit_clear);
            return;
        }
        rq.i mViewBinding4 = searchSubjectFragment.getMViewBinding();
        if (mViewBinding4 != null && (textView2 = mViewBinding4.f74663j) != null) {
            jg.c.k(textView2);
        }
        rq.i mViewBinding5 = searchSubjectFragment.getMViewBinding();
        if (mViewBinding5 != null && (imageView2 = mViewBinding5.f74660g) != null) {
            jg.c.g(imageView2);
        }
        rq.i mViewBinding6 = searchSubjectFragment.getMViewBinding();
        if (mViewBinding6 != null && (editText3 = mViewBinding6.f74655b) != null && (layoutParams2 = editText3.getLayoutParams()) != null && (layoutParams2 instanceof RelativeLayout.LayoutParams)) {
            ((RelativeLayout.LayoutParams) layoutParams2).addRule(16, R$id.tv_search);
        }
        if (searchSubjectFragment.currentPage instanceof SearchResultFragment) {
            rq.i mViewBinding7 = searchSubjectFragment.getMViewBinding();
            Editable text = (mViewBinding7 == null || (editText2 = mViewBinding7.f74655b) == null) ? null : editText2.getText();
            if ((text != null ? text.length() : 0) <= 0) {
                searchSubjectFragment.N0(searchSubjectFragment.hotFragment);
                return;
            }
            if (text == null || (string = text.toString()) == null) {
                string = "";
            }
            searchSubjectFragment.X0(string);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void S0(SearchSubjectFragment searchSubjectFragment, View view) {
        ImageView imageView;
        EditText editText;
        rq.i mViewBinding = searchSubjectFragment.getMViewBinding();
        if (mViewBinding != null && (editText = mViewBinding.f74655b) != null) {
            editText.setText("");
        }
        rq.i mViewBinding2 = searchSubjectFragment.getMViewBinding();
        if (mViewBinding2 == null || (imageView = mViewBinding2.f74660g) == null) {
            return;
        }
        jg.c.g(imageView);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void T0(SearchSubjectFragment searchSubjectFragment, View view) {
        searchSubjectFragment.D0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean U0(SearchSubjectFragment searchSubjectFragment) {
        return searchSubjectFragment.I0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void W0(String keyWord) {
        Unit unit;
        EditText editText;
        EditText editText2;
        rq.i mViewBinding = getMViewBinding();
        if (mViewBinding != null && (editText2 = mViewBinding.f74655b) != null) {
            editText2.setText(keyWord);
        }
        try {
            Result.Companion companion = Result.INSTANCE;
            rq.i mViewBinding2 = getMViewBinding();
            if (mViewBinding2 == null || (editText = mViewBinding2.f74655b) == null) {
                unit = null;
            } else {
                editText.setSelection(keyWord.length());
                unit = Unit.f67061a;
            }
            Result.m454constructorimpl(unit);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m454constructorimpl(ResultKt.a(th2));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void X0(String keyword) {
        SearchSuggestFragment searchSuggestFragment;
        if (keyword.length() == 0) {
            N0(this.hotFragment);
        } else if (m.f70474a.e()) {
            if (!TextUtils.isEmpty(keyword) && (searchSuggestFragment = this.suggestFragment) != null) {
                searchSuggestFragment.o0(keyword);
            }
            N0(this.suggestFragment);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final SearchResultViewModel Y0(SearchSubjectFragment searchSubjectFragment) {
        FragmentActivity fragmentActivityRequireActivity = searchSubjectFragment.requireActivity();
        Intrinsics.g(fragmentActivityRequireActivity, "requireActivity(...)");
        return (SearchResultViewModel) new v0(fragmentActivityRequireActivity).a(SearchResultViewModel.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final com.transsion.search_pugc.g getSearchReporter() {
        return (com.transsion.search_pugc.g) this.searchReporter.getValue();
    }

    private final void w0() {
        if (this.hotFragment == null) {
            FragmentManager childFragmentManager = getChildFragmentManager();
            Intrinsics.g(childFragmentManager, "getChildFragmentManager(...)");
            w wVarP = childFragmentManager.p();
            Intrinsics.g(wVarP, "beginTransaction()");
            SearchHotFragment searchHotFragmentA = SearchHotFragment.INSTANCE.a(this.hintSearchWord);
            wVarP.b(R$id.search_fragment_container, searchHotFragmentA);
            this.hotFragment = searchHotFragmentA;
            wVarP.j();
        }
    }

    private final u x0(androidx.p009lifecycle.u owner, Function0 onBackPressed) {
        b bVar = new b(onBackPressed, this);
        requireActivity().getOnBackPressedDispatcher().i(owner, bVar);
        return bVar;
    }

    private final void y0() {
        if (this.suggestFragment == null) {
            FragmentManager childFragmentManager = getChildFragmentManager();
            Intrinsics.g(childFragmentManager, "getChildFragmentManager(...)");
            w wVarP = childFragmentManager.p();
            Intrinsics.g(wVarP, "beginTransaction()");
            SearchSuggestFragment searchSuggestFragmentA = SearchSuggestFragment.INSTANCE.a();
            wVarP.b(R$id.search_fragment_container, searchSuggestFragmentA);
            this.suggestFragment = searchSuggestFragmentA;
            wVarP.j();
            SearchSuggestFragment searchSuggestFragment = this.suggestFragment;
            if (searchSuggestFragment != null) {
                searchSuggestFragment.q0(new c());
            }
        }
    }

    private final void z0() {
        if (this.searchResultFragment == null) {
            FragmentManager childFragmentManager = getChildFragmentManager();
            Intrinsics.g(childFragmentManager, "getChildFragmentManager(...)");
            w wVarP = childFragmentManager.p();
            Intrinsics.g(wVarP, "beginTransaction()");
            SearchResultFragment searchResultFragment = new SearchResultFragment();
            wVarP.b(R$id.search_fragment_container, searchResultFragment);
            this.searchResultFragment = searchResultFragment;
            wVarP.l();
        }
    }

    public final void A0(String keyWord, String searchFrom, Function1 callback) {
        EditText editText;
        Intrinsics.h(keyWord, "keyWord");
        Intrinsics.h(callback, "callback");
        FragmentActivity activity = getActivity();
        if (activity != null) {
            KeyboardUtils.d(activity);
        }
        this.mKeyword = keyWord;
        this.ignoreEditChanged = true;
        rq.i mViewBinding = getMViewBinding();
        if (mViewBinding != null && (editText = mViewBinding.f74655b) != null) {
            editText.setText(this.mKeyword);
            try {
                Result.Companion companion = Result.INSTANCE;
                Editable text = editText.getText();
                editText.setSelection(text != null ? RangesKt.i(text.length(), this.mKeyword.length()) : 0);
                Result.m454constructorimpl(Unit.f67061a);
            } catch (Throwable th2) {
                Result.Companion companion2 = Result.INSTANCE;
                Result.m454constructorimpl(ResultKt.a(th2));
            }
        }
        this.page = 1;
        L0(searchFrom);
        SearchManager.f51941f.a().g(this.mKeyword);
        callback.invoke(keyWord);
    }

    @Override // com.transsion.baseui.fragment.BaseFragment
    /* JADX INFO: renamed from: B0, reason: merged with bridge method [inline-methods] */
    public rq.i getViewBinding(LayoutInflater inflater) {
        Intrinsics.h(inflater, "inflater");
        rq.i iVarC = rq.i.c(inflater);
        Intrinsics.g(iVarC, "inflate(...)");
        return iVarC;
    }

    public final void L0(String searchFrom) {
        rq.i mViewBinding;
        EditText editText;
        if (!m.f70474a.e()) {
            uh.b.f76753a.d(R$string.no_network_toast);
        }
        if (this.mKeyword.length() == 0 && (mViewBinding = getMViewBinding()) != null && (editText = mViewBinding.f74655b) != null && Intrinsics.c(editText.getHint(), this.hintSearchWord)) {
            this.mKeyword = String.valueOf(this.hintSearchWord);
            this.ignoreEditChanged = true;
            editText.setText(String.valueOf(this.hintSearchWord));
            editText.setSelection(editText.getText().length());
            getSearchReporter().E("hint", this.mKeyword);
            searchFrom = "hint";
        }
        if (this.mKeyword.length() == 0) {
            com.tn.lib.widget.toast.core.h hVar = com.tn.lib.widget.toast.core.h.f41479a;
            hVar.e(16);
            hVar.l(getString(com.transsion.search.R$string.tips_movie));
            return;
        }
        SearchHotFragment searchHotFragment = this.hotFragment;
        if (searchHotFragment != null) {
            searchHotFragment.addHistoryWord(this.mKeyword);
        }
        SearchResultFragment searchResultFragment = this.searchResultFragment;
        if (searchResultFragment != null) {
            searchResultFragment.u0(this.mKeyword, searchFrom, this.fromUGCVideoId);
        }
        N0(this.searchResultFragment);
    }

    public final void V0() {
        String str;
        EditText editText;
        br.b.a aVar = br.b.f16914a;
        List listA = aVar.a();
        if (listA == null || listA.isEmpty()) {
            return;
        }
        List listA2 = aVar.a();
        int size = listA2 != null ? listA2.size() : 0;
        List listA3 = aVar.a();
        if (listA3 != null) {
            int i11 = this.hintSearchIndex;
            this.hintSearchIndex = i11 + 1;
            str = (String) CollectionsKt.l0(listA3, i11 % size);
        } else {
            str = null;
        }
        if (str != null && str.length() != 0) {
            this.hintSearchWord = str;
        }
        rq.i mViewBinding = getMViewBinding();
        if (mViewBinding == null || (editText = mViewBinding.f74655b) == null) {
            return;
        }
        editText.setHint(this.hintSearchWord);
    }

    @Override // com.transsion.baseui.fragment.BaseFragment
    public void initData(View view, Bundle savedInstanceState) {
        String string;
        ImageView imageView;
        EditText editText;
        Intrinsics.h(view, "view");
        super.initData(view, savedInstanceState);
        Bundle arguments = getArguments();
        if (arguments == null || (string = arguments.getString("keyword")) == null) {
            string = "";
        }
        Bundle arguments2 = getArguments();
        this.fromUGCVideoId = arguments2 != null ? arguments2.getString("form_ugc_video_id") : null;
        Bundle arguments3 = getArguments();
        this.backExitSearch = arguments3 != null ? arguments3.getBoolean("back_exit") : false;
        O0(string.length() > 0);
        if (string.length() > 0) {
            this.mKeyword = string;
            rq.i mViewBinding = getMViewBinding();
            if (mViewBinding != null && (editText = mViewBinding.f74655b) != null) {
                editText.setText(this.mKeyword);
            }
            rq.i mViewBinding2 = getMViewBinding();
            if (mViewBinding2 != null && (imageView = mViewBinding2.f74660g) != null) {
                jg.c.k(imageView);
            }
            L0("deeplink");
            getSearchReporter().E("deeplink", this.mKeyword);
        }
        C0().i().j(getViewLifecycleOwner(), new e(new Function1() { // from class: com.transsion.search_pugc.fragment.a
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return SearchSubjectFragment.E0(this.f52337a, (Boolean) obj);
            }
        }));
    }

    @Override // com.transsion.baseui.fragment.BaseFragment
    public void initView(View view, Bundle savedInstanceState) {
        SpeechRecognizerView speechRecognizerView;
        Intrinsics.h(view, "view");
        F0();
        setNetListener(new d());
        rq.i mViewBinding = getMViewBinding();
        if (mViewBinding != null && (speechRecognizerView = mViewBinding.f74659f) != null) {
            speechRecognizerView.setCallback(new Function1() { // from class: com.transsion.search_pugc.fragment.d
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return SearchSubjectFragment.G0(this.f52340a, (String) obj);
                }
            });
        }
        kotlinx.coroutines.k.d(v.a(this), null, null, new AnonymousClass3(null), 3, null);
        w0();
        y0();
        z0();
        N0(this.hotFragment);
    }

    @Override // com.transsion.baseui.fragment.BaseFragment
    public void lazyLoadData() {
    }
}
