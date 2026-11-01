package yp;

import android.content.Context;
import android.net.Uri;
import android.widget.ImageView;
import ej.f;
import kotlin.jvm.internal.Intrinsics;
import oh.h;

/* JADX INFO: loaded from: classes6.dex */
public abstract class a {
    public static final void a(ImageView imageView, Uri uri, float f11) {
        Intrinsics.h(imageView, "<this>");
        if (uri == null) {
            return;
        }
        f.a aVar = f.f61882a;
        Context context = imageView.getContext();
        Intrinsics.g(context, "getContext(...)");
        f.b bVarG = aVar.m(context).g(uri.toString());
        h hVar = h.f71021a;
        Context context2 = imageView.getContext();
        Intrinsics.g(context2, "getContext(...)");
        bVarG.j(hVar.a(context2, f11)).d(imageView);
    }

    public static final void b(ImageView imageView, String url, float f11) {
        Intrinsics.h(imageView, "<this>");
        Intrinsics.h(url, "url");
        f.a aVar = f.f61882a;
        Context context = imageView.getContext();
        Intrinsics.g(context, "getContext(...)");
        f.b bVarG = aVar.m(context).g(url);
        h hVar = h.f71021a;
        Context context2 = imageView.getContext();
        Intrinsics.g(context2, "getContext(...)");
        bVarG.j(hVar.a(context2, f11)).d(imageView);
    }

    public static /* synthetic */ void c(ImageView imageView, String str, float f11, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            f11 = 0.0f;
        }
        b(imageView, str, f11);
    }
}
