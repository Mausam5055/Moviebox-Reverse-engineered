package com.google.android.material.badge;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.material.R$dimen;
import com.google.android.material.R$plurals;
import com.google.android.material.R$string;
import com.google.android.material.R$style;
import com.google.android.material.R$styleable;
import com.google.android.material.card.MaterialCardView;
import com.google.android.material.internal.b0;
import java.util.Locale;
import xa.d;

/* JADX INFO: loaded from: classes4.dex */
public final class BadgeState {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final State f28295a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final State f28296b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final float f28297c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final float f28298d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final float f28299e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    final float f28300f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    final float f28301g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    final float f28302h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    final int f28303i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    final int f28304j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    int f28305k;

    public static final class State implements Parcelable {
        private static final int BADGE_NUMBER_NONE = -1;
        public static final Parcelable.Creator<State> CREATOR = new a();
        private static final int NOT_SET = -2;
        private Integer additionalHorizontalOffset;
        private Integer additionalVerticalOffset;
        private int alpha;
        private Boolean autoAdjustToWithinGrandparentBounds;
        private Integer backgroundColor;
        private Integer badgeGravity;
        private Integer badgeHorizontalPadding;
        private int badgeResId;
        private Integer badgeShapeAppearanceOverlayResId;
        private Integer badgeShapeAppearanceResId;
        private Integer badgeTextAppearanceResId;
        private Integer badgeTextColor;
        private Integer badgeVerticalPadding;
        private Integer badgeWithTextShapeAppearanceOverlayResId;
        private Integer badgeWithTextShapeAppearanceResId;
        private int contentDescriptionExceedsMaxBadgeNumberRes;

        @Nullable
        private CharSequence contentDescriptionForText;

        @Nullable
        private CharSequence contentDescriptionNumberless;
        private int contentDescriptionQuantityStrings;
        private Integer horizontalOffsetWithText;
        private Integer horizontalOffsetWithoutText;
        private Boolean isVisible;
        private Integer largeFontVerticalOffsetAdjustment;
        private int maxCharacterCount;
        private int maxNumber;
        private int number;
        private Locale numberLocale;

        @Nullable
        private String text;
        private Integer verticalOffsetWithText;
        private Integer verticalOffsetWithoutText;

        class a implements Parcelable.Creator {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public State createFromParcel(Parcel parcel) {
                return new State(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public State[] newArray(int i11) {
                return new State[i11];
            }
        }

        public State() {
            this.alpha = 255;
            this.number = -2;
            this.maxCharacterCount = -2;
            this.maxNumber = -2;
            this.isVisible = Boolean.TRUE;
        }

