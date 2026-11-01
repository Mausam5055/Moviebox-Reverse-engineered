package androidx.emoji2.text;

import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.Editable;
import android.view.KeyEvent;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import java.util.Set;
import java.util.concurrent.locks.ReadWriteLock;
import java.util.concurrent.locks.ReentrantReadWriteLock;

/* JADX INFO: loaded from: classes.dex */
public class EmojiCompat {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static final Object f9032o = new Object();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private static final Object f9033p = new Object();

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private static volatile EmojiCompat f9034q;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Set f9036b;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final b f9039e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    final g f9040f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final i f9041g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    final boolean f9042h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    final boolean f9043i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    final int[] f9044j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final boolean f9045k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final int f9046l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final int f9047m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final e f9048n;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ReadWriteLock f9035a = new ReentrantReadWriteLock();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private volatile int f9037c = 3;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Handler f9038d = new Handler(Looper.getMainLooper());

    private static class ListenerDispatcher implements Runnable {
        private final List<f> mInitCallbacks;
        private final int mLoadState;
        private final Throwable mThrowable;

        ListenerDispatcher(@NonNull f fVar, int i11) {
            this(Arrays.asList((f) androidx.core.util.i.h(fVar, "initCallback cannot be null")), i11, null);
        }

        ListenerDispatcher(@NonNull Collection<f> collection, int i11) {
            this(collection, i11, null);
        }

        ListenerDispatcher(@NonNull Collection<f> collection, int i11, @Nullable Throwable th2) {
            androidx.core.util.i.h(collection, "initCallbacks cannot be null");
            this.mInitCallbacks = new ArrayList(collection);
            this.mLoadState = i11;
            this.mThrowable = th2;
        }

        @Override // java.lang.Runnable
        public void run() {
            int size = this.mInitCallbacks.size();
            int i11 = 0;
            if (this.mLoadState != 1) {
                while (i11 < size) {
                    this.mInitCallbacks.get(i11).a(this.mThrowable);
                    i11++;
                }
            } else {
                while (i11 < size) {
                    this.mInitCallbacks.get(i11).b();
                    i11++;
                }
            }
        }
    }

    private static final class a extends b {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private volatile androidx.emoji2.text.h f9049b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private volatile n f9050c;

        /* JADX INFO: renamed from: androidx.emoji2.text.EmojiCompat$a$a, reason: collision with other inner class name */
        class C0078a extends h {
            C0078a() {
            }

            @Override // androidx.emoji2.text.EmojiCompat.h
            public void a(Throwable th2) {
                a.this.f9052a.n(th2);
            }

            @Override // androidx.emoji2.text.EmojiCompat.h
            public void b(n nVar) {
                a.this.d(nVar);
            }
        }

        a(EmojiCompat emojiCompat) {
            super(emojiCompat);
        }

        @Override // androidx.emoji2.text.EmojiCompat.b
        void a() {
            try {
                this.f9052a.f9040f.a(new C0078a());
            } catch (Throwable th2) {
                this.f9052a.n(th2);
            }
        }

        @Override // androidx.emoji2.text.EmojiCompat.b
        CharSequence b(CharSequence charSequence, int i11, int i12, int i13, boolean z10) {
            return this.f9049b.h(charSequence, i11, i12, i13, z10);
        }

        @Override // androidx.emoji2.text.EmojiCompat.b
        void c(EditorInfo editorInfo) {
            editorInfo.extras.putInt("android.support.text.emoji.emojiCompat_metadataVersion", this.f9050c.e());
            editorInfo.extras.putBoolean("android.support.text.emoji.emojiCompat_replaceAll", this.f9052a.f9042h);
        }

        void d(n nVar) {
            if (nVar == null) {
                this.f9052a.n(new IllegalArgumentException("metadataRepo cannot be null"));
                return;
            }
            this.f9050c = nVar;
            n nVar2 = this.f9050c;
            i iVar = this.f9052a.f9041g;
            e eVar = this.f9052a.f9048n;
            EmojiCompat emojiCompat = this.f9052a;
            this.f9049b = new androidx.emoji2.text.h(nVar2, iVar, eVar, emojiCompat.f9043i, emojiCompat.f9044j, androidx.emoji2.text.g.a());
            this.f9052a.o();
        }
    }

    private static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final EmojiCompat f9052a;

        b(EmojiCompat emojiCompat) {
            this.f9052a = emojiCompat;
        }

        abstract void a();

        abstract CharSequence b(CharSequence charSequence, int i11, int i12, int i13, boolean z10);

