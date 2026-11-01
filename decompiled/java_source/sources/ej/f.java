package ej;

import android.app.Application;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
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
import com.transsion.base.image.R$color;
import com.transsion.base.image.blurhash.BlurHash;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes6.dex */
public final class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f61882a = new a(null);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static int f61883b = y.e() / 3;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static int f61884c = y.b() / 2;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static int f61885d = y.c();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final BlurHash f61886e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final DrawableTransitionOptions f61887f;

    public static final class a {

        /* JADX INFO: renamed from: ej.f$a$a, reason: collision with other inner class name */
        public static final class C0744a implements RequestListener {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ long f61888a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ Function3 f61889b;

            C0744a(long j11, Function3 function3) {
                this.f61888a = j11;
                this.f61889b = function3;
            }

            @Override // com.bumptech.glide.request.RequestListener
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public boolean onResourceReady(Drawable resource, Object model, Target target, DataSource dataSource, boolean z10) {
                Intrinsics.h(resource, "resource");
                Intrinsics.h(model, "model");
                Intrinsics.h(dataSource, "dataSource");
                long jCurrentTimeMillis = System.currentTimeMillis() - this.f61888a;
                Function3 function3 = this.f61889b;
                if (function3 != null) {
                }
                return false;
            }

            @Override // com.bumptech.glide.request.RequestListener
            public boolean onLoadFailed(GlideException glideException, Object obj, Target target, boolean z10) {
                Intrinsics.h(target, "target");
                long jCurrentTimeMillis = System.currentTimeMillis() - this.f61888a;
                Function3 function3 = this.f61889b;
                if (function3 == null) {
                    return false;
                }
                Boolean bool = Boolean.FALSE;
                return false;
            }
        }

        public static final class b implements RequestListener {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ long f61890a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ Function3 f61891b;

            b(long j11, Function3 function3) {
                this.f61890a = j11;
                this.f61891b = function3;
            }

            @Override // com.bumptech.glide.request.RequestListener
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public boolean onResourceReady(Drawable resource, Object model, Target target, DataSource dataSource, boolean z10) {
                Intrinsics.h(resource, "resource");
                Intrinsics.h(model, "model");
                Intrinsics.h(dataSource, "dataSource");
                long jCurrentTimeMillis = System.currentTimeMillis() - this.f61890a;
                Function3 function3 = this.f61891b;
                if (function3 != null) {
                }
                return false;
            }

            @Override // com.bumptech.glide.request.RequestListener
            public boolean onLoadFailed(GlideException glideException, Object obj, Target target, boolean z10) {
                Intrinsics.h(target, "target");
                long jCurrentTimeMillis = System.currentTimeMillis() - this.f61890a;
                Function3 function3 = this.f61891b;
                if (function3 == null) {
                    return false;
                }
                Boolean bool = Boolean.FALSE;
                return false;
            }
        }

        public static final class c implements RequestListener {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ long f61892a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ Function3 f61893b;

            c(long j11, Function3 function3) {
                this.f61892a = j11;
                this.f61893b = function3;
            }

            @Override // com.bumptech.glide.request.RequestListener
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public boolean onResourceReady(Drawable resource, Object model, Target target, DataSource dataSource, boolean z10) {
                Intrinsics.h(resource, "resource");
                Intrinsics.h(model, "model");
                Intrinsics.h(dataSource, "dataSource");
                long jCurrentTimeMillis = System.currentTimeMillis() - this.f61892a;
                Function3 function3 = this.f61893b;
                if (function3 != null) {
                }
                return false;
            }

            @Override // com.bumptech.glide.request.RequestListener
            public boolean onLoadFailed(GlideException glideException, Object obj, Target target, boolean z10) {
                Intrinsics.h(target, "target");
                long jCurrentTimeMillis = System.currentTimeMillis() - this.f61892a;
                Function3 function3 = this.f61893b;
                if (function3 == null) {
                    return false;
                }
                Boolean bool = Boolean.FALSE;
                return false;
            }
        }

        public static final class d implements RequestListener {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ Function1 f61894a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ String f61895b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            final /* synthetic */ int f61896c;

            d(Function1 function1, String str, int i11) {
                this.f61894a = function1;
                this.f61895b = str;
                this.f61896c = i11;
            }

            @Override // com.bumptech.glide.request.RequestListener
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public boolean onResourceReady(Drawable resource, Object model, Target target, DataSource dataSource, boolean z10) {
                Intrinsics.h(resource, "resource");
                Intrinsics.h(model, "model");
                Intrinsics.h(dataSource, "dataSource");
                g.f61914a.h(this.f61895b, this.f61896c);
                Function1 function1 = this.f61894a;
                if (function1 == null) {
                    return true;
                }
                function1.invoke(Boolean.TRUE);
                return true;
            }

            @Override // com.bumptech.glide.request.RequestListener
            public boolean onLoadFailed(GlideException glideException, Object obj, Target target, boolean z10) {
                Intrinsics.h(target, "target");
                Function1 function1 = this.f61894a;
                if (function1 == null) {
                    return true;
                }
                function1.invoke(Boolean.FALSE);
                return true;
            }
        }

        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static /* synthetic */ String e(a aVar, String str, int i11, boolean z10, boolean z11, int i12, Object obj) {
            if ((i12 & 2) != 0) {
                i11 = 0;
            }
            if ((i12 & 4) != 0) {
                z10 = true;
            }
            if ((i12 & 8) != 0) {
                z11 = false;
            }
            return aVar.d(str, i11, z10, z11);
        }

        /* JADX WARN: Code duplicated, block: B:41:0x0123 A[DONT_INVERT] */
        /* JADX WARN: Code duplicated, block: B:42:0x0125  */
        /* JADX WARN: Code duplicated, block: B:43:0x0134  */
        /* JADX WARN: Code duplicated, block: B:46:0x015e  */
        /* JADX WARN: Code duplicated, block: B:47:0x0161  */
        /* JADX WARN: Code duplicated, block: B:49:0x0164  */
        private final void f(Context context, final ImageView imageView, String str, int i11, int i12, int i13, int i14, boolean z10, String str2, boolean z11, boolean z12, boolean z13, boolean z14, Priority priority, int i15, Function3 function3) {
            String str3;
            String strA;
            String strD;
            long jCurrentTimeMillis;
            RequestBuilder<Drawable> requestBuilderLoad;
            int i16;
            if ((context instanceof FragmentActivity) && ((FragmentActivity) context).isDestroyed()) {
                return;
            }
            g gVar = g.f61914a;
            int iC = gVar.c(str);
            if (1 > iC || iC >= i13 + 1) {
                if (str2.length() != 0 || i13 <= 96 || iC > i13) {
                    str3 = str2;
                } else {
                    strA = gVar.a(str, 32, (120 & 4) != 0 ? true : z10, (120 & 8) != 0, (120 & 16) != 0 ? 0 : 0, (120 & 32) != 0 ? false : false, (120 & 64) != 0 ? 0 : 0);
                }
                strD = gVar.d(str, i13, z10, z11, i14, z14, false, i15);
                jCurrentTimeMillis = System.currentTimeMillis();
                if (!StringsKt.W(str3, "http", false, 2, null) || StringsKt.W(str3, "data:image", false, 2, null)) {
                    if (z12) {
                        requestBuilderLoad = (RequestBuilder) Glide.with(context).load(str3).optionalCenterCrop();
                    } else {
                        requestBuilderLoad = Glide.with(context).load(str3);
                    }
                    Intrinsics.e(requestBuilderLoad);
                    RequestBuilder<Drawable> requestBuilderTransition = Glide.with(context).load(strD).thumbnail(requestBuilderLoad).listener(new C0744a(jCurrentTimeMillis, function3)).transition(f.f61887f);
                    if (z13) {
                        i16 = i14;
                    } else {
                        i16 = -1;
                    }
                    requestBuilderTransition.apply((BaseRequestOptions<?>) k(i11, i12, i16, z13 ? i13 : -1, priority)).into(imageView);
                } else if (str3.length() >= 6) {
                    RequestBuilder<Drawable> requestBuilderLoad2 = Glide.with(context).load(strD);
                    Intrinsics.g(requestBuilderLoad2, "load(...)");
                    com.transsion.base.image.blurhash.c.b(requestBuilderLoad2, str3, 20, 20, f.f61886e, new Function1() { // from class: ej.e
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj) {
                            return f.a.g(imageView, (RequestBuilder) obj);
                        }
                    });
                    requestBuilderLoad2.transition(f.f61887f).listener(new b(jCurrentTimeMillis, function3)).apply((BaseRequestOptions<?>) k(0, i12, z13 ? i14 : -1, z13 ? i13 : -1, priority)).into(imageView);
                } else {
                    Glide.with(context).load(strD).transition(f.f61887f).listener(new c(jCurrentTimeMillis, function3)).apply((BaseRequestOptions<?>) k(i11, i12, z13 ? i14 : -1, z13 ? i13 : -1, priority)).into(imageView);
                }
                lg.a.C0828a.f(lg.a.f68839a, "ImageHelper", "load " + i13 + " use " + strD + " with small " + str3, false, 4, null);
            }
            strA = gVar.a(str, iC, (120 & 4) != 0 ? true : z10, (120 & 8) != 0, (120 & 16) != 0 ? 0 : 0, (120 & 32) != 0 ? false : false, (120 & 64) != 0 ? 0 : 0);
            str3 = strA;
            strD = gVar.d(str, i13, z10, z11, i14, z14, false, i15);
            jCurrentTimeMillis = System.currentTimeMillis();
            if (StringsKt.W(str3, "http", false, 2, null)) {
                if (z12) {
                    requestBuilderLoad = (RequestBuilder) Glide.with(context).load(str3).optionalCenterCrop();
                } else {
                    requestBuilderLoad = Glide.with(context).load(str3);
                }
                Intrinsics.e(requestBuilderLoad);
                RequestBuilder<Drawable> requestBuilderTransition2 = Glide.with(context).load(strD).thumbnail(requestBuilderLoad).listener(new C0744a(jCurrentTimeMillis, function3)).transition(f.f61887f);
                if (z13) {
                    i16 = i14;
                } else {
                    i16 = -1;
                }
                requestBuilderTransition2.apply((BaseRequestOptions<?>) k(i11, i12, i16, z13 ? i13 : -1, priority)).into(imageView);
            } else {
                if (z12) {
                    requestBuilderLoad = (RequestBuilder) Glide.with(context).load(str3).optionalCenterCrop();
                } else {
                    requestBuilderLoad = Glide.with(context).load(str3);
                }
                Intrinsics.e(requestBuilderLoad);
                RequestBuilder<Drawable> requestBuilderTransition3 = Glide.with(context).load(strD).thumbnail(requestBuilderLoad).listener(new C0744a(jCurrentTimeMillis, function3)).transition(f.f61887f);
                if (z13) {
                    i16 = i14;
                } else {
                    i16 = -1;
                }
                requestBuilderTransition3.apply((BaseRequestOptions<?>) k(i11, i12, i16, z13 ? i13 : -1, priority)).into(imageView);
            }
            lg.a.C0828a.f(lg.a.f68839a, "ImageHelper", "load " + i13 + " use " + strD + " with small " + str3, false, 4, null);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Unit g(ImageView imageView, RequestBuilder it) {
            Intrinsics.h(it, "it");
            it.into(imageView);
            return Unit.f67061a;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void h(Context context, ImageView imageView, String str, int i11, int i12, int i13, int i14, boolean z10, String str2, boolean z11, boolean z12, boolean z13, boolean z14, Priority priority, int i15, Function3 function3) {
            if ((context instanceof FragmentActivity) && ((FragmentActivity) context).isDestroyed()) {
                return;
            }
            if (TextUtils.isEmpty(str)) {
                Glide.with(context).load("").transition(f.f61887f).apply((BaseRequestOptions<?>) l(this, i11, i14, z13 ? i13 : -1, z13 ? i12 : -1, null, 16, null)).into(imageView);
                return;
            }
            try {
                f(context, imageView, str, i11, i14, (i12 != f.f61884c || imageView.getLayoutParams().width <= 0) ? i12 : imageView.getLayoutParams().width, i13, z10, str2, z11, z12, z13, z14, priority, i15, function3);
            } catch (Exception e11) {
                e11.printStackTrace();
            }
        }

        public static /* synthetic */ void j(a aVar, String str, String str2, int i11, Function1 function1, int i12, Object obj) {
            if ((i12 & 8) != 0) {
                function1 = null;
            }
            aVar.i(str, str2, i11, function1);
        }

        private final RequestOptions k(int i11, int i12, int i13, int i14, Priority priority) {
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

        static /* synthetic */ RequestOptions l(a aVar, int i11, int i12, int i13, int i14, Priority priority, int i15, Object obj) {
            if ((i15 & 16) != 0) {
                priority = Priority.NORMAL;
            }
            return aVar.k(i11, i12, i13, i14, priority);
        }

        public final int c() {
            return f.f61883b;
        }

        public final String d(String url, int i11, boolean z10, boolean z11) {
            Intrinsics.h(url, "url");
            return g.f61914a.d(url, i11, (184 & 4) != 0 ? true : z10, (184 & 8) != 0, (184 & 16) != 0 ? 0 : 0, (184 & 32) != 0 ? false : false, (184 & 64) != 0 ? false : z11, (184 & 128) != 0 ? 0 : 0);
        }

        public final void i(String url, String originUrl, int i11, Function1 function1) {
            Intrinsics.h(url, "url");
            Intrinsics.h(originUrl, "originUrl");
            Glide.with(Utils.a()).load(url).diskCacheStrategy(DiskCacheStrategy.DATA).addListener(new d(function1, originUrl, i11)).preload();
        }

        public final b m(Context context) {
            Intrinsics.h(context, "context");
            return new b(context);
        }
    }

    public static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Context f61897a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final int f61898b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final int f61899c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f61900d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private int f61901e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private String f61902f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private String f61903g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private int f61904h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private int f61905i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private boolean f61906j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private boolean f61907k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private boolean f61908l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        private boolean f61909m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        private boolean f61910n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private Priority f61911o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        private Function3 f61912p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        private int f61913q;

        public b(Context context) {
            Intrinsics.h(context, "context");
            this.f61897a = context;
            int iB = y.b() / 2;
            this.f61898b = iB;
            int iC = y.c();
            this.f61899c = iC;
            this.f61900d = iB;
            this.f61901e = iC;
            this.f61902f = "";
            this.f61903g = "";
            this.f61904h = R$color.image_default;
            this.f61906j = true;
            this.f61907k = true;
            this.f61908l = true;
            this.f61911o = Priority.NORMAL;
        }

        public final b a(int i11) {
            this.f61913q = i11;
            return this;
        }

        public final b b(Function3 function3) {
            this.f61912p = function3;
            return this;
        }

        public final b c(int i11) {
            this.f61901e = i11;
            this.f61910n = true;
            return this;
        }

        public final void d(ImageView imageView) {
            Intrinsics.h(imageView, "imageView");
            f.f61882a.h(this.f61897a, imageView, this.f61902f, this.f61904h, this.f61900d, this.f61901e, this.f61905i, this.f61906j, this.f61903g, this.f61907k, this.f61908l, this.f61909m, this.f61910n, this.f61911o, this.f61913q, this.f61912p);
        }

        public final b e(boolean z10) {
            this.f61907k = z10;
            return this;
        }

        public final b f(boolean z10) {
            this.f61906j = z10;
            return this;
        }

        public final b g(String str) {
            if (str == null) {
                str = "";
            }
            this.f61902f = str;
            return this;
        }

        public final b h(boolean z10) {
            this.f61909m = z10;
            return this;
        }

        public final b i(int i11) {
            this.f61904h = i11;
            return this;
        }

        public final b j(int i11) {
            this.f61905i = i11;
            return this;
        }

        public final b k(boolean z10) {
            this.f61908l = z10;
            return this;
        }

        public final b l(String thumbnail) {
            Intrinsics.h(thumbnail, "thumbnail");
            this.f61903g = thumbnail;
            return this;
        }

        public final b m(int i11) {
            this.f61900d = i11;
            return this;
        }
    }

    static {
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        f61886e = new BlurHash(applicationA, 5, 0.6f);
        DrawableTransitionOptions drawableTransitionOptionsWith = DrawableTransitionOptions.with(new DrawableCrossFadeFactory.Builder(100).setCrossFadeEnabled(true).build());
        Intrinsics.g(drawableTransitionOptionsWith, "with(...)");
        f61887f = drawableTransitionOptionsWith;
    }
}