        State(@NonNull Parcel parcel) {
            this.alpha = 255;
            this.number = -2;
            this.maxCharacterCount = -2;
            this.maxNumber = -2;
            this.isVisible = Boolean.TRUE;
            this.badgeResId = parcel.readInt();
            this.backgroundColor = (Integer) parcel.readSerializable();
            this.badgeTextColor = (Integer) parcel.readSerializable();
            this.badgeTextAppearanceResId = (Integer) parcel.readSerializable();
            this.badgeShapeAppearanceResId = (Integer) parcel.readSerializable();
            this.badgeShapeAppearanceOverlayResId = (Integer) parcel.readSerializable();
            this.badgeWithTextShapeAppearanceResId = (Integer) parcel.readSerializable();
            this.badgeWithTextShapeAppearanceOverlayResId = (Integer) parcel.readSerializable();
            this.alpha = parcel.readInt();
            this.text = parcel.readString();
            this.number = parcel.readInt();
            this.maxCharacterCount = parcel.readInt();
            this.maxNumber = parcel.readInt();
            this.contentDescriptionForText = parcel.readString();
            this.contentDescriptionNumberless = parcel.readString();
            this.contentDescriptionQuantityStrings = parcel.readInt();
            this.badgeGravity = (Integer) parcel.readSerializable();
            this.badgeHorizontalPadding = (Integer) parcel.readSerializable();
            this.badgeVerticalPadding = (Integer) parcel.readSerializable();
            this.horizontalOffsetWithoutText = (Integer) parcel.readSerializable();
            this.verticalOffsetWithoutText = (Integer) parcel.readSerializable();
            this.horizontalOffsetWithText = (Integer) parcel.readSerializable();
            this.verticalOffsetWithText = (Integer) parcel.readSerializable();
            this.largeFontVerticalOffsetAdjustment = (Integer) parcel.readSerializable();
            this.additionalHorizontalOffset = (Integer) parcel.readSerializable();
            this.additionalVerticalOffset = (Integer) parcel.readSerializable();
            this.isVisible = (Boolean) parcel.readSerializable();
            this.numberLocale = (Locale) parcel.readSerializable();
            this.autoAdjustToWithinGrandparentBounds = (Boolean) parcel.readSerializable();
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(@NonNull Parcel parcel, int i11) {
            parcel.writeInt(this.badgeResId);
            parcel.writeSerializable(this.backgroundColor);
            parcel.writeSerializable(this.badgeTextColor);
            parcel.writeSerializable(this.badgeTextAppearanceResId);
            parcel.writeSerializable(this.badgeShapeAppearanceResId);
            parcel.writeSerializable(this.badgeShapeAppearanceOverlayResId);
            parcel.writeSerializable(this.badgeWithTextShapeAppearanceResId);
            parcel.writeSerializable(this.badgeWithTextShapeAppearanceOverlayResId);
            parcel.writeInt(this.alpha);
            parcel.writeString(this.text);
            parcel.writeInt(this.number);
            parcel.writeInt(this.maxCharacterCount);
            parcel.writeInt(this.maxNumber);
            CharSequence charSequence = this.contentDescriptionForText;
            parcel.writeString(charSequence != null ? charSequence.toString() : null);
            CharSequence charSequence2 = this.contentDescriptionNumberless;
            parcel.writeString(charSequence2 != null ? charSequence2.toString() : null);
            parcel.writeInt(this.contentDescriptionQuantityStrings);
            parcel.writeSerializable(this.badgeGravity);
            parcel.writeSerializable(this.badgeHorizontalPadding);
            parcel.writeSerializable(this.badgeVerticalPadding);
            parcel.writeSerializable(this.horizontalOffsetWithoutText);
            parcel.writeSerializable(this.verticalOffsetWithoutText);
            parcel.writeSerializable(this.horizontalOffsetWithText);
            parcel.writeSerializable(this.verticalOffsetWithText);
            parcel.writeSerializable(this.largeFontVerticalOffsetAdjustment);
            parcel.writeSerializable(this.additionalHorizontalOffset);
            parcel.writeSerializable(this.additionalVerticalOffset);
            parcel.writeSerializable(this.isVisible);
            parcel.writeSerializable(this.numberLocale);
            parcel.writeSerializable(this.autoAdjustToWithinGrandparentBounds);
        }
    }

