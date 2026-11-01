package androidx.emoji2.text;

import android.content.Context;
import androidx.p009lifecycle.Lifecycle;
import androidx.p009lifecycle.ProcessLifecycleInitializer;
import androidx.p009lifecycle.u;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.ThreadPoolExecutor;

/* JADX INFO: loaded from: classes.dex */
public class EmojiCompatInitializer implements e4.a {

    static class LoadEmojiCompatRunnable implements Runnable {
        LoadEmojiCompatRunnable() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                androidx.core.os.s.a("EmojiCompat.EmojiCompatInitializer.run");
                if (EmojiCompat.i()) {
                    EmojiCompat.c().l();
                }
            } finally {
                androidx.core.os.s.b();
            }
        }
    }

    class a implements androidx.p009lifecycle.f {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Lifecycle f9063a;

        a(Lifecycle lifecycle) {
            this.f9063a = lifecycle;
        }

        @Override // androidx.p009lifecycle.f
        public /* synthetic */ void onCreate(u uVar) {
            androidx.p009lifecycle.e.a(this, uVar);
        }

        @Override // androidx.p009lifecycle.f
        public /* synthetic */ void onDestroy(u uVar) {
            androidx.p009lifecycle.e.b(this, uVar);
        }

        @Override // androidx.p009lifecycle.f
        public /* synthetic */ void onPause(u uVar) {
            androidx.p009lifecycle.e.c(this, uVar);
        }

        @Override // androidx.p009lifecycle.f
        public void onResume(u uVar) {
            EmojiCompatInitializer.this.e();
            this.f9063a.d(this);
        }

        @Override // androidx.p009lifecycle.f
        public /* synthetic */ void onStart(u uVar) {
            androidx.p009lifecycle.e.e(this, uVar);
        }

        @Override // androidx.p009lifecycle.f
        public /* synthetic */ void onStop(u uVar) {
            androidx.p009lifecycle.e.f(this, uVar);
        }
    }

    static class b extends EmojiCompat.c {
        protected b(Context context) {
            super(new c(context));
            b(1);
        }
    }

    static class c implements EmojiCompat.g {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Context f9065a;

        class a extends EmojiCompat.h {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ EmojiCompat.h f9066a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ ThreadPoolExecutor f9067b;

            a(EmojiCompat.h hVar, ThreadPoolExecutor threadPoolExecutor) {
                this.f9066a = hVar;
                this.f9067b = threadPoolExecutor;
            }

            @Override // androidx.emoji2.text.EmojiCompat.h
            public void a(Throwable th2) {
                try {
                    this.f9066a.a(th2);
                } finally {
                    this.f9067b.shutdown();
                }
            }

            @Override // androidx.emoji2.text.EmojiCompat.h
            public void b(n nVar) {
                try {
                    this.f9066a.b(nVar);
                } finally {
                    this.f9067b.shutdown();
                }
            }
        }

        c(Context context) {
            this.f9065a = context.getApplicationContext();
        }

        @Override // androidx.emoji2.text.EmojiCompat.g
        public void a(final EmojiCompat.h hVar) {
            final ThreadPoolExecutor threadPoolExecutorB = androidx.emoji2.text.c.b("EmojiCompatInitializer");
            threadPoolExecutorB.execute(new Runnable() { // from class: androidx.emoji2.text.f
                @Override // java.lang.Runnable
                public final void run() {
                    this.f9073a.d(hVar, threadPoolExecutorB);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public void d(EmojiCompat.h hVar, ThreadPoolExecutor threadPoolExecutor) {
            try {
                j jVarA = d.a(this.f9065a);
                if (jVarA == null) {
                    throw new RuntimeException("EmojiCompat font provider not available on this device.");
                }
                jVarA.c(threadPoolExecutor);
                jVarA.a().a(new a(hVar, threadPoolExecutor));
            } catch (Throwable th2) {
                hVar.a(th2);
                threadPoolExecutor.shutdown();
            }
        }
    }

    @Override // e4.a
    public List a() {
        return Collections.singletonList(ProcessLifecycleInitializer.class);
    }

    @Override // e4.a
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public Boolean b(Context context) {
        EmojiCompat.h(new b(context));
        d(context);
        return Boolean.TRUE;
    }

    void d(Context context) {
        Lifecycle lifecycle = ((u) androidx.startup.a.e(context).f(ProcessLifecycleInitializer.class)).getLifecycle();
        lifecycle.a(new a(lifecycle));
    }

    void e() {
        androidx.emoji2.text.c.d().postDelayed(new LoadEmojiCompatRunnable(), 500L);
    }
}
