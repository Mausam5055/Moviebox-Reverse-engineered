package com.transsion.base.image;

import android.app.ActivityManager;
import android.content.Context;
import com.blankj.utilcode.util.Utils;
import com.bumptech.glide.Glide;
import com.bumptech.glide.GlideBuilder;
import com.bumptech.glide.Registry;
import com.bumptech.glide.annotation.GlideModule;
import com.bumptech.glide.integration.okhttp3.OkHttpUrlLoader;
import com.bumptech.glide.load.DecodeFormat;
import com.bumptech.glide.load.engine.cache.MemorySizeCalculator;
import com.bumptech.glide.load.model.GlideUrl;
import com.bumptech.glide.module.AppGlideModule;
import com.bumptech.glide.request.RequestOptions;
import com.google.net.cronet.okhttptransport.a;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import fj.b;
import java.io.InputStream;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.Interceptor;
import okhttp3.OkHttpClient;
import org.chromium.net.CronetEngine;

/* JADX INFO: loaded from: classes5.dex */
@GlideModule
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0011\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0002¢\u0006\u0004\b\u0005\u0010\u0006J\u0011\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0002¢\u0006\u0004\b\b\u0010\tJ'\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u0011\u0010\u0012J\u001f\u0010\u0015\u001a\u00020\u00102\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0014\u001a\u00020\u0013H\u0016¢\u0006\u0004\b\u0015\u0010\u0016R\u0014\u0010\u0019\u001a\u00020\u00178\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\u0018R\u0018\u0010\u001b\u001a\u0004\u0018\u00010\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0005\u0010\u001a¨\u0006\u001c"}, d2 = {"Lcom/transsion/base/image/CustomGlideModule;", "Lcom/bumptech/glide/module/AppGlideModule;", "<init>", "()V", "Lokhttp3/OkHttpClient;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "()Lokhttp3/OkHttpClient;", "Lokhttp3/Interceptor;", "a", "()Lokhttp3/Interceptor;", "Landroid/content/Context;", "context", "Lcom/bumptech/glide/Glide;", "glide", "Lcom/bumptech/glide/Registry;", "registry", "", "registerComponents", "(Landroid/content/Context;Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/Registry;)V", "Lcom/bumptech/glide/GlideBuilder;", "builder", "applyOptions", "(Landroid/content/Context;Lcom/bumptech/glide/GlideBuilder;)V", "Lcom/bumptech/glide/request/RequestOptions;", "Lcom/bumptech/glide/request/RequestOptions;", "requestOptions", "Lokhttp3/OkHttpClient;", "okHttpClientForGlide", "image_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class CustomGlideModule extends AppGlideModule {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private final RequestOptions requestOptions = new RequestOptions();

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private OkHttpClient okHttpClientForGlide;

    private final Interceptor a() {
        try {
            CronetEngine.Builder builder = new CronetEngine.Builder(Utils.a());
            builder.enableQuic(true).enableBrotli(true).addQuicHint("pacdn.aoneroom.com", 443, 443);
            CronetEngine cronetEngineBuild = builder.build();
            Intrinsics.g(cronetEngineBuild, "build(...)");
            return (Interceptor) a.i(cronetEngineBuild).a();
        } catch (Throwable unused) {
            return null;
        }
    }

    private final OkHttpClient b() {
        OkHttpClient okHttpClient = this.okHttpClientForGlide;
        if (okHttpClient != null) {
            return okHttpClient;
        }
        OkHttpClient.Builder builder = new OkHttpClient.Builder();
        builder.sslSocketFactory(fj.a.f62417a.a(), new fj.a()).hostnameVerifier(new b());
        TimeUnit timeUnit = TimeUnit.SECONDS;
        OkHttpClient.Builder timeout = builder.connectTimeout(40L, timeUnit).writeTimeout(20L, timeUnit).readTimeout(20L, timeUnit);
        Interceptor interceptorA = a();
        if (interceptorA != null) {
            timeout.addInterceptor(interceptorA);
        }
        OkHttpClient okHttpClientBuild = timeout.build();
        this.okHttpClientForGlide = okHttpClientBuild;
        return okHttpClientBuild;
    }

    @Override // com.bumptech.glide.module.AppGlideModule, com.bumptech.glide.module.AppliesOptions
    public void applyOptions(Context context, GlideBuilder builder) {
        Intrinsics.h(context, "context");
        Intrinsics.h(builder, "builder");
        Object systemService = context.getSystemService("activity");
        Intrinsics.f(systemService, "null cannot be cast to non-null type android.app.ActivityManager");
        ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
        ((ActivityManager) systemService).getMemoryInfo(memoryInfo);
        if (memoryInfo.totalMem / 1.0737418E9f < 4.0f) {
            builder.setDefaultRequestOptions(this.requestOptions.format(DecodeFormat.PREFER_RGB_565));
        }
        builder.setBitmapPool(new ek.a(new MemorySizeCalculator.Builder(context).build().getBitmapPoolSize()));
    }

    @Override // com.bumptech.glide.module.LibraryGlideModule, com.bumptech.glide.module.RegistersComponents
    public void registerComponents(Context context, Glide glide, Registry registry) {
        Intrinsics.h(context, "context");
        Intrinsics.h(glide, "glide");
        Intrinsics.h(registry, "registry");
        lg.a.C0828a.f(lg.a.f68839a, "CustomGlideModule", "glide http replace okhttp client with cronet", false, 4, null);
        OkHttpClient okHttpClientB = b();
        if (okHttpClientB != null) {
            registry.replace(GlideUrl.class, InputStream.class, new OkHttpUrlLoader.Factory(okHttpClientB));
        }
    }
}