    BadgeState(Context context, int i11, int i12, int i13, State state) {
        State state2 = new State();
        this.f28296b = state2;
        state = state == null ? new State() : state;
        if (i11 != 0) {
            state.badgeResId = i11;
        }
        TypedArray typedArrayA = a(context, state.badgeResId, i12, i13);
        Resources resources = context.getResources();
        this.f28297c = typedArrayA.getDimensionPixelSize(R$styleable.Badge_badgeRadius, -1);
        this.f28303i = context.getResources().getDimensionPixelSize(R$dimen.mtrl_badge_horizontal_edge_offset);
        this.f28304j = context.getResources().getDimensionPixelSize(R$dimen.mtrl_badge_text_horizontal_edge_offset);
        this.f28298d = typedArrayA.getDimensionPixelSize(R$styleable.Badge_badgeWithTextRadius, -1);
        this.f28299e = typedArrayA.getDimension(R$styleable.Badge_badgeWidth, resources.getDimension(R$dimen.m3_badge_size));
        this.f28301g = typedArrayA.getDimension(R$styleable.Badge_badgeWithTextWidth, resources.getDimension(R$dimen.m3_badge_with_text_size));
        this.f28300f = typedArrayA.getDimension(R$styleable.Badge_badgeHeight, resources.getDimension(R$dimen.m3_badge_size));
        this.f28302h = typedArrayA.getDimension(R$styleable.Badge_badgeWithTextHeight, resources.getDimension(R$dimen.m3_badge_with_text_size));
        boolean z10 = true;
        this.f28305k = typedArrayA.getInt(R$styleable.Badge_offsetAlignmentMode, 1);
        state2.alpha = state.alpha == -2 ? 255 : state.alpha;
        if (state.number != -2) {
            state2.number = state.number;
        } else if (typedArrayA.hasValue(R$styleable.Badge_number)) {
            state2.number = typedArrayA.getInt(R$styleable.Badge_number, 0);
        } else {
            state2.number = -1;
        }
        if (state.text != null) {
            state2.text = state.text;
        } else if (typedArrayA.hasValue(R$styleable.Badge_badgeText)) {
            state2.text = typedArrayA.getString(R$styleable.Badge_badgeText);
        }
        state2.contentDescriptionForText = state.contentDescriptionForText;
        state2.contentDescriptionNumberless = state.contentDescriptionNumberless == null ? context.getString(R$string.mtrl_badge_numberless_content_description) : state.contentDescriptionNumberless;
        state2.contentDescriptionQuantityStrings = state.contentDescriptionQuantityStrings == 0 ? R$plurals.mtrl_badge_content_description : state.contentDescriptionQuantityStrings;
        state2.contentDescriptionExceedsMaxBadgeNumberRes = state.contentDescriptionExceedsMaxBadgeNumberRes == 0 ? R$string.mtrl_exceed_max_badge_number_content_description : state.contentDescriptionExceedsMaxBadgeNumberRes;
        if (state.isVisible != null && !state.isVisible.booleanValue()) {
            z10 = false;
        }
        state2.isVisible = Boolean.valueOf(z10);
        state2.maxCharacterCount = state.maxCharacterCount == -2 ? typedArrayA.getInt(R$styleable.Badge_maxCharacterCount, -2) : state.maxCharacterCount;
        state2.maxNumber = state.maxNumber == -2 ? typedArrayA.getInt(R$styleable.Badge_maxNumber, -2) : state.maxNumber;
        state2.badgeShapeAppearanceResId = Integer.valueOf(state.badgeShapeAppearanceResId == null ? typedArrayA.getResourceId(R$styleable.Badge_badgeShapeAppearance, R$style.ShapeAppearance_M3_Sys_Shape_Corner_Full) : state.badgeShapeAppearanceResId.intValue());
        state2.badgeShapeAppearanceOverlayResId = Integer.valueOf(state.badgeShapeAppearanceOverlayResId == null ? typedArrayA.getResourceId(R$styleable.Badge_badgeShapeAppearanceOverlay, 0) : state.badgeShapeAppearanceOverlayResId.intValue());
        state2.badgeWithTextShapeAppearanceResId = Integer.valueOf(state.badgeWithTextShapeAppearanceResId == null ? typedArrayA.getResourceId(R$styleable.Badge_badgeWithTextShapeAppearance, R$style.ShapeAppearance_M3_Sys_Shape_Corner_Full) : state.badgeWithTextShapeAppearanceResId.intValue());
        state2.badgeWithTextShapeAppearanceOverlayResId = Integer.valueOf(state.badgeWithTextShapeAppearanceOverlayResId == null ? typedArrayA.getResourceId(R$styleable.Badge_badgeWithTextShapeAppearanceOverlay, 0) : state.badgeWithTextShapeAppearanceOverlayResId.intValue());
        state2.backgroundColor = Integer.valueOf(state.backgroundColor == null ? H(context, typedArrayA, R$styleable.Badge_backgroundColor) : state.backgroundColor.intValue());
        state2.badgeTextAppearanceResId = Integer.valueOf(state.badgeTextAppearanceResId == null ? typedArrayA.getResourceId(R$styleable.Badge_badgeTextAppearance, R$style.TextAppearance_MaterialComponents_Badge) : state.badgeTextAppearanceResId.intValue());
        if (state.badgeTextColor != null) {
            state2.badgeTextColor = state.badgeTextColor;
        } else if (typedArrayA.hasValue(R$styleable.Badge_badgeTextColor)) {
            state2.badgeTextColor = Integer.valueOf(H(context, typedArrayA, R$styleable.Badge_badgeTextColor));
        } else {
            state2.badgeTextColor = Integer.valueOf(new d(context, state2.badgeTextAppearanceResId.intValue()).i().getDefaultColor());
        }
        state2.badgeGravity = Integer.valueOf(state.badgeGravity == null ? typedArrayA.getInt(R$styleable.Badge_badgeGravity, MaterialCardView.CHECKED_ICON_GRAVITY_TOP_END) : state.badgeGravity.intValue());
        state2.badgeHorizontalPadding = Integer.valueOf(state.badgeHorizontalPadding == null ? typedArrayA.getDimensionPixelSize(R$styleable.Badge_badgeWidePadding, resources.getDimensionPixelSize(R$dimen.mtrl_badge_long_text_horizontal_padding)) : state.badgeHorizontalPadding.intValue());
        state2.badgeVerticalPadding = Integer.valueOf(state.badgeVerticalPadding == null ? typedArrayA.getDimensionPixelSize(R$styleable.Badge_badgeVerticalPadding, resources.getDimensionPixelSize(R$dimen.m3_badge_with_text_vertical_padding)) : state.badgeVerticalPadding.intValue());
        state2.horizontalOffsetWithoutText = Integer.valueOf(state.horizontalOffsetWithoutText == null ? typedArrayA.getDimensionPixelOffset(R$styleable.Badge_horizontalOffset, 0) : state.horizontalOffsetWithoutText.intValue());
        state2.verticalOffsetWithoutText = Integer.valueOf(state.verticalOffsetWithoutText == null ? typedArrayA.getDimensionPixelOffset(R$styleable.Badge_verticalOffset, 0) : state.verticalOffsetWithoutText.intValue());
        state2.horizontalOffsetWithText = Integer.valueOf(state.horizontalOffsetWithText == null ? typedArrayA.getDimensionPixelOffset(R$styleable.Badge_horizontalOffsetWithText, state2.horizontalOffsetWithoutText.intValue()) : state.horizontalOffsetWithText.intValue());
        state2.verticalOffsetWithText = Integer.valueOf(state.verticalOffsetWithText == null ? typedArrayA.getDimensionPixelOffset(R$styleable.Badge_verticalOffsetWithText, state2.verticalOffsetWithoutText.intValue()) : state.verticalOffsetWithText.intValue());
        state2.largeFontVerticalOffsetAdjustment = Integer.valueOf(state.largeFontVerticalOffsetAdjustment == null ? typedArrayA.getDimensionPixelOffset(R$styleable.Badge_largeFontVerticalOffsetAdjustment, 0) : state.largeFontVerticalOffsetAdjustment.intValue());
        state2.additionalHorizontalOffset = Integer.valueOf(state.additionalHorizontalOffset == null ? 0 : state.additionalHorizontalOffset.intValue());
        state2.additionalVerticalOffset = Integer.valueOf(state.additionalVerticalOffset == null ? 0 : state.additionalVerticalOffset.intValue());
        state2.autoAdjustToWithinGrandparentBounds = Boolean.valueOf(state.autoAdjustToWithinGrandparentBounds == null ? typedArrayA.getBoolean(R$styleable.Badge_autoAdjustToWithinGrandparentBounds, false) : state.autoAdjustToWithinGrandparentBounds.booleanValue());
        typedArrayA.recycle();
        if (state.numberLocale == null) {
            state2.numberLocale = Build.VERSION.SDK_INT >= 24 ? Locale.getDefault(Locale.Category.FORMAT) : Locale.getDefault();
        } else {
            state2.numberLocale = state.numberLocale;
        }
        this.f28295a = state;
    }

