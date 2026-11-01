package com.mbridge.msdk.foundation.same.image;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.DownloadError;
import com.mbridge.msdk.foundation.download.DownloadMessage;
import com.mbridge.msdk.foundation.download.DownloadPriority;
import com.mbridge.msdk.foundation.download.DownloadResourceType;
import com.mbridge.msdk.foundation.download.MBDownloadManager;
import com.mbridge.msdk.foundation.download.OnDownloadStateListener;
import com.mbridge.msdk.foundation.download.core.DownloadRequest;
import com.mbridge.msdk.foundation.tools.m0;
import com.mbridge.msdk.foundation.tools.o0;
import java.io.File;
import java.util.concurrent.ThreadPoolExecutor;

/* JADX INFO: loaded from: classes5.dex */
public class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ThreadPoolExecutor f35400a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Handler f35401b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f35402c;

    class a implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ String f35403a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ com.mbridge.msdk.foundation.same.image.c f35404b;

        /* JADX INFO: renamed from: com.mbridge.msdk.foundation.same.image.d$a$a, reason: collision with other inner class name */
        class RunnableC0487a implements Runnable {
            RunnableC0487a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                a aVar = a.this;
                aVar.f35404b.onFailedLoad("create download request error", aVar.f35403a);
            }
        }

        a(String str, g gVar, com.mbridge.msdk.foundation.same.image.c cVar) {
            this.f35403a = str;
            this.f35404b = cVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            DownloadRequest downloadRequestA = d.this.a(m0.d(this.f35403a), this.f35403a, null, this.f35404b);
            if (downloadRequestA != null) {
                downloadRequestA.start();
                return;
            }
            if (MBridgeConstans.DEBUG) {
                o0.b("CommonImageLoaderRefactor", "createDownloadRequest error");
            }
            if (this.f35404b == null) {
                return;
            }
            d.this.f35401b.post(new RunnableC0487a());
        }
    }

    private static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static final d f35407a = new d(null);
    }

    private static final class c implements OnDownloadStateListener<Object> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final ThreadPoolExecutor f35408a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final Handler f35409b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final String f35410c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final String f35411d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final String f35412e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final com.mbridge.msdk.foundation.same.image.c f35413f;

        class a implements Runnable {
            a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                c.this.a();
            }
        }

        class b implements Runnable {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ String f35415a;

            b(String str) {
                this.f35415a = str;
            }

            @Override // java.lang.Runnable
            public void run() {
                try {
                    c.this.f35413f.onFailedLoad(c.this.f35412e, this.f35415a);
                } catch (Exception e11) {
                    if (MBridgeConstans.DEBUG) {
                        o0.b("CommonImageLoaderRefactor", "callbackForFailed error", e11);
                    }
                }
            }
        }

        /* JADX INFO: renamed from: com.mbridge.msdk.foundation.same.image.d$c$c, reason: collision with other inner class name */
        class RunnableC0488c implements Runnable {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ Bitmap f35417a;

            RunnableC0488c(Bitmap bitmap) {
                this.f35417a = bitmap;
            }

            @Override // java.lang.Runnable
            public void run() {
                try {
                    c.this.f35413f.onSuccessLoad(this.f35417a, c.this.f35412e);
                } catch (Exception e11) {
                    if (MBridgeConstans.DEBUG) {
                        o0.b("CommonImageLoaderRefactor", "callbackForSuccess error", e11);
                    }
                }
            }
        }

        public c(Handler handler, ThreadPoolExecutor threadPoolExecutor, String str, String str2, String str3, g gVar, com.mbridge.msdk.foundation.same.image.c cVar) {
            this.f35409b = handler;
            this.f35408a = threadPoolExecutor;
            this.f35412e = str;
            this.f35410c = str2;
            this.f35411d = str3;
            this.f35413f = cVar;
        }

        private Bitmap a(Bitmap bitmap, g gVar) {
            if (gVar == null) {
                return bitmap;
            }
            try {
                return gVar.a(bitmap);
            } catch (Exception e11) {
                if (MBridgeConstans.DEBUG) {
                    o0.b("CommonImageLoaderRefactor", "handlerImageTransformation error", e11);
                }
                return bitmap;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a() {
            if (this.f35413f == null) {
                return;
            }
            try {
                Bitmap bitmapB = d.b(this.f35410c + this.f35411d);
                if (bitmapB == null) {
                    a("bitmap decode failed");
                    return;
                }
                Bitmap bitmapA = a(bitmapB, null);
                if (bitmapA == null) {
                    a("bitmap transformation failed");
                } else {
                    a(bitmapA);
                }
            } catch (Exception e11) {
                if (MBridgeConstans.DEBUG) {
                    o0.a("CommonImageLoaderRefactor", "onDownloadComplete decodeBitmap error = " + e11.getLocalizedMessage());
                }
                a("bitmap decode failed");
            }
        }

        private void a(Bitmap bitmap) {
            if (this.f35413f == null) {
                return;
            }
            this.f35409b.post(new RunnableC0488c(bitmap));
        }

        private void a(String str) {
            if (this.f35413f == null) {
                return;
            }
            this.f35409b.post(new b(str));
        }

        private void b() {
            File file;
            if (MBridgeConstans.DEBUG) {
                o0.a("CommonImageLoaderRefactor", "onDownloadComplete imageUrl = " + this.f35412e + " imagePath = " + this.f35410c + this.f35411d);
                try {
                    file = new File(this.f35410c + this.f35411d);
                } catch (Exception e11) {
                    if (MBridgeConstans.DEBUG) {
                        o0.b("CommonImageLoaderRefactor", "onDownloadComplete error", e11);
                    }
                    file = null;
                }
                if (file == null || !file.isFile() || !file.exists()) {
                    o0.b("CommonImageLoaderRefactor", "onDownloadComplete file not exist");
                    return;
                }
                o0.a("CommonImageLoaderRefactor", "onDownloadComplete file size = " + file.length());
            }
        }

        @Override // com.mbridge.msdk.foundation.download.OnDownloadStateListener
        public void onCancelDownload(DownloadMessage<Object> downloadMessage) {
        }

        @Override // com.mbridge.msdk.foundation.download.OnDownloadStateListener
        public void onDownloadComplete(DownloadMessage<Object> downloadMessage) {
            b();
            this.f35408a.execute(new a());
        }

        @Override // com.mbridge.msdk.foundation.download.OnDownloadStateListener
        public void onDownloadError(DownloadMessage<Object> downloadMessage, DownloadError downloadError) {
            if (MBridgeConstans.DEBUG) {
                o0.a("CommonImageLoaderRefactor", "onDownloadError imageUrl = " + downloadError.getException().getLocalizedMessage());
            }
            a(downloadError.getException().getLocalizedMessage());
        }

        @Override // com.mbridge.msdk.foundation.download.OnDownloadStateListener
        public void onDownloadStart(DownloadMessage<Object> downloadMessage) {
        }
    }

    private d() {
        this.f35401b = new Handler(Looper.getMainLooper());
        this.f35402c = com.mbridge.msdk.foundation.same.directory.e.b(com.mbridge.msdk.foundation.same.directory.c.MBRIDGE_700_IMG) + File.separator;
        this.f35400a = f.b();
    }

    /* synthetic */ d(a aVar) {
        this();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public DownloadRequest<?> a(String str, String str2, g gVar, com.mbridge.msdk.foundation.same.image.c cVar) {
        try {
            return MBDownloadManager.getInstance().download(new DownloadMessage<>(new Object(), str2, str, 100, DownloadResourceType.DOWNLOAD_RESOURCE_TYPE_IMAGE)).withReadTimeout(com.mbridge.msdk.foundation.same.a.f35349u).withConnectTimeout(com.mbridge.msdk.foundation.same.a.f35348t).withWriteTimeout(com.mbridge.msdk.foundation.same.a.f35347s).withDownloadPriority(DownloadPriority.LOW).withHttpRetryCounter(1).withDirectoryPathInternal(this.f35402c).withDownloadStateListener(new c(this.f35401b, this.f35400a, str2, this.f35402c, str, gVar, cVar)).with("download_scene", "download_image").withProgressStateListener(null).withTimeout(60000L).with("do_us_fi_re", Boolean.FALSE.toString()).build();
        } catch (Exception e11) {
            if (!MBridgeConstans.DEBUG) {
                return null;
            }
            o0.b("CommonImageLoaderRefactor", "createDownloadRequest error", e11);
            return null;
        }
    }

    public static d a() {
        return b.f35407a;
    }

    private Runnable a(String str, g gVar, com.mbridge.msdk.foundation.same.image.c cVar) {
        return new a(str, gVar, cVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Bitmap b(String str) {
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeFile(str, options);
        options.inJustDecodeBounds = false;
        options.inPurgeable = true;
        options.inInputShareable = true;
        options.inDither = true;
        return BitmapFactory.decodeFile(str, options);
    }

    public void b(String str, g gVar, com.mbridge.msdk.foundation.same.image.c cVar) {
        try {
            this.f35400a.execute(a(str, gVar, cVar));
        } catch (Exception e11) {
            if (MBridgeConstans.DEBUG) {
                o0.b("CommonImageLoaderRefactor", "loadImage error", e11);
            }
        }
    }

    public Bitmap c(String str) {
        if (MBridgeConstans.DEBUG) {
            o0.a("CommonImageLoaderRefactor", "getImageBitmapByUrl imageUrl = " + str);
        }
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        String str2 = this.f35402c + m0.d(str);
        File file = new File(str2);
        if (file.isFile() && file.exists()) {
            try {
                return b(str2);
            } catch (Exception e11) {
                if (MBridgeConstans.DEBUG) {
                    o0.b("CommonImageLoaderRefactor", "getImageBitmapByUrl error", e11);
                }
            }
        }
        return null;
    }

    public boolean d(String str) {
        File file;
        if (MBridgeConstans.DEBUG) {
            o0.a("CommonImageLoaderRefactor", "isImageFileExists imageUrl = " + str);
        }
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        try {
            try {
                file = new File(this.f35402c + m0.d(str));
            } catch (Exception e11) {
                if (MBridgeConstans.DEBUG) {
                    o0.b("CommonImageLoaderRefactor", "isImageFileExists error", e11);
                }
                file = null;
            }
            return file != null && file.isFile() && file.exists();
        } catch (Exception e12) {
            if (MBridgeConstans.DEBUG) {
                o0.b("CommonImageLoaderRefactor", "isImageFileExists error", e12);
            }
            return false;
        }
    }
}
