package com.transsion.ninegridview.preview;

import android.content.Context;
import android.content.res.AssetManager;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.FrameLayout;
import com.blankj.utilcode.util.y;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.transsion.baseui.fragment.BaseFragment;
import com.transsion.moviedetailapi.bean.GifBean;
import com.transsion.moviedetailapi.bean.Image;
import com.transsion.ninegridview.R$drawable;
import com.transsion.photoview.PhotoView;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.a2;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0005\u0018\u0000 \u001f2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0014B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u0019\u0010\b\u001a\u00020\u00072\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0016¢\u0006\u0004\b\b\u0010\tJ\u0017\u0010\f\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\nH\u0016¢\u0006\u0004\b\f\u0010\rJ!\u0010\u0010\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\u000e2\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u0012\u0010\u0004R\u0018\u0010\u0016\u001a\u0004\u0018\u00010\u00138\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015R\u0016\u0010\u001a\u001a\u00020\u00178\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019R\u0018\u0010\u001e\u001a\u0004\u0018\u00010\u001b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001c\u0010\u001d¨\u0006 "}, d2 = {"Lcom/transsion/ninegridview/preview/GifImagePreviewFragment;", "Lcom/transsion/baseui/fragment/BaseFragment;", "Lon/c;", "<init>", "()V", "Landroid/os/Bundle;", "savedInstanceState", "", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/view/LayoutInflater;", "inflater", "d0", "(Landroid/view/LayoutInflater;)Lon/c;", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "initView", "(Landroid/view/View;Landroid/os/Bundle;)V", "lazyLoadData", "Lcom/transsion/moviedetailapi/bean/Image;", "a", "Lcom/transsion/moviedetailapi/bean/Image;", "image", "", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "I", "index", "", "c", "Ljava/lang/Boolean;", "isBuiltIn", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "NineGridView_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class GifImagePreviewFragment extends BaseFragment<on.c> {

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private Image image;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private int index;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private Boolean isBuiltIn = Boolean.FALSE;

    /* JADX INFO: renamed from: com.transsion.ninegridview.preview.GifImagePreviewFragment$a, reason: from kotlin metadata */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final GifImagePreviewFragment a(Boolean bool, Image image, int i11) {
            GifImagePreviewFragment gifImagePreviewFragment = new GifImagePreviewFragment();
            Bundle bundle = new Bundle();
            bundle.putSerializable(GifImagePreviewActivity.IMAGE_LIST, image);
            bundle.putInt("CURRENT_ITEM", i11);
            if (bool != null) {
                bundle.putBoolean(GifImagePreviewActivity.IS_BUILTIN, bool.booleanValue());
            }
            gifImagePreviewFragment.setArguments(bundle);
            return gifImagePreviewFragment;
        }
    }

    public static final class b implements com.transsion.photoview.i {
        b() {
        }

        @Override // com.transsion.photoview.i
        public void a() {
            if (GifImagePreviewFragment.this.getContext() instanceof GifImagePreviewActivity) {
                Context context = GifImagePreviewFragment.this.getContext();
                Intrinsics.f(context, "null cannot be cast to non-null type com.transsion.ninegridview.preview.GifImagePreviewActivity");
                ((GifImagePreviewActivity) context).finish();
            }
        }
    }

    /* JADX INFO: renamed from: com.transsion.ninegridview.preview.GifImagePreviewFragment$initView$5, reason: invalid class name */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.ninegridview.preview.GifImagePreviewFragment$initView$5", f = "GifImagePreviewFragment.kt", l = {139}, m = "invokeSuspend")
    static final class AnonymousClass5 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
        final /* synthetic */ PhotoView $pv;
        private /* synthetic */ Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass5(PhotoView photoView, Continuation<? super AnonymousClass5> continuation) {
            super(2, continuation);
            this.$pv = photoView;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass5 anonymousClass5 = GifImagePreviewFragment.this.new AnonymousClass5(this.$pv, continuation);
            anonymousClass5.L$0 = obj;
            return anonymousClass5;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
            return ((AnonymousClass5) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            String url;
            AssetManager assets;
            Object objF = IntrinsicsKt.f();
            int i11 = this.label;
            try {
                if (i11 == 0) {
                    ResultKt.b(obj);
                    Image image = GifImagePreviewFragment.this.image;
                    if (image != null && (url = image.getUrl()) != null) {
                        PhotoView photoView = this.$pv;
                        Result.Companion companion = Result.INSTANCE;
                        Context context = photoView.getContext();
                        Bitmap bitmapDecodeStream = BitmapFactory.decodeStream((context == null || (assets = context.getAssets()) == null) ? null : assets.open(url));
                        a2 a2VarC = y0.c();
                        GifImagePreviewFragment$initView$5$1$1$1 gifImagePreviewFragment$initView$5$1$1$1 = new GifImagePreviewFragment$initView$5$1$1$1(photoView, bitmapDecodeStream, null);
                        this.label = 1;
                        if (kotlinx.coroutines.i.g(a2VarC, gifImagePreviewFragment$initView$5$1$1$1, this) == objF) {
                            return objF;
                        }
                    }
                    return Unit.f67061a;
                }
                if (i11 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
                Result.m454constructorimpl(Unit.f67061a);
            } catch (Throwable th2) {
                Result.Companion companion2 = Result.INSTANCE;
                Result.m454constructorimpl(ResultKt.a(th2));
            }
            return Unit.f67061a;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void e0(GifImagePreviewFragment gifImagePreviewFragment, View view) {
        if (gifImagePreviewFragment.getContext() instanceof GifImagePreviewActivity) {
            Context context = gifImagePreviewFragment.getContext();
            Intrinsics.f(context, "null cannot be cast to non-null type com.transsion.ninegridview.preview.GifImagePreviewActivity");
            ((GifImagePreviewActivity) context).finish();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void f0(GifImagePreviewFragment gifImagePreviewFragment, View view) {
        if (gifImagePreviewFragment.getContext() instanceof GifImagePreviewActivity) {
            Context context = gifImagePreviewFragment.getContext();
            Intrinsics.f(context, "null cannot be cast to non-null type com.transsion.ninegridview.preview.GifImagePreviewActivity");
            ((GifImagePreviewActivity) context).finishActivityAnim();
        }
    }

    @Override // com.transsion.baseui.fragment.BaseFragment
    /* JADX INFO: renamed from: d0, reason: merged with bridge method [inline-methods] */
    public on.c getViewBinding(LayoutInflater inflater) {
        Intrinsics.h(inflater, "inflater");
        on.c cVarC = on.c.c(inflater);
        Intrinsics.g(cVarC, "inflate(...)");
        return cVarC;
    }

    /* JADX WARN: Code duplicated, block: B:49:0x00a6  */
    @Override // com.transsion.baseui.fragment.BaseFragment
    public void initView(View view, Bundle savedInstanceState) {
        PhotoView photoView;
        String url;
        GifBean gifBean;
        String videoUrl;
        GifBean gifBean2;
        PhotoView photoView2;
        PhotoView photoView3;
        Integer height;
        Integer width;
        FrameLayout frameLayout;
        Intrinsics.h(view, "view");
        on.c mViewBinding = getMViewBinding();
        if (mViewBinding != null && (frameLayout = mViewBinding.f71058b) != null) {
            frameLayout.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.ninegridview.preview.d
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    GifImagePreviewFragment.e0(this.f47716a, view2);
                }
            });
        }
        Image image = this.image;
        float fE = (image == null || (width = image.getWidth()) == null) ? y.e() : width.intValue();
        Image image2 = this.image;
        float fC = (image2 == null || (height = image2.getHeight()) == null) ? y.c() : height.intValue();
        float fE2 = y.e();
        float f11 = (fC / fE) * fE2;
        on.c mViewBinding2 = getMViewBinding();
        if (mViewBinding2 != null && (photoView3 = mViewBinding2.f71061e) != null) {
            photoView3.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.ninegridview.preview.e
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    GifImagePreviewFragment.f0(this.f47717a, view2);
                }
            });
        }
        on.c mViewBinding3 = getMViewBinding();
        if (mViewBinding3 != null && (photoView2 = mViewBinding3.f71061e) != null) {
            photoView2.setSlideUpAndDownListener(new b());
        }
        on.c mViewBinding4 = getMViewBinding();
        if (mViewBinding4 == null || (photoView = mViewBinding4.f71061e) == null) {
            return;
        }
        Image image3 = this.image;
        if (image3 == null || (gifBean = image3.getGifBean()) == null || (videoUrl = gifBean.getVideoUrl()) == null || videoUrl.length() <= 0) {
            Image image4 = this.image;
            if (image4 != null) {
                url = image4.getUrl();
            } else {
                url = null;
            }
        } else {
            Image image5 = this.image;
            if (image5 == null || (gifBean2 = image5.getGifBean()) == null) {
                url = null;
            } else {
                url = gifBean2.getFirstFrameUrl();
            }
        }
        if (Intrinsics.c(this.isBuiltIn, Boolean.TRUE)) {
            Image image6 = this.image;
            if (image6 != null) {
                image6.getUrl();
            }
            kotlinx.coroutines.k.d(o0.a(y0.b()), null, null, new AnonymousClass5(photoView, null), 3, null);
            return;
        }
        Image image7 = this.image;
        if (image7 != null) {
            image7.getUrl();
        }
        ej.f.a aVar = ej.f.f61882a;
        Context contextRequireContext = requireContext();
        Intrinsics.g(contextRequireContext, "requireContext(...)");
        ej.f.b bVarM = aVar.m(contextRequireContext);
        if (url == null) {
            url = "";
        }
        bVarM.g(url).i(R$drawable.ic_default_color).m((int) fE2).c((int) f11).j(0).f(true).e(true).k(false).h(false).d(photoView);
    }

    @Override // com.transsion.baseui.fragment.BaseFragment
    public void lazyLoadData() {
    }

    @Override // com.transsion.baseui.fragment.BaseFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        Bundle arguments = getArguments();
        if (arguments != null) {
            Serializable serializable = arguments.getSerializable(GifImagePreviewActivity.IMAGE_LIST);
            this.image = serializable instanceof Image ? (Image) serializable : null;
            this.index = arguments.getInt("CURRENT_ITEM");
            this.isBuiltIn = Boolean.valueOf(arguments.getBoolean(GifImagePreviewActivity.IS_BUILTIN, false));
        }
    }
}
