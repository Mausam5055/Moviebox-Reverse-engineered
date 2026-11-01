package nn;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import com.blankj.utilcode.util.y;
import com.bumptech.glide.Glide;
import com.bumptech.glide.RequestBuilder;
import com.bumptech.glide.load.engine.DiskCacheStrategy;
import com.bumptech.glide.request.target.CustomTarget;
import com.bumptech.glide.request.transition.Transition;
import com.transsion.mpush.R$string;
import com.transsion.mpush.api.IPushImageLoader;
import com.transsion.mpush.core.utils.c;
import ej.f;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes6.dex */
public final class b implements IPushImageLoader {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Lazy f70484a = LazyKt.b(new Function0() { // from class: nn.a
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return Integer.valueOf(b.b());
        }
    });

    public static final class a extends CustomTarget {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ IPushImageLoader.Callback f70485a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f70486b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ Context f70487c;

        a(IPushImageLoader.Callback callback, String str, Context context) {
            this.f70485a = callback;
            this.f70486b = str;
            this.f70487c = context;
        }

        @Override // com.bumptech.glide.request.target.Target
        public void onLoadCleared(Drawable drawable) {
        }

        @Override // com.bumptech.glide.request.target.CustomTarget, com.bumptech.glide.request.target.Target
        public void onLoadFailed(Drawable drawable) {
            super.onLoadFailed(drawable);
            lg.a.C0828a.l(lg.a.f68839a, "M_PUSH_SDK", "【图片加载】加载失败，URL：" + this.f70486b, false, 4, null);
            this.f70485a.onFailed(new Exception(this.f70487c.getString(R$string.push_error_load_image_failed, this.f70486b)));
        }

        @Override // com.bumptech.glide.request.target.Target
        public void onResourceReady(Bitmap resource, Transition transition) {
            Intrinsics.h(resource, "resource");
            lg.a.C0828a.r(lg.a.f68839a, "M_PUSH_SDK", new String[]{"【图片加载】加载成功，图片尺寸：" + resource.getWidth() + "x" + resource.getHeight()}, false, 4, null);
            this.f70485a.onSuccess(resource);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int b() {
        return y.e() - c.f47625a.c(80.0f);
    }

    private final int c() {
        return ((Number) this.f70484a.getValue()).intValue();
    }

    @Override // com.transsion.mpush.api.IPushImageLoader
    public void loadImage(Context context, String url, Integer num, IPushImageLoader.Callback callback) {
        RequestBuilder requestBuilderLoad;
        Intrinsics.h(context, "context");
        Intrinsics.h(url, "url");
        Intrinsics.h(callback, "callback");
        lg.a.C0828a c0828a = lg.a.f68839a;
        lg.a.C0828a.r(c0828a, "M_PUSH_SDK", new String[]{"【图片加载】开始加载，目标宽度：" + num + "，URL：" + url}, false, 4, null);
        if (StringsKt.W(url, "http://", false, 2, null) || StringsKt.W(url, "https://", false, 2, null)) {
            requestBuilderLoad = Glide.with(context).asBitmap().diskCacheStrategy(DiskCacheStrategy.DATA).load2(f.a.e(f.f61882a, url, num != null ? num.intValue() : c(), true, false, 8, null));
        } else {
            Uri uri = Uri.parse("file:///android_asset/" + url);
            lg.a.C0828a.r(c0828a, "M_PUSH_SDK", new String[]{"【图片加载】识别为 asset 路径，转换 URI：" + uri}, false, 4, null);
            requestBuilderLoad = Glide.with(context).asBitmap().diskCacheStrategy(DiskCacheStrategy.NONE).load2(uri);
        }
        Intrinsics.e(requestBuilderLoad);
        requestBuilderLoad.into(new a(callback, url, context));
    }
}
