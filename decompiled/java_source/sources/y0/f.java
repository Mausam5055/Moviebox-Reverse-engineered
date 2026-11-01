package y0;

import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.LinearGradient;
import android.graphics.RadialGradient;
import android.graphics.Shader;
import android.graphics.SweepGradient;
import android.util.AttributeSet;
import androidx.core.R$styleable;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.transsion.web.api.WebConstants;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes2.dex */
abstract class f {

    static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final int[] f78524a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final float[] f78525b;

        a(int i11, int i12) {
            this.f78524a = new int[]{i11, i12};
            this.f78525b = new float[]{0.0f, 1.0f};
        }

        a(int i11, int i12, int i13) {
            this.f78524a = new int[]{i11, i12, i13};
            this.f78525b = new float[]{0.0f, 0.5f, 1.0f};
        }

        a(List list, List list2) {
            int size = list.size();
            this.f78524a = new int[size];
            this.f78525b = new float[size];
            for (int i11 = 0; i11 < size; i11++) {
                this.f78524a[i11] = ((Integer) list.get(i11)).intValue();
                this.f78525b[i11] = ((Float) list2.get(i11)).floatValue();
            }
        }
    }

    private static a a(a aVar, int i11, int i12, boolean z10, int i13) {
        if (aVar != null) {
            return aVar;
        }
        return z10 ? new a(i11, i13, i12) : new a(i11, i12);
    }

    static Shader b(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException {
        String name = xmlPullParser.getName();
        if (!name.equals("gradient")) {
            throw new XmlPullParserException(xmlPullParser.getPositionDescription() + ": invalid gradient color tag " + name);
        }
        TypedArray typedArrayK = k.k(resources, theme, attributeSet, R$styleable.GradientColor);
        float f11 = k.f(typedArrayK, xmlPullParser, "startX", R$styleable.GradientColor_android_startX, 0.0f);
        float f12 = k.f(typedArrayK, xmlPullParser, "startY", R$styleable.GradientColor_android_startY, 0.0f);
        float f13 = k.f(typedArrayK, xmlPullParser, "endX", R$styleable.GradientColor_android_endX, 0.0f);
        float f14 = k.f(typedArrayK, xmlPullParser, "endY", R$styleable.GradientColor_android_endY, 0.0f);
        float f15 = k.f(typedArrayK, xmlPullParser, "centerX", R$styleable.GradientColor_android_centerX, 0.0f);
        float f16 = k.f(typedArrayK, xmlPullParser, "centerY", R$styleable.GradientColor_android_centerY, 0.0f);
        int iG = k.g(typedArrayK, xmlPullParser, NativeComponentConstants.KEY_COMPONENT_TYPE, R$styleable.GradientColor_android_type, 0);
        int iB = k.b(typedArrayK, xmlPullParser, "startColor", R$styleable.GradientColor_android_startColor, 0);
        boolean zJ = k.j(xmlPullParser, "centerColor");
        int iB2 = k.b(typedArrayK, xmlPullParser, "centerColor", R$styleable.GradientColor_android_centerColor, 0);
        int iB3 = k.b(typedArrayK, xmlPullParser, "endColor", R$styleable.GradientColor_android_endColor, 0);
        int iG2 = k.g(typedArrayK, xmlPullParser, "tileMode", R$styleable.GradientColor_android_tileMode, 0);
        float f17 = k.f(typedArrayK, xmlPullParser, "gradientRadius", R$styleable.GradientColor_android_gradientRadius, 0.0f);
        typedArrayK.recycle();
        a aVarA = a(c(resources, xmlPullParser, attributeSet, theme), iB, iB3, zJ, iB2);
        if (iG != 1) {
            return iG != 2 ? new LinearGradient(f11, f12, f13, f14, aVarA.f78524a, aVarA.f78525b, d(iG2)) : new SweepGradient(f15, f16, aVarA.f78524a, aVarA.f78525b);
        }
        if (f17 > 0.0f) {
            return new RadialGradient(f15, f16, f17, aVarA.f78524a, aVarA.f78525b, d(iG2));
        }
        throw new XmlPullParserException("<gradient> tag requires 'gradientRadius' attribute with radial type");
    }

    private static a c(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        int depth;
        int depth2 = xmlPullParser.getDepth() + 1;
        ArrayList arrayList = new ArrayList(20);
        ArrayList arrayList2 = new ArrayList(20);
        while (true) {
            int next = xmlPullParser.next();
            if (next == 1 || ((depth = xmlPullParser.getDepth()) < depth2 && next == 3)) {
                break;
            }
            if (next == 2 && depth <= depth2 && xmlPullParser.getName().equals(WebConstants.FIELD_ITEM)) {
                TypedArray typedArrayK = k.k(resources, theme, attributeSet, R$styleable.GradientColorItem);
                boolean zHasValue = typedArrayK.hasValue(R$styleable.GradientColorItem_android_color);
                boolean zHasValue2 = typedArrayK.hasValue(R$styleable.GradientColorItem_android_offset);
                if (!zHasValue || !zHasValue2) {
                    throw new XmlPullParserException(xmlPullParser.getPositionDescription() + ": <item> tag requires a 'color' attribute and a 'offset' attribute!");
                }
                int color = typedArrayK.getColor(R$styleable.GradientColorItem_android_color, 0);
                float f11 = typedArrayK.getFloat(R$styleable.GradientColorItem_android_offset, 0.0f);
                typedArrayK.recycle();
                arrayList2.add(Integer.valueOf(color));
                arrayList.add(Float.valueOf(f11));
            }
        }
        if (arrayList2.size() > 0) {
            return new a(arrayList2, arrayList);
        }
        return null;
    }

    private static Shader.TileMode d(int i11) {
        if (i11 != 1) {
            return i11 != 2 ? Shader.TileMode.CLAMP : Shader.TileMode.MIRROR;
        }
        return Shader.TileMode.REPEAT;
    }
}