        abstract void c(EditorInfo editorInfo);
    }

    public static abstract class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final g f9053a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        i f9054b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        boolean f9055c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        boolean f9056d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        int[] f9057e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        Set f9058f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        boolean f9059g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        int f9060h = -16711936;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        int f9061i = 0;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        e f9062j = new androidx.emoji2.text.e();

        protected c(g gVar) {
            androidx.core.util.i.h(gVar, "metadataLoader cannot be null.");
            this.f9053a = gVar;
        }

        protected final g a() {
            return this.f9053a;
        }

        public c b(int i11) {
            this.f9061i = i11;
            return this;
        }
    }

    public static class d implements i {
        @Override // androidx.emoji2.text.EmojiCompat.i
        public androidx.emoji2.text.i a(p pVar) {
            return new q(pVar);
        }
    }

    public interface e {
        boolean a(CharSequence charSequence, int i11, int i12, int i13);
    }

    public static abstract class f {
        public void a(Throwable th2) {
        }

        public void b() {
        }
    }

    public interface g {
        void a(h hVar);
    }

    public static abstract class h {
        public abstract void a(Throwable th2);

        public abstract void b(n nVar);
    }

    public interface i {
        androidx.emoji2.text.i a(p pVar);
    }

    private EmojiCompat(c cVar) {
        this.f9042h = cVar.f9055c;
        this.f9043i = cVar.f9056d;
        this.f9044j = cVar.f9057e;
        this.f9045k = cVar.f9059g;
        this.f9046l = cVar.f9060h;
        this.f9040f = cVar.f9053a;
        this.f9047m = cVar.f9061i;
        this.f9048n = cVar.f9062j;
        androidx.collection.b bVar = new androidx.collection.b();
        this.f9036b = bVar;
        i iVar = cVar.f9054b;
        this.f9041g = iVar == null ? new d() : iVar;
        Set set = cVar.f9058f;
        if (set != null && !set.isEmpty()) {
            bVar.addAll(cVar.f9058f);
        }
        this.f9039e = new a(this);
        m();
    }

    public static EmojiCompat c() {
        EmojiCompat emojiCompat;
        synchronized (f9032o) {
            emojiCompat = f9034q;
            androidx.core.util.i.i(emojiCompat != null, "EmojiCompat is not initialized.\n\nYou must initialize EmojiCompat prior to referencing the EmojiCompat instance.\n\nThe most likely cause of this error is disabling the EmojiCompatInitializer\neither explicitly in AndroidManifest.xml, or by including\nandroidx.emoji2:emoji2-bundled.\n\nAutomatic initialization is typically performed by EmojiCompatInitializer. If\nyou are not expecting to initialize EmojiCompat manually in your application,\nplease check to ensure it has not been removed from your APK's manifest. You can\ndo this in Android Studio using Build > Analyze APK.\n\nIn the APK Analyzer, ensure that the startup entry for\nEmojiCompatInitializer and InitializationProvider is present in\n AndroidManifest.xml. If it is missing or contains tools:node=\"remove\", and you\nintend to use automatic configuration, verify:\n\n  1. Your application does not include emoji2-bundled\n  2. All modules do not contain an exclusion manifest rule for\n     EmojiCompatInitializer or InitializationProvider. For more information\n     about manifest exclusions see the documentation for the androidx startup\n     library.\n\nIf you intend to use emoji2-bundled, please call EmojiCompat.init. You can\nlearn more in the documentation for BundledEmojiCompatConfig.\n\nIf you intended to perform manual configuration, it is recommended that you call\nEmojiCompat.init immediately on application startup.\n\nIf you still cannot resolve this issue, please open a bug with your specific\nconfiguration to help improve error message.");
        }
        return emojiCompat;
    }

    public static boolean f(InputConnection inputConnection, Editable editable, int i11, int i12, boolean z10) {
        return androidx.emoji2.text.h.b(inputConnection, editable, i11, i12, z10);
    }

    public static boolean g(Editable editable, int i11, KeyEvent keyEvent) {
        return androidx.emoji2.text.h.c(editable, i11, keyEvent);
    }

    public static EmojiCompat h(c cVar) {
        EmojiCompat emojiCompat = f9034q;
        if (emojiCompat == null) {
            synchronized (f9032o) {
                try {
                    emojiCompat = f9034q;
                    if (emojiCompat == null) {
                        emojiCompat = new EmojiCompat(cVar);
                        f9034q = emojiCompat;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return emojiCompat;
    }

    public static boolean i() {
        return f9034q != null;
    }

    private boolean k() {
        return e() == 1;
    }

    private void m() {
        this.f9035a.writeLock().lock();
        try {
            if (this.f9047m == 0) {
                this.f9037c = 0;
            }
            this.f9035a.writeLock().unlock();
            if (e() == 0) {
                this.f9039e.a();
            }
        } catch (Throwable th2) {
            this.f9035a.writeLock().unlock();
            throw th2;
        }
    }

    public int d() {
        return this.f9046l;
    }

    public int e() {
        this.f9035a.readLock().lock();
        try {
            return this.f9037c;
        } finally {
            this.f9035a.readLock().unlock();
        }
    }

    public boolean j() {
        return this.f9045k;
    }

    public void l() {
        androidx.core.util.i.i(this.f9047m == 1, "Set metadataLoadStrategy to LOAD_STRATEGY_MANUAL to execute manual loading");
        if (k()) {
            return;
        }
        this.f9035a.writeLock().lock();
        try {
            if (this.f9037c == 0) {
                this.f9035a.writeLock().unlock();
                return;
            }
            this.f9037c = 0;
            this.f9035a.writeLock().unlock();
            this.f9039e.a();
        } catch (Throwable th2) {
            this.f9035a.writeLock().unlock();
            throw th2;
        }
    }

    void n(Throwable th2) {
        ArrayList arrayList = new ArrayList();
        this.f9035a.writeLock().lock();
        try {
            this.f9037c = 2;
            arrayList.addAll(this.f9036b);
            this.f9036b.clear();
            this.f9035a.writeLock().unlock();
            this.f9038d.post(new ListenerDispatcher(arrayList, this.f9037c, th2));
        } catch (Throwable th3) {
            this.f9035a.writeLock().unlock();
            throw th3;
        }
    }

    void o() {
        ArrayList arrayList = new ArrayList();
        this.f9035a.writeLock().lock();
        try {
            this.f9037c = 1;
            arrayList.addAll(this.f9036b);
            this.f9036b.clear();
            this.f9035a.writeLock().unlock();
            this.f9038d.post(new ListenerDispatcher(arrayList, this.f9037c));
        } catch (Throwable th2) {
            this.f9035a.writeLock().unlock();
            throw th2;
        }
    }

    public CharSequence p(CharSequence charSequence) {
        return q(charSequence, 0, charSequence == null ? 0 : charSequence.length());
    }

    public CharSequence q(CharSequence charSequence, int i11, int i12) {
        return r(charSequence, i11, i12, Integer.MAX_VALUE);
    }

    public CharSequence r(CharSequence charSequence, int i11, int i12, int i13) {
        return s(charSequence, i11, i12, i13, 0);
    }

    public CharSequence s(CharSequence charSequence, int i11, int i12, int i13, int i14) {
        boolean z10;
        androidx.core.util.i.i(k(), "Not initialized yet");
        androidx.core.util.i.e(i11, "start cannot be negative");
        androidx.core.util.i.e(i12, "end cannot be negative");
        androidx.core.util.i.e(i13, "maxEmojiCount cannot be negative");
        androidx.core.util.i.b(i11 <= i12, "start should be <= than end");
        if (charSequence == null) {
            return null;
        }
        androidx.core.util.i.b(i11 <= charSequence.length(), "start should be < than charSequence length");
        androidx.core.util.i.b(i12 <= charSequence.length(), "end should be < than charSequence length");
        if (charSequence.length() == 0 || i11 == i12) {
            return charSequence;
        }
        if (i14 != 1) {
            z10 = i14 != 2 ? this.f9042h : false;
        } else {
            z10 = true;
        }
        return this.f9039e.b(charSequence, i11, i12, i13, z10);
    }

    public void t(f fVar) {
        androidx.core.util.i.h(fVar, "initCallback cannot be null");
        this.f9035a.writeLock().lock();
        try {
            if (this.f9037c == 1 || this.f9037c == 2) {
                this.f9038d.post(new ListenerDispatcher(fVar, this.f9037c));
            } else {
                this.f9036b.add(fVar);
            }
        } finally {
            this.f9035a.writeLock().unlock();
        }
    }

    public void u(f fVar) {
        androidx.core.util.i.h(fVar, "initCallback cannot be null");
        this.f9035a.writeLock().lock();
        try {
            this.f9036b.remove(fVar);
        } finally {
            this.f9035a.writeLock().unlock();
        }
    }

    public void v(EditorInfo editorInfo) {
        if (!k() || editorInfo == null) {
            return;
        }
        if (editorInfo.extras == null) {
            editorInfo.extras = new Bundle();
        }
        this.f9039e.c(editorInfo);
    }
}
