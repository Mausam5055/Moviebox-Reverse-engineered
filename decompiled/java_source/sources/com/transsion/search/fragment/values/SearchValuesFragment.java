package com.transsion.search.fragment.values;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.app.NotificationCompat;
import androidx.fragment.app.Fragment;
import androidx.p009lifecycle.b0;
import androidx.p009lifecycle.c0;
import bk.h;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.google.gson.JsonObject;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.tn.lib.widget.R$mipmap;
import com.transsion.baselib.helper.a;
import com.transsion.baseui.R$string;
import com.transsion.baseui.fragment.PageStatusFragment;
import com.transsion.baseui.widget.DrawableCenterTextView;
import com.transsion.baseui.widget.ResourcesRequestView;
import com.transsion.publish.model.PostEntity;
import com.transsion.pushapi.NoticePermissionFrom;
import com.transsion.search.R$id;
import com.transsion.search.R$layout;
import com.transsion.search.fragment.SearchSubjectFragment;
import com.transsion.search.fragment.values.SearchValuesFragment;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import kotlin.Function;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import nh.m;
import okhttp3.MediaType;
import okhttp3.RequestBody;
import rq.k;
import tp.e;
import yq.g;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u0080\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u0000 Q2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001-B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J!\u0010\n\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00052\b\b\u0002\u0010\b\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\r\u001a\u00020\fH\u0002¢\u0006\u0004\b\r\u0010\u000eJ\u0019\u0010\u0011\u001a\u00020\t2\b\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0016¢\u0006\u0004\b\u0011\u0010\u0012J\u0017\u0010\u0014\u001a\u00020\t2\u0006\u0010\u0013\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0014\u0010\u0012J\u000f\u0010\u0015\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u0015\u0010\u0016J\u000f\u0010\u0017\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u0017\u0010\u0016J\u000f\u0010\u0018\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u0018\u0010\u0016J\u0017\u0010\u001b\u001a\u00020\u00022\u0006\u0010\u001a\u001a\u00020\u0019H\u0016¢\u0006\u0004\b\u001b\u0010\u001cJ\u000f\u0010\u001d\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u001d\u0010\u001eJ\u000f\u0010\u001f\u001a\u00020\tH\u0016¢\u0006\u0004\b\u001f\u0010\u0004J\u000f\u0010 \u001a\u00020\tH\u0016¢\u0006\u0004\b \u0010\u0004J\u000f\u0010!\u001a\u00020\tH\u0016¢\u0006\u0004\b!\u0010\u0004J\u000f\u0010\"\u001a\u00020\tH\u0016¢\u0006\u0004\b\"\u0010\u0004J\u000f\u0010#\u001a\u00020\u0005H\u0016¢\u0006\u0004\b#\u0010\u001eJ\u0017\u0010%\u001a\u00020\f2\u0006\u0010$\u001a\u00020\u0007H\u0016¢\u0006\u0004\b%\u0010&J\r\u0010'\u001a\u00020\u0005¢\u0006\u0004\b'\u0010\u001eJ\u000f\u0010)\u001a\u00020(H\u0016¢\u0006\u0004\b)\u0010*R\u001e\u0010/\u001a\n\u0012\u0004\u0012\u00020,\u0018\u00010+8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b-\u0010.R\u0016\u00102\u001a\u00020\u00058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b0\u00101R\u0018\u00104\u001a\u0004\u0018\u00010\u00058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b3\u00101R\u0016\u00108\u001a\u0002058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b6\u00107R\u001a\u0010<\u001a\b\u0012\u0004\u0012\u00020:098\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b;\u0010.R\u0018\u0010?\u001a\u0004\u0018\u0001058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b=\u0010>R\u0018\u0010C\u001a\u0004\u0018\u00010@8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bA\u0010BR\u001b\u0010I\u001a\u00020D8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bE\u0010F\u001a\u0004\bG\u0010HR\u001f\u0010P\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010K0J8\u0006¢\u0006\f\n\u0004\bL\u0010M\u001a\u0004\bN\u0010O¨\u0006R"}, d2 = {"Lcom/transsion/search/fragment/values/SearchValuesFragment;", "Lcom/transsion/baseui/fragment/PageStatusFragment;", "Lrq/k;", "<init>", "()V", "", "keyword", "", "before", "", "w0", "(Ljava/lang/String;Z)V", "Landroid/view/View;", "t0", "()Landroid/view/View;", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "outState", "onSaveInstanceState", "isShowPageStateLayoutTitle", "()Z", "isAudioShowNoNetworkLayout", "isMonitorNetworkState", "Landroid/view/LayoutInflater;", "inflater", "r0", "(Landroid/view/LayoutInflater;)Lrq/k;", "getPageStateLayoutTitle", "()Ljava/lang/String;", "initViewData", "initViewModel", "initListener", "retryLoadData", "getEmptyDescText", "isShowTitleLayout", "getEmptyView", "(Z)Landroid/view/View;", "o0", "Lhj/b;", "newLogViewConfig", "()Lhj/b;", "", "Lcom/transsion/search/bean/VerticalRank;", "a", "Ljava/util/List;", "mVerticalRanks", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Ljava/lang/String;", "mKeyWord", "c", "mCopyKeyWord", "", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "I", "mType", "", "Lcom/transsion/search/bean/SearchValuesRelatedCollectionEntity;", "e", "collectionList", "f", "Ljava/lang/Integer;", "count", "Lcom/transsion/baseui/widget/ResourcesRequestView;", "g", "Lcom/transsion/baseui/widget/ResourcesRequestView;", "requestView", "Lyq/g;", "h", "Lkotlin/Lazy;", "q0", "()Lyq/g;", NotificationCompat.CATEGORY_SERVICE, "Landroidx/lifecycle/b0;", "Lcom/transsion/publish/model/PostEntity;", "i", "Landroidx/lifecycle/b0;", "p0", "()Landroidx/lifecycle/b0;", "postRequestResult", "j", "Search_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class SearchValuesFragment extends PageStatusFragment<k> {

    /* JADX INFO: renamed from: j, reason: collision with root package name and from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static String f52151k = "";

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private List mVerticalRanks;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private Integer count;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    private ResourcesRequestView requestView;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private String mKeyWord = "";

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private String mCopyKeyWord = "";

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private int mType = 1;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private final List collectionList = new ArrayList();

    /* JADX INFO: renamed from: h, reason: collision with root package name and from kotlin metadata */
    private final Lazy service = LazyKt.b(new Function0() { // from class: xq.c
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return SearchValuesFragment.y0();
        }
    });

    /* JADX INFO: renamed from: i, reason: collision with root package name and from kotlin metadata */
    private final b0 postRequestResult = new b0();

    /* JADX INFO: renamed from: com.transsion.search.fragment.values.SearchValuesFragment$a, reason: from kotlin metadata */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final String a() {
            return SearchValuesFragment.f52151k;
        }

        public final void b(String str, String str2, String str3, String str4, int i11, int i12, String str5, String str6) {
            HashMap map = new HashMap();
            if (str2 == null) {
                str2 = "";
            }
            map.put("subject_id", str2);
            if (str == null) {
                str = "";
            }
            map.put("group_id", str);
            map.put("sequence", String.valueOf(i11));
            if (str4 == null) {
                str4 = "";
            }
            map.put("ops", str4);
            if (str3 == null) {
                str3 = "";
            }
            map.put("staff_id", str3);
            map.put(NativeComponentConstants.KEY_COMPONENT_TYPE, String.valueOf(i12));
            if (str5 != null && str5.length() > 0) {
                map.put("trid", str5);
            }
            if (str6 != null && str6.length() > 0) {
                map.put("season", str6.toString());
            }
            a.f43262a.f("searchresult", map);
        }

        public final void d(String str, String str2, String str3, String str4, int i11, int i12) {
            HashMap map = new HashMap();
            if (str2 == null) {
                str2 = "";
            }
            map.put("subject_id", str2);
            if (str == null) {
                str = "";
            }
            map.put("group_id", str);
            map.put("sequence", String.valueOf(i11));
            if (str4 == null) {
                str4 = "";
            }
            map.put("ops", str4);
            if (str3 == null) {
                str3 = "";
            }
            map.put("staff_id", str3);
            map.put(NativeComponentConstants.KEY_COMPONENT_TYPE, String.valueOf(i12));
            if (a().length() > 0) {
                map.put("trid", a());
            }
            a.f43262a.a("searchresult", map);
        }
    }

    public static final class b extends sg.a {
        b() {
        }

        @Override // sg.a
        public void a(String str, String str2) {
            lg.a.C0828a.l(lg.a.f68839a, "search", "SearchValuesFragment --> postRequestResource --> failed to post request resources " + str2, false, 4, null);
            SearchValuesFragment.this.getPostRequestResult().n(null);
        }

        @Override // sg.a
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public void c(PostEntity postEntity) {
            if (postEntity != null) {
                SearchValuesFragment.this.getPostRequestResult().n(postEntity);
            }
        }
    }

    static final class c implements c0, FunctionAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final /* synthetic */ Function1 f52162a;

        c(Function1 function) {
            Intrinsics.h(function, "function");
            this.f52162a = function;
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        public final Function a() {
            return this.f52162a;
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
            this.f52162a.invoke(obj);
        }
    }

    private final g q0() {
        return (g) this.service.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit s0(SearchValuesFragment searchValuesFragment, PostEntity postEntity) {
        lg.a.C0828a c0828a = lg.a.f68839a;
        lg.a.C0828a.g(c0828a, "Post request succeed " + postEntity + ", " + (postEntity != null ? postEntity.getCount() : null), false, 2, null);
        if (postEntity != null && searchValuesFragment.count == null) {
            lg.a.C0828a.g(c0828a, "count changed " + postEntity.getCount(), false, 2, null);
            int count = postEntity.getCount();
            if (count == null) {
                count = 0;
            }
            searchValuesFragment.count = count;
            ResourcesRequestView resourcesRequestView = searchValuesFragment.requestView;
            if (resourcesRequestView != null) {
                Integer count2 = postEntity.getCount();
                resourcesRequestView.setCount(count2 != null ? count2.intValue() : 0, false);
            }
        }
        return Unit.f67061a;
    }

    private final View t0() {
        String str;
        DrawableCenterTextView drawableCenterTextView;
        if (!m.f70474a.e()) {
            View viewInflate = getLayoutInflater().inflate(R$layout.view_search_no_network, (ViewGroup) null);
            TextView textView = (TextView) viewInflate.findViewById(R$id.tv_empty_tips);
            ImageView imageView = (ImageView) viewInflate.findViewById(R$id.iv_tips);
            AppCompatTextView appCompatTextView = (AppCompatTextView) viewInflate.findViewById(R$id.tv_retry);
            textView.setText(R$string.base_net_err);
            imageView.setImageResource(R$mipmap.ic_no_network);
            appCompatTextView.setVisibility(0);
            appCompatTextView.setOnClickListener(new View.OnClickListener() { // from class: xq.b
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    SearchValuesFragment.v0(this.f78406a, view);
                }
            });
            Intrinsics.e(viewInflate);
            return viewInflate;
        }
        View viewInflate2 = getLayoutInflater().inflate(R$layout.view_search_empty, (ViewGroup) null);
        final ResourcesRequestView resourcesRequestView = (ResourcesRequestView) viewInflate2.findViewById(R$id.resources_request);
        this.requestView = resourcesRequestView;
        if (this.mKeyWord.length() > 10) {
            String strSubstring = this.mKeyWord.substring(0, 10);
            Intrinsics.g(strSubstring, "substring(...)");
            str = strSubstring + "...";
        } else {
            str = this.mKeyWord;
        }
        String string = getString(com.transsion.search.R$string.search_value_no_result, str);
        Intrinsics.g(string, "getString(...)");
        resourcesRequestView.set(string);
        resourcesRequestView.setGray(true);
        w0(this.mKeyWord, true);
        h mViewBinding = resourcesRequestView.getMViewBinding();
        if (mViewBinding != null && (drawableCenterTextView = mViewBinding.f16615e) != null) {
            drawableCenterTextView.setOnClickListener(new View.OnClickListener() { // from class: xq.a
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    SearchValuesFragment.u0(this.f78404a, resourcesRequestView, view);
                }
            });
        }
        Intrinsics.e(viewInflate2);
        return viewInflate2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void u0(SearchValuesFragment searchValuesFragment, ResourcesRequestView resourcesRequestView, View view) {
        e.f76335a.e(searchValuesFragment, NoticePermissionFrom.DETAIL_NO_RES);
        x0(searchValuesFragment, searchValuesFragment.mKeyWord, false, 2, null);
        Integer num = searchValuesFragment.count;
        if (num != null) {
            Intrinsics.e(num);
            Integer numValueOf = Integer.valueOf(num.intValue() + 1);
            searchValuesFragment.count = numValueOf;
            Intrinsics.e(numValueOf);
            ResourcesRequestView.setCount$default(resourcesRequestView, numValueOf.intValue(), false, 2, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void v0(SearchValuesFragment searchValuesFragment, View view) {
        searchValuesFragment.retryLoadData();
    }

    private final void w0(String keyword, boolean before) {
        JsonObject jsonObject = new JsonObject();
        jsonObject.addProperty(CampaignEx.JSON_KEY_AD_Q, keyword);
        jsonObject.addProperty("before", Boolean.valueOf(before));
        this.count = before ? null : this.count;
        RequestBody.Companion companion = RequestBody.INSTANCE;
        String string = jsonObject.toString();
        Intrinsics.g(string, "toString(...)");
        q0().f(vg.a.f77324a.a(), companion.create(string, MediaType.INSTANCE.parse("application/json"))).E(qz.a.c()).subscribe(new b());
    }

    static /* synthetic */ void x0(SearchValuesFragment searchValuesFragment, String str, boolean z10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            z10 = false;
        }
        searchValuesFragment.w0(str, z10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final g y0() {
        return (g) zg.c.f79414e.a().h(g.class);
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public String getEmptyDescText() {
        Context context = getContext();
        return (context != null ? context.getString(com.transsion.search.R$string.user_works_empty) : null) + " \"" + this.mKeyWord + "\"";
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public View getEmptyView(boolean isShowTitleLayout) {
        return t0();
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public String getPageStateLayoutTitle() {
        return "";
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void initListener() {
        this.postRequestResult.j(this, new c(new Function1() { // from class: xq.d
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return SearchValuesFragment.s0(this.f78407a, (PostEntity) obj);
            }
        }));
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void initViewData() {
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void initViewModel() {
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public boolean isAudioShowNoNetworkLayout() {
        return false;
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public boolean isMonitorNetworkState() {
        return true;
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public boolean isShowPageStateLayoutTitle() {
        return false;
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public hj.b newLogViewConfig() {
        return new hj.b("searchresult", false, 2, null);
    }

    public final String o0() {
        String string = qq.c.f73672a.b().getString("mCopyKeyWord", "");
        return string == null ? "" : string;
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        if (savedInstanceState != null) {
            this.mCopyKeyWord = savedInstanceState.getString("mCopyKeyWord");
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle outState) {
        Intrinsics.h(outState, "outState");
        super.onSaveInstanceState(outState);
        if (this.mKeyWord.length() < 30) {
            outState.putString("mCopyKeyWord", this.mKeyWord);
        }
    }

    /* JADX INFO: renamed from: p0, reason: from getter */
    public final b0 getPostRequestResult() {
        return this.postRequestResult;
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    /* JADX INFO: renamed from: r0, reason: merged with bridge method [inline-methods] */
    public k getViewBinding(LayoutInflater inflater) {
        Intrinsics.h(inflater, "inflater");
        k kVarC = k.c(inflater);
        Intrinsics.g(kVarC, "inflate(...)");
        return kVarC;
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void retryLoadData() {
        if (this.mVerticalRanks == null) {
            Fragment parentFragment = getParentFragment();
            SearchSubjectFragment searchSubjectFragment = parentFragment instanceof SearchSubjectFragment ? (SearchSubjectFragment) parentFragment : null;
            if (searchSubjectFragment != null) {
                searchSubjectFragment.E0("");
            }
        }
    }
}
