package u1;

import android.os.Bundle;
import android.text.Spannable;
import android.text.Spanned;
import androidx.media3.common.util.a1;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
abstract class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f76597a = a1.C0(0);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f76598b = a1.C0(1);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final String f76599c = a1.C0(2);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final String f76600d = a1.C0(3);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final String f76601e = a1.C0(4);

    public static ArrayList a(Spanned spanned) {
        ArrayList arrayList = new ArrayList();
        for (f fVar : (f[]) spanned.getSpans(0, spanned.length(), f.class)) {
            arrayList.add(b(spanned, fVar, 1, fVar.b()));
        }
        for (h hVar : (h[]) spanned.getSpans(0, spanned.length(), h.class)) {
            arrayList.add(b(spanned, hVar, 2, hVar.b()));
        }
        for (d dVar : (d[]) spanned.getSpans(0, spanned.length(), d.class)) {
            arrayList.add(b(spanned, dVar, 3, null));
        }
        for (i iVar : (i[]) spanned.getSpans(0, spanned.length(), i.class)) {
            arrayList.add(b(spanned, iVar, 4, iVar.b()));
        }
        return arrayList;
    }

    private static Bundle b(Spanned spanned, Object obj, int i11, Bundle bundle) {
        Bundle bundle2 = new Bundle();
        bundle2.putInt(f76597a, spanned.getSpanStart(obj));
        bundle2.putInt(f76598b, spanned.getSpanEnd(obj));
        bundle2.putInt(f76599c, spanned.getSpanFlags(obj));
        bundle2.putInt(f76600d, i11);
        if (bundle != null) {
            bundle2.putBundle(f76601e, bundle);
        }
        return bundle2;
    }

    public static void c(Bundle bundle, Spannable spannable) {
        int i11 = bundle.getInt(f76597a);
        int i12 = bundle.getInt(f76598b);
        int i13 = bundle.getInt(f76599c);
        int i14 = bundle.getInt(f76600d, -1);
        Bundle bundle2 = bundle.getBundle(f76601e);
        if (i14 == 1) {
            spannable.setSpan(f.a((Bundle) androidx.media3.common.util.a.e(bundle2)), i11, i12, i13);
            return;
        }
        if (i14 == 2) {
            spannable.setSpan(h.a((Bundle) androidx.media3.common.util.a.e(bundle2)), i11, i12, i13);
        } else if (i14 == 3) {
            spannable.setSpan(new d(), i11, i12, i13);
        } else {
            if (i14 != 4) {
                return;
            }
            spannable.setSpan(i.a((Bundle) androidx.media3.common.util.a.e(bundle2)), i11, i12, i13);
        }
    }
}
