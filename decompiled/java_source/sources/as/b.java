package as;

import android.app.Application;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.widget.ImageView;
import androidx.fragment.app.FragmentActivity;
import com.blankj.utilcode.util.Utils;
import com.blankj.utilcode.util.y;
import com.bumptech.glide.Glide;
import com.bumptech.glide.Priority;
import com.bumptech.glide.RequestBuilder;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.MultiTransformation;
import com.bumptech.glide.load.engine.DiskCacheStrategy;
import com.bumptech.glide.load.engine.GlideException;
import com.bumptech.glide.load.resource.bitmap.CenterCrop;
import com.bumptech.glide.load.resource.bitmap.RoundedCorners;
import com.bumptech.glide.load.resource.drawable.DrawableTransitionOptions;
import com.bumptech.glide.request.BaseRequestOptions;
import com.bumptech.glide.request.RequestListener;
import com.bumptech.glide.request.RequestOptions;
import com.bumptech.glide.request.target.Target;
import com.bumptech.glide.request.transition.DrawableCrossFadeFactory;
import com.transsion.shorttv.R$color;
import com.transsion.shorttv.base.image.blurhash.BlurHash;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes6.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f16104a = new a(null);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static int f16105b = y.e() / 3;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static int f16106c = y.b() / 2;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static int f16107d = y.c();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final BlurHash f16108e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final DrawableTransitionOptions f16109f;

    public static final class a {

        /* JADX INFO: renamed from: as.b$a$a, reason: collision with other inner class name */
        public static final class C0138a implements RequestListener {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ long f16110a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ Function3 f16111b;

            C0138a(long j11, Function3 function3) {
                this.f16110a = j11;
                this.f16111b = function3;
            }

            @Override // com.bumptech.glide.request.RequestListener
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public boolean onResourceReady(Drawable resource, Object model, Target target, DataSource dataSource, boolean z10) {
                Intrinsics.h(resource, "resource");
                Intrinsics.h(model, "model");
                Intrinsics.h(dataSource, "dataSource");
                long jCurrentTimeMillis = System.currentTimeMillis() - this.f16110a;
                Function3 function3 = this.f16111b;
                if (function3 != null) {
                }
                return false;
            }

            @Override // com.bumptech.glide.request.RequestListener
            public boolean onLoadFailed(GlideException glideException, Object obj, Target target, boolean z10) {
                Intrinsics.h(target, "target");
                long jCurrentTimeMillis = System.currentTimeMillis() - this.f16110a;
                Function3 function3 = this.f16111b;
                if (function3 == null) {
                    return false;
                }
                Boolean bool = Boolean.FALSE;
                return false;
            }
        }

        /* JADX INFO: renamed from: as.b$a$b, reason: collision with other inner class name */
        public static final class C0139b implements RequestListener {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ long f16112a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ Function3 f16113b;

            C0139b(long j11, Function3 function3) {
                this.f16112a = j11;
                this.f16113b = function3;
            }

            @Override // com.bumptech.glide.request.RequestListener
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public boolean onResourceReady(Drawable resource, Object model, Target target, DataSource dataSource, boolean z10) {
                Intrinsics.h(resource, "resource");
                Intrinsics.h(model, "model");
                Intrinsics.h(dataSource, "dataSource");
                long jCurrentTimeMillis = System.currentTimeMillis() - this.f16112a;
                Function3 function3 = this.f16113b;
                if (function3 != null) {
                }
                return false;
            }

            @Override // com.bumptech.glide.request.RequestListener
            public boolean onLoadFailed(GlideException glideException, Object obj, Target target, boolean z10) {
                Intrinsics.h(target, "target");
                long jCurrentTimeMillis = System.currentTimeMillis() - this.f16112a;
                Function3 function3 = this.f16113b;
                if (function3 == null) {
                    return false;
                }
                Boolean bool = Boolean.FALSE;
                return false;
            }
        }

        public static final class c implements RequestListener {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ long f16114a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ Function3 f16115b;

            c(long j11, Function3 function3) {
                this.f16114a = j11;
                this.f16115b = function3;
            }

            @Override // com.bumptech.glide.request.RequestListener
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public boolean onResourceReady(Drawable resource, Object model, Target target, DataSource dataSource, boolean z10) {
                Intrinsics.h(resource, "resource");
                Intrinsics.h(model, "model");
                Intrinsics.h(dataSource, "dataSource");
                long jCurrentTimeMillis = System.currentTimeMillis() - this.f16114a;
                Function3 function3 = this.f16115b;
                if (function3 != null) {
                }
                return false;
            }

            @Override // com.bumptech.glide.request.RequestListener
            public boolean onLoadFailed(GlideException glideException, Object obj, Target target, boolean z10) {
                Intrinsics.h(target, "target");
                long jCurrentTimeMillis = System.currentTimeMillis() - this.f16114a;
                Function3 function3 = this.f16115b;
                if (function3 == null) {
                    return false;
                }
                Boolean bool = Boolean.FALSE;
                return false;
            }
        }

        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX WARN: Code duplicated, block: B:41:0x012b A[DONT_INVERT] */
        /* JADX WARN: Code duplicated, block: B:42:0x012d  */
        /* JADX WARN: Code duplicated, block: B:43:0x013c  */
        /* JADX WARN: Code duplicated, block: B:46:0x0166  */
        /* JADX WARN: Code duplicated, block: B:47:0x0169  */
        /* JADX WARN: Code duplicated, block: B:49:0x016c  */
        private final void f(Context context, final ImageView imageView, String str, int i11, int i12, int i13, int i14, boolean z10, String str2, boolean z11, boolean z12, boolean z13, boolean z14, boolean z15, int i15, Priority priority, Function3 function3) {
            String str3;
            String strA;
            String str4;
            String strD;
            long jCurrentTimeMillis;
            RequestBuilder<Drawable> requestBuilderLoad2;
            int i16;
            if ((context instanceof FragmentActivity) && ((FragmentActivity) context).isDestroyed()) {
                return;
            }
            as.c cVar = as.c.f16116a;
            int iC = cVar.c(str);
            if (1 > iC || iC >= i13 + 1) {
                if (str2.length() != 0 || i13 <= 96 || iC > i13) {
                    str3 = str2;
                } else {
                    strA = cVar.a(str, 32, (56 & 4) != 0 ? true : z10, (56 & 8) != 0, (56 & 16) != 0 ? 0 : 0, (56 & 32) != 0 ? false : false, (56 & 64) != 0 ? false : z15, (56 & 128) != 0 ? 25 : i15);
                }
                str4 = str3;
                strD = cVar.d(str, i13, (64 & 4) != 0 ? true : z10, (64 & 8) != 0 ? true : z11, (64 & 16) != 0 ? 0 : i14, (64 & 32) != 0 ? false : z14, (64 & 64) != 0 ? false : false, (64 & 128) != 0 ? false : z15, (64 & 256) != 0 ? 25 : i15);
                jCurrentTimeMillis = System.currentTimeMillis();
                if (!StringsKt.W(str4, "http", false, 2, null) || StringsKt.W(str4, "data:image", false, 2, null)) {
                    if (z12) {
                        requestBuilderLoad2 = (RequestBuilder) Glide.with(context).load2(str4).optionalCenterCrop();
                    } else {
                        requestBuilderLoad2 = Glide.with(context).load2(str4);
                    }
                    Intrinsics.e(requestBuilderLoad2);
                    RequestBuilder<Drawable> requestBuilderTransition = Glide.with(context).load2(strD).thumbnail(requestBuilderLoad2).listener(new C0138a(jCurrentTimeMillis, function3)).transition(b.f16109f);
                    if (z13) {
                        i16 = i14;
                    } else {
                        i16 = -1;
                    }
                    requestBuilderTransition.apply((BaseRequestOptions<?>) o(i11, i12, i16, z13 ? i13 : -1, priority)).into(imageView);
                } else if (str4.length() >= 6) {
                    RequestBuilder<Drawable> requestBuilderLoad3 = Glide.with(context).load2(strD);
                    Intrinsics.g(requestBuilderLoad3, "load(...)");
                    com.transsion.shorttv.base.image.blurhash.c.b(requestBuilderLoad3, str4, 20, 20, b.f16108e, new Function1() { // from class: as.a
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj) {
                            return b.a.h(imageView, (RequestBuilder) obj);
                        }
                    });
                    requestBuilderLoad3.transition(b.f16109f).listener(new C0139b(jCurrentTimeMillis, function3)).apply((BaseRequestOptions<?>) o(0, i12, z13 ? i14 : -1, z13 ? i13 : -1, priority)).into(imageView);
                } else {
                    Glide.with(context).load2(strD).transition(b.f16109f).listener(new c(jCurrentTimeMillis, function3)).apply((BaseRequestOptions<?>) o(i11, i12, z13 ? i14 : -1, z13 ? i13 : -1, priority)).into(imageView);
                }
                lg.a.C0828a.f(lg.a.f68839a, "ImageHelper", "load " + i13 + " use " + strD + " with small " + str4, false, 4, null);
            }
            strA = cVar.a(str, iC, (56 & 4) != 0 ? true : z10, (56 & 8) != 0, (56 & 16) != 0 ? 0 : 0, (56 & 32) != 0 ? false : false, (56 & 64) != 0 ? false : z15, (56 & 128) != 0 ? 25 : i15);
            str3 = strA;
            str4 = str3;
            strD = cVar.d(str, i13, (64 & 4) != 0 ? true : z10, (64 & 8) != 0 ? true : z11, (64 & 16) != 0 ? 0 : i14, (64 & 32) != 0 ? false : z14, (64 & 64) != 0 ? false : false, (64 & 128) != 0 ? false : z15, (64 & 256) != 0 ? 25 : i15);
            jCurrentTimeMillis = System.currentTimeMillis();
            if (StringsKt.W(str4, "http", false, 2, null)) {
                if (z12) {
                    requestBuilderLoad2 = (RequestBuilder) Glide.with(context).load2(str4).optionalCenterCrop();
                } else {
                    requestBuilderLoad2 = Glide.with(context).load2(str4);
                }
                Intrinsics.e(requestBuilderLoad2);
                RequestBuilder<Drawable> requestBuilderTransition2 = Glide.with(context).load2(strD).thumbnail(requestBuilderLoad2).listener(new C0138a(jCurrentTimeMillis, function3)).transition(b.f16109f);
                if (z13) {
                    i16 = i14;
                } else {
                    i16 = -1;
                }
                requestBuilderTransition2.apply((BaseRequestOptions<?>) o(i11, i12, i16, z13 ? i13 : -1, priority)).into(imageView);
            } else {
                if (z12) {
                    requestBuilderLoad2 = (RequestBuilder) Glide.with(context).load2(str4).optionalCenterCrop();
                } else {
                    requestBuilderLoad2 = Glide.with(context).load2(str4);
                }
                Intrinsics.e(requestBuilderLoad2);
                RequestBuilder<Drawable> requestBuilderTransition3 = Glide.with(context).load2(strD).thumbnail(requestBuilderLoad2).listener(new C0138a(jCurrentTimeMillis, function3)).transition(b.f16109f);
                if (z13) {
                    i16 = i14;
                } else {
                    i16 = -1;
                }
                requestBuilderTransition3.apply((BaseRequestOptions<?>) o(i11, i12, i16, z13 ? i13 : -1, priority)).into(imageView);
            }
            lg.a.C0828a.f(lg.a.f68839a, "ImageHelper", "load " + i13 + " use " + strD + " with small " + str4, false, 4, null);
        }

        static /* synthetic */ void g(a aVar, Context context, ImageView imageView, String str, int i11, int i12, int i13, int i14, boolean z10, String str2, boolean z11, boolean z12, boolean z13, boolean z14, boolean z15, int i15, Priority priority, Function3 function3, int i16, Object obj) {
            aVar.f(context, imageView, str, (i16 & 8) != 0 ? R$color.image_skeleton : i11, (i16 & 16) != 0 ? 0 : i12, (i16 & 32) != 0 ? -1 : i13, (i16 & 64) != 0 ? -1 : i14, (i16 & 128) != 0 ? true : z10, (i16 & 256) != 0 ? "" : str2, (i16 & 512) != 0 ? true : z11, (i16 & 1024) != 0 ? true : z12, (i16 & 2048) != 0 ? false : z13, (i16 & 4096) != 0 ? false : z14, (i16 & 8192) != 0 ? false : z15, (i16 & 16384) != 0 ? 25 : i15, (32768 & i16) != 0 ? Priority.NORMAL : priority, (i16 & 65536) != 0 ? null : function3);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Unit h(ImageView imageView, RequestBuilder it) {
            Intrinsics.h(it, "it");
            try {
                Intrinsics.e(it.into(imageView));
            } catch (Throwable th2) {
                th2.printStackTrace();
            }
            return Unit.f67061a;
        }

        private final RequestOptions o(int i11, int i12, int i13, int i14, Priority priority) {
            RequestOptions requestOptionsDiskCacheStrategy = new RequestOptions().priority(priority).diskCacheStrategy(DiskCacheStrategy.DATA);
            Intrinsics.g(requestOptionsDiskCacheStrategy, "diskCacheStrategy(...)");
            RequestOptions requestOptionsCircleCropTransform = requestOptionsDiskCacheStrategy;
            if (i11 != 0) {
                RequestOptions requestOptionsPlaceholder = requestOptionsCircleCropTransform.placeholder(i11);
                Intrinsics.g(requestOptionsPlaceholder, "placeholder(...)");
                requestOptionsCircleCropTransform = requestOptionsPlaceholder;
            }
            if (i12 > 0) {
                RequestOptions requestOptionsTransform = requestOptionsCircleCropTransform.transform(new MultiTransformation(new CenterCrop(), new RoundedCorners(i12)));
                Intrinsics.g(requestOptionsTransform, "transform(...)");
                requestOptionsCircleCropTransform = requestOptionsTransform;
            } else if (i12 < 0) {
                requestOptionsCircleCropTransform = RequestOptions.circleCropTransform();
                Intrinsics.g(requestOptionsCircleCropTransform, "circleCropTransform(...)");
            }
            if (i13 == -1 && i14 == -1) {
                return requestOptionsCircleCropTransform;
            }
            RequestOptions requestOptionsOverride = requestOptionsCircleCropTransform.override(i14, i13);
            Intrinsics.g(requestOptionsOverride, "override(...)");
            return requestOptionsOverride;
        }

        static /* synthetic */ RequestOptions p(a aVar, int i11, int i12, int i13, int i14, Priority priority, int i15, Object obj) {
            if ((i15 & 16) != 0) {
                priority = Priority.NORMAL;
            }
            return aVar.o(i11, i12, i13, i14, priority);
        }

        public final int b() {
            return b.f16107d;
        }

        public final int c() {
            return b.f16106c;
        }

        public final String d(String url, int i11, int i12, boolean z10, boolean z11, boolean z12, int i13) {
            Intrinsics.h(url, "url");
            return as.c.f16116a.d(url, i11, (64 & 4) != 0 ? true : z10, (64 & 8) != 0, (64 & 16) != 0 ? 0 : 0, (64 & 32) != 0 ? false : false, (64 & 64) != 0 ? false : z11, (64 & 128) != 0 ? false : z12, (64 & 256) != 0 ? 25 : i13);
        }

        public final void i(Context context, ImageView imageView, String url, int i11, int i12, int i13, int i14, boolean z10, String thumbnail, boolean z11, boolean z12, boolean z13, boolean z14, boolean z15, int i15) {
            Intrinsics.h(context, "context");
            Intrinsics.h(imageView, "imageView");
            Intrinsics.h(url, "url");
            Intrinsics.h(thumbnail, "thumbnail");
            if ((context instanceof FragmentActivity) && ((FragmentActivity) context).isDestroyed()) {
                return;
            }
            if (url.length() == 0) {
                Glide.with(context).load2("").transition(b.f16109f).apply((BaseRequestOptions<?>) p(this, i11, i14, z13 ? i13 : -1, z13 ? i12 : -1, null, 16, null)).into(imageView);
                return;
            }
            try {
                g(this, context, imageView, url, i11, i14, (i12 != c() || imageView.getLayoutParams().width <= 0) ? i12 : imageView.getLayoutParams().width, i13, z10, thumbnail, z11, z12, z13, z14, z15, i15, null, null, 98304, null);
            } catch (Exception e11) {
                e11.printStackTrace();
            }
        }

        public final void j(Context context, ImageView imageView, String url, int i11, int i12, boolean z10, String thumbnail, boolean z11, boolean z12, boolean z13, boolean z14, boolean z15, int i13) {
            Intrinsics.h(context, "context");
            Intrinsics.h(imageView, "imageView");
            Intrinsics.h(url, "url");
            Intrinsics.h(thumbnail, "thumbnail");
            i(context, imageView, url, R$color.image_skeleton, i11, i12, 0, z10, thumbnail, z11, z12, z13, z14, z15, i13);
        }

        public final void k(Context context, ImageView imageView, String url, int i11, int i12, boolean z10, boolean z11, boolean z12, boolean z13, boolean z14, boolean z15, int i13) {
            Intrinsics.h(context, "context");
            Intrinsics.h(imageView, "imageView");
            Intrinsics.h(url, "url");
            i(context, imageView, url, R$color.image_skeleton, i11, i12, 0, z10, "", z11, z12, z13, z14, z15, i13);
        }
    }

    static {
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        f16108e = new BlurHash(applicationA, 5, 0.6f);
        DrawableTransitionOptions drawableTransitionOptionsWith = DrawableTransitionOptions.with(new DrawableCrossFadeFactory.Builder(100).setCrossFadeEnabled(true).build());
        Intrinsics.g(drawableTransitionOptionsWith, "with(...)");
        f16109f = drawableTransitionOptionsWith;
    }
}
