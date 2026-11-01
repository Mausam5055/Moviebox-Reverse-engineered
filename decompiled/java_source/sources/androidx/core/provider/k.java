package androidx.core.provider;

import android.content.Context;
import android.graphics.Typeface;
import android.net.Uri;
import android.os.CancellationSignal;
import android.os.Handler;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public abstract class k {

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final int f8213a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final List f8214b;

        a(int i11, List list) {
            this.f8213a = i11;
            this.f8214b = list;
        }

        public a(int i11, b[] bVarArr) {
            this.f8213a = i11;
            this.f8214b = Collections.singletonList(bVarArr);
        }

        static a a(int i11, List list) {
            return new a(i11, list);
        }

        static a b(int i11, b[] bVarArr) {
            return new a(i11, bVarArr);
        }

        public b[] c() {
            return (b[]) this.f8214b.get(0);
        }

        public List d() {
            return this.f8214b;
        }

        public int e() {
            return this.f8213a;
        }

        boolean f() {
            return this.f8214b.size() > 1;
        }
    }

    public static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Uri f8215a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final int f8216b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final int f8217c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final boolean f8218d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final int f8219e;

        public b(Uri uri, int i11, int i12, boolean z10, int i13) {
            this.f8215a = (Uri) androidx.core.util.i.g(uri);
            this.f8216b = i11;
            this.f8217c = i12;
            this.f8218d = z10;
            this.f8219e = i13;
        }

        static b a(Uri uri, int i11, int i12, boolean z10, int i13) {
            return new b(uri, i11, i12, z10, i13);
        }

        public int b() {
            return this.f8219e;
        }

        public int c() {
            return this.f8216b;
        }

        public Uri d() {
            return this.f8215a;
        }

        public int e() {
            return this.f8217c;
        }

        public boolean f() {
            return this.f8218d;
        }
    }

    public static class c {
        public void a(int i11) {
        }

        public void b(Typeface typeface) {
        }
    }

    public static Typeface a(Context context, CancellationSignal cancellationSignal, b[] bVarArr) {
        return z0.i.b(context, cancellationSignal, bVarArr, 0);
    }

    public static a b(Context context, CancellationSignal cancellationSignal, e eVar) {
        return d.e(context, z0.h.a(new Object[]{eVar}), cancellationSignal);
    }

    public static Typeface c(Context context, List list, int i11, boolean z10, int i12, Handler handler, c cVar) {
        CallbackWrapper callbackWrapper = new CallbackWrapper(cVar, RequestExecutor.b(handler));
        if (!z10) {
            return i.d(context, list, i11, null, callbackWrapper);
        }
        if (list.size() <= 1) {
            return i.e(context, (e) list.get(0), callbackWrapper, i11, i12);
        }
        throw new IllegalArgumentException("Fallbacks with blocking fetches are not supported for performance reasons");
    }
}
