package com.transsion.home.adapter.suboperate.provider;

import android.view.View;
import com.chad.library.adapter.base.BaseProviderMultiAdapter;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.transsion.home.adapter.trending.provider.SubjectItemProvider;
import com.transsion.home.bean.OperateItem;
import com.transsion.home.fragment.tab.SubTabFragment;
import com.transsion.moviedetailapi.bean.ExplainBean;
import com.transsion.moviedetailapi.bean.PostItemType;
import com.transsion.moviedetailapi.bean.Subject;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes5.dex */
public final class q extends BaseItemProvider {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f44636e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final boolean f44637f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final SubjectItemProvider f44638g;

    public q(int i11, boolean z10) {
        this.f44636e = i11;
        this.f44637f = z10;
        this.f44638g = new SubjectItemProvider(z10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void B(OperateItem operateItem, q qVar, View view) {
        List<Object> data;
        Subject feedsSubject = operateItem.getFeedsSubject();
        if (feedsSubject != null) {
            rl.h.f(feedsSubject, "opt_sub_feeds");
            BaseProviderMultiAdapter baseProviderMultiAdapterG = qVar.g();
            qVar.D((baseProviderMultiAdapterG == null || (data = baseProviderMultiAdapterG.getData()) == null) ? -1 : data.indexOf(operateItem), feedsSubject, false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void C(OperateItem operateItem, q qVar, View view) {
        Subject feedsSubject;
        List<Object> data;
        if (com.transsion.baseui.util.c.f43504a.a(view.getId(), 2000L) || (feedsSubject = operateItem.getFeedsSubject()) == null) {
            return;
        }
        rl.h.g(feedsSubject, SubTabFragment.INSTANCE.a(qVar.f44636e), qVar.k(), "opt_sub_feeds");
        BaseProviderMultiAdapter baseProviderMultiAdapterG = qVar.g();
        qVar.D((baseProviderMultiAdapterG == null || (data = baseProviderMultiAdapterG.getData()) == null) ? -1 : data.indexOf(operateItem), feedsSubject, false);
    }

    private final void D(int i11, Subject subject, boolean z10) {
        HashMap map = new HashMap();
        map.put("event_type", z10 ? "browse_feeds_item" : "click_feeds_item");
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
        map.put("tabId", String.valueOf(this.f44636e));
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
            com.transsion.baselib.helper.a.f43262a.e(SubTabFragment.INSTANCE.a(this.f44636e), map);
        } else {
            com.transsion.baselib.helper.a.f43262a.f(SubTabFragment.INSTANCE.a(this.f44636e), map);
        }
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    /* JADX INFO: renamed from: A, reason: merged with bridge method [inline-methods] */
    public void b(BaseViewHolder helper, final OperateItem item) {
        List<Object> data;
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
        Subject feedsSubject = item.getFeedsSubject();
        if (feedsSubject != null) {
            this.f44638g.b(helper, item);
            BaseProviderMultiAdapter baseProviderMultiAdapterG = g();
            D((baseProviderMultiAdapterG == null || (data = baseProviderMultiAdapterG.getData()) == null) ? -1 : data.indexOf(item), feedsSubject, true);
        }
        helper.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.home.adapter.suboperate.provider.o
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                q.B(item, this, view);
            }
        });
        View viewG = this.f44638g.G();
        if (viewG != null) {
            viewG.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.home.adapter.suboperate.provider.p
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    q.C(item, this, view);
                }
            });
        }
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int l() {
        return PostItemType.SUBJECT.ordinal();
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int m() {
        return this.f44638g.m();
    }
}
