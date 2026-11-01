package cl;

import android.widget.FrameLayout;
import androidx.constraintlayout.widget.Group;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.transsion.ad.bidding.base.r;
import com.transsion.ad.bidding.nativead.BiddingNativeManager;
import com.transsion.ad.view.native_ad.NativeWrapperAdView;
import com.transsion.home.R$id;
import com.transsion.home.R$layout;
import com.transsion.home.bean.UGCFilterVideoItem;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class a extends BaseItemProvider {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final C0166a f17265h = new C0166a(null);

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final int f17266i = 8;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final hl.b f17267e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final int f17268f = 4;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final int f17269g = R$layout.ugc_item_filter_source;

    /* JADX INFO: renamed from: cl.a$a, reason: collision with other inner class name */
    public static final class C0166a {
        private C0166a() {
        }

        public /* synthetic */ C0166a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public a(hl.b bVar) {
        this.f17267e = bVar;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int l() {
        return this.f17268f;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int m() {
        return this.f17269g;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public void v(BaseViewHolder viewHolder, int i11) {
        Intrinsics.h(viewHolder, "viewHolder");
        super.v(viewHolder, i11);
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    /* JADX INFO: renamed from: y, reason: merged with bridge method [inline-methods] */
    public void b(BaseViewHolder holder, UGCFilterVideoItem item) {
        Intrinsics.h(holder, "holder");
        Intrinsics.h(item, "item");
        BiddingNativeManager nonAdDelegate = item.getNonAdDelegate();
        if (nonAdDelegate == null) {
            FrameLayout frameLayout = (FrameLayout) holder.getViewOrNull(R$id.nativeView);
            if (frameLayout != null) {
                frameLayout.setVisibility(8);
            }
            Group group = (Group) holder.getViewOrNull(R$id.group);
            if (group != null) {
                group.setVisibility(0);
                return;
            }
            return;
        }
        r rVarA = cy.b.f60940a.a(k(), nonAdDelegate.getMSceneId());
        NativeWrapperAdView nativeWrapperAdView = (NativeWrapperAdView) holder.getViewOrNull(R$id.nativeView);
        if (nativeWrapperAdView != null) {
            BiddingNativeManager nonAdDelegate2 = item.getNonAdDelegate();
            nativeWrapperAdView.bindNativeView(nonAdDelegate, rVarA, nonAdDelegate2 != null ? nonAdDelegate2.n0() : null);
        }
        FrameLayout frameLayout2 = (FrameLayout) holder.getViewOrNull(R$id.nativeView);
        if (frameLayout2 != null) {
            frameLayout2.setVisibility(0);
        }
        Group group2 = (Group) holder.getViewOrNull(R$id.group);
        if (group2 != null) {
            group2.setVisibility(8);
        }
    }
}
