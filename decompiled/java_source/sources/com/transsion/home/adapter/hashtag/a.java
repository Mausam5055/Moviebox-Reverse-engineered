package com.transsion.home.adapter.hashtag;

import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.chad.library.adapter.base.BaseProviderMultiAdapter;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.transsion.home.hashtag.model.HashTagItem;
import com.transsion.home.hashtag.model.HashTagItemType;
import com.transsion.ugcvideodetail.api.bean.UGCVideo;
import com.transsion.ugcvideodetail.api.bean.UGCVideoHashTag;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import dl.d;
import java.util.List;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;
import r6.f;
import r6.h;
import r6.i;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\b\b\u0007\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003:\u0001\u0019B\u0019\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\b\u0010\tJ%\u0010\u000e\u001a\u00020\f2\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00020\n2\u0006\u0010\r\u001a\u00020\fH\u0014¢\u0006\u0004\b\u000e\u0010\u000fJ\u0017\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0011\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u0013\u0010\u0014R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016R\u0016\u0010\u0007\u001a\u0004\u0018\u00010\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0017\u0010\u0018¨\u0006\u001a"}, d2 = {"Lcom/transsion/home/adapter/hashtag/a;", "Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;", "Lcom/transsion/home/hashtag/model/HashTagItem;", "Lr6/i;", "Lcom/transsion/home/adapter/hashtag/a$a;", "callbacks", "Lhl/b;", "listExposureHelper", "<init>", "(Lcom/transsion/home/adapter/hashtag/a$a;Lhl/b;)V", "", "data", "", RequestParameters.POSITION, "N1", "(Ljava/util/List;I)I", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "holder", "", "B0", "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V", "G", "Lcom/transsion/home/adapter/hashtag/a$a;", "H", "Lhl/b;", "a", "Home_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class a extends BaseProviderMultiAdapter<HashTagItem> implements i {
    public static final int I = 8;

    /* JADX INFO: renamed from: G, reason: from kotlin metadata */
    private final InterfaceC0625a callbacks;

    /* JADX INFO: renamed from: H, reason: from kotlin metadata */
    private final hl.b listExposureHelper;

    /* JADX INFO: renamed from: com.transsion.home.adapter.hashtag.a$a, reason: collision with other inner class name */
    public interface InterfaceC0625a {
        void a(UGCVideo uGCVideo, int i11);

        void b(UGCVideoHashTag uGCVideoHashTag);
    }

    public /* synthetic */ class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f44274a;

        static {
            int[] iArr = new int[HashTagItemType.values().length];
            try {
                iArr[HashTagItemType.TAGS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[HashTagItemType.HASHTAG_CARD.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f44274a = iArr;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(InterfaceC0625a callbacks, hl.b bVar) {
        super(null, 1, null);
        Intrinsics.h(callbacks, "callbacks");
        this.callbacks = callbacks;
        this.listExposureHelper = bVar;
        F1(new d(callbacks));
        F1(new dl.b(callbacks));
    }

    @Override // com.chad.library.adapter.base.BaseProviderMultiAdapter, com.chad.library.adapter.base.BaseQuickAdapter, androidx.recyclerview.widget.RecyclerView.Adapter
    /* JADX INFO: renamed from: B0 */
    public void onViewAttachedToWindow(BaseViewHolder holder) {
        hl.b bVar;
        Intrinsics.h(holder, "holder");
        super.onViewAttachedToWindow(holder);
        int bindingAdapterPosition = holder.getBindingAdapterPosition();
        RecyclerView.m layoutManager = getRecyclerView().getLayoutManager();
        if (!(layoutManager instanceof GridLayoutManager) || (bVar = this.listExposureHelper) == null) {
            return;
        }
        bVar.h((LinearLayoutManager) layoutManager, bindingAdapterPosition, true);
    }

    @Override // com.chad.library.adapter.base.BaseProviderMultiAdapter
    protected int N1(List<? extends HashTagItem> data, int position) {
        Intrinsics.h(data, "data");
        int i11 = b.f44274a[data.get(position).getType().ordinal()];
        if (i11 == 1) {
            return HashTagItemType.TAGS.ordinal();
        }
        if (i11 == 2) {
            return HashTagItemType.HASHTAG_CARD.ordinal();
        }
        throw new NoWhenBranchMatchedException();
    }

    @Override // r6.i
    public /* bridge */ /* synthetic */ f b(BaseQuickAdapter baseQuickAdapter) {
        return h.a(this, baseQuickAdapter);
    }
}
