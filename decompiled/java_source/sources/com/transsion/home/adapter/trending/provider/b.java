package com.transsion.home.adapter.trending.provider;

import android.net.Uri;
import android.view.View;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.google.android.flexbox.FlexboxLayoutManager;
import com.therouter.TheRouter;
import com.therouter.router.Navigator;
import com.tn.lib.widget.R$drawable;
import com.transsion.home.R$id;
import com.transsion.moviedetailapi.bean.ExplainBean;
import com.transsion.moviedetailapi.bean.Subject;
import java.util.List;
import java.util.Set;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public abstract class b extends BaseItemProvider {
    /* JADX INFO: Access modifiers changed from: private */
    public static final void B(b bVar, com.transsion.home.adapter.trending.adapter.a aVar, Subject subject, BaseQuickAdapter baseQuickAdapter, View view, int i11) {
        Intrinsics.h(baseQuickAdapter, "<unused var>");
        Intrinsics.h(view, "view");
        bVar.C(view, (ExplainBean) CollectionsKt.l0(aVar.getData(), i11), subject);
    }

    private final void C(View view, ExplainBean explainBean, Subject subject) {
        String deeplink;
        Uri uriG;
        if (explainBean == null || (deeplink = explainBean.getDeeplink()) == null || (uriG = com.transsion.baselib.helper.b.f43264a.g(Uri.parse(deeplink))) == null) {
            return;
        }
        String queryParameter = uriG.getQueryParameter(NativeComponentConstants.KEY_COMPONENT_TYPE);
        if (queryParameter == null) {
            queryParameter = uriG.getPath();
        }
        Navigator navigatorC = TheRouter.c(queryParameter);
        Set<String> setKeySet = navigatorC.m().keySet();
        Intrinsics.g(setKeySet, "keySet(...)");
        for (String str : setKeySet) {
            Intrinsics.e(str);
            if (StringsKt.c0(str, "/movie/detail", false, 2, null) || StringsKt.c0(str, "/playvideo/detail", false, 2, null)) {
                navigatorC.K("ops", z("EXP", explainBean.getType(), subject));
            }
            navigatorC.K(str, navigatorC.m().getString(str));
        }
        Navigator.x(navigatorC, view.getContext(), null, 2, null);
    }

    private final String z(String str, String str2, Subject subject) {
        String ops;
        String ops2;
        if (subject != null) {
            try {
                ops = subject.getOps();
            } catch (Exception e11) {
                e11.printStackTrace();
                return subject != null ? subject.getOps() : null;
            }
        } else {
            ops = null;
        }
        JSONObject jSONObject = (ops == null || ops.length() == 0 || subject == null || (ops2 = subject.getOps()) == null) ? new JSONObject() : new JSONObject(ops2);
        jSONObject.put("rec_type", str);
        jSONObject.put("label", str2);
        return jSONObject.toString();
    }

    public final void A(BaseViewHolder helper, final Subject item) {
        String postTitle;
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
        LinearLayoutCompat linearLayoutCompat = (LinearLayoutCompat) helper.getViewOrNull(R$id.post_title_container);
        if (linearLayoutCompat != null) {
            String postTitle2 = item.getPostTitle();
            if (postTitle2 == null || postTitle2.length() == 0 || ((postTitle = item.getPostTitle()) != null && StringsKt.W(postTitle, "Trailer-", false, 2, null))) {
                jg.c.g(linearLayoutCompat);
                View viewOrNull = helper.getViewOrNull(R$id.tag_divider);
                if (viewOrNull != null) {
                    jg.c.g(viewOrNull);
                }
            } else {
                jg.c.k(linearLayoutCompat);
                View viewOrNull2 = helper.getViewOrNull(R$id.tag_divider);
                if (viewOrNull2 != null) {
                    jg.c.k(viewOrNull2);
                }
            }
        }
        AppCompatTextView appCompatTextView = (AppCompatTextView) helper.getViewOrNull(R$id.postTitle);
        if (appCompatTextView != null) {
            appCompatTextView.setText(item.getPostTitle());
        }
        RecyclerView recyclerView = (RecyclerView) helper.getViewOrNull(R$id.tag_list);
        if (recyclerView != null) {
            List<ExplainBean> explains = item.getExplains();
            if (explains == null || explains.isEmpty()) {
                jg.c.g(recyclerView);
                View viewOrNull3 = helper.getViewOrNull(R$id.tag_divider);
                if (viewOrNull3 != null) {
                    jg.c.g(viewOrNull3);
                    return;
                }
                return;
            }
            jg.c.k(recyclerView);
            List<ExplainBean> explains2 = item.getExplains();
            if (explains2 != null) {
                FlexboxLayoutManager flexboxLayoutManager = new FlexboxLayoutManager(recyclerView.getContext());
                if (recyclerView.getItemDecorationCount() == 0) {
                    com.google.android.flexbox.d dVar = new com.google.android.flexbox.d(recyclerView.getContext());
                    dVar.i(androidx.core.content.b.getDrawable(recyclerView.getContext(), R$drawable.divider_flexbox));
                    recyclerView.addItemDecoration(dVar);
                }
                flexboxLayoutManager.b0(0);
                flexboxLayoutManager.d0(1);
                flexboxLayoutManager.c0(0);
                recyclerView.setLayoutManager(flexboxLayoutManager);
                final com.transsion.home.adapter.trending.adapter.a aVar = new com.transsion.home.adapter.trending.adapter.a(explains2);
                aVar.w1(new p6.d() { // from class: com.transsion.home.adapter.trending.provider.a
                    @Override // p6.d
                    public final void a(BaseQuickAdapter baseQuickAdapter, View view, int i11) {
                        b.B(this.f44715a, aVar, item, baseQuickAdapter, view, i11);
                    }
                });
                recyclerView.setAdapter(aVar);
            }
        }
    }
}
