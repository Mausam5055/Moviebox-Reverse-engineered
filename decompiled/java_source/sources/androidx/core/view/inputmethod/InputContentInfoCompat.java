package androidx.core.view.inputmethod;

import android.content.ClipDescription;
import android.net.Uri;
import android.os.Build;
import android.view.inputmethod.InputContentInfo;

/* JADX INFO: loaded from: classes.dex */
public final class InputContentInfoCompat {
    private final c mImpl;

    private static final class a implements c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final InputContentInfo f8389a;

        a(Uri uri, ClipDescription clipDescription, Uri uri2) {
            this.f8389a = new InputContentInfo(uri, clipDescription, uri2);
        }

        a(Object obj) {
            this.f8389a = (InputContentInfo) obj;
        }

        @Override // androidx.core.view.inputmethod.InputContentInfoCompat.c
        public Object a() {
            return this.f8389a;
        }

        @Override // androidx.core.view.inputmethod.InputContentInfoCompat.c
        public Uri b() {
            return this.f8389a.getLinkUri();
        }

        @Override // androidx.core.view.inputmethod.InputContentInfoCompat.c
        public Uri c() {
            return this.f8389a.getContentUri();
        }

        @Override // androidx.core.view.inputmethod.InputContentInfoCompat.c
        public void d() {
            this.f8389a.requestPermission();
        }

        @Override // androidx.core.view.inputmethod.InputContentInfoCompat.c
        public void e() {
            this.f8389a.releasePermission();
        }

        @Override // androidx.core.view.inputmethod.InputContentInfoCompat.c
        public ClipDescription getDescription() {
            return this.f8389a.getDescription();
        }
    }

    private static final class b implements c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Uri f8390a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final ClipDescription f8391b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final Uri f8392c;

        b(Uri uri, ClipDescription clipDescription, Uri uri2) {
            this.f8390a = uri;
            this.f8391b = clipDescription;
            this.f8392c = uri2;
        }

        @Override // androidx.core.view.inputmethod.InputContentInfoCompat.c
        public Object a() {
            return null;
        }

        @Override // androidx.core.view.inputmethod.InputContentInfoCompat.c
        public Uri b() {
            return this.f8392c;
        }

        @Override // androidx.core.view.inputmethod.InputContentInfoCompat.c
        public Uri c() {
            return this.f8390a;
        }

        @Override // androidx.core.view.inputmethod.InputContentInfoCompat.c
        public void d() {
        }

        @Override // androidx.core.view.inputmethod.InputContentInfoCompat.c
        public void e() {
        }

        @Override // androidx.core.view.inputmethod.InputContentInfoCompat.c
        public ClipDescription getDescription() {
            return this.f8391b;
        }
    }

    private interface c {
        Object a();

        Uri b();

        Uri c();

        void d();

        void e();

        ClipDescription getDescription();
    }

    public InputContentInfoCompat(Uri uri, ClipDescription clipDescription, Uri uri2) {
        if (Build.VERSION.SDK_INT >= 25) {
            this.mImpl = new a(uri, clipDescription, uri2);
        } else {
            this.mImpl = new b(uri, clipDescription, uri2);
        }
    }

    private InputContentInfoCompat(c cVar) {
        this.mImpl = cVar;
    }

    public static InputContentInfoCompat wrap(Object obj) {
        if (obj != null && Build.VERSION.SDK_INT >= 25) {
            return new InputContentInfoCompat(new a(obj));
        }
        return null;
    }

    public Uri getContentUri() {
        return this.mImpl.c();
    }

    public ClipDescription getDescription() {
        return this.mImpl.getDescription();
    }

    public Uri getLinkUri() {
        return this.mImpl.b();
    }

    public void releasePermission() {
        this.mImpl.e();
    }

    public void requestPermission() {
        this.mImpl.d();
    }

    public Object unwrap() {
        return this.mImpl.a();
    }
}
