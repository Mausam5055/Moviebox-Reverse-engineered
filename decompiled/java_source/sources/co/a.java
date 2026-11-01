package co;

import android.content.Context;
import androidx.media3.datasource.cache.Cache;
import androidx.media3.datasource.cache.SimpleCache;
import androidx.media3.datasource.cache.q;
import androidx.media3.datasource.cronet.CronetDataSource;
import androidx.media3.datasource.cronet.CronetUtil;
import androidx.media3.exoplayer.b4;
import androidx.media3.exoplayer.offline.DownloadManager;
import com.transsion.player.exo.ORExoDecoderType;
import java.io.File;
import java.net.CookieHandler;
import java.net.CookieManager;
import java.net.CookiePolicy;
import java.util.concurrent.Executors;
import org.chromium.net.CronetEngine;

/* JADX INFO: loaded from: classes5.dex */
public abstract class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static androidx.media3.datasource.a.InterfaceC0091a f17539a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static androidx.media3.datasource.a.InterfaceC0091a f17540b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static v1.a f17541c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static File f17542d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static Cache f17543e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static DownloadManager f17544f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static androidx.media3.exoplayer.offline.k f17545g;

    /* JADX INFO: renamed from: co.a$a, reason: collision with other inner class name */
    static /* synthetic */ class C0169a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f17546a;

        static {
            int[] iArr = new int[ORExoDecoderType.values().length];
            f17546a = iArr;
            try {
                iArr[ORExoDecoderType.HARDWARE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f17546a[ORExoDecoderType.FFMPEG.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f17546a[ORExoDecoderType.AV1.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    private static androidx.media3.datasource.cache.a.c a(androidx.media3.datasource.a.InterfaceC0091a interfaceC0091a, Cache cache) {
        return new androidx.media3.datasource.cache.a.c().i(cache).j(interfaceC0091a);
    }

    public static b4 b(Context context, ORExoDecoderType oRExoDecoderType) {
        int i11;
        int i12 = C0169a.f17546a[oRExoDecoderType.ordinal()];
        if (i12 != 1) {
            i11 = 2;
            if (i12 != 2 && i12 != 3) {
                throw new IncompatibleClassChangeError();
            }
        } else {
            i11 = 1;
        }
        return new j(context.getApplicationContext(), oRExoDecoderType).o(true).p(i11).l();
    }

    private static synchronized void c(Context context) {
        if (f17544f == null) {
            DownloadManager downloadManager = new DownloadManager(context, new androidx.media3.exoplayer.offline.a(e(context)), new com.transsion.player.shorttv.preload.b(new androidx.media3.datasource.cache.a.c().i(f(context)).j(j(context)), Executors.newFixedThreadPool(6)));
            f17544f = downloadManager;
            downloadManager.u();
        }
    }

    public static synchronized androidx.media3.datasource.a.InterfaceC0091a d(Context context) {
        try {
            if (f17539a == null) {
                Context applicationContext = context.getApplicationContext();
                f17539a = a(new androidx.media3.datasource.b.a(applicationContext, j(applicationContext)), f(applicationContext));
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return f17539a;
    }

    private static synchronized v1.a e(Context context) {
        try {
            if (f17541c == null) {
                f17541c = new v1.b(context);
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return f17541c;
    }

    public static synchronized Cache f(Context context) {
        try {
            if (f17543e == null) {
                f17543e = new SimpleCache(new File(g(context), "downloads"), new q(314572800L), e(context));
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return f17543e;
    }

    private static synchronized File g(Context context) {
        try {
            if (f17542d == null) {
                File externalFilesDir = context.getExternalFilesDir(null);
                f17542d = externalFilesDir;
                if (externalFilesDir == null) {
                    f17542d = context.getFilesDir();
                }
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return f17542d;
    }

    public static synchronized DownloadManager h(Context context) {
        c(context);
        return f17544f;
    }

    public static synchronized androidx.media3.exoplayer.offline.k i(Context context) {
        try {
            if (f17545g == null) {
                f17545g = new androidx.media3.exoplayer.offline.k(context, "download_channel");
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return f17545g;
    }

    public static synchronized androidx.media3.datasource.a.InterfaceC0091a j(Context context) {
        try {
            if (f17540b == null) {
                CronetEngine cronetEngineA = CronetUtil.a(context.getApplicationContext());
                if (cronetEngineA != null) {
                    f17540b = new CronetDataSource.b(cronetEngineA, Executors.newSingleThreadExecutor());
                }
                if (f17540b == null) {
                    CookieManager cookieManager = new CookieManager();
                    cookieManager.setCookiePolicy(CookiePolicy.ACCEPT_ORIGINAL_SERVER);
                    CookieHandler.setDefault(cookieManager);
                    f17540b = new androidx.media3.datasource.c.b();
                }
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return f17540b;
    }
}
