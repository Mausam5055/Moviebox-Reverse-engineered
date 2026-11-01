package com.transsion.home.adapter.suboperate.adapter;

import android.content.Context;
import android.content.res.AssetManager;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.tn.lib.widget.R$string;
import com.transsion.edcation.CourseManager;
import com.transsion.home.R$id;
import com.transsion.home.R$layout;
import com.transsion.home.bean.BannerData;
import com.transsion.home.bean.OperateItem;
import com.transsion.home.fragment.tab.SubTabFragment;
import com.transsion.home.p004enum.HomeTabId;
import com.transsion.moviedetailapi.SubjectType;
import com.transsion.moviedetailapi.bean.Image;
import com.transsion.moviedetailapi.bean.Subject;
import com.transsnet.downloader.DownloadManagerApi;
import com.transsnet.downloader.widget.DownloadView;
import java.util.HashMap;
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
import kotlinx.coroutines.n0;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes5.dex */
public final class SubHorizontalViewPagerAdapter extends RecyclerView.Adapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List f44458a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f44459b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final OperateItem f44460c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f44461d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f44462e;

    public static final class a extends RecyclerView.b0 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final ImageView f44463a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final DownloadView f44464b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final TextView f44465c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(View itemView) {
            super(itemView);
            Intrinsics.h(itemView, "itemView");
            View viewFindViewById = itemView.findViewById(R$id.home_sub_pager_item_image);
            Intrinsics.g(viewFindViewById, "findViewById(...)");
            this.f44463a = (ImageView) viewFindViewById;
            View viewFindViewById2 = itemView.findViewById(R$id.sub_operation_banner_download);
            Intrinsics.g(viewFindViewById2, "findViewById(...)");
            this.f44464b = (DownloadView) viewFindViewById2;
            View viewFindViewById3 = itemView.findViewById(R$id.sub_operation_banner_title);
            Intrinsics.g(viewFindViewById3, "findViewById(...)");
            this.f44465c = (TextView) viewFindViewById3;
        }

        public final DownloadView f() {
            return this.f44464b;
        }

        public final TextView g() {
            return this.f44465c;
        }

        public final ImageView getImageView() {
            return this.f44463a;
        }
    }

    /* JADX INFO: renamed from: com.transsion.home.adapter.suboperate.adapter.SubHorizontalViewPagerAdapter$onBindViewHolder$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.home.adapter.suboperate.adapter.SubHorizontalViewPagerAdapter$onBindViewHolder$1", f = "SubHorizontalViewPagerAdapter.kt", l = {67}, m = "invokeSuspend")
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
                    SubHorizontalViewPagerAdapter$onBindViewHolder$1$1$1 subHorizontalViewPagerAdapter$onBindViewHolder$1$1$1 = new SubHorizontalViewPagerAdapter$onBindViewHolder$1$1$1(aVar, bitmapDecodeStream, null);
                    this.label = 1;
                    if (kotlinx.coroutines.i.g(a2VarC, subHorizontalViewPagerAdapter$onBindViewHolder$1$1$1, this) == objF) {
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

    public SubHorizontalViewPagerAdapter(List banners, int i11, OperateItem operateItem, int i12, int i13) {
        Intrinsics.h(banners, "banners");
        Intrinsics.h(operateItem, "operateItem");
        this.f44458a = banners;
        this.f44459b = i11;
        this.f44460c = operateItem;
        this.f44461d = i12;
        this.f44462e = i13;
    }

    private final Subject i(BannerData bannerData) {
        if (bannerData == null) {
            return null;
        }
        return new Subject(bannerData.getSubjectId(), Integer.valueOf(bannerData.getSubjectType()), null, null, null, null, null, null, null, null, null, null, null, null, null, bannerData.getSeenStatus(), null, null, null, null, null, null, null, null, false, false, null, null, null, null, null, false, false, null, null, 0, false, false, 0L, null, null, 0L, null, 0, false, null, 0, null, null, null, null, null, 0, null, null, null, null, null, null, -32772, 134217727, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void l(BannerData bannerData, SubHorizontalViewPagerAdapter subHorizontalViewPagerAdapter, int i11, View view) {
        String deepLink;
        if (bannerData == null || (deepLink = bannerData.getDeepLink()) == null) {
            return;
        }
        Uri uriG = com.transsion.baselib.helper.b.f43264a.g(Uri.parse(deepLink + "&module_name=opt_banner_free&autoPlay=true&ops=" + bannerData.getOps()));
        if (uriG != null) {
            ds.c.j(uriG);
        }
        subHorizontalViewPagerAdapter.p(bannerData, i11, DownloadManagerApi.x0(DownloadManagerApi.f58398j.a(), bannerData.getSubjectId(), null, false, false, 12, null) ? "play_subject" : "download_subject");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void m(a aVar, BannerData bannerData, SubHorizontalViewPagerAdapter subHorizontalViewPagerAdapter, Context context, int i11, View view) {
        if (aVar.f().getCom.cloud.tmc.kernel.minicover.NativeComponentConstants.KEY_COMPONENT_TYPE java.lang.String() == 2 || aVar.f().getCom.cloud.tmc.kernel.minicover.NativeComponentConstants.KEY_COMPONENT_TYPE java.lang.String() == 3) {
            if (bannerData != null) {
                CourseManager.f44085a.w(bannerData.getSubjectId(), bannerData.getSeenStatus());
                wk.a.b(subHorizontalViewPagerAdapter.i(bannerData), SubTabFragment.INSTANCE.a(subHorizontalViewPagerAdapter.f44459b), "opt_rank_list");
                return;
            }
            return;
        }
        String strA = SubTabFragment.INSTANCE.a(subHorizontalViewPagerAdapter.f44459b);
        Subject subject = new Subject(bannerData != null ? bannerData.getSubjectId() : null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, false, null, null, null, null, null, false, false, null, null, 0, false, false, 0L, null, null, 0L, null, 0, false, null, 0, null, null, null, null, null, 0, null, null, null, null, null, null, -2, 134217727, null);
        Intrinsics.e(context);
        subHorizontalViewPagerAdapter.o(bannerData, i11, rl.h.g(subject, strA, context, "opt_rank_list"));
    }

    private final void o(BannerData bannerData, int i11, String str) {
        HashMap map = new HashMap();
        map.put("event_type", "click_banner");
        map.put("sequence", String.valueOf(i11));
        map.put("module_name", str);
        map.put("tabId", String.valueOf(this.f44459b));
        if (bannerData != null) {
            il.b.c(bannerData, map);
        }
        il.b.a(this.f44460c, map);
        com.transsion.baselib.helper.a.f43262a.f(SubTabFragment.INSTANCE.a(this.f44459b), map);
    }

    private final void p(BannerData bannerData, int i11, String str) {
        HashMap map = new HashMap();
        map.put("event_type", "click_banner_poster");
        map.put("sequence", String.valueOf(i11));
        map.put("module_name", str);
        map.put("tabId", String.valueOf(this.f44459b));
        if (bannerData != null) {
            il.b.c(bannerData, map);
        }
        il.b.a(this.f44460c, map);
        com.transsion.baselib.helper.a.f43262a.f(SubTabFragment.INSTANCE.a(this.f44459b), map);
    }

    private final void q(BannerData bannerData, DownloadView downloadView) {
        Integer seenStatus;
        boolean z10 = false;
        if ((bannerData != null ? Intrinsics.c(bannerData.getHasResource(), Boolean.TRUE) : false) && HomeTabId.INSTANCE.h(Integer.valueOf(this.f44459b), true)) {
            jg.c.k(downloadView);
        } else {
            if (bannerData != null ? Intrinsics.c(bannerData.getHasResource(), Boolean.TRUE) : false) {
                jg.c.k(downloadView);
            } else {
                jg.c.g(downloadView);
            }
        }
        if (HomeTabId.INSTANCE.h(Integer.valueOf(this.f44459b), true)) {
            if (bannerData != null && (seenStatus = bannerData.getSeenStatus()) != null && seenStatus.intValue() == 1) {
                z10 = true;
            }
            if (z10) {
                downloadView.setCourseAdded();
                return;
            } else {
                downloadView.setAddCourse();
                return;
            }
        }
        if (ak.t.f652a.b()) {
            if (bannerData != null && bannerData.getSubjectType() == SubjectType.SHORT_TV.getValue()) {
                z10 = true;
            }
            if (!z10) {
                downloadView.setShowPlayType();
                return;
            }
        }
        DownloadView.setShowType$default(downloadView, bannerData != null ? bannerData.getSubjectId() : null, null, null, false, R$string.download_now, 14, null);
    }

    private final void r(a aVar, int i11) {
        if (HomeTabId.INSTANCE.h(Integer.valueOf(this.f44459b), true)) {
            if (i11 == 1) {
                aVar.f().setCourseAdded();
            } else {
                aVar.f().setAddCourse();
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return Integer.MAX_VALUE;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
    public void onBindViewHolder(final a holder, final int i11) {
        String url;
        String thumbnail;
        Image image;
        Image image2;
        String content;
        Intrinsics.h(holder, "holder");
        final Context context = holder.getImageView().getContext();
        final BannerData bannerData = (BannerData) this.f44458a.get(i11 % this.f44458a.size());
        holder.getImageView().getLayoutParams().height = this.f44462e;
        String str = "";
        if (bannerData == null || !bannerData.getBuiltIn()) {
            ej.f.a aVar = ej.f.f61882a;
            Intrinsics.e(context);
            ej.f.b bVarM = aVar.m(context);
            if (bannerData == null || (image2 = bannerData.getImage()) == null || (url = image2.getUrl()) == null) {
                url = "";
            }
            ej.f.b bVarM2 = bVarM.g(url).m(this.f44461d);
            if (bannerData == null || (image = bannerData.getImage()) == null || (thumbnail = image.getThumbnail()) == null) {
                thumbnail = "";
            }
            bVarM2.l(thumbnail).d(holder.getImageView());
        } else {
            kotlinx.coroutines.k.d(o0.a(y0.b()), null, null, new AnonymousClass1(bannerData, holder, null), 3, null);
        }
        TextView textViewG = holder.g();
        if (bannerData != null && (content = bannerData.getContent()) != null) {
            str = content;
        }
        textViewG.setText(str);
        q(bannerData, holder.f());
        holder.getImageView().setOnClickListener(new View.OnClickListener() { // from class: com.transsion.home.adapter.suboperate.adapter.l
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SubHorizontalViewPagerAdapter.l(bannerData, this, i11, view);
            }
        });
        holder.f().setOnClickListener(new View.OnClickListener() { // from class: com.transsion.home.adapter.suboperate.adapter.m
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SubHorizontalViewPagerAdapter.m(holder, bannerData, this, context, i11, view);
            }
        });
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
    public void onBindViewHolder(a holder, int i11, List payloads) {
        Intrinsics.h(holder, "holder");
        Intrinsics.h(payloads, "payloads");
        if (payloads.isEmpty()) {
            onBindViewHolder(holder, i11);
            return;
        }
        Object obj = payloads.get(payloads.size() - 1);
        if (obj instanceof Integer) {
            r(holder, ((Number) obj).intValue());
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* JADX INFO: renamed from: n, reason: merged with bridge method [inline-methods] */
    public a onCreateViewHolder(ViewGroup parent, int i11) {
        Intrinsics.h(parent, "parent");
        View viewInflate = LayoutInflater.from(parent.getContext()).inflate(R$layout.item_sub_horizontal_view_pager, parent, false);
        Intrinsics.e(viewInflate);
        return new a(viewInflate);
    }
}
