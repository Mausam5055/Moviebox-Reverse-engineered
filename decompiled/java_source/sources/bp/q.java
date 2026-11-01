package bp;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.BaseProviderMultiAdapter;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.transsion.moviedetailapi.bean.MediaType;
import com.transsion.moviedetailapi.bean.PostSubjectItem;
import com.transsion.postdetail.ui.view.PostBaseItemView;
import java.util.List;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public abstract class q extends BaseItemProvider {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final String f16693e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final String f16694f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final RecyclerView.s f16695g;

    public q(String str, String str2, RecyclerView.s pool) {
        Intrinsics.h(pool, "pool");
        this.f16693e = str;
        this.f16694f = str2;
        this.f16695g = pool;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit C(PostSubjectItem postSubjectItem, q qVar) {
        com.transsion.postdetail.helper.a aVar = com.transsion.postdetail.helper.a.f48866a;
        String str = qVar.f16693e;
        if (str == null) {
            str = "";
        }
        aVar.l(postSubjectItem, str, qVar.f16694f);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit D(q qVar, PostSubjectItem postSubjectItem) {
        int iIndexOf;
        BaseProviderMultiAdapter baseProviderMultiAdapterG = qVar.g();
        if (baseProviderMultiAdapterG != null && (iIndexOf = baseProviderMultiAdapterG.getData().indexOf(postSubjectItem)) >= 0) {
            baseProviderMultiAdapterG.C0(iIndexOf);
        }
        return Unit.f67061a;
    }

    private final void E(PostBaseItemView postBaseItemView, PostSubjectItem postSubjectItem, boolean z10) {
        if (postBaseItemView != null) {
            postBaseItemView.refreshLike(z10, postSubjectItem);
        }
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    /* JADX INFO: renamed from: A, reason: merged with bridge method [inline-methods] */
    public void b(BaseViewHolder helper, final PostSubjectItem item) {
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
        View view = helper.itemView;
        PostBaseItemView postBaseItemView = view instanceof PostBaseItemView ? (PostBaseItemView) view : null;
        if (postBaseItemView != null) {
            postBaseItemView.setPage(this.f16693e, this.f16694f);
            postBaseItemView.setOnNegativeFeedbackClick(new Function0() { // from class: bp.o
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return q.C(item, this);
                }
            });
            postBaseItemView.setData(item);
            postBaseItemView.setRecycledViewPool(this.f16695g);
            postBaseItemView.setOnNegativeFeedbackSuccess(new Function0() { // from class: bp.p
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return q.D(this.f16691a, item);
                }
            });
        }
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    /* JADX INFO: renamed from: B, reason: merged with bridge method [inline-methods] */
    public void f(BaseViewHolder helper, PostSubjectItem item, List payloads) {
        List<Object> data;
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
        Intrinsics.h(payloads, "payloads");
        super.f(helper, item, payloads);
        if (payloads.isEmpty()) {
            return;
        }
        Object objV0 = CollectionsKt.v0(payloads);
        if (objV0 instanceof Boolean) {
            try {
                Result.Companion companion = Result.INSTANCE;
                BaseProviderMultiAdapter baseProviderMultiAdapterG = g();
                if (baseProviderMultiAdapterG != null && (data = baseProviderMultiAdapterG.getData()) != null) {
                    int adapterPosition = helper.getAdapterPosition();
                    BaseProviderMultiAdapter baseProviderMultiAdapterG2 = g();
                    PostSubjectItem postSubjectItem = (PostSubjectItem) data.get(adapterPosition + (baseProviderMultiAdapterG2 != null ? baseProviderMultiAdapterG2.a0() : 0));
                    if (postSubjectItem != null) {
                        View view = helper.itemView;
                        E(view instanceof PostBaseItemView ? (PostBaseItemView) view : null, postSubjectItem, ((Boolean) objV0).booleanValue());
                    }
                }
                Result.m454constructorimpl(Unit.f67061a);
            } catch (Throwable th2) {
                Result.Companion companion2 = Result.INSTANCE;
                Result.m454constructorimpl(ResultKt.a(th2));
            }
        }
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int l() {
        return MediaType.CONTENT_ALL.ordinal();
    }
}
