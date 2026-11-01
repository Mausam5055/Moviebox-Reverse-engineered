package com.cloud.tmc.miniapp.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RadialGradient;
import android.graphics.RectF;
import android.graphics.Shader;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.animation.AccelerateInterpolator;
import com.cloud.tmc.miniapp.R;
import kotlin.jvm.JvmField;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class SwitchButton extends View {
    public final float OooO;
    public final AccelerateInterpolator OooO00o;
    public final Paint OooO0O0;
    public final Path OooO0OO;
    public final Path OooO0Oo;
    public float OooO0o;
    public final RectF OooO0o0;
    public float OooO0oO;
    public RadialGradient OooO0oo;
    public final float OooOO0;
    public int OooOO0O;
    public int OooOO0o;
    public boolean OooOOO;
    public boolean OooOOO0;
    public boolean OooOOOO;
    public int OooOOOo;
    public int OooOOo;
    public int OooOOo0;
    public int OooOOoo;
    public float OooOo;
    public OooO00o OooOo0;
    public int OooOo00;
    public float OooOo0O;
    public float OooOo0o;
    public float OooOoO;
    public float OooOoO0;
    public float OooOoOO;
    public float OooOoo;
    public float OooOoo0;
    public float OooOooO;
    public float OooOooo;
    public float Oooo0;
    public float Oooo000;
    public float Oooo00O;
    public float Oooo00o;
    public float Oooo0O0;

    public interface OooO00o {
        void OooO00o(SwitchButton switchButton, boolean z10);
    }

    public static final class SavedState extends View.BaseSavedState {

        @JvmField
        public static final Parcelable.Creator<SavedState> CREATOR = new OooO00o();
        public boolean OooO00o;

        public static final class OooO00o implements Parcelable.Creator<SavedState> {
            @Override // android.os.Parcelable.Creator
            public SavedState createFromParcel(Parcel in2) {
                Intrinsics.h(in2, "in");
                return new SavedState(in2);
            }

            @Override // android.os.Parcelable.Creator
            public SavedState[] newArray(int i11) {
                return new SavedState[i11];
            }
        }

        public SavedState(Parcel parcel) {
            super(parcel);
            this.OooO00o = 1 == parcel.readInt();
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // android.view.AbsSavedState, android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel out, int i11) {
            Intrinsics.h(out, "out");
            super.writeToParcel(out, i11);
            out.writeInt(this.OooO00o ? 1 : 0);
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public SwitchButton(Context context) {
        this(context, null, 0, 0, 14, null);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public SwitchButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 0, 12, null);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public SwitchButton(Context context, AttributeSet attributeSet, int i11) {
        this(context, attributeSet, i11, 0, 8, null);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public SwitchButton(Context context, AttributeSet attributeSet, int i11, int i12) {
        super(context, attributeSet, i11, i12);
        Intrinsics.h(context, "context");
        this.OooO00o = new AccelerateInterpolator(2.0f);
        this.OooO0O0 = new Paint();
        this.OooO0OO = new Path();
        this.OooO0Oo = new Path();
        this.OooO0o0 = new RectF();
        this.OooO = 0.68f;
        this.OooOO0 = 0.1f;
        this.OooOOOo = Color.parseColor("#0081FF");
        this.OooOOo0 = Color.parseColor("#0081FF");
        Color.parseColor("#C2C6CE");
        this.OooOOo = Color.parseColor("#BFBFBF");
        this.OooOo00 = Color.parseColor("#333333");
        setLayerType(1, null);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.SwitchButton);
        Intrinsics.g(typedArrayObtainStyledAttributes, "context.obtainStyledAttr…R.styleable.SwitchButton)");
        this.OooOOOO = typedArrayObtainStyledAttributes.getBoolean(R.styleable.SwitchButton_android_checked, this.OooOOOO);
        setEnabled(typedArrayObtainStyledAttributes.getBoolean(R.styleable.SwitchButton_android_enabled, isEnabled()));
        int i13 = this.OooOOOO ? 3 : 1;
        this.OooOO0o = i13;
        this.OooOO0O = i13;
        this.OooOOoo = androidx.core.content.b.getColor(context, R.color.mini_color_switch_off_bg);
        this.OooOOOo = androidx.core.content.b.getColor(context, R.color.mini_color_primary);
        this.OooOOo0 = androidx.core.content.b.getColor(context, R.color.mini_color_primary);
        typedArrayObtainStyledAttributes.recycle();
    }

    public /* synthetic */ SwitchButton(Context context, AttributeSet attributeSet, int i11, int i12, int i13, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i13 & 2) != 0 ? null : attributeSet, (i13 & 4) != 0 ? 0 : i11, (i13 & 8) != 0 ? 0 : i12);
    }

    public static void OooO00o(SwitchButton switchButton, boolean z10, boolean z11, boolean z12, int i11) {
        OooO00o oooO00o;
        if ((i11 & 4) != 0) {
            z12 = true;
        }
        int i12 = z10 ? 3 : 1;
        int i13 = switchButton.OooOO0o;
        if (i12 == i13) {
            return;
        }
        if ((i12 == 3 && (i13 == 1 || i13 == 2)) || (i12 == 1 && (i13 == 3 || i13 == 4))) {
            switchButton.OooO0o = z12 ? 1.0f : 0.0f;
        }
        switchButton.OooO0oO = z12 ? 1.0f : 0.0f;
        boolean z13 = switchButton.OooOOOO;
        if (!z13 && i12 == 3) {
            switchButton.OooOOOO = true;
        } else if (z13 && i12 == 1) {
            switchButton.OooOOOO = false;
        }
        switchButton.OooOO0O = i13;
        switchButton.OooOO0o = i12;
        switchButton.postInvalidate();
        if (!z11 || (oooO00o = switchButton.OooOo0) == null) {
            return;
        }
        oooO00o.OooO00o(switchButton, z10);
    }

    /* JADX WARN: Code duplicated, block: B:66:0x0105  */
    /* JADX WARN: Code duplicated, block: B:71:0x011a  */
    /* JADX WARN: Code duplicated, block: B:74:0x015f  */
    /* JADX WARN: Code duplicated, block: B:77:0x01b3  */
    /* JADX WARN: Code duplicated, block: B:78:0x01b6  */
    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        float f11;
        float f12;
        float f13;
        int i11;
        int i12;
        float f14;
        float f15;
        Intrinsics.h(canvas, "canvas");
        if (this.OooOOO0) {
            this.OooO0O0.setAntiAlias(true);
            int i13 = this.OooOO0o;
            boolean z10 = i13 == 3 || i13 == 4;
            Paint paint = this.OooO0O0;
            Paint.Style style = Paint.Style.FILL;
            paint.setStyle(style);
            this.OooO0O0.setColor(z10 ? this.OooOOOo : this.OooOOoo);
            canvas.drawPath(this.OooO0OO, this.OooO0O0);
            float f16 = this.OooO0o;
            float f17 = this.OooOO0;
            float f18 = f16 - f17;
            if (f18 <= 0.0f) {
                f18 = 0.0f;
            }
            this.OooO0o = f18;
            float f19 = this.OooO0oO - f17;
            if (f19 <= 0.0f) {
                f19 = 0.0f;
            }
            this.OooO0oO = f19;
            float interpolation = this.OooO00o.getInterpolation(f18);
            float interpolation2 = this.OooO00o.getInterpolation(this.OooO0oO);
            float f20 = this.OooOoO0 * (z10 ? interpolation : 1 - interpolation);
            float f21 = (this.OooOo0O - this.OooOo0o) - this.OooOoOO;
            if (z10) {
                interpolation = 1 - interpolation;
            }
            canvas.save();
            canvas.scale(f20, f20, this.OooOo0o + (f21 * interpolation), this.OooOo);
            if (isEnabled()) {
                this.OooO0O0.setColor(this.OooOOoo);
            } else {
                this.OooO0O0.setColor(Color.parseColor("#BBBBBB"));
            }
            canvas.drawPath(this.OooO0OO, this.OooO0O0);
            canvas.restore();
            canvas.save();
            int i14 = this.OooOO0o;
            int i15 = i14 - this.OooOO0O;
            if (i15 != -3) {
                if (i15 != -2) {
                    if (i15 != -1) {
                        if (i15 != 1) {
                            if (i15 == 2) {
                                if (i14 == 3) {
                                    f14 = this.Oooo000;
                                    f15 = this.Oooo0;
                                } else if (i14 == 4) {
                                    f14 = this.Oooo00O;
                                    f15 = this.Oooo0;
                                } else {
                                    f13 = 0.0f;
                                }
                                f13 = f14 - ((f14 - f15) * interpolation2);
                            } else if (i15 == 3) {
                                f14 = this.Oooo000;
                                f15 = this.Oooo0;
                                f13 = f14 - ((f14 - f15) * interpolation2);
                            } else if (i14 == 1) {
                                f13 = this.Oooo0;
                            } else if (i14 == 3) {
                                f13 = this.Oooo000;
                            } else {
                                f13 = 0.0f;
                            }
                        } else if (i14 == 2) {
                            f13 = this.Oooo0;
                        } else if (i14 == 3) {
                            f14 = this.Oooo000;
                            f15 = this.Oooo00O;
                            f13 = f14 - ((f14 - f15) * interpolation2);
                        } else {
                            f13 = 0.0f;
                        }
                    } else if (i14 == 4) {
                        f11 = this.Oooo00O;
                        f12 = this.Oooo000;
                    } else if (i14 == 1) {
                        f13 = this.Oooo0;
                    } else {
                        f13 = 0.0f;
                    }
                } else if (i14 == 1) {
                    f11 = this.Oooo0;
                    f12 = this.Oooo00O;
                } else if (i14 == 2) {
                    f11 = this.Oooo00o;
                    f12 = this.Oooo000;
                } else {
                    f13 = 0.0f;
                }
                canvas.translate(f13 - this.Oooo0, this.Oooo0O0);
                i11 = this.OooOO0o;
                if (i11 != 4 || i11 == 2) {
                    interpolation2 = 1 - interpolation2;
                }
                this.OooO0Oo.reset();
                RectF rectF = this.OooO0o0;
                float f22 = this.OooOooO;
                float f23 = 2;
                float f24 = this.OooOoo0 / f23;
                rectF.left = f22 + f24;
                rectF.right = this.OooOooo - f24;
                this.OooO0Oo.arcTo(rectF, 90.0f, 180.0f);
                RectF rectF2 = this.OooO0o0;
                float f25 = this.OooOooO;
                float f26 = interpolation2 * this.OooOoO;
                float f27 = this.OooOoo0 / f23;
                rectF2.left = f25 + f26 + f27;
                rectF2.right = (f26 + this.OooOooo) - f27;
                this.OooO0Oo.arcTo(rectF2, 270.0f, 180.0f);
                this.OooO0Oo.close();
                if (this.OooOOO) {
                    this.OooO0O0.setStyle(style);
                    this.OooO0O0.setShader(this.OooO0oo);
                    canvas.drawPath(this.OooO0Oo, this.OooO0O0);
                    this.OooO0O0.setShader(null);
                }
                canvas.translate(0.0f, -this.Oooo0O0);
                float f28 = this.OooOoo / f23;
                canvas.scale(0.98f, 0.98f, f28, f28);
                this.OooO0O0.setStyle(style);
                this.OooO0O0.setColor(Color.parseColor("#FFFFFF"));
                canvas.drawPath(this.OooO0Oo, this.OooO0O0);
                this.OooO0O0.setStyle(Paint.Style.STROKE);
                this.OooO0O0.setStrokeWidth(this.OooOoo0 * 0.5f);
                Paint paint2 = this.OooO0O0;
                if (z10) {
                    i12 = this.OooOOo0;
                } else {
                    i12 = this.OooOOo;
                }
                paint2.setColor(i12);
                canvas.drawPath(this.OooO0Oo, this.OooO0O0);
                canvas.restore();
                this.OooO0O0.reset();
                if (this.OooO0o <= 0.0f || this.OooO0oO > 0.0f) {
                    invalidate();
                }
                return;
            }
            f11 = this.Oooo0;
            f12 = this.Oooo000;
            f13 = f11 + ((f12 - f11) * interpolation2);
            canvas.translate(f13 - this.Oooo0, this.Oooo0O0);
            i11 = this.OooOO0o;
            if (i11 != 4) {
                interpolation2 = 1 - interpolation2;
            } else {
                interpolation2 = 1 - interpolation2;
            }
            this.OooO0Oo.reset();
            RectF rectF3 = this.OooO0o0;
            float f29 = this.OooOooO;
            float f210 = 2;
            float f211 = this.OooOoo0 / f210;
            rectF3.left = f29 + f211;
            rectF3.right = this.OooOooo - f211;
            this.OooO0Oo.arcTo(rectF3, 90.0f, 180.0f);
            RectF rectF4 = this.OooO0o0;
            float f212 = this.OooOooO;
            float f213 = interpolation2 * this.OooOoO;
            float f214 = this.OooOoo0 / f210;
            rectF4.left = f212 + f213 + f214;
            rectF4.right = (f213 + this.OooOooo) - f214;
            this.OooO0Oo.arcTo(rectF4, 270.0f, 180.0f);
            this.OooO0Oo.close();
            if (this.OooOOO) {
                this.OooO0O0.setStyle(style);
                this.OooO0O0.setShader(this.OooO0oo);
                canvas.drawPath(this.OooO0Oo, this.OooO0O0);
                this.OooO0O0.setShader(null);
            }
            canvas.translate(0.0f, -this.Oooo0O0);
            float f215 = this.OooOoo / f210;
            canvas.scale(0.98f, 0.98f, f215, f215);
            this.OooO0O0.setStyle(style);
            this.OooO0O0.setColor(Color.parseColor("#FFFFFF"));
            canvas.drawPath(this.OooO0Oo, this.OooO0O0);
            this.OooO0O0.setStyle(Paint.Style.STROKE);
            this.OooO0O0.setStrokeWidth(this.OooOoo0 * 0.5f);
            Paint paint3 = this.OooO0O0;
            if (z10) {
                i12 = this.OooOOo0;
            } else {
                i12 = this.OooOOo;
            }
            paint3.setColor(i12);
            canvas.drawPath(this.OooO0Oo, this.OooO0O0);
            canvas.restore();
            this.OooO0O0.reset();
            if (this.OooO0o <= 0.0f) {
            }
            invalidate();
        }
    }

    @Override // android.view.View
    public void onMeasure(int i11, int i12) {
        int mode = View.MeasureSpec.getMode(i11);
        if (mode == Integer.MIN_VALUE || mode == 0) {
            i11 = View.MeasureSpec.makeMeasureSpec((int) (getResources().getDimension(R.dimen.mini_dp_56) + getPaddingLeft() + getPaddingRight()), 1073741824);
        }
        int mode2 = View.MeasureSpec.getMode(i12);
        if (mode2 == Integer.MIN_VALUE || mode2 == 0) {
            i12 = View.MeasureSpec.makeMeasureSpec(getPaddingBottom() + getPaddingTop() + ((int) (View.MeasureSpec.getSize(i11) * this.OooO)), 1073741824);
        }
        setMeasuredDimension(i11, i12);
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        Intrinsics.f(parcelable, "null cannot be cast to non-null type com.cloud.tmc.miniapp.widget.SwitchButton.SavedState");
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        boolean z10 = savedState.OooO00o;
        this.OooOOOO = z10;
        this.OooOO0o = z10 ? 3 : 1;
        invalidate();
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.OooO00o = this.OooOOOO;
        return savedState;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0019  */
    @Override // android.view.View
    public void onSizeChanged(int i11, int i12, int i13, int i14) {
        boolean z10;
        int paddingLeft;
        int width;
        int paddingTop;
        int height;
        if (i11 > getPaddingRight() + getPaddingLeft()) {
            if (i12 > getPaddingBottom() + getPaddingTop()) {
                z10 = true;
            } else {
                z10 = false;
            }
        } else {
            z10 = false;
        }
        this.OooOOO0 = z10;
        if (z10) {
            int paddingLeft2 = (i11 - getPaddingLeft()) - getPaddingRight();
            int paddingTop2 = (i12 - getPaddingTop()) - getPaddingBottom();
            float f11 = paddingLeft2;
            float f12 = this.OooO;
            float f13 = paddingTop2;
            if (f11 * f12 < f13) {
                paddingLeft = getPaddingLeft();
                width = i11 - getPaddingRight();
                int i15 = ((int) (f13 - (f11 * this.OooO))) / 2;
                paddingTop = getPaddingTop() + i15;
                height = (getHeight() - getPaddingBottom()) - i15;
            } else {
                int i16 = ((int) (f11 - (f13 / f12))) / 2;
                paddingLeft = getPaddingLeft() + i16;
                width = (getWidth() - getPaddingRight()) - i16;
                paddingTop = getPaddingTop();
                height = getHeight() - getPaddingBottom();
            }
            float f14 = (int) ((height - paddingTop) * 0.07f);
            this.Oooo0O0 = f14;
            float f15 = paddingLeft;
            float f16 = paddingTop + f14;
            float f17 = width;
            this.OooOo0O = f17;
            float f18 = height - f14;
            float f19 = f18 - f16;
            float f20 = 2;
            this.OooOo0o = (f17 + f15) / f20;
            float f21 = (f18 + f16) / f20;
            this.OooOo = f21;
            this.OooOooO = f15;
            this.OooOoo = f19;
            float f22 = f15 + f19;
            this.OooOooo = f22;
            float f23 = f19 / f20;
            float f24 = 0.95f * f23;
            this.OooOoOO = f24;
            float f25 = 0.2f * f24;
            this.OooOoO = f25;
            float f26 = (f23 - f24) * f20;
            this.OooOoo0 = f26;
            float f27 = f17 - f19;
            this.Oooo000 = f27;
            this.Oooo00O = f27 - f25;
            this.Oooo0 = f15;
            this.Oooo00o = f25 + f15;
            this.OooOoO0 = 1 - (f26 / f19);
            this.OooO0OO.reset();
            RectF rectF = new RectF();
            rectF.top = f16;
            rectF.bottom = f18;
            rectF.left = f15;
            rectF.right = f22;
            this.OooO0OO.arcTo(rectF, 90.0f, 180.0f);
            float f28 = this.OooOo0O;
            rectF.left = f28 - f19;
            rectF.right = f28;
            this.OooO0OO.arcTo(rectF, 270.0f, 180.0f);
            this.OooO0OO.close();
            RectF rectF2 = this.OooO0o0;
            float f29 = this.OooOooO;
            rectF2.left = f29;
            float f30 = this.OooOooo;
            rectF2.right = f30;
            float f31 = this.OooOoo0 / f20;
            rectF2.top = f16 + f31;
            rectF2.bottom = f18 - f31;
            float f32 = (f30 + f29) / f20;
            int i17 = this.OooOo00;
            int i18 = (i17 >> 16) & 255;
            int i19 = (i17 >> 8) & 255;
            int i20 = i17 & 255;
            this.OooO0oo = new RadialGradient(f32, f21, this.OooOoOO, Color.argb(200, i18, i19, i20), Color.argb(25, i18, i19, i20), Shader.TileMode.CLAMP);
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent event) {
        int i11;
        Intrinsics.h(event, "event");
        super.onTouchEvent(event);
        if (isEnabled() && (((i11 = this.OooOO0o) == 3 || i11 == 1) && this.OooO0o * this.OooO0oO == 0.0f && event.getAction() == 1)) {
            int i12 = this.OooOO0o;
            this.OooOO0O = i12;
            this.OooO0oO = 1.0f;
            if (i12 == 1) {
                OooO00o(this, true, false, false, 4);
                OooO00o oooO00o = this.OooOo0;
                if (oooO00o != null) {
                    oooO00o.OooO00o(this, true);
                }
            } else if (i12 == 3) {
                OooO00o(this, false, false, false, 4);
                OooO00o oooO00o2 = this.OooOo0;
                if (oooO00o2 != null) {
                    oooO00o2.OooO00o(this, false);
                }
            }
        }
        return true;
    }

    public final void setChecked(boolean z10) {
        OooO00o(this, z10, true, false, 4);
    }

    public final void setOnCheckedChangeListener(OooO00o oooO00o) {
        this.OooOo0 = oooO00o;
    }

    public final void setShadow(boolean z10) {
        this.OooOOO = z10;
        invalidate();
    }
}
