package com.mbridge.msdk.playercommon.exoplayer2.text;

import android.graphics.Bitmap;
import android.text.Layout;
import androidx.core.view.ViewCompat;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: loaded from: classes5.dex */
public class Cue {
    public static final int ANCHOR_TYPE_END = 2;
    public static final int ANCHOR_TYPE_MIDDLE = 1;
    public static final int ANCHOR_TYPE_START = 0;
    public static final float DIMEN_UNSET = Float.MIN_VALUE;
    public static final int LINE_TYPE_FRACTION = 0;
    public static final int LINE_TYPE_NUMBER = 1;
    public static final int TEXT_SIZE_TYPE_ABSOLUTE = 2;
    public static final int TEXT_SIZE_TYPE_FRACTIONAL = 0;
    public static final int TEXT_SIZE_TYPE_FRACTIONAL_IGNORE_PADDING = 1;
    public static final int TYPE_UNSET = Integer.MIN_VALUE;
    public final Bitmap bitmap;
    public final float bitmapHeight;
    public final float line;
    public final int lineAnchor;
    public final int lineType;
    public final float position;
    public final int positionAnchor;
    public final float size;
    public final CharSequence text;
    public final Layout.Alignment textAlignment;
    public final float textSize;
    public final int textSizeType;
    public final int windowColor;
    public final boolean windowColorSet;

    @Retention(RetentionPolicy.SOURCE)
    public @interface AnchorType {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface LineType {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface TextSizeType {
    }

    public Cue(Bitmap bitmap, float f11, int i11, float f12, int i12, float f13, float f14) {
        this(null, null, bitmap, f12, 0, i12, f11, i11, Integer.MIN_VALUE, Float.MIN_VALUE, f13, f14, false, ViewCompat.MEASURED_STATE_MASK);
    }

    public Cue(CharSequence charSequence) {
        this(charSequence, null, Float.MIN_VALUE, Integer.MIN_VALUE, Integer.MIN_VALUE, Float.MIN_VALUE, Integer.MIN_VALUE, Float.MIN_VALUE);
    }

    public Cue(CharSequence charSequence, Layout.Alignment alignment, float f11, int i11, int i12, float f12, int i13, float f13) {
        this(charSequence, alignment, f11, i11, i12, f12, i13, f13, false, ViewCompat.MEASURED_STATE_MASK);
    }

    public Cue(CharSequence charSequence, Layout.Alignment alignment, float f11, int i11, int i12, float f12, int i13, float f13, int i14, float f14) {
        this(charSequence, alignment, null, f11, i11, i12, f12, i13, i14, f14, f13, Float.MIN_VALUE, false, ViewCompat.MEASURED_STATE_MASK);
    }

    public Cue(CharSequence charSequence, Layout.Alignment alignment, float f11, int i11, int i12, float f12, int i13, float f13, boolean z10, int i14) {
        this(charSequence, alignment, null, f11, i11, i12, f12, i13, Integer.MIN_VALUE, Float.MIN_VALUE, f13, Float.MIN_VALUE, z10, i14);
    }

    private Cue(CharSequence charSequence, Layout.Alignment alignment, Bitmap bitmap, float f11, int i11, int i12, float f12, int i13, int i14, float f13, float f14, float f15, boolean z10, int i15) {
        this.text = charSequence;
        this.textAlignment = alignment;
        this.bitmap = bitmap;
        this.line = f11;
        this.lineType = i11;
        this.lineAnchor = i12;
        this.position = f12;
        this.positionAnchor = i13;
        this.size = f14;
        this.bitmapHeight = f15;
        this.windowColorSet = z10;
        this.windowColor = i15;
        this.textSizeType = i14;
        this.textSize = f13;
    }
}
