package androidx.compose.ui.text.platform.extensions;

import androidx.compose.ui.text.platform.AndroidTextPaint;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Locale;
import kotlin.collections.CollectionsKt;
import n0.h;
import n0.i;

/* JADX INFO: loaded from: classes.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final d f6321a = new d();

    private d() {
    }

    public final Object a(i iVar) {
        ArrayList arrayList = new ArrayList(CollectionsKt.v(iVar, 10));
        Iterator<E> it = iVar.iterator();
        while (it.hasNext()) {
            arrayList.add(((h) it.next()).a());
        }
        Locale[] localeArr = (Locale[]) arrayList.toArray(new Locale[0]);
        return b.a(a.a((Locale[]) Arrays.copyOf(localeArr, localeArr.length)));
    }

    public final void b(AndroidTextPaint androidTextPaint, i iVar) {
        ArrayList arrayList = new ArrayList(CollectionsKt.v(iVar, 10));
        Iterator<E> it = iVar.iterator();
        while (it.hasNext()) {
            arrayList.add(((h) it.next()).a());
        }
        Locale[] localeArr = (Locale[]) arrayList.toArray(new Locale[0]);
        androidTextPaint.setTextLocales(a.a((Locale[]) Arrays.copyOf(localeArr, localeArr.length)));
    }
}
