package com.transsion.baseui.util;

import android.content.Context;
import android.graphics.Outline;
import android.os.Build;
import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import android.text.style.ImageSpan;
import android.view.View;
import android.view.ViewOutlineProvider;
import com.transsion.baseui.R$drawable;
import com.transsion.baseui.R$mipmap;
import java.util.ArrayList;
import java.util.List;
import kotlin.NoWhenBranchMatchedException;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes5.dex */
public abstract class q {

    public static final class a extends ViewOutlineProvider {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ float f43533a;

        a(float f11) {
            this.f43533a = f11;
        }

        @Override // android.view.ViewOutlineProvider
        public void getOutline(View view, Outline outline) {
            Intrinsics.h(view, "view");
            Intrinsics.h(outline, "outline");
            outline.setRoundRect(0, 0, view.getWidth(), view.getHeight(), this.f43533a);
        }
    }

    private static final void b(SpannableStringBuilder spannableStringBuilder, Context context, int i11) {
        spannableStringBuilder.append("￼");
        spannableStringBuilder.setSpan(d(context, i11), spannableStringBuilder.length() - 1, spannableStringBuilder.length(), 33);
    }

    public static final void c(View view, float f11) {
        Intrinsics.h(view, "<this>");
        view.setOutlineProvider(new a(f11));
        view.setClipToOutline(true);
    }

    private static final ImageSpan d(Context context, int i11) {
        return Build.VERSION.SDK_INT >= 29 ? new ImageSpan(context, i11, 2) : new ImageSpan(context, i11, 1);
    }

    public static final SpannableStringBuilder e(List array, Context context) {
        Intrinsics.h(array, "array");
        Intrinsics.h(context, "context");
        CollectionsKt.I(array, new Function1() { // from class: com.transsion.baseui.util.p
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return Boolean.valueOf(q.h((String) obj));
            }
        });
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        int i11 = 0;
        for (Object obj : array) {
            int i12 = i11 + 1;
            if (i11 < 0) {
                CollectionsKt.u();
            }
            String str = (String) obj;
            if (Intrinsics.c(str, "special_#shorts_icon")) {
                b(spannableStringBuilder, context, R$drawable.ic_tag_ugc_shorts);
                spannableStringBuilder.append((CharSequence) " ");
            } else if (Intrinsics.c(str, "special_#user_icon")) {
                b(spannableStringBuilder, context, R$drawable.ic_ugc_creator);
                spannableStringBuilder.append((CharSequence) " ");
            } else if (StringsKt.W(str, "dynamic_icon_#", false, 2, null)) {
                Integer numV = StringsKt.v(StringsKt.I0(str, "dynamic_icon_#"));
                if (numV != null) {
                    b(spannableStringBuilder, context, numV.intValue());
                    spannableStringBuilder.append((CharSequence) " ");
                }
            } else {
                spannableStringBuilder.append((CharSequence) str);
                if (i11 < array.size() - 1) {
                    b(spannableStringBuilder, context, R$mipmap.ic_subtitle_split);
                }
            }
            i11 = i12;
        }
        return spannableStringBuilder;
    }

    public static final SpannableStringBuilder f(List items, Context context, boolean z10) {
        Intrinsics.h(items, "items");
        Intrinsics.h(context, "context");
        ArrayList arrayList = new ArrayList();
        for (Object obj : items) {
            k kVar = (k) obj;
            if (!(kVar instanceof k.b) || ((k.b) kVar).a().length() > 0) {
                arrayList.add(obj);
            }
        }
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        int i11 = 0;
        for (Object obj2 : arrayList) {
            int i12 = i11 + 1;
            if (i11 < 0) {
                CollectionsKt.u();
            }
            k kVar2 = (k) obj2;
            if (kVar2 instanceof k.a) {
                b(spannableStringBuilder, context, ((k.a) kVar2).a());
                if (z10) {
                    spannableStringBuilder.append((CharSequence) " ");
                }
            } else {
                if (!(kVar2 instanceof k.b)) {
                    throw new NoWhenBranchMatchedException();
                }
                int length = spannableStringBuilder.length();
                k.b bVar = (k.b) kVar2;
                spannableStringBuilder.append((CharSequence) bVar.a());
                Integer numB = bVar.b();
                if (numB != null) {
                    spannableStringBuilder.setSpan(new ForegroundColorSpan(androidx.core.content.b.getColor(context, numB.intValue())), length, spannableStringBuilder.length(), 33);
                }
                if (i11 < arrayList.size() - 1) {
                    b(spannableStringBuilder, context, R$mipmap.ic_subtitle_split);
                }
            }
            i11 = i12;
        }
        return spannableStringBuilder;
    }

    public static /* synthetic */ SpannableStringBuilder g(List list, Context context, boolean z10, int i11, Object obj) {
        if ((i11 & 4) != 0) {
            z10 = true;
        }
        return f(list, context, z10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean h(String it) {
        Intrinsics.h(it, "it");
        return it.length() == 0;
    }
}
