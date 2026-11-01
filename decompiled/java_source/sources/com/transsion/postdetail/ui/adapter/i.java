package com.transsion.postdetail.ui.adapter;

import android.content.Context;
import androidx.p009lifecycle.LifecycleCoroutineScope;
import androidx.recyclerview.widget.RecyclerView;
import bp.r;
import bp.s;
import bp.t;
import bp.u;
import bp.v;
import bp.w;
import bp.z;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.chad.library.adapter.base.BaseProviderMultiAdapter;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.therouter.TheRouter;
import com.transsion.moviedetailapi.bean.MediaType;
import com.transsion.moviedetailapi.bean.PostSubjectItem;
import com.transsion.room.api.IRoomApi;
import com.transsion.room.api.RoomsViewType;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003BA\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\b\u0010\t\u001a\u0004\u0018\u00010\b\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\b\u0010\f\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\r¢\u0006\u0004\b\u000f\u0010\u0010J%\u0010\u0015\u001a\u00020\u00132\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00020\u00112\u0006\u0010\u0014\u001a\u00020\u0013H\u0014¢\u0006\u0004\b\u0015\u0010\u0016J\u0017\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u0018\u001a\u00020\u0017H\u0016¢\u0006\u0004\b\u001a\u0010\u001bR\u0016\u0010\t\u001a\u0004\u0018\u00010\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001c\u0010\u001dR\u0014\u0010!\u001a\u00020\u001e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001f\u0010 ¨\u0006\""}, d2 = {"Lcom/transsion/postdetail/ui/adapter/i;", "Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;", "Lcom/transsion/moviedetailapi/bean/PostSubjectItem;", "Lr6/i;", "Landroid/content/Context;", "context", "Lcom/transsion/postdetail/ui/adapter/PostAdapterFrom;", "adapterFrom", "Lsj/b;", "exposureHelper", "", "pageName", "pageFrom", "Landroidx/lifecycle/LifecycleCoroutineScope;", "lifecycleScope", "<init>", "(Landroid/content/Context;Lcom/transsion/postdetail/ui/adapter/PostAdapterFrom;Lsj/b;Ljava/lang/String;Ljava/lang/String;Landroidx/lifecycle/LifecycleCoroutineScope;)V", "", "data", "", RequestParameters.POSITION, "N1", "(Ljava/util/List;I)I", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "holder", "", "B0", "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V", "G", "Lsj/b;", "Landroidx/recyclerview/widget/RecyclerView$s;", "H", "Landroidx/recyclerview/widget/RecyclerView$s;", "imageRecycledViewPool", "PostDetail_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class i extends BaseProviderMultiAdapter<PostSubjectItem> implements r6.i {

    /* JADX INFO: renamed from: G, reason: from kotlin metadata */
    private final sj.b exposureHelper;

    /* JADX INFO: renamed from: H, reason: from kotlin metadata */
    private final RecyclerView.s imageRecycledViewPool;

    public /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f49406a;

        static {
            int[] iArr = new int[PostAdapterFrom.values().length];
            try {
                iArr[PostAdapterFrom.DEFAULT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[PostAdapterFrom.NEARBY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[PostAdapterFrom.DETAIL.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[PostAdapterFrom.STAGGERED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            f49406a = iArr;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public i(Context context, PostAdapterFrom adapterFrom, sj.b bVar, String str, String str2, LifecycleCoroutineScope lifecycleCoroutineScope) {
        super(null, 1, null);
        Intrinsics.h(context, "context");
        Intrinsics.h(adapterFrom, "adapterFrom");
        this.exposureHelper = bVar;
        RecyclerView.s sVar = new RecyclerView.s();
        this.imageRecycledViewPool = sVar;
        int i11 = a.f49406a[adapterFrom.ordinal()];
        if (i11 == 1) {
            F1(new u(str, str2, sVar));
        } else if (i11 == 2) {
            F1(new v(str, str2, sVar));
        } else if (i11 == 3) {
            F1(new t(str, str2, sVar));
        } else {
            if (i11 != 4) {
                throw new NoWhenBranchMatchedException();
            }
            F1(new z(str, str2, sVar, context, lifecycleCoroutineScope));
        }
        if (adapterFrom == PostAdapterFrom.NEARBY) {
            IRoomApi iRoomApi = (IRoomApi) TheRouter.d(IRoomApi.class, new Object[0]);
            aq.c cVarC = iRoomApi != null ? iRoomApi.c(context, RoomsViewType.TYPE_ROOM_HOME) : null;
            if (cVarC != null) {
                F1(new w(cVarC));
            }
        }
        if (adapterFrom == PostAdapterFrom.DEFAULT) {
            F1(new s());
            F1(new r());
        }
    }

    public /* synthetic */ i(Context context, PostAdapterFrom postAdapterFrom, sj.b bVar, String str, String str2, LifecycleCoroutineScope lifecycleCoroutineScope, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, postAdapterFrom, bVar, str, str2, (i11 & 32) != 0 ? null : lifecycleCoroutineScope);
    }

    @Override // com.chad.library.adapter.base.BaseProviderMultiAdapter, com.chad.library.adapter.base.BaseQuickAdapter, androidx.recyclerview.widget.RecyclerView.Adapter
    /* JADX INFO: renamed from: B0 */
    public void onViewAttachedToWindow(BaseViewHolder holder) {
        Intrinsics.h(holder, "holder");
        super.onViewAttachedToWindow(holder);
        int adapterPosition = holder.getAdapterPosition();
        sj.b bVar = this.exposureHelper;
        if (bVar != null) {
            RecyclerView.m layoutManager = getRecyclerView().getLayoutManager();
            Intrinsics.f(layoutManager, "null cannot be cast to non-null type androidx.recyclerview.widget.RecyclerView.LayoutManager");
            sj.b.j(bVar, layoutManager, adapterPosition, true, false, 8, null);
        }
    }

    @Override // com.chad.library.adapter.base.BaseProviderMultiAdapter
    protected int N1(List<? extends PostSubjectItem> data, int position) {
        Intrinsics.h(data, "data");
        PostSubjectItem postSubjectItem = data.get(position);
        if (postSubjectItem.getNonAdDelegate() != null) {
            return MediaType.POST_DETAIL_FOR_YOU_NATIVE_AD.ordinal();
        }
        if (postSubjectItem.isRoomList()) {
            return MediaType.ROOM_LIST.ordinal();
        }
        if (postSubjectItem.isRoomCacheListStart()) {
            return MediaType.ROOM_CACHE_LIST_START.ordinal();
        }
        return postSubjectItem.isRoomCacheListEnd() ? MediaType.ROOM_CACHE_LIST_END.ordinal() : MediaType.CONTENT_ALL.ordinal();
    }

    @Override // r6.i
    public /* bridge */ /* synthetic */ r6.f b(BaseQuickAdapter baseQuickAdapter) {
        return r6.h.a(this, baseQuickAdapter);
    }
}
