package com.noober.background.drawable;

import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.StateListDrawable;
import com.noober.background.R;

/* JADX INFO: loaded from: classes5.dex */
public class ButtonDrawableCreator implements ICreateDrawable {
    private TypedArray buttonTa;
    private TypedArray typedArray;

    public ButtonDrawableCreator(TypedArray typedArray, TypedArray typedArray2) {
        this.typedArray = typedArray;
        this.buttonTa = typedArray2;
    }

    private void setSelectorDrawable(TypedArray typedArray, TypedArray typedArray2, StateListDrawable stateListDrawable, int i11, int i12) throws Exception {
        Drawable drawable;
        int color = 0;
        try {
            color = typedArray2.getColor(i11, 0);
            drawable = color == 0 ? typedArray2.getDrawable(i11) : null;
        } catch (Exception unused) {
            drawable = typedArray2.getDrawable(i11);
        }
        if (drawable != null || color == 0) {
            stateListDrawable.addState(new int[]{i12}, drawable);
            return;
        }
        GradientDrawable drawable2 = DrawableFactory.getDrawable(typedArray);
        drawable2.setColor(color);
        stateListDrawable.addState(new int[]{i12}, drawable2);
    }

    @Override // com.noober.background.drawable.ICreateDrawable
    public Drawable create() throws Exception {
        StateListDrawable stateListDrawable = new StateListDrawable();
        for (int i11 = 0; i11 < this.buttonTa.getIndexCount(); i11++) {
            int index = this.buttonTa.getIndex(i11);
            if (index == R.styleable.background_button_drawable_bl_checked_button_drawable) {
                setSelectorDrawable(this.typedArray, this.buttonTa, stateListDrawable, index, android.R.attr.state_checked);
            } else if (index == R.styleable.background_button_drawable_bl_unChecked_button_drawable) {
                setSelectorDrawable(this.typedArray, this.buttonTa, stateListDrawable, index, -16842912);
            }
        }
        return stateListDrawable;
    }
}
