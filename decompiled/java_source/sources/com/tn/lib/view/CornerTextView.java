package com.tn.lib.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import com.tn.lib.widget.R$color;
import com.tn.lib.widget.R$drawable;
import com.tn.lib.widget.R$styleable;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\r\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B#\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tB\u001b\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\b\u0010\nB\u0011\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\b\u0010\u000bJ\u0019\u0010\r\u001a\u00020\f2\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0002¢\u0006\u0004\b\r\u0010\u000eJ!\u0010\u0012\u001a\u00020\f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\b\u0010\u0011\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\u0012\u0010\u0013J#\u0010\u0016\u001a\u00020\f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\b\u0010\u0015\u001a\u0004\u0018\u00010\u0014H\u0016¢\u0006\u0004\b\u0016\u0010\u0017¨\u0006\u0018"}, d2 = {"Lcom/tn/lib/view/CornerTextView;", "Landroidx/appcompat/widget/AppCompatTextView;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "", "defStyle", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "(Landroid/content/Context;)V", "", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "(Landroid/util/AttributeSet;)V", "", MimeTypes.BASE_TYPE_TEXT, "subjectType", "setTextWithType", "(Ljava/lang/CharSequence;Ljava/lang/Integer;)V", "Landroid/widget/TextView$BufferType;", NativeComponentConstants.KEY_COMPONENT_TYPE, "setText", "(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V", "UI_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class CornerTextView extends AppCompatTextView {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CornerTextView(Context context) {
        super(context);
        Intrinsics.h(context, "context");
        b(null);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CornerTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.h(context, "context");
        b(attributeSet);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CornerTextView(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        Intrinsics.h(context, "context");
        b(attributeSet);
    }

    private final void b(AttributeSet attrs) {
        TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attrs, R$styleable.CornerTextView);
        Intrinsics.g(typedArrayObtainStyledAttributes, "obtainStyledAttributes(...)");
        boolean z10 = typedArrayObtainStyledAttributes.getBoolean(R$styleable.CornerTextView_rectangleShape, false);
        typedArrayObtainStyledAttributes.recycle();
        if (z10) {
            setBackgroundResource(R$drawable.bg_corner_tips_rectangle_2);
            setTextColor(androidx.core.content.b.getColor(getContext(), R$color.white_80));
            setTextSize(2, 11.0f);
            int iA = com.blankj.utilcode.util.a0.a(6.0f);
            int iA2 = com.blankj.utilcode.util.a0.a(2.0f);
            setPadding(iA, iA2, iA, iA2);
        } else {
            setBackgroundResource(R$drawable.bg_corner_tips_4);
            setTextColor(androidx.core.content.b.getColor(getContext(), R$color.text_01));
            setTextSize(2, 12.0f);
            int iA3 = com.blankj.utilcode.util.a0.a(4.0f);
            setPadding(iA3, iA3 / 2, iA3, iA3);
        }
        Context context = getContext();
        Intrinsics.g(context, "getContext(...)");
        setTypeface(jg.a.c(context));
        setMaxLines(1);
    }

    @Override // android.widget.TextView
    public void setText(CharSequence text, TextView.BufferType type) {
        if (text == null || text.length() == 0) {
            jg.c.h(this);
        } else {
            jg.c.k(this);
        }
        super.setText(text, type);
    }

    public final void setTextWithType(CharSequence text, Integer subjectType) {
        if (text != null && text.length() != 0 && subjectType != null && subjectType.intValue() == 6) {
            Context context = getContext();
            Intrinsics.g(context, "getContext(...)");
            setTypeface(jg.a.a(context));
            setBackgroundResource(R$drawable.bg_music_corner_tips_4);
            setCompoundDrawablesWithIntrinsicBounds(androidx.core.content.b.getDrawable(getContext(), R$drawable.ic_hot_white), (Drawable) null, (Drawable) null, (Drawable) null);
            setGravity(16);
        }
        setText(text);
    }
}
