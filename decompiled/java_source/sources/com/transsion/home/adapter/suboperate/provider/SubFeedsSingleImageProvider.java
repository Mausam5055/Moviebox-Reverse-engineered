package com.transsion.home.adapter.suboperate.provider;

import android.content.Context;
import android.view.View;
import androidx.appcompat.app.AppCompatActivity;
import com.chad.library.adapter.base.BaseProviderMultiAdapter;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.transsion.home.adapter.trending.provider.SubjectSingleImgItemProvider;
import com.transsion.home.bean.OperateItem;
import com.transsion.home.fragment.tab.SubTabFragment;
import com.transsion.moviedetailapi.bean.ExplainBean;
import com.transsion.moviedetailapi.bean.PostItemType;
import com.transsion.moviedetailapi.bean.Subject;
import com.transsion.videodetail.music.data.MusicLikedFragmentViewModel;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes5.dex */
public class SubFeedsSingleImageProvider extends BaseItemProvider {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f44518e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final boolean f44519f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final SubjectSingleImgItemProvider f44520g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final Lazy f44521h = LazyKt.b(new Function0() { // from class: com.transsion.home.adapter.suboperate.provider.r
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return SubFeedsSingleImageProvider.G();
        }
    });

    public SubFeedsSingleImageProvider(int i11, boolean z10) {
        this.f44518e = i11;
        this.f44519f = z10;
        this.f44520g = new SubjectSingleImgItemProvider(z10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void D(OperateItem operateItem, SubFeedsSingleImageProvider subFeedsSingleImageProvider, View view) {
        List<Object> data;
        Subject feedsSubject = operateItem.getFeedsSubject();
        if (feedsSubject != null) {
            if (nh.m.f70474a.e()) {
                rl.h.f(feedsSubject, "opt_sub_feeds");
                BaseProviderMultiAdapter baseProviderMultiAdapterG = subFeedsSingleImageProvider.g();
                subFeedsSingleImageProvider.H((baseProviderMultiAdapterG == null || (data = baseProviderMultiAdapterG.getData()) == null) ? -1 : data.indexOf(operateItem), feedsSubject, false);
            } else {
                Context contextK = subFeedsSingleImageProvider.k();
                AppCompatActivity appCompatActivity = contextK instanceof AppCompatActivity ? (AppCompatActivity) contextK : null;
                if (appCompatActivity != null) {
                    kotlinx.coroutines.k.d(androidx.p009lifecycle.v.a(appCompatActivity), null, null, new SubFeedsSingleImageProvider$convert$2$1$1$1(subFeedsSingleImageProvider, operateItem, feedsSubject, null), 3, null);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void E(OperateItem operateItem, SubFeedsSingleImageProvider subFeedsSingleImageProvider, View view) {
        Subject feedsSubject;
        List<Object> data;
        if (com.transsion.baseui.util.c.f43504a.a(view.getId(), 2000L) || (feedsSubject = operateItem.getFeedsSubject()) == null) {
            return;
        }
        rl.h.g(feedsSubject, SubTabFragment.INSTANCE.a(subFeedsSingleImageProvider.f44518e), subFeedsSingleImageProvider.k(), "opt_sub_feeds");
        BaseProviderMultiAdapter baseProviderMultiAdapterG = subFeedsSingleImageProvider.g();
        subFeedsSingleImageProvider.H((baseProviderMultiAdapterG == null || (data = baseProviderMultiAdapterG.getData()) == null) ? -1 : data.indexOf(operateItem), feedsSubject, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final MusicLikedFragmentViewModel G() {
        return new MusicLikedFragmentViewModel();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void H(int i11, Subject subject, boolean z10) {
        HashMap map = new HashMap();
        map.put("event_type", z10 ? "browse_feeds_single_item" : "click_feeds_single_item");
        map.put("sequence", String.valueOf(i11));
        map.put("item_type", "rec");
        String ops = subject.getOps();
        if (ops == null) {
            ops = "";
        }
        map.put("ops", ops);
        String subjectId = subject.getSubjectId();
        map.put("subject_id", subjectId != null ? subjectId : "");
        map.put("builtin", subject.getBuiltIn() ? "1" : "0");
        map.put("tabId", String.valueOf(this.f44518e));
        StringBuilder sb2 = new StringBuilder();
        List<ExplainBean> explains = subject.getExplains();
        if (explains != null) {
            Iterator<T> it = explains.iterator();
            while (it.hasNext()) {
                sb2.append(((ExplainBean) it.next()).getType());
                sb2.append(",");
            }
        }
        String string = sb2.toString();
        Intrinsics.g(string, "toString(...)");
        map.put("rec_explain_type", StringsKt.r1(string, ','));
        il.b.e(subject, map);
        if (z10) {
            com.transsion.baselib.helper.a.f43262a.e(SubTabFragment.INSTANCE.a(this.f44518e), map);
        } else {
            com.transsion.baselib.helper.a.f43262a.f(SubTabFragment.INSTANCE.a(this.f44518e), map);
        }
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    /* JADX INFO: renamed from: C, reason: merged with bridge method [inline-methods] */
    public void b(BaseViewHolder helper, final OperateItem item) {
        List<Object> data;
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
        Subject feedsSubject = item.getFeedsSubject();
        if (feedsSubject != null) {
            this.f44520g.b(helper, item);
            BaseProviderMultiAdapter baseProviderMultiAdapterG = g();
            H((baseProviderMultiAdapterG == null || (data = baseProviderMultiAdapterG.getData()) == null) ? -1 : data.indexOf(item), feedsSubject, true);
        }
        helper.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.home.adapter.suboperate.provider.s
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SubFeedsSingleImageProvider.D(item, this, view);
            }
        });
        View viewH = this.f44520g.H();
        if (viewH != null) {
            viewH.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.home.adapter.suboperate.provider.t
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    SubFeedsSingleImageProvider.E(item, this, view);
                }
            });
        }
    }

    protected final MusicLikedFragmentViewModel F() {
        return (MusicLikedFragmentViewModel) this.f44521h.getValue();
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int l() {
        return PostItemType.SINGLE_SUBJECT.ordinal();
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int m() {
        return this.f44520g.m();
    }
}
