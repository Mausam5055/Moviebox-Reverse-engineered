package com.transsion.home.adapter.operateUGC.adapter;

import ak.k;
import android.content.Context;
import android.content.res.AssetManager;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.blankj.utilcode.util.a0;
import com.blankj.utilcode.util.y;
import com.tn.lib.widget.R$string;
import com.transsion.home.R$id;
import com.transsion.home.R$layout;
import com.transsion.home.bean.BannerData;
import com.transsion.home.bean.OperateItem;
import com.transsion.moviedetailapi.bean.Image;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.a2;
import kotlinx.coroutines.i;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;
import nh.m;

/* JADX INFO: loaded from: classes5.dex */
public final class BannerUGCAdapter extends RecyclerView.Adapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List f44276a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f44277b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final com.transsion.home.adapter.operateUGC.provider.c f44278c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final OperateItem f44279d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f44280e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final int f44281f;

    public static final class a extends RecyclerView.b0 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final ImageView f44282a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final TextView f44283b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(View itemView) {
            super(itemView);
            Intrinsics.h(itemView, "itemView");
            View viewFindViewById = itemView.findViewById(R$id.home_ugc_banner_item_image);
            Intrinsics.g(viewFindViewById, "findViewById(...)");
            this.f44282a = (ImageView) viewFindViewById;
            View viewFindViewById2 = itemView.findViewById(R$id.home_ugc_banner_title);
            Intrinsics.g(viewFindViewById2, "findViewById(...)");
            this.f44283b = (TextView) viewFindViewById2;
        }

        public final TextView f() {
            return this.f44283b;
        }

        public final ImageView getImageView() {
            return this.f44282a;
        }
    }

    /* JADX INFO: renamed from: com.transsion.home.adapter.operateUGC.adapter.BannerUGCAdapter$onBindViewHolder$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.home.adapter.operateUGC.adapter.BannerUGCAdapter$onBindViewHolder$1", f = "BannerUGCAdapter.kt", l = {75}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
        final /* synthetic */ BannerData $bannerData;
        final /* synthetic */ a $holder;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(BannerData bannerData, a aVar, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$bannerData = bannerData;
            this.$holder = aVar;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(this.$bannerData, this.$holder, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            String url;
            AssetManager assets;
            Object objF = IntrinsicsKt.f();
            int i11 = this.label;
            if (i11 == 0) {
                ResultKt.b(obj);
                Image image = this.$bannerData.getImage();
                if (image != null && (url = image.getUrl()) != null) {
                    a aVar = this.$holder;
                    Context context = aVar.getImageView().getContext();
                    Bitmap bitmapDecodeStream = BitmapFactory.decodeStream((context == null || (assets = context.getAssets()) == null) ? null : assets.open(url));
                    a2 a2VarC = y0.c();
                    BannerUGCAdapter$onBindViewHolder$1$1$1 bannerUGCAdapter$onBindViewHolder$1$1$1 = new BannerUGCAdapter$onBindViewHolder$1$1$1(aVar, bitmapDecodeStream, null);
                    this.label = 1;
                    if (i.g(a2VarC, bannerUGCAdapter$onBindViewHolder$1$1$1, this) == objF) {
                        return objF;
                    }
                }
            } else {
                if (i11 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
            }
            return Unit.f67061a;
        }
    }

    public BannerUGCAdapter(List banners, int i11, com.transsion.home.adapter.operateUGC.provider.c bannerProvider, OperateItem operateItem) {
        Intrinsics.h(banners, "banners");
        Intrinsics.h(bannerProvider, "bannerProvider");
        Intrinsics.h(operateItem, "operateItem");
        this.f44276a = banners;
        this.f44277b = i11;
        this.f44278c = bannerProvider;
        this.f44279d = operateItem;
        int iE = y.e() - (a0.a(12.0f) * 2);
        this.f44280e = iE;
        this.f44281f = Intrinsics.c(operateItem.getStyleTemplate(), "BANNER_NARROW") ? (iE * 5) / 14 : (iE * 9) / 16;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void i(BannerData bannerData, BannerUGCAdapter bannerUGCAdapter, int i11, View view) {
        String deepLink;
        if (bannerData == null || (deepLink = bannerData.getDeepLink()) == null) {
            return;
        }
        if (!m.f70474a.e()) {
            uh.b.f76753a.d(R$string.no_network_toast);
            return;
        }
        k.g(deepLink, "&module_name=opt_banner_free&from_opt_id=" + bannerUGCAdapter.f44279d.getOpId() + "&ops=" + bannerData.getOps() + "&tab_id=" + bannerUGCAdapter.f44277b);
        hl.d.f64525c.b(bannerUGCAdapter.f44277b, i11, bannerUGCAdapter.f44279d, bannerData);
    }

    private final void k(BannerData bannerData, int i11) {
        if (this.f44278c.I(bannerData != null ? bannerData.getDeepLink() : null)) {
            hl.d.f64525c.a(this.f44277b, i11, this.f44279d, bannerData);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return Integer.MAX_VALUE;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
    public void onBindViewHolder(a holder, int i11) {
        String url;
        String thumbnail;
        Image image;
        Image image2;
        String content;
        Intrinsics.h(holder, "holder");
        if (this.f44276a.isEmpty()) {
            return;
        }
        final int size = i11 % this.f44276a.size();
        final BannerData bannerData = (BannerData) this.f44276a.get(size);
        String str = "";
        if (bannerData == null || !bannerData.getBuiltIn()) {
            ej.f.a aVar = ej.f.f61882a;
            Context context = holder.getImageView().getContext();
            Intrinsics.g(context, "getContext(...)");
            ej.f.b bVarM = aVar.m(context);
            if (bannerData == null || (image2 = bannerData.getImage()) == null || (url = image2.getUrl()) == null) {
                url = "";
            }
            ej.f.b bVarM2 = bVarM.g(url).m(this.f44280e);
            if (bannerData == null || (image = bannerData.getImage()) == null || (thumbnail = image.getThumbnail()) == null) {
                thumbnail = "";
            }
            bVarM2.l(thumbnail).d(holder.getImageView());
        } else {
            kotlinx.coroutines.k.d(o0.a(y0.b()), null, null, new AnonymousClass1(bannerData, holder, null), 3, null);
        }
        TextView textViewF = holder.f();
        if (bannerData != null && (content = bannerData.getContent()) != null) {
            str = content;
        }
        textViewF.setText(str);
        k(bannerData, size);
        holder.getImageView().setOnClickListener(new View.OnClickListener() { // from class: com.transsion.home.adapter.operateUGC.adapter.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                BannerUGCAdapter.i(bannerData, this, size, view);
            }
        });
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
    public a onCreateViewHolder(ViewGroup parent, int i11) {
        Intrinsics.h(parent, "parent");
        View viewInflate = LayoutInflater.from(parent.getContext()).inflate(R$layout.item_ugc_banner, parent, false);
        Intrinsics.e(viewInflate);
        a aVar = new a(viewInflate);
        aVar.getImageView().getLayoutParams().height = this.f44281f;
        return aVar;
    }
}
