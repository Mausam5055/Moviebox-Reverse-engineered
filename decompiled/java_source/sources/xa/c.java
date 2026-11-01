package xa;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.TypedValue;
import androidx.appcompat.widget.j0;
import com.google.android.material.R$styleable;

/* JADX INFO: loaded from: classes5.dex */
public abstract class c {
    public static ColorStateList a(Context context, TypedArray typedArray, int i11) {
        int resourceId;
        ColorStateList colorStateListA;
        return (!typedArray.hasValue(i11) || (resourceId = typedArray.getResourceId(i11, 0)) == 0 || (colorStateListA = g.a.a(context, resourceId)) == null) ? typedArray.getColorStateList(i11) : colorStateListA;
    }

    public static ColorStateList b(Context context, j0 j0Var, int i11) {
        int iN;
        ColorStateList colorStateListA;
        return (!j0Var.s(i11) || (iN = j0Var.n(i11, 0)) == 0 || (colorStateListA = g.a.a(context, iN)) == null) ? j0Var.c(i11) : colorStateListA;
    }

    private static int c(TypedValue typedValue) {
        return typedValue.getComplexUnit();
    }

    public static int d(Context context, TypedArray typedArray, int i11, int i12) {
        TypedValue typedValue = new TypedValue();
        if (!typedArray.getValue(i11, typedValue) || typedValue.type != 2) {
            return typedArray.getDimensionPixelSize(i11, i12);
        }
        TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(new int[]{typedValue.data});
        int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(0, i12);
        typedArrayObtainStyledAttributes.recycle();
        return dimensionPixelSize;
    }

    public static Drawable e(Context context, TypedArray typedArray, int i11) {
        int resourceId;
        Drawable drawableB;
        return (!typedArray.hasValue(i11) || (resourceId = typedArray.getResourceId(i11, 0)) == 0 || (drawableB = g.a.b(context, resourceId)) == null) ? typedArray.getDrawable(i11) : drawableB;
    }

    public static float f(Context context) {
        return context.getResources().getConfiguration().fontScale;
    }

    static int g(TypedArray typedArray, int i11, int i12) {
        return typedArray.hasValue(i11) ? i11 : i12;
    }

    public static d h(Context context, TypedArray typedArray, int i11) {
        int resourceId;
        if (!typedArray.hasValue(i11) || (resourceId = typedArray.getResourceId(i11, 0)) == 0) {
            return null;
        }
        return new d(context, resourceId);
    }

    public static int i(Context context, int i11, int i12) {
        if (i11 == 0) {
            return i12;
        }
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(i11, R$styleable.TextAppearance);
        TypedValue typedValue = new TypedValue();
        boolean value = typedArrayObtainStyledAttributes.getValue(R$styleable.TextAppearance_android_textSize, typedValue);
        typedArrayObtainStyledAttributes.recycle();
        if (value) {
            return c(typedValue) == 2 ? Math.round(TypedValue.complexToFloat(typedValue.data) * context.getResources().getDisplayMetrics().density) : TypedValue.complexToDimensionPixelSize(typedValue.data, context.getResources().getDisplayMetrics());
        }
        return i12;
    }

    public static boolean j(Context context) {
        return context.getResources().getConfiguration().fontScale >= 1.3f;
    }

    public static boolean k(Context context) {
        return context.getResources().getConfiguration().fontScale >= 2.0f;
    }
}
