package com.cloud.tmc.integration.utils.ext;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BlurMaskFilter;
import android.graphics.MaskFilter;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.text.Layout;
import android.text.Spannable;
import android.text.SpannableStringBuilder;
import android.text.TextPaint;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.AlignmentSpan;
import android.text.style.BulletSpan;
import android.text.style.ClickableSpan;
import android.text.style.ImageSpan;
import android.text.style.LeadingMarginSpan;
import android.text.style.MaskFilterSpan;
import android.text.style.QuoteSpan;
import android.text.style.TypefaceSpan;
import android.text.style.URLSpan;
import android.view.View;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.cloud.tmc.integration.BuildConfig;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0096\u0001\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\r\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a5\u0010\u0003\u001a\u00020\u00042\n\b\u0003\u0010\u0005\u001a\u0004\u0018\u00010\u00062\b\b\u0002\u0010\u0007\u001a\u00020\b2\u0012\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\u0010\r\u001a)\u0010\u000e\u001a\u00020\u000f*\u00020\u000f2\u0017\u0010\u0010\u001a\u0013\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\u0011H\u0086\bø\u0001\u0000\u001a)\u0010\u0012\u001a\u00020\u000f*\u00020\u000f2\u0017\u0010\u0010\u001a\u0013\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\u0011H\u0086\bø\u0001\u0000\u001a1\u0010\u0013\u001a\u00020\u000f*\u00020\u000f2\u0006\u0010\u0013\u001a\u00020\u00142\u0017\u0010\u0010\u001a\u0013\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\u0011H\u0086\bø\u0001\u0000\u001a\u001a\u0010\u0015\u001a\u00020\u000f*\u00020\u000f2\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0019\u001a&\u0010\u0015\u001a\u00020\u000f*\u00020\u000f2\u0006\u0010\u001a\u001a\u00020\u001b2\b\b\u0002\u0010\u001c\u001a\u00020\u00062\b\b\u0002\u0010\u001d\u001a\u00020\u0006\u001a\u001c\u0010\u0015\u001a\u00020\u000f*\u00020\u000f2\b\b\u0001\u0010\u001e\u001a\u00020\u00062\u0006\u0010\u0018\u001a\u00020\u0019\u001a.\u0010\u001f\u001a\u00020\u000f*\u00020\u000f2\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00192\u0012\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n\u001a:\u0010\u001f\u001a\u00020\u000f*\u00020\u000f2\u0006\u0010\u001a\u001a\u00020\u001b2\b\b\u0002\u0010\u001c\u001a\u00020\u00062\b\b\u0002\u0010\u001d\u001a\u00020\u00062\u0012\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n\u001aC\u0010\u001f\u001a\u00020\u000f*\u00020\u000f2\b\u0010 \u001a\u0004\u0018\u00010!2\n\b\u0003\u0010\u0005\u001a\u0004\u0018\u00010\u00062\b\b\u0002\u0010\u0007\u001a\u00020\b2\u0012\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\u0010\"\u001a0\u0010\u001f\u001a\u00020\u000f*\u00020\u000f2\b\b\u0001\u0010\u001e\u001a\u00020\u00062\u0006\u0010\u0018\u001a\u00020\u00192\u0012\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n\u001a\u001e\u0010#\u001a\u00020\u000f*\u00020\u000f2\b\b\u0001\u0010$\u001a\u00020%2\b\b\u0003\u0010\u0005\u001a\u00020\u0006\u001a\u001e\u0010#\u001a\u00020\u000f*\u00020\u000f2\b\b\u0001\u0010$\u001a\u00020\u00062\b\b\u0003\u0010\u0005\u001a\u00020\u0006\u001a;\u0010&\u001a\u00020\u000f*\u00020\u000f2\u0006\u0010'\u001a\u00020%2\b\b\u0002\u0010(\u001a\u00020)2\u0017\u0010\u0010\u001a\u0013\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\u0011H\u0086\bø\u0001\u0000\u001aB\u0010*\u001a\u00020\u000f*\u00020\u000f2\u0006\u0010+\u001a\u00020%2\n\b\u0003\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0017\u0010\u0010\u001a\u0013\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\u0011H\u0086\bø\u0001\u0000¢\u0006\u0002\u0010,\u001aD\u0010*\u001a\u00020\u000f*\u00020\u000f2\b\b\u0002\u0010+\u001a\u00020\u00062\n\b\u0003\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0017\u0010\u0010\u001a\u0013\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\u0011H\u0086\bø\u0001\u0000¢\u0006\u0002\u0010-\u001a3\u0010.\u001a\u00020\u000f*\u00020\u000f2\b\u0010/\u001a\u0004\u0018\u00010\u00012\u0017\u0010\u0010\u001a\u0013\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\u0011H\u0086\bø\u0001\u0000\u001a;\u00100\u001a\u00020\u000f*\u00020\u000f2\u0006\u00101\u001a\u00020%2\b\b\u0002\u00102\u001a\u00020%2\u0017\u0010\u0010\u001a\u0013\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\u0011H\u0086\bø\u0001\u0000\u001a;\u00100\u001a\u00020\u000f*\u00020\u000f2\u0006\u00101\u001a\u00020\u00062\b\b\u0002\u00102\u001a\u00020\u00062\u0017\u0010\u0010\u001a\u0013\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\u0011H\u0086\bø\u0001\u0000\u001a1\u00103\u001a\u00020\u000f*\u00020\u000f2\u0006\u00104\u001a\u0002052\u0017\u0010\u0010\u001a\u0013\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\u0011H\u0086\bø\u0001\u0000\u001a:\u00106\u001a\u00020\u000f*\u00020\u000f2\n\b\u0003\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0017\u0010\u0010\u001a\u0013\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\u0011H\u0086\bø\u0001\u0000¢\u0006\u0002\u00107\u001a$\u00108\u001a\u0004\u0018\u00010\f*\u0002092\u0006\u0010:\u001a\u00020\u00012\u0006\u0010;\u001a\u00020<H\u0086\u0002¢\u0006\u0002\u0010=\u001a*\u00108\u001a\u0004\u0018\u00010\f*\u0002092\u0006\u0010:\u001a\u00020\u00012\f\u0010>\u001a\b\u0012\u0004\u0012\u00020<0?H\u0086\u0002¢\u0006\u0002\u0010@\u001a1\u0010$\u001a\u00020\u000f*\u00020\u000f2\u0006\u0010$\u001a\u00020%2\u0017\u0010\u0010\u001a\u0013\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\u0011H\u0086\bø\u0001\u0000\u001a1\u0010$\u001a\u00020\u000f*\u00020\u000f2\u0006\u0010$\u001a\u00020\u00062\u0017\u0010\u0010\u001a\u0013\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\u0011H\u0086\bø\u0001\u0000\u001a1\u0010A\u001a\u00020\u000f*\u00020\u000f2\u0006\u0010A\u001a\u00020B2\u0017\u0010\u0010\u001a\u0013\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\u0011H\u0086\bø\u0001\u0000\u001a1\u0010C\u001a\u00020\u000f*\u00020\u000f2\u0006\u0010C\u001a\u00020\u00012\u0017\u0010\u0010\u001a\u0013\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\u0011H\u0086\bø\u0001\u0000\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006D"}, d2 = {"IMAGE_SPAN_TEXT", "", "SPACE_SPAN_TEXT", "ClickableSpan", "Landroid/text/style/ClickableSpan;", TtmlNode.ATTR_TTS_COLOR, "", "isUnderlineText", "", "onClick", "Lkotlin/Function1;", "Landroid/view/View;", "", "(Ljava/lang/Integer;ZLkotlin/jvm/functions/Function1;)Landroid/text/style/ClickableSpan;", "alignCenter", "Landroid/text/SpannableStringBuilder;", "builderAction", "Lkotlin/ExtensionFunctionType;", "alignOpposite", "alignment", "Landroid/text/Layout$Alignment;", RequestParameters.SUBRESOURCE_APPEND, "bitmap", "Landroid/graphics/Bitmap;", "context", "Landroid/content/Context;", "drawable", "Landroid/graphics/drawable/Drawable;", "width", "height", "resourceId", "appendClickable", MimeTypes.BASE_TYPE_TEXT, "", "(Landroid/text/SpannableStringBuilder;Ljava/lang/CharSequence;Ljava/lang/Integer;ZLkotlin/jvm/functions/Function1;)Landroid/text/SpannableStringBuilder;", "appendSpace", "size", "", "blur", "radius", TtmlNode.TAG_STYLE, "Landroid/graphics/BlurMaskFilter$Blur;", "bullet", "gapWidth", "(Landroid/text/SpannableStringBuilder;FLjava/lang/Integer;Lkotlin/jvm/functions/Function1;)Landroid/text/SpannableStringBuilder;", "(Landroid/text/SpannableStringBuilder;ILjava/lang/Integer;Lkotlin/jvm/functions/Function1;)Landroid/text/SpannableStringBuilder;", TtmlNode.ATTR_TTS_FONT_FAMILY, "family", "leadingMargin", "first", "rest", "maskFilter", "filter", "Landroid/graphics/MaskFilter;", "quote", "(Landroid/text/SpannableStringBuilder;Ljava/lang/Integer;Lkotlin/jvm/functions/Function1;)Landroid/text/SpannableStringBuilder;", "set", "Landroid/text/Spannable;", "string", TtmlNode.TAG_SPAN, "", "(Landroid/text/Spannable;Ljava/lang/String;Ljava/lang/Object;)Lkotlin/Unit;", "spans", "", "(Landroid/text/Spannable;Ljava/lang/String;Ljava/util/List;)Lkotlin/Unit;", "typeface", "Landroid/graphics/Typeface;", "url", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 2, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class SpannableExtKt {
    private static final String IMAGE_SPAN_TEXT = "<img/>";
    private static final String SPACE_SPAN_TEXT = "<space/>";

    public static final ClickableSpan ClickableSpan(final Integer num, final boolean z10, final Function1<? super View, Unit> onClick) {
        Intrinsics.h(onClick, "onClick");
        return new ClickableSpan() { // from class: com.cloud.tmc.integration.utils.ext.SpannableExtKt.ClickableSpan.1
            @Override // android.text.style.ClickableSpan
            public void onClick(View widget) {
                Intrinsics.h(widget, "widget");
                onClick.invoke(widget);
            }

            @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
            public void updateDrawState(TextPaint ds2) {
                Intrinsics.h(ds2, "ds");
                Integer num2 = num;
                ds2.setColor(num2 != null ? num2.intValue() : ds2.linkColor);
                ds2.setUnderlineText(z10);
            }
        };
    }

    public static /* synthetic */ ClickableSpan ClickableSpan$default(Integer num, boolean z10, Function1 function1, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            num = null;
        }
        if ((i11 & 2) != 0) {
            z10 = true;
        }
        return ClickableSpan(num, z10, function1);
    }

    public static final SpannableStringBuilder alignCenter(SpannableStringBuilder spannableStringBuilder, Function1<? super SpannableStringBuilder, Unit> builderAction) {
        Intrinsics.h(spannableStringBuilder, "<this>");
        Intrinsics.h(builderAction, "builderAction");
        AlignmentSpan.Standard standard = new AlignmentSpan.Standard(Layout.Alignment.ALIGN_CENTER);
        int length = spannableStringBuilder.length();
        builderAction.invoke(spannableStringBuilder);
        spannableStringBuilder.setSpan(standard, length, spannableStringBuilder.length(), 17);
        return spannableStringBuilder;
    }

    public static final SpannableStringBuilder alignOpposite(SpannableStringBuilder spannableStringBuilder, Function1<? super SpannableStringBuilder, Unit> builderAction) {
        Intrinsics.h(spannableStringBuilder, "<this>");
        Intrinsics.h(builderAction, "builderAction");
        AlignmentSpan.Standard standard = new AlignmentSpan.Standard(Layout.Alignment.ALIGN_OPPOSITE);
        int length = spannableStringBuilder.length();
        builderAction.invoke(spannableStringBuilder);
        spannableStringBuilder.setSpan(standard, length, spannableStringBuilder.length(), 17);
        return spannableStringBuilder;
    }

    public static final SpannableStringBuilder alignment(SpannableStringBuilder spannableStringBuilder, Layout.Alignment alignment, Function1<? super SpannableStringBuilder, Unit> builderAction) {
        Intrinsics.h(spannableStringBuilder, "<this>");
        Intrinsics.h(alignment, "alignment");
        Intrinsics.h(builderAction, "builderAction");
        AlignmentSpan.Standard standard = new AlignmentSpan.Standard(alignment);
        int length = spannableStringBuilder.length();
        builderAction.invoke(spannableStringBuilder);
        spannableStringBuilder.setSpan(standard, length, spannableStringBuilder.length(), 17);
        return spannableStringBuilder;
    }

    public static final SpannableStringBuilder append(SpannableStringBuilder spannableStringBuilder, int i11, Context context) {
        Intrinsics.h(spannableStringBuilder, "<this>");
        Intrinsics.h(context, "context");
        ImageSpan imageSpan = new ImageSpan(context, i11);
        int length = spannableStringBuilder.length();
        spannableStringBuilder.append(IMAGE_SPAN_TEXT);
        spannableStringBuilder.setSpan(imageSpan, length, spannableStringBuilder.length(), 17);
        return spannableStringBuilder;
    }

    public static final SpannableStringBuilder append(SpannableStringBuilder spannableStringBuilder, Bitmap bitmap, Context context) {
        Intrinsics.h(spannableStringBuilder, "<this>");
        Intrinsics.h(bitmap, "bitmap");
        Intrinsics.h(context, "context");
        ImageSpan imageSpan = new ImageSpan(context, bitmap);
        int length = spannableStringBuilder.length();
        spannableStringBuilder.append(IMAGE_SPAN_TEXT);
        spannableStringBuilder.setSpan(imageSpan, length, spannableStringBuilder.length(), 17);
        return spannableStringBuilder;
    }

    public static final SpannableStringBuilder append(SpannableStringBuilder spannableStringBuilder, Drawable drawable, int i11, int i12) {
        Intrinsics.h(spannableStringBuilder, "<this>");
        Intrinsics.h(drawable, "drawable");
        drawable.setBounds(0, 0, i11, i12);
        ImageSpan imageSpan = new ImageSpan(drawable);
        int length = spannableStringBuilder.length();
        spannableStringBuilder.append(IMAGE_SPAN_TEXT);
        spannableStringBuilder.setSpan(imageSpan, length, spannableStringBuilder.length(), 17);
        return spannableStringBuilder;
    }

    public static /* synthetic */ SpannableStringBuilder append$default(SpannableStringBuilder spannableStringBuilder, Drawable drawable, int i11, int i12, int i13, Object obj) {
        if ((i13 & 2) != 0) {
            i11 = drawable.getIntrinsicWidth();
        }
        if ((i13 & 4) != 0) {
            i12 = drawable.getIntrinsicHeight();
        }
        return append(spannableStringBuilder, drawable, i11, i12);
    }

    public static final SpannableStringBuilder appendClickable(SpannableStringBuilder spannableStringBuilder, int i11, Context context, Function1<? super View, Unit> onClick) {
        Intrinsics.h(spannableStringBuilder, "<this>");
        Intrinsics.h(context, "context");
        Intrinsics.h(onClick, "onClick");
        ClickableSpan clickableSpanClickableSpan$default = ClickableSpan$default(null, false, onClick, 3, null);
        int length = spannableStringBuilder.length();
        append(spannableStringBuilder, i11, context);
        spannableStringBuilder.setSpan(clickableSpanClickableSpan$default, length, spannableStringBuilder.length(), 17);
        return spannableStringBuilder;
    }

    public static final SpannableStringBuilder appendClickable(SpannableStringBuilder spannableStringBuilder, Bitmap bitmap, Context context, Function1<? super View, Unit> onClick) {
        Intrinsics.h(spannableStringBuilder, "<this>");
        Intrinsics.h(bitmap, "bitmap");
        Intrinsics.h(context, "context");
        Intrinsics.h(onClick, "onClick");
        ClickableSpan clickableSpanClickableSpan$default = ClickableSpan$default(null, false, onClick, 3, null);
        int length = spannableStringBuilder.length();
        append(spannableStringBuilder, bitmap, context);
        spannableStringBuilder.setSpan(clickableSpanClickableSpan$default, length, spannableStringBuilder.length(), 17);
        return spannableStringBuilder;
    }

    public static final SpannableStringBuilder appendClickable(SpannableStringBuilder spannableStringBuilder, Drawable drawable, int i11, int i12, Function1<? super View, Unit> onClick) {
        Intrinsics.h(spannableStringBuilder, "<this>");
        Intrinsics.h(drawable, "drawable");
        Intrinsics.h(onClick, "onClick");
        ClickableSpan clickableSpanClickableSpan$default = ClickableSpan$default(null, false, onClick, 3, null);
        int length = spannableStringBuilder.length();
        append(spannableStringBuilder, drawable, i11, i12);
        spannableStringBuilder.setSpan(clickableSpanClickableSpan$default, length, spannableStringBuilder.length(), 17);
        return spannableStringBuilder;
    }

    public static final SpannableStringBuilder appendClickable(SpannableStringBuilder spannableStringBuilder, CharSequence charSequence, Integer num, boolean z10, Function1<? super View, Unit> onClick) {
        Intrinsics.h(spannableStringBuilder, "<this>");
        Intrinsics.h(onClick, "onClick");
        ClickableSpan ClickableSpan = ClickableSpan(num, z10, onClick);
        int length = spannableStringBuilder.length();
        spannableStringBuilder.append(charSequence);
        spannableStringBuilder.setSpan(ClickableSpan, length, spannableStringBuilder.length(), 17);
        return spannableStringBuilder;
    }

    public static /* synthetic */ SpannableStringBuilder appendClickable$default(SpannableStringBuilder spannableStringBuilder, Drawable drawable, int i11, int i12, Function1 function1, int i13, Object obj) {
        if ((i13 & 2) != 0) {
            i11 = drawable.getIntrinsicWidth();
        }
        if ((i13 & 4) != 0) {
            i12 = drawable.getIntrinsicHeight();
        }
        return appendClickable(spannableStringBuilder, drawable, i11, i12, (Function1<? super View, Unit>) function1);
    }

    public static /* synthetic */ SpannableStringBuilder appendClickable$default(SpannableStringBuilder spannableStringBuilder, CharSequence charSequence, Integer num, boolean z10, Function1 function1, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            num = null;
        }
        if ((i11 & 4) != 0) {
            z10 = true;
        }
        return appendClickable(spannableStringBuilder, charSequence, num, z10, (Function1<? super View, Unit>) function1);
    }

    public static final SpannableStringBuilder appendSpace(SpannableStringBuilder spannableStringBuilder, float f11, int i11) {
        Intrinsics.h(spannableStringBuilder, "<this>");
        return appendSpace(spannableStringBuilder, (int) f11, i11);
    }

    public static final SpannableStringBuilder appendSpace(SpannableStringBuilder spannableStringBuilder, int i11, int i12) {
        Intrinsics.h(spannableStringBuilder, "<this>");
        SpaceSpan spaceSpan = new SpaceSpan(i11, i12);
        int length = spannableStringBuilder.length();
        spannableStringBuilder.append(SPACE_SPAN_TEXT);
        spannableStringBuilder.setSpan(spaceSpan, length, spannableStringBuilder.length(), 17);
        return spannableStringBuilder;
    }

    public static /* synthetic */ SpannableStringBuilder appendSpace$default(SpannableStringBuilder spannableStringBuilder, float f11, int i11, int i12, Object obj) {
        if ((i12 & 2) != 0) {
            i11 = 0;
        }
        return appendSpace(spannableStringBuilder, f11, i11);
    }

    public static /* synthetic */ SpannableStringBuilder appendSpace$default(SpannableStringBuilder spannableStringBuilder, int i11, int i12, int i13, Object obj) {
        if ((i13 & 2) != 0) {
            i12 = 0;
        }
        return appendSpace(spannableStringBuilder, i11, i12);
    }

    public static final SpannableStringBuilder blur(SpannableStringBuilder spannableStringBuilder, float f11, BlurMaskFilter.Blur style, Function1<? super SpannableStringBuilder, Unit> builderAction) {
        Intrinsics.h(spannableStringBuilder, "<this>");
        Intrinsics.h(style, "style");
        Intrinsics.h(builderAction, "builderAction");
        MaskFilterSpan maskFilterSpan = new MaskFilterSpan(new BlurMaskFilter(f11, style));
        int length = spannableStringBuilder.length();
        builderAction.invoke(spannableStringBuilder);
        spannableStringBuilder.setSpan(maskFilterSpan, length, spannableStringBuilder.length(), 17);
        return spannableStringBuilder;
    }

    public static /* synthetic */ SpannableStringBuilder blur$default(SpannableStringBuilder spannableStringBuilder, float f11, BlurMaskFilter.Blur style, Function1 builderAction, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            style = BlurMaskFilter.Blur.NORMAL;
        }
        Intrinsics.h(spannableStringBuilder, "<this>");
        Intrinsics.h(style, "style");
        Intrinsics.h(builderAction, "builderAction");
        MaskFilterSpan maskFilterSpan = new MaskFilterSpan(new BlurMaskFilter(f11, style));
        int length = spannableStringBuilder.length();
        builderAction.invoke(spannableStringBuilder);
        spannableStringBuilder.setSpan(maskFilterSpan, length, spannableStringBuilder.length(), 17);
        return spannableStringBuilder;
    }

    public static final SpannableStringBuilder bullet(SpannableStringBuilder spannableStringBuilder, float f11, Integer num, Function1<? super SpannableStringBuilder, Unit> builderAction) {
        Intrinsics.h(spannableStringBuilder, "<this>");
        Intrinsics.h(builderAction, "builderAction");
        int i11 = (int) f11;
        BulletSpan bulletSpan = num == null ? new BulletSpan(i11) : new BulletSpan(i11, num.intValue());
        int length = spannableStringBuilder.length();
        builderAction.invoke(spannableStringBuilder);
        spannableStringBuilder.setSpan(bulletSpan, length, spannableStringBuilder.length(), 17);
        return spannableStringBuilder;
    }

    public static final SpannableStringBuilder bullet(SpannableStringBuilder spannableStringBuilder, int i11, Integer num, Function1<? super SpannableStringBuilder, Unit> builderAction) {
        Intrinsics.h(spannableStringBuilder, "<this>");
        Intrinsics.h(builderAction, "builderAction");
        BulletSpan bulletSpan = num == null ? new BulletSpan(i11) : new BulletSpan(i11, num.intValue());
        int length = spannableStringBuilder.length();
        builderAction.invoke(spannableStringBuilder);
        spannableStringBuilder.setSpan(bulletSpan, length, spannableStringBuilder.length(), 17);
        return spannableStringBuilder;
    }

    public static /* synthetic */ SpannableStringBuilder bullet$default(SpannableStringBuilder spannableStringBuilder, float f11, Integer num, Function1 builderAction, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            num = null;
        }
        Intrinsics.h(spannableStringBuilder, "<this>");
        Intrinsics.h(builderAction, "builderAction");
        int i12 = (int) f11;
        BulletSpan bulletSpan = num == null ? new BulletSpan(i12) : new BulletSpan(i12, num.intValue());
        int length = spannableStringBuilder.length();
        builderAction.invoke(spannableStringBuilder);
        spannableStringBuilder.setSpan(bulletSpan, length, spannableStringBuilder.length(), 17);
        return spannableStringBuilder;
    }

    public static /* synthetic */ SpannableStringBuilder bullet$default(SpannableStringBuilder spannableStringBuilder, int i11, Integer num, Function1 builderAction, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            i11 = 2;
        }
        if ((i12 & 2) != 0) {
            num = null;
        }
        Intrinsics.h(spannableStringBuilder, "<this>");
        Intrinsics.h(builderAction, "builderAction");
        BulletSpan bulletSpan = num == null ? new BulletSpan(i11) : new BulletSpan(i11, num.intValue());
        int length = spannableStringBuilder.length();
        builderAction.invoke(spannableStringBuilder);
        spannableStringBuilder.setSpan(bulletSpan, length, spannableStringBuilder.length(), 17);
        return spannableStringBuilder;
    }

    public static final SpannableStringBuilder fontFamily(SpannableStringBuilder spannableStringBuilder, String str, Function1<? super SpannableStringBuilder, Unit> builderAction) {
        Intrinsics.h(spannableStringBuilder, "<this>");
        Intrinsics.h(builderAction, "builderAction");
        TypefaceSpan typefaceSpan = new TypefaceSpan(str);
        int length = spannableStringBuilder.length();
        builderAction.invoke(spannableStringBuilder);
        spannableStringBuilder.setSpan(typefaceSpan, length, spannableStringBuilder.length(), 17);
        return spannableStringBuilder;
    }

    public static final SpannableStringBuilder leadingMargin(SpannableStringBuilder spannableStringBuilder, float f11, float f12, Function1<? super SpannableStringBuilder, Unit> builderAction) {
        Intrinsics.h(spannableStringBuilder, "<this>");
        Intrinsics.h(builderAction, "builderAction");
        LeadingMarginSpan.Standard standard = new LeadingMarginSpan.Standard((int) f11, (int) f12);
        int length = spannableStringBuilder.length();
        builderAction.invoke(spannableStringBuilder);
        spannableStringBuilder.setSpan(standard, length, spannableStringBuilder.length(), 17);
        return spannableStringBuilder;
    }

    public static final SpannableStringBuilder leadingMargin(SpannableStringBuilder spannableStringBuilder, int i11, int i12, Function1<? super SpannableStringBuilder, Unit> builderAction) {
        Intrinsics.h(spannableStringBuilder, "<this>");
        Intrinsics.h(builderAction, "builderAction");
        LeadingMarginSpan.Standard standard = new LeadingMarginSpan.Standard(i11, i12);
        int length = spannableStringBuilder.length();
        builderAction.invoke(spannableStringBuilder);
        spannableStringBuilder.setSpan(standard, length, spannableStringBuilder.length(), 17);
        return spannableStringBuilder;
    }

    public static /* synthetic */ SpannableStringBuilder leadingMargin$default(SpannableStringBuilder spannableStringBuilder, float f11, float f12, Function1 builderAction, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            f12 = f11;
        }
        Intrinsics.h(spannableStringBuilder, "<this>");
        Intrinsics.h(builderAction, "builderAction");
        LeadingMarginSpan.Standard standard = new LeadingMarginSpan.Standard((int) f11, (int) f12);
        int length = spannableStringBuilder.length();
        builderAction.invoke(spannableStringBuilder);
        spannableStringBuilder.setSpan(standard, length, spannableStringBuilder.length(), 17);
        return spannableStringBuilder;
    }

    public static /* synthetic */ SpannableStringBuilder leadingMargin$default(SpannableStringBuilder spannableStringBuilder, int i11, int i12, Function1 builderAction, int i13, Object obj) {
        if ((i13 & 2) != 0) {
            i12 = i11;
        }
        Intrinsics.h(spannableStringBuilder, "<this>");
        Intrinsics.h(builderAction, "builderAction");
        LeadingMarginSpan.Standard standard = new LeadingMarginSpan.Standard(i11, i12);
        int length = spannableStringBuilder.length();
        builderAction.invoke(spannableStringBuilder);
        spannableStringBuilder.setSpan(standard, length, spannableStringBuilder.length(), 17);
        return spannableStringBuilder;
    }

    public static final SpannableStringBuilder maskFilter(SpannableStringBuilder spannableStringBuilder, MaskFilter filter, Function1<? super SpannableStringBuilder, Unit> builderAction) {
        Intrinsics.h(spannableStringBuilder, "<this>");
        Intrinsics.h(filter, "filter");
        Intrinsics.h(builderAction, "builderAction");
        MaskFilterSpan maskFilterSpan = new MaskFilterSpan(filter);
        int length = spannableStringBuilder.length();
        builderAction.invoke(spannableStringBuilder);
        spannableStringBuilder.setSpan(maskFilterSpan, length, spannableStringBuilder.length(), 17);
        return spannableStringBuilder;
    }

    public static final SpannableStringBuilder quote(SpannableStringBuilder spannableStringBuilder, Integer num, Function1<? super SpannableStringBuilder, Unit> builderAction) {
        Intrinsics.h(spannableStringBuilder, "<this>");
        Intrinsics.h(builderAction, "builderAction");
        QuoteSpan quoteSpan = num == null ? new QuoteSpan() : new QuoteSpan(num.intValue());
        int length = spannableStringBuilder.length();
        builderAction.invoke(spannableStringBuilder);
        spannableStringBuilder.setSpan(quoteSpan, length, spannableStringBuilder.length(), 17);
        return spannableStringBuilder;
    }

    public static /* synthetic */ SpannableStringBuilder quote$default(SpannableStringBuilder spannableStringBuilder, Integer num, Function1 builderAction, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            num = null;
        }
        Intrinsics.h(spannableStringBuilder, "<this>");
        Intrinsics.h(builderAction, "builderAction");
        QuoteSpan quoteSpan = num == null ? new QuoteSpan() : new QuoteSpan(num.intValue());
        int length = spannableStringBuilder.length();
        builderAction.invoke(spannableStringBuilder);
        spannableStringBuilder.setSpan(quoteSpan, length, spannableStringBuilder.length(), 17);
        return spannableStringBuilder;
    }

    public static final Unit set(Spannable spannable, String string, Object span) {
        Intrinsics.h(spannable, "<this>");
        Intrinsics.h(string, "string");
        Intrinsics.h(span, "span");
        Integer numValueOf = Integer.valueOf(StringsKt.o0(spannable.toString(), string, 0, false, 6, null));
        if (numValueOf.intValue() == -1) {
            numValueOf = null;
        }
        if (numValueOf == null) {
            return null;
        }
        int iIntValue = numValueOf.intValue();
        spannable.setSpan(span, iIntValue, string.length() + iIntValue, 17);
        return Unit.f67061a;
    }

    public static final Unit set(Spannable spannable, String string, List<? extends Object> spans) {
        Intrinsics.h(spannable, "<this>");
        Intrinsics.h(string, "string");
        Intrinsics.h(spans, "spans");
        Integer numValueOf = Integer.valueOf(StringsKt.o0(spannable.toString(), string, 0, false, 6, null));
        if (numValueOf.intValue() == -1) {
            numValueOf = null;
        }
        if (numValueOf == null) {
            return null;
        }
        int iIntValue = numValueOf.intValue();
        Iterator<T> it = spans.iterator();
        while (it.hasNext()) {
            spannable.setSpan(it.next(), iIntValue, string.length() + iIntValue, 17);
        }
        return Unit.f67061a;
    }

    public static final SpannableStringBuilder size(SpannableStringBuilder spannableStringBuilder, float f11, Function1<? super SpannableStringBuilder, Unit> builderAction) {
        Intrinsics.h(spannableStringBuilder, "<this>");
        Intrinsics.h(builderAction, "builderAction");
        AbsoluteSizeSpan absoluteSizeSpan = new AbsoluteSizeSpan((int) f11);
        int length = spannableStringBuilder.length();
        builderAction.invoke(spannableStringBuilder);
        spannableStringBuilder.setSpan(absoluteSizeSpan, length, spannableStringBuilder.length(), 17);
        return spannableStringBuilder;
    }

    public static final SpannableStringBuilder size(SpannableStringBuilder spannableStringBuilder, int i11, Function1<? super SpannableStringBuilder, Unit> builderAction) {
        Intrinsics.h(spannableStringBuilder, "<this>");
        Intrinsics.h(builderAction, "builderAction");
        AbsoluteSizeSpan absoluteSizeSpan = new AbsoluteSizeSpan(i11);
        int length = spannableStringBuilder.length();
        builderAction.invoke(spannableStringBuilder);
        spannableStringBuilder.setSpan(absoluteSizeSpan, length, spannableStringBuilder.length(), 17);
        return spannableStringBuilder;
    }

    public static final SpannableStringBuilder typeface(SpannableStringBuilder spannableStringBuilder, Typeface typeface, Function1<? super SpannableStringBuilder, Unit> builderAction) {
        Intrinsics.h(spannableStringBuilder, "<this>");
        Intrinsics.h(typeface, "typeface");
        Intrinsics.h(builderAction, "builderAction");
        TypefaceSpanCompat typefaceSpanCompat = new TypefaceSpanCompat(typeface);
        int length = spannableStringBuilder.length();
        builderAction.invoke(spannableStringBuilder);
        spannableStringBuilder.setSpan(typefaceSpanCompat, length, spannableStringBuilder.length(), 17);
        return spannableStringBuilder;
    }

    public static final SpannableStringBuilder url(SpannableStringBuilder spannableStringBuilder, String url, Function1<? super SpannableStringBuilder, Unit> builderAction) {
        Intrinsics.h(spannableStringBuilder, "<this>");
        Intrinsics.h(url, "url");
        Intrinsics.h(builderAction, "builderAction");
        URLSpan uRLSpan = new URLSpan(url);
        int length = spannableStringBuilder.length();
        builderAction.invoke(spannableStringBuilder);
        spannableStringBuilder.setSpan(uRLSpan, length, spannableStringBuilder.length(), 17);
        return spannableStringBuilder;
    }
}
