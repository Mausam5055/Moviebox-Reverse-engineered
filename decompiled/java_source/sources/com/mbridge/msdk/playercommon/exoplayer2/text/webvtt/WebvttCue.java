package com.mbridge.msdk.playercommon.exoplayer2.text.webvtt;

import android.text.Layout;
import android.text.SpannableStringBuilder;
import android.util.Log;
import com.mbridge.msdk.playercommon.exoplayer2.text.Cue;

/* JADX INFO: loaded from: classes5.dex */
public final class WebvttCue extends Cue {
    public final long endTime;
    public final long startTime;

    /* JADX INFO: renamed from: com.mbridge.msdk.playercommon.exoplayer2.text.webvtt.WebvttCue$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$android$text$Layout$Alignment;

        static {
            int[] iArr = new int[Layout.Alignment.values().length];
            $SwitchMap$android$text$Layout$Alignment = iArr;
            try {
                iArr[Layout.Alignment.ALIGN_NORMAL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$android$text$Layout$Alignment[Layout.Alignment.ALIGN_CENTER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$android$text$Layout$Alignment[Layout.Alignment.ALIGN_OPPOSITE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public static class Builder {
        private static final String TAG = "WebvttCueBuilder";
        private long endTime;
        private float line;
        private int lineAnchor;
        private int lineType;
        private float position;
        private int positionAnchor;
        private long startTime;
        private SpannableStringBuilder text;
        private Layout.Alignment textAlignment;
        private float width;

        public Builder() {
            reset();
        }

        private Builder derivePositionAnchorFromAlignment() {
            Layout.Alignment alignment = this.textAlignment;
            if (alignment == null) {
                this.positionAnchor = Integer.MIN_VALUE;
            } else {
                int i11 = AnonymousClass1.$SwitchMap$android$text$Layout$Alignment[alignment.ordinal()];
                if (i11 == 1) {
                    this.positionAnchor = 0;
                } else if (i11 == 2) {
                    this.positionAnchor = 1;
                } else if (i11 != 3) {
                    Log.w(TAG, "Unrecognized alignment: " + this.textAlignment);
                    this.positionAnchor = 0;
                } else {
                    this.positionAnchor = 2;
                }
            }
            return this;
        }

        public WebvttCue build() {
            if (this.position != Float.MIN_VALUE && this.positionAnchor == Integer.MIN_VALUE) {
                derivePositionAnchorFromAlignment();
            }
            return new WebvttCue(this.startTime, this.endTime, this.text, this.textAlignment, this.line, this.lineType, this.lineAnchor, this.position, this.positionAnchor, this.width);
        }

        public void reset() {
            this.startTime = 0L;
            this.endTime = 0L;
            this.text = null;
            this.textAlignment = null;
            this.line = Float.MIN_VALUE;
            this.lineType = Integer.MIN_VALUE;
            this.lineAnchor = Integer.MIN_VALUE;
            this.position = Float.MIN_VALUE;
            this.positionAnchor = Integer.MIN_VALUE;
            this.width = Float.MIN_VALUE;
        }

        public Builder setEndTime(long j11) {
            this.endTime = j11;
            return this;
        }

        public Builder setLine(float f11) {
            this.line = f11;
            return this;
        }

        public Builder setLineAnchor(int i11) {
            this.lineAnchor = i11;
            return this;
        }

        public Builder setLineType(int i11) {
            this.lineType = i11;
            return this;
        }

        public Builder setPosition(float f11) {
            this.position = f11;
            return this;
        }

        public Builder setPositionAnchor(int i11) {
            this.positionAnchor = i11;
            return this;
        }

        public Builder setStartTime(long j11) {
            this.startTime = j11;
            return this;
        }

        public Builder setText(SpannableStringBuilder spannableStringBuilder) {
            this.text = spannableStringBuilder;
            return this;
        }

        public Builder setTextAlignment(Layout.Alignment alignment) {
            this.textAlignment = alignment;
            return this;
        }

        public Builder setWidth(float f11) {
            this.width = f11;
            return this;
        }
    }

    public WebvttCue(long j11, long j12, CharSequence charSequence) {
        this(j11, j12, charSequence, null, Float.MIN_VALUE, Integer.MIN_VALUE, Integer.MIN_VALUE, Float.MIN_VALUE, Integer.MIN_VALUE, Float.MIN_VALUE);
    }

    public WebvttCue(long j11, long j12, CharSequence charSequence, Layout.Alignment alignment, float f11, int i11, int i12, float f12, int i13, float f13) {
        super(charSequence, alignment, f11, i11, i12, f12, i13, f13);
        this.startTime = j11;
        this.endTime = j12;
    }

    public WebvttCue(CharSequence charSequence) {
        this(0L, 0L, charSequence);
    }

    public boolean isNormalCue() {
        return this.line == Float.MIN_VALUE && this.position == Float.MIN_VALUE;
    }
}
