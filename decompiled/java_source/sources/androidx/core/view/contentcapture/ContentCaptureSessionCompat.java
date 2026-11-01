package androidx.core.view.contentcapture;

import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.view.ViewStructure;
import android.view.autofill.AutofillId;
import android.view.contentcapture.ContentCaptureSession;
import androidx.core.view.ViewCompat;
import androidx.core.view.ViewStructureCompat;
import androidx.core.view.autofill.AutofillIdCompat;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public class ContentCaptureSessionCompat {
    private static final String KEY_VIEW_TREE_APPEARED = "TREAT_AS_VIEW_TREE_APPEARED";
    private static final String KEY_VIEW_TREE_APPEARING = "TREAT_AS_VIEW_TREE_APPEARING";
    private final View mView;
    private final Object mWrappedObj;

    private static class a {
        static Bundle a(ViewStructure viewStructure) {
            return viewStructure.getExtras();
        }
    }

    private static class b {
        static AutofillId a(ContentCaptureSession contentCaptureSession, AutofillId autofillId, long j11) {
            return contentCaptureSession.newAutofillId(autofillId, j11);
        }

        static ViewStructure b(ContentCaptureSession contentCaptureSession, View view) {
            return contentCaptureSession.newViewStructure(view);
        }

        static ViewStructure c(ContentCaptureSession contentCaptureSession, AutofillId autofillId, long j11) {
            return contentCaptureSession.newVirtualViewStructure(autofillId, j11);
        }

        static void d(ContentCaptureSession contentCaptureSession, ViewStructure viewStructure) {
            contentCaptureSession.notifyViewAppeared(viewStructure);
        }

        public static void e(ContentCaptureSession contentCaptureSession, AutofillId autofillId, CharSequence charSequence) {
            contentCaptureSession.notifyViewTextChanged(autofillId, charSequence);
        }

        static void f(ContentCaptureSession contentCaptureSession, AutofillId autofillId, long[] jArr) {
            contentCaptureSession.notifyViewsDisappeared(autofillId, jArr);
        }
    }

    private static class c {
        static void a(ContentCaptureSession contentCaptureSession, List list) {
            contentCaptureSession.notifyViewsAppeared(list);
        }
    }

    private ContentCaptureSessionCompat(ContentCaptureSession contentCaptureSession, View view) {
        this.mWrappedObj = contentCaptureSession;
        this.mView = view;
    }

    public static ContentCaptureSessionCompat toContentCaptureSessionCompat(ContentCaptureSession contentCaptureSession, View view) {
        return new ContentCaptureSessionCompat(contentCaptureSession, view);
    }

    public AutofillId newAutofillId(long j11) {
        if (Build.VERSION.SDK_INT < 29) {
            return null;
        }
        ContentCaptureSession contentCaptureSessionA = androidx.compose.ui.platform.coreshims.c.a(this.mWrappedObj);
        AutofillIdCompat autofillId = ViewCompat.getAutofillId(this.mView);
        Objects.requireNonNull(autofillId);
        return b.a(contentCaptureSessionA, autofillId.toAutofillId(), j11);
    }

    public ViewStructureCompat newVirtualViewStructure(AutofillId autofillId, long j11) {
        if (Build.VERSION.SDK_INT >= 29) {
            return ViewStructureCompat.toViewStructureCompat(b.c(androidx.compose.ui.platform.coreshims.c.a(this.mWrappedObj), autofillId, j11));
        }
        return null;
    }

    public void notifyViewTextChanged(AutofillId autofillId, CharSequence charSequence) {
        if (Build.VERSION.SDK_INT >= 29) {
            b.e(androidx.compose.ui.platform.coreshims.c.a(this.mWrappedObj), autofillId, charSequence);
        }
    }

    public void notifyViewsAppeared(List<ViewStructure> list) {
        int i11 = Build.VERSION.SDK_INT;
        if (i11 >= 34) {
            c.a(androidx.compose.ui.platform.coreshims.c.a(this.mWrappedObj), list);
            return;
        }
        if (i11 >= 29) {
            ViewStructure viewStructureB = b.b(androidx.compose.ui.platform.coreshims.c.a(this.mWrappedObj), this.mView);
            a.a(viewStructureB).putBoolean(KEY_VIEW_TREE_APPEARING, true);
            b.d(androidx.compose.ui.platform.coreshims.c.a(this.mWrappedObj), viewStructureB);
            for (int i12 = 0; i12 < list.size(); i12++) {
                b.d(androidx.compose.ui.platform.coreshims.c.a(this.mWrappedObj), list.get(i12));
            }
            ViewStructure viewStructureB2 = b.b(androidx.compose.ui.platform.coreshims.c.a(this.mWrappedObj), this.mView);
            a.a(viewStructureB2).putBoolean(KEY_VIEW_TREE_APPEARED, true);
            b.d(androidx.compose.ui.platform.coreshims.c.a(this.mWrappedObj), viewStructureB2);
        }
    }

    public void notifyViewsDisappeared(long[] jArr) {
        int i11 = Build.VERSION.SDK_INT;
        if (i11 >= 34) {
            ContentCaptureSession contentCaptureSessionA = androidx.compose.ui.platform.coreshims.c.a(this.mWrappedObj);
            AutofillIdCompat autofillId = ViewCompat.getAutofillId(this.mView);
            Objects.requireNonNull(autofillId);
            b.f(contentCaptureSessionA, autofillId.toAutofillId(), jArr);
            return;
        }
        if (i11 >= 29) {
            ViewStructure viewStructureB = b.b(androidx.compose.ui.platform.coreshims.c.a(this.mWrappedObj), this.mView);
            a.a(viewStructureB).putBoolean(KEY_VIEW_TREE_APPEARING, true);
            b.d(androidx.compose.ui.platform.coreshims.c.a(this.mWrappedObj), viewStructureB);
            ContentCaptureSession contentCaptureSessionA2 = androidx.compose.ui.platform.coreshims.c.a(this.mWrappedObj);
            AutofillIdCompat autofillId2 = ViewCompat.getAutofillId(this.mView);
            Objects.requireNonNull(autofillId2);
            b.f(contentCaptureSessionA2, autofillId2.toAutofillId(), jArr);
            ViewStructure viewStructureB2 = b.b(androidx.compose.ui.platform.coreshims.c.a(this.mWrappedObj), this.mView);
            a.a(viewStructureB2).putBoolean(KEY_VIEW_TREE_APPEARED, true);
            b.d(androidx.compose.ui.platform.coreshims.c.a(this.mWrappedObj), viewStructureB2);
        }
    }

    public ContentCaptureSession toContentCaptureSession() {
        return androidx.compose.ui.platform.coreshims.c.a(this.mWrappedObj);
    }
}