    private static int H(Context context, TypedArray typedArray, int i11) {
        return xa.c.a(context, typedArray, i11).getDefaultColor();
    }

    private TypedArray a(Context context, int i11, int i12, int i13) {
        AttributeSet attributeSet;
        int styleAttribute;
        if (i11 != 0) {
            AttributeSet attributeSetK = com.google.android.material.drawable.d.k(context, i11, "badge");
            styleAttribute = attributeSetK.getStyleAttribute();
            attributeSet = attributeSetK;
        } else {
            attributeSet = null;
            styleAttribute = 0;
        }
        return b0.i(context, attributeSet, R$styleable.Badge, i12, styleAttribute == 0 ? i13 : styleAttribute, new int[0]);
    }

    int A() {
        return this.f28296b.badgeTextAppearanceResId.intValue();
    }

    int B() {
        return this.f28296b.verticalOffsetWithText.intValue();
    }

    int C() {
        return this.f28296b.verticalOffsetWithoutText.intValue();
    }

    boolean D() {
        return this.f28296b.number != -1;
    }

    boolean E() {
        return this.f28296b.text != null;
    }

    boolean F() {
        return this.f28296b.autoAdjustToWithinGrandparentBounds.booleanValue();
    }

    boolean G() {
        return this.f28296b.isVisible.booleanValue();
    }

