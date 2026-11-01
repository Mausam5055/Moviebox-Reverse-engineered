package androidx.emoji2.text;

import android.content.Context;
import android.content.pm.PackageManager;
import android.database.ContentObserver;
import android.graphics.Typeface;
import android.net.Uri;
import android.os.Handler;
import java.nio.ByteBuffer;
import java.util.concurrent.Executor;
import java.util.concurrent.ThreadPoolExecutor;

/* JADX INFO: loaded from: classes.dex */
public class j extends EmojiCompat.c {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final a f9112k = new a();

    public static class a {
        public Typeface a(Context context, androidx.core.provider.k.b bVar) {
            return androidx.core.provider.k.a(context, null, new androidx.core.provider.k.b[]{bVar});
        }

        public androidx.core.provider.k.a b(Context context, androidx.core.provider.e eVar) {
            return androidx.core.provider.k.b(context, null, eVar);
        }

        public void c(Context context, Uri uri, ContentObserver contentObserver) {
            context.getContentResolver().registerContentObserver(uri, false, contentObserver);
        }

        public void d(Context context, ContentObserver contentObserver) {
            context.getContentResolver().unregisterContentObserver(contentObserver);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    static class b implements EmojiCompat.g {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Context f9113a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final androidx.core.provider.e f9114b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final a f9115c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final Object f9116d = new Object();

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private Handler f9117e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private Executor f9118f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private ThreadPoolExecutor f9119g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private c f9120h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        EmojiCompat.h f9121i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private ContentObserver f9122j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private Runnable f9123k;

        class a extends ContentObserver {
            a(Handler handler) {
                super(handler);
            }

            @Override // android.database.ContentObserver
            public void onChange(boolean z10, Uri uri) {
                b.this.d();
            }
        }

        b(Context context, androidx.core.provider.e eVar, a aVar) {
            androidx.core.util.i.h(context, "Context cannot be null");
            androidx.core.util.i.h(eVar, "FontRequest cannot be null");
            this.f9113a = context.getApplicationContext();
            this.f9114b = eVar;
            this.f9115c = aVar;
        }

        private void b() {
            synchronized (this.f9116d) {
                try {
                    this.f9121i = null;
                    ContentObserver contentObserver = this.f9122j;
                    if (contentObserver != null) {
                        this.f9115c.d(this.f9113a, contentObserver);
                        this.f9122j = null;
                    }
                    Handler handler = this.f9117e;
                    if (handler != null) {
                        handler.removeCallbacks(this.f9123k);
                    }
                    this.f9117e = null;
                    ThreadPoolExecutor threadPoolExecutor = this.f9119g;
                    if (threadPoolExecutor != null) {
                        threadPoolExecutor.shutdown();
                    }
                    this.f9118f = null;
                    this.f9119g = null;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }

        private androidx.core.provider.k.b e() {
            try {
                androidx.core.provider.k.a aVarB = this.f9115c.b(this.f9113a, this.f9114b);
                if (aVarB.e() == 0) {
                    androidx.core.provider.k.b[] bVarArrC = aVarB.c();
                    if (bVarArrC == null || bVarArrC.length == 0) {
                        throw new RuntimeException("fetchFonts failed (empty result)");
                    }
                    return bVarArrC[0];
                }
                throw new RuntimeException("fetchFonts failed (" + aVarB.e() + ")");
            } catch (PackageManager.NameNotFoundException e11) {
                throw new RuntimeException("provider not found", e11);
            }
        }

        private void f(Uri uri, long j11) {
            synchronized (this.f9116d) {
                try {
                    Handler handlerD = this.f9117e;
                    if (handlerD == null) {
                        handlerD = androidx.emoji2.text.c.d();
                        this.f9117e = handlerD;
                    }
                    if (this.f9122j == null) {
                        a aVar = new a(handlerD);
                        this.f9122j = aVar;
                        this.f9115c.c(this.f9113a, uri, aVar);
                    }
                    if (this.f9123k == null) {
                        this.f9123k = new Runnable() { // from class: androidx.emoji2.text.l
                            @Override // java.lang.Runnable
                            public final void run() {
                                this.f9126a.d();
                            }
                        };
                    }
                    handlerD.postDelayed(this.f9123k, j11);
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }

        @Override // androidx.emoji2.text.EmojiCompat.g
        public void a(EmojiCompat.h hVar) {
            androidx.core.util.i.h(hVar, "LoaderCallback cannot be null");
            synchronized (this.f9116d) {
                this.f9121i = hVar;
            }
            d();
        }

        void c() {
            synchronized (this.f9116d) {
                try {
                    if (this.f9121i == null) {
                        return;
                    }
                    try {
                        androidx.core.provider.k.b bVarE = e();
                        int iB = bVarE.b();
                        if (iB == 2) {
                            synchronized (this.f9116d) {
                                try {
                                    c cVar = this.f9120h;
                                    if (cVar != null) {
                                        long jA = cVar.a();
                                        if (jA >= 0) {
                                            f(bVarE.d(), jA);
                                            return;
                                        }
                                    }
                                } catch (Throwable th2) {
                                    throw th2;
                                }
                            }
                        }
                        if (iB != 0) {
                            throw new RuntimeException("fetchFonts result is not OK. (" + iB + ")");
                        }
                        try {
                            androidx.core.os.s.a("EmojiCompat.FontRequestEmojiCompatConfig.buildTypeface");
                            Typeface typefaceA = this.f9115c.a(this.f9113a, bVarE);
                            ByteBuffer byteBufferF = z0.p.f(this.f9113a, null, bVarE.d());
                            if (byteBufferF == null || typefaceA == null) {
                                throw new RuntimeException("Unable to open file.");
                            }
                            n nVarB = n.b(typefaceA, byteBufferF);
                            androidx.core.os.s.b();
                            synchronized (this.f9116d) {
                                try {
                                    EmojiCompat.h hVar = this.f9121i;
                                    if (hVar != null) {
                                        hVar.b(nVarB);
                                    }
                                } catch (Throwable th3) {
                                    throw th3;
                                }
                            }
                            b();
                        } catch (Throwable th4) {
                            androidx.core.os.s.b();
                            throw th4;
                        }
                    } catch (Throwable th5) {
                        synchronized (this.f9116d) {
                            try {
                                EmojiCompat.h hVar2 = this.f9121i;
                                if (hVar2 != null) {
                                    hVar2.a(th5);
                                }
                                b();
                            } catch (Throwable th6) {
                                throw th6;
                            }
                        }
                    }
                } catch (Throwable th7) {
                    throw th7;
                }
            }
        }

        void d() {
            synchronized (this.f9116d) {
                try {
                    if (this.f9121i == null) {
                        return;
                    }
                    if (this.f9118f == null) {
                        ThreadPoolExecutor threadPoolExecutorB = androidx.emoji2.text.c.b("emojiCompat");
                        this.f9119g = threadPoolExecutorB;
                        this.f9118f = threadPoolExecutorB;
                    }
                    this.f9118f.execute(new Runnable() { // from class: androidx.emoji2.text.k
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f9125a.c();
                        }
                    });
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }

        public void g(Executor executor) {
            synchronized (this.f9116d) {
                this.f9118f = executor;
            }
        }
    }

    public static abstract class c {
        public abstract long a();
    }

    public j(Context context, androidx.core.provider.e eVar) {
        super(new b(context, eVar, f9112k));
    }

    public j c(Executor executor) {
        ((b) a()).g(executor);
        return this;
    }
}
