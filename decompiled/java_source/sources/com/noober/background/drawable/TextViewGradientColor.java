package com.noober.background.drawable;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.LinearGradient;
import android.graphics.Shader;
import android.util.AttributeSet;
import android.widget.TextView;
import com.noober.background.R;

/* JADX INFO: loaded from: classes5.dex */
public class TextViewGradientColor implements ITextViewOperator {
    private int endColor = -1;
    private int startColor = -1;
    private int orientation = 0;

    @Override // com.noober.background.drawable.ITextViewOperator
    public void invoke(Context context, AttributeSet attributeSet, final TextView textView) {
        int i11;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.bl_text);
        try {
            if (typedArrayObtainStyledAttributes.getIndexCount() == 0) {
                return;
            }
            for (int i12 = 0; i12 < typedArrayObtainStyledAttributes.getIndexCount(); i12++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i12);
                if (index == R.styleable.bl_text_bl_text_gradient_endColor) {
                    this.endColor = typedArrayObtainStyledAttributes.getColor(index, -1);
                } else if (index == R.styleable.bl_text_bl_text_gradient_startColor) {
                    this.startColor = typedArrayObtainStyledAttributes.getColor(index, -1);
                } else if (index == R.styleable.bl_text_bl_text_gradient_orientation) {
                    this.orientation = typedArrayObtainStyledAttributes.getInt(index, 0);
                }
            }
            int i13 = this.endColor;
            if (i13 != -1 || (i11 = this.startColor) == -1) {
                int i14 = this.startColor;
                if (i14 == -1 && i13 != -1) {
                    textView.setTextColor(i13);
                } else if (i13 != -1 && i14 != -1) {
                    if (this.orientation == 0) {
                        textView.post(new Runnable() { // from class: com.noober.background.drawable.TextViewGradientColor.1
                            @Override // java.lang.Runnable
                            public void run() {
                                textView.getPaint().setShader(new LinearGradient(0.0f, 0.0f, 0.0f, textView.getPaint().descent() - textView.getPaint().ascent(), TextViewGradientColor.this.startColor, TextViewGradientColor.this.endColor, Shader.TileMode.REPEAT));
                                textView.invalidate();
                            }
                        });
                    } else {
                        textView.post(new Runnable() { // from class: com.noober.background.drawable.TextViewGradientColor.2
                            @Override // java.lang.Runnable
                            public void run() {
                                textView.getPaint().setShader(new LinearGradient(0.0f, 0.0f, textView.getMeasuredWidth(), 0.0f, TextViewGradientColor.this.startColor, TextViewGradientColor.this.endColor, Shader.TileMode.REPEAT));
                                textView.invalidate();
                            }
                        });
                    }
                }
            } else {
                textView.setTextColor(i11);
            }
        } catch (Exception unused) {
        } finally {
            typedArrayObtainStyledAttributes.recycle();
        }
    }
}