    void I(int i11) {
        this.f28295a.additionalHorizontalOffset = Integer.valueOf(i11);
        this.f28296b.additionalHorizontalOffset = Integer.valueOf(i11);
    }

    void J(int i11) {
        this.f28295a.additionalVerticalOffset = Integer.valueOf(i11);
        this.f28296b.additionalVerticalOffset = Integer.valueOf(i11);
    }

    void K(int i11) {
        this.f28295a.alpha = i11;
        this.f28296b.alpha = i11;
    }

    int b() {
        return this.f28296b.additionalHorizontalOffset.intValue();
    }

    int c() {
        return this.f28296b.additionalVerticalOffset.intValue();
    }

    int d() {
        return this.f28296b.alpha;
    }

    int e() {
        return this.f28296b.backgroundColor.intValue();
    }

    int f() {
        return this.f28296b.badgeGravity.intValue();
    }

    int g() {
        return this.f28296b.badgeHorizontalPadding.intValue();
    }

    int h() {
        return this.f28296b.badgeShapeAppearanceOverlayResId.intValue();
    }

    int i() {
        return this.f28296b.badgeShapeAppearanceResId.intValue();
    }

    int j() {
        return this.f28296b.badgeTextColor.intValue();
    }

    int k() {
        return this.f28296b.badgeVerticalPadding.intValue();
    }

    int l() {
        return this.f28296b.badgeWithTextShapeAppearanceOverlayResId.intValue();
    }

    int m() {
        return this.f28296b.badgeWithTextShapeAppearanceResId.intValue();
    }

    int n() {
        return this.f28296b.contentDescriptionExceedsMaxBadgeNumberRes;
    }

    CharSequence o() {
        return this.f28296b.contentDescriptionForText;
    }

    CharSequence p() {
        return this.f28296b.contentDescriptionNumberless;
    }

    int q() {
        return this.f28296b.contentDescriptionQuantityStrings;
    }

    int r() {
        return this.f28296b.horizontalOffsetWithText.intValue();
    }

    int s() {
        return this.f28296b.horizontalOffsetWithoutText.intValue();
    }

    int t() {
        return this.f28296b.largeFontVerticalOffsetAdjustment.intValue();
    }

    int u() {
        return this.f28296b.maxCharacterCount;
    }

    int v() {
        return this.f28296b.maxNumber;
    }

    int w() {
        return this.f28296b.number;
    }

    Locale x() {
        return this.f28296b.numberLocale;
    }

    State y() {
        return this.f28295a;
    }

    String z() {
        return this.f28296b.text;
    }
}
