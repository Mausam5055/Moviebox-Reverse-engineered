package com.noober.background.drawable;

import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import com.noober.background.R;

/* JADX INFO: loaded from: classes5.dex */
public class ColorStateCreator implements ICreateColorState {
    private int index;
    private TypedArray textTa;
    private int[][] states = new int[0][];
    private int[] colors = new int[0];

    ColorStateCreator(TypedArray typedArray) {
        this.textTa = typedArray;
    }

    private void setStateColor(TypedArray typedArray, int i11, int i12) {
        int[][] iArr = this.states;
        int i13 = this.index;
        iArr[i13] = new int[]{i12};
        this.colors[i13] = typedArray.getColor(i11, 0);
        this.index++;
    }

    @Override // com.noober.background.drawable.ICreateColorState
    public ColorStateList create() {
        this.states = new int[this.textTa.getIndexCount()][];
        this.colors = new int[this.textTa.getIndexCount()];
        for (int i11 = 0; i11 < this.textTa.getIndexCount(); i11++) {
            int index = this.textTa.getIndex(i11);
            if (index == R.styleable.text_selector_bl_checkable_textColor) {
                setStateColor(this.textTa, index, android.R.attr.state_checkable);
            } else if (index == R.styleable.text_selector_bl_unCheckable_textColor) {
                setStateColor(this.textTa, index, -16842911);
            } else if (index == R.styleable.text_selector_bl_checked_textColor) {
                setStateColor(this.textTa, index, android.R.attr.state_checked);
            } else if (index == R.styleable.text_selector_bl_unChecked_textColor) {
                setStateColor(this.textTa, index, -16842912);
            } else if (index == R.styleable.text_selector_bl_enabled_textColor) {
                setStateColor(this.textTa, index, android.R.attr.state_enabled);
            } else if (index == R.styleable.text_selector_bl_unEnabled_textColor) {
                setStateColor(this.textTa, index, -16842910);
            } else if (index == R.styleable.text_selector_bl_selected_textColor) {
                setStateColor(this.textTa, index, android.R.attr.state_selected);
            } else if (index == R.styleable.text_selector_bl_unSelected_textColor) {
                setStateColor(this.textTa, index, -16842913);
            } else if (index == R.styleable.text_selector_bl_pressed_textColor) {
                setStateColor(this.textTa, index, android.R.attr.state_pressed);
            } else if (index == R.styleable.text_selector_bl_unPressed_textColor) {
                setStateColor(this.textTa, index, -16842919);
            } else if (index == R.styleable.text_selector_bl_focused_textColor) {
                setStateColor(this.textTa, index, android.R.attr.state_focused);
            } else if (index == R.styleable.text_selector_bl_unFocused_textColor) {
                setStateColor(this.textTa, index, -16842908);
            } else if (index == R.styleable.text_selector_bl_activated_textColor) {
                setStateColor(this.textTa, index, android.R.attr.state_activated);
            } else if (index == R.styleable.text_selector_bl_unActivated_textColor) {
                setStateColor(this.textTa, index, -16842914);
            } else if (index == R.styleable.text_selector_bl_active_textColor) {
                setStateColor(this.textTa, index, android.R.attr.state_active);
            } else if (index == R.styleable.text_selector_bl_unActive_textColor) {
                setStateColor(this.textTa, index, -16843518);
            } else if (index == R.styleable.text_selector_bl_expanded_textColor) {
                setStateColor(this.textTa, index, android.R.attr.state_expanded);
            } else if (index == R.styleable.text_selector_bl_unExpanded_textColor) {
                setStateColor(this.textTa, index, -16842920);
            }
        }
        return new ColorStateList(this.states, this.colors);
    }
}
