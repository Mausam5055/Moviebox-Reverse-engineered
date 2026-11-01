package y0;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.TypedValue;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: loaded from: classes2.dex */
public abstract class k {
    public static boolean a(TypedArray typedArray, XmlPullParser xmlPullParser, String str, int i11, boolean z10) {
        return !j(xmlPullParser, str) ? z10 : typedArray.getBoolean(i11, z10);
    }

    public static int b(TypedArray typedArray, XmlPullParser xmlPullParser, String str, int i11, int i12) {
        return !j(xmlPullParser, str) ? i12 : typedArray.getColor(i11, i12);
    }

    public static ColorStateList c(TypedArray typedArray, XmlPullParser xmlPullParser, Resources.Theme theme, String str, int i11) {
        if (!j(xmlPullParser, str)) {
            return null;
        }
        TypedValue typedValue = new TypedValue();
        typedArray.getValue(i11, typedValue);
        int i12 = typedValue.type;
        if (i12 != 2) {
            return (i12 < 28 || i12 > 31) ? c.d(typedArray.getResources(), typedArray.getResourceId(i11, 0), theme) : d(typedValue);
        }
        throw new UnsupportedOperationException("Failed to resolve attribute at index " + i11 + ": " + typedValue);
    }

    private static ColorStateList d(TypedValue typedValue) {
        return ColorStateList.valueOf(typedValue.data);
    }

    public static d e(TypedArray typedArray, XmlPullParser xmlPullParser, Resources.Theme theme, String str, int i11, int i12) {
        if (j(xmlPullParser, str)) {
            TypedValue typedValue = new TypedValue();
            typedArray.getValue(i11, typedValue);
            int i13 = typedValue.type;
            if (i13 >= 28 && i13 <= 31) {
                return d.b(typedValue.data);
            }
            d dVarG = d.g(typedArray.getResources(), typedArray.getResourceId(i11, 0), theme);
            if (dVarG != null) {
                return dVarG;
            }
        }
        return d.b(i12);
    }

    public static float f(TypedArray typedArray, XmlPullParser xmlPullParser, String str, int i11, float f11) {
        return !j(xmlPullParser, str) ? f11 : typedArray.getFloat(i11, f11);
    }

    public static int g(TypedArray typedArray, XmlPullParser xmlPullParser, String str, int i11, int i12) {
        return !j(xmlPullParser, str) ? i12 : typedArray.getInt(i11, i12);
    }

    public static int h(TypedArray typedArray, XmlPullParser xmlPullParser, String str, int i11, int i12) {
        return !j(xmlPullParser, str) ? i12 : typedArray.getResourceId(i11, i12);
    }

    public static String i(TypedArray typedArray, XmlPullParser xmlPullParser, String str, int i11) {
        if (j(xmlPullParser, str)) {
            return typedArray.getString(i11);
        }
        return null;
    }

    public static boolean j(XmlPullParser xmlPullParser, String str) {
        return xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", str) != null;
    }

    public static TypedArray k(Resources resources, Resources.Theme theme, AttributeSet attributeSet, int[] iArr) {
        return theme == null ? resources.obtainAttributes(attributeSet, iArr) : theme.obtainStyledAttributes(attributeSet, iArr, 0, 0);
    }

    public static TypedValue l(TypedArray typedArray, XmlPullParser xmlPullParser, String str, int i11) {
        if (j(xmlPullParser, str)) {
            return typedArray.peekValue(i11);
        }
        return null;
    }
}
