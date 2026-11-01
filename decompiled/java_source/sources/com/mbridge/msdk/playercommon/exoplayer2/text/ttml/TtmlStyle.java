package com.mbridge.msdk.playercommon.exoplayer2.text.ttml;

import android.text.Layout;
import com.mbridge.msdk.playercommon.exoplayer2.util.Assertions;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: loaded from: classes5.dex */
final class TtmlStyle {
    public static final int FONT_SIZE_UNIT_EM = 2;
    public static final int FONT_SIZE_UNIT_PERCENT = 3;
    public static final int FONT_SIZE_UNIT_PIXEL = 1;
    private static final int OFF = 0;
    private static final int ON = 1;
    public static final int STYLE_BOLD = 1;
    public static final int STYLE_BOLD_ITALIC = 3;
    public static final int STYLE_ITALIC = 2;
    public static final int STYLE_NORMAL = 0;
    public static final int UNSPECIFIED = -1;
    private int backgroundColor;
    private int fontColor;
    private String fontFamily;
    private float fontSize;
    private boolean hasBackgroundColor;
    private boolean hasFontColor;

    /* JADX INFO: renamed from: id, reason: collision with root package name */
    private String f36792id;
    private TtmlStyle inheritableStyle;
    private Layout.Alignment textAlign;
    private int linethrough = -1;
    private int underline = -1;
    private int bold = -1;
    private int italic = -1;
    private int fontSizeUnit = -1;

    @Retention(RetentionPolicy.SOURCE)
    public @interface FontSizeUnit {
    }

    @Retention(RetentionPolicy.SOURCE)
    private @interface OptionalBoolean {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface StyleFlags {
    }

    private TtmlStyle inherit(TtmlStyle ttmlStyle, boolean z10) {
        if (ttmlStyle != null) {
            if (!this.hasFontColor && ttmlStyle.hasFontColor) {
                setFontColor(ttmlStyle.fontColor);
            }
            if (this.bold == -1) {
                this.bold = ttmlStyle.bold;
            }
            if (this.italic == -1) {
                this.italic = ttmlStyle.italic;
            }
            if (this.fontFamily == null) {
                this.fontFamily = ttmlStyle.fontFamily;
            }
            if (this.linethrough == -1) {
                this.linethrough = ttmlStyle.linethrough;
            }
            if (this.underline == -1) {
                this.underline = ttmlStyle.underline;
            }
            if (this.textAlign == null) {
                this.textAlign = ttmlStyle.textAlign;
            }
            if (this.fontSizeUnit == -1) {
                this.fontSizeUnit = ttmlStyle.fontSizeUnit;
                this.fontSize = ttmlStyle.fontSize;
            }
            if (z10 && !this.hasBackgroundColor && ttmlStyle.hasBackgroundColor) {
                setBackgroundColor(ttmlStyle.backgroundColor);
            }
        }
        return this;
    }

    public TtmlStyle chain(TtmlStyle ttmlStyle) {
        return inherit(ttmlStyle, true);
    }

    public int getBackgroundColor() {
        if (this.hasBackgroundColor) {
            return this.backgroundColor;
        }
        throw new IllegalStateException("Background color has not been defined.");
    }

    public int getFontColor() {
        if (this.hasFontColor) {
            return this.fontColor;
        }
        throw new IllegalStateException("Font color has not been defined.");
    }

    public String getFontFamily() {
        return this.fontFamily;
    }

    public float getFontSize() {
        return this.fontSize;
    }

    public int getFontSizeUnit() {
        return this.fontSizeUnit;
    }

    public String getId() {
        return this.f36792id;
    }

    public int getStyle() {
        int i11 = this.bold;
        if (i11 == -1 && this.italic == -1) {
            return -1;
        }
        return (i11 == 1 ? 1 : 0) | (this.italic == 1 ? 2 : 0);
    }

    public Layout.Alignment getTextAlign() {
        return this.textAlign;
    }

    public boolean hasBackgroundColor() {
        return this.hasBackgroundColor;
    }

    public boolean hasFontColor() {
        return this.hasFontColor;
    }

    public TtmlStyle inherit(TtmlStyle ttmlStyle) {
        return inherit(ttmlStyle, false);
    }

    public boolean isLinethrough() {
        return this.linethrough == 1;
    }

    public boolean isUnderline() {
        return this.underline == 1;
    }

    public TtmlStyle setBackgroundColor(int i11) {
        this.backgroundColor = i11;
        this.hasBackgroundColor = true;
        return this;
    }

    public TtmlStyle setBold(boolean z10) {
        Assertions.checkState(this.inheritableStyle == null);
        this.bold = z10 ? 1 : 0;
        return this;
    }

    public TtmlStyle setFontColor(int i11) {
        Assertions.checkState(this.inheritableStyle == null);
        this.fontColor = i11;
        this.hasFontColor = true;
        return this;
    }

    public TtmlStyle setFontFamily(String str) {
        Assertions.checkState(this.inheritableStyle == null);
        this.fontFamily = str;
        return this;
    }

    public TtmlStyle setFontSize(float f11) {
        this.fontSize = f11;
        return this;
    }

    public TtmlStyle setFontSizeUnit(int i11) {
        this.fontSizeUnit = i11;
        return this;
    }

    public TtmlStyle setId(String str) {
        this.f36792id = str;
        return this;
    }

    public TtmlStyle setItalic(boolean z10) {
        Assertions.checkState(this.inheritableStyle == null);
        this.italic = z10 ? 1 : 0;
        return this;
    }

    public TtmlStyle setLinethrough(boolean z10) {
        Assertions.checkState(this.inheritableStyle == null);
        this.linethrough = z10 ? 1 : 0;
        return this;
    }

    public TtmlStyle setTextAlign(Layout.Alignment alignment) {
        this.textAlign = alignment;
        return this;
    }

    public TtmlStyle setUnderline(boolean z10) {
        Assertions.checkState(this.inheritableStyle == null);
        this.underline = z10 ? 1 : 0;
        return this;
    }
}
