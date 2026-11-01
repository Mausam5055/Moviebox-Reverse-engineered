package androidx.vectordrawable.graphics.drawable;

import android.animation.Animator;
import android.animation.AnimatorInflater;
import android.animation.AnimatorSet;
import android.animation.Keyframe;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.animation.TypeEvaluator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.os.Build;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.util.Xml;
import android.view.InflateException;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import y0.k;

/* JADX INFO: loaded from: classes2.dex */
public abstract class e {

    private static class a implements TypeEvaluator {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private z0.e.b[] f15148a;

        a() {
        }

        @Override // android.animation.TypeEvaluator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public z0.e.b[] evaluate(float f11, z0.e.b[] bVarArr, z0.e.b[] bVarArr2) {
            if (!z0.e.b(bVarArr, bVarArr2)) {
                throw new IllegalArgumentException("Can't interpolate between two incompatible pathData");
            }
            if (!z0.e.b(this.f15148a, bVarArr)) {
                this.f15148a = z0.e.f(bVarArr);
            }
            for (int i11 = 0; i11 < bVarArr.length; i11++) {
                this.f15148a[i11].h(bVarArr[i11], bVarArr2[i11], f11);
            }
            return this.f15148a;
        }
    }

    private static Animator a(Context context, Resources resources, Resources.Theme theme, XmlPullParser xmlPullParser, float f11) {
        return b(context, resources, theme, xmlPullParser, Xml.asAttributeSet(xmlPullParser), null, 0, f11);
    }

    private static Animator b(Context context, Resources resources, Resources.Theme theme, XmlPullParser xmlPullParser, AttributeSet attributeSet, AnimatorSet animatorSet, int i11, float f11) throws XmlPullParserException, IOException {
        int i12;
        int depth = xmlPullParser.getDepth();
        Animator animatorL = null;
        ArrayList arrayList = null;
        while (true) {
            int next = xmlPullParser.next();
            i12 = 0;
            if ((next == 3 && xmlPullParser.getDepth() <= depth) || next == 1) {
                break;
            }
            if (next == 2) {
                String name = xmlPullParser.getName();
                if (name.equals("objectAnimator")) {
                    animatorL = n(context, resources, theme, attributeSet, f11, xmlPullParser);
                } else {
                    if (name.equals("animator")) {
                        animatorL = l(context, resources, theme, attributeSet, null, f11, xmlPullParser);
                    } else if (name.equals("set")) {
                        AnimatorSet animatorSet2 = new AnimatorSet();
                        TypedArray typedArrayK = k.k(resources, theme, attributeSet, androidx.vectordrawable.graphics.drawable.a.f15127h);
                        b(context, resources, theme, xmlPullParser, attributeSet, animatorSet2, k.g(typedArrayK, xmlPullParser, "ordering", 0, 0), f11);
                        typedArrayK.recycle();
                        animatorL = animatorSet2;
                    } else {
                        if (!name.equals("propertyValuesHolder")) {
                            throw new RuntimeException("Unknown animator name: " + xmlPullParser.getName());
                        }
                        PropertyValuesHolder[] propertyValuesHolderArrP = p(context, resources, theme, xmlPullParser, Xml.asAttributeSet(xmlPullParser));
                        if (propertyValuesHolderArrP != null && (animatorL instanceof ValueAnimator)) {
                            ((ValueAnimator) animatorL).setValues(propertyValuesHolderArrP);
                        }
                        i12 = 1;
                    }
                    if (animatorSet == null && i12 == 0) {
                        if (arrayList == null) {
                            arrayList = new ArrayList();
                        }
                        arrayList.add(animatorL);
                    }
                }
                if (animatorSet == null) {
                }
            }
        }
        if (animatorSet != null && arrayList != null) {
            Animator[] animatorArr = new Animator[arrayList.size()];
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                animatorArr[i12] = (Animator) it.next();
                i12++;
            }
            if (i11 == 0) {
                animatorSet.playTogether(animatorArr);
            } else {
                animatorSet.playSequentially(animatorArr);
            }
        }
        return animatorL;
    }

    private static Keyframe c(Keyframe keyframe, float f11) {
        if (keyframe.getType() == Float.TYPE) {
            return Keyframe.ofFloat(f11);
        }
        return keyframe.getType() == Integer.TYPE ? Keyframe.ofInt(f11) : Keyframe.ofObject(f11);
    }

    private static void d(Keyframe[] keyframeArr, float f11, int i11, int i12) {
        float f12 = f11 / ((i12 - i11) + 2);
        while (i11 <= i12) {
            keyframeArr[i11].setFraction(keyframeArr[i11 - 1].getFraction() + f12);
            i11++;
        }
    }

    private static PropertyValuesHolder e(TypedArray typedArray, int i11, int i12, int i13, String str) {
        int color;
        int color2;
        int color3;
        PropertyValuesHolder propertyValuesHolderOfFloat;
        PropertyValuesHolder propertyValuesHolderOfObject;
        TypedValue typedValuePeekValue = typedArray.peekValue(i12);
        boolean z10 = typedValuePeekValue != null;
        int i14 = z10 ? typedValuePeekValue.type : 0;
        TypedValue typedValuePeekValue2 = typedArray.peekValue(i13);
        boolean z11 = typedValuePeekValue2 != null;
        int i15 = z11 ? typedValuePeekValue2.type : 0;
        if (i11 == 4) {
            i11 = ((z10 && h(i14)) || (z11 && h(i15))) ? 3 : 0;
        }
        boolean z12 = i11 == 0;
        PropertyValuesHolder propertyValuesHolderOfInt = null;
        if (i11 == 2) {
            String string = typedArray.getString(i12);
            String string2 = typedArray.getString(i13);
            z0.e.b[] bVarArrD = z0.e.d(string);
            z0.e.b[] bVarArrD2 = z0.e.d(string2);
            if (bVarArrD == null && bVarArrD2 == null) {
                return null;
            }
            if (bVarArrD == null) {
                if (bVarArrD2 != null) {
                    return PropertyValuesHolder.ofObject(str, new a(), bVarArrD2);
                }
                return null;
            }
            a aVar = new a();
            if (bVarArrD2 == null) {
                propertyValuesHolderOfObject = PropertyValuesHolder.ofObject(str, aVar, bVarArrD);
            } else {
                if (!z0.e.b(bVarArrD, bVarArrD2)) {
                    throw new InflateException(" Can't morph from " + string + " to " + string2);
                }
                propertyValuesHolderOfObject = PropertyValuesHolder.ofObject(str, aVar, bVarArrD, bVarArrD2);
            }
            return propertyValuesHolderOfObject;
        }
        f fVarA = i11 == 3 ? f.a() : null;
        if (z12) {
            if (z10) {
                float dimension = i14 == 5 ? typedArray.getDimension(i12, 0.0f) : typedArray.getFloat(i12, 0.0f);
                if (z11) {
                    propertyValuesHolderOfFloat = PropertyValuesHolder.ofFloat(str, dimension, i15 == 5 ? typedArray.getDimension(i13, 0.0f) : typedArray.getFloat(i13, 0.0f));
                } else {
                    propertyValuesHolderOfFloat = PropertyValuesHolder.ofFloat(str, dimension);
                }
            } else {
                propertyValuesHolderOfFloat = PropertyValuesHolder.ofFloat(str, i15 == 5 ? typedArray.getDimension(i13, 0.0f) : typedArray.getFloat(i13, 0.0f));
            }
            propertyValuesHolderOfInt = propertyValuesHolderOfFloat;
        } else if (z10) {
            if (i14 == 5) {
                color2 = (int) typedArray.getDimension(i12, 0.0f);
            } else {
                color2 = h(i14) ? typedArray.getColor(i12, 0) : typedArray.getInt(i12, 0);
            }
            if (z11) {
                if (i15 == 5) {
                    color3 = (int) typedArray.getDimension(i13, 0.0f);
                } else {
                    color3 = h(i15) ? typedArray.getColor(i13, 0) : typedArray.getInt(i13, 0);
                }
                propertyValuesHolderOfInt = PropertyValuesHolder.ofInt(str, color2, color3);
            } else {
                propertyValuesHolderOfInt = PropertyValuesHolder.ofInt(str, color2);
            }
        } else if (z11) {
            if (i15 == 5) {
                color = (int) typedArray.getDimension(i13, 0.0f);
            } else {
                color = h(i15) ? typedArray.getColor(i13, 0) : typedArray.getInt(i13, 0);
            }
            propertyValuesHolderOfInt = PropertyValuesHolder.ofInt(str, color);
        }
        if (propertyValuesHolderOfInt == null || fVarA == null) {
            return propertyValuesHolderOfInt;
        }
        propertyValuesHolderOfInt.setEvaluator(fVarA);
        return propertyValuesHolderOfInt;
    }

    private static int f(TypedArray typedArray, int i11, int i12) {
        TypedValue typedValuePeekValue = typedArray.peekValue(i11);
        boolean z10 = typedValuePeekValue != null;
        int i13 = z10 ? typedValuePeekValue.type : 0;
        TypedValue typedValuePeekValue2 = typedArray.peekValue(i12);
        boolean z11 = typedValuePeekValue2 != null;
        return ((z10 && h(i13)) || (z11 && h(z11 ? typedValuePeekValue2.type : 0))) ? 3 : 0;
    }

    private static int g(Resources resources, Resources.Theme theme, AttributeSet attributeSet, XmlPullParser xmlPullParser) {
        TypedArray typedArrayK = k.k(resources, theme, attributeSet, androidx.vectordrawable.graphics.drawable.a.f15129j);
        int i11 = 0;
        TypedValue typedValueL = k.l(typedArrayK, xmlPullParser, AppMeasurementSdk.ConditionalUserProperty.VALUE, 0);
        if (typedValueL != null && h(typedValueL.type)) {
            i11 = 3;
        }
        typedArrayK.recycle();
        return i11;
    }

    private static boolean h(int i11) {
        return i11 >= 28 && i11 <= 31;
    }

    public static Animator i(Context context, int i11) {
        return Build.VERSION.SDK_INT >= 24 ? AnimatorInflater.loadAnimator(context, i11) : j(context, context.getResources(), context.getTheme(), i11);
    }

    public static Animator j(Context context, Resources resources, Resources.Theme theme, int i11) {
        return k(context, resources, theme, i11, 1.0f);
    }

    public static Animator k(Context context, Resources resources, Resources.Theme theme, int i11, float f11) {
        XmlResourceParser animation = null;
        try {
            try {
                try {
                    animation = resources.getAnimation(i11);
                    Animator animatorA = a(context, resources, theme, animation, f11);
                    if (animation != null) {
                        animation.close();
                    }
                    return animatorA;
                } catch (IOException e11) {
                    Resources.NotFoundException notFoundException = new Resources.NotFoundException("Can't load animation resource ID #0x" + Integer.toHexString(i11));
                    notFoundException.initCause(e11);
                    throw notFoundException;
                }
            } catch (XmlPullParserException e12) {
                Resources.NotFoundException notFoundException2 = new Resources.NotFoundException("Can't load animation resource ID #0x" + Integer.toHexString(i11));
                notFoundException2.initCause(e12);
                throw notFoundException2;
            }
        } catch (Throwable th2) {
            if (animation != null) {
                animation.close();
            }
            throw th2;
        }
    }

    private static ValueAnimator l(Context context, Resources resources, Resources.Theme theme, AttributeSet attributeSet, ValueAnimator valueAnimator, float f11, XmlPullParser xmlPullParser) {
        TypedArray typedArrayK = k.k(resources, theme, attributeSet, androidx.vectordrawable.graphics.drawable.a.f15126g);
        TypedArray typedArrayK2 = k.k(resources, theme, attributeSet, androidx.vectordrawable.graphics.drawable.a.f15130k);
        if (valueAnimator == null) {
            valueAnimator = new ValueAnimator();
        }
        q(valueAnimator, typedArrayK, typedArrayK2, f11, xmlPullParser);
        int iH = k.h(typedArrayK, xmlPullParser, "interpolator", 0, 0);
        if (iH > 0) {
            valueAnimator.setInterpolator(d.a(context, iH));
        }
        typedArrayK.recycle();
        if (typedArrayK2 != null) {
            typedArrayK2.recycle();
        }
        return valueAnimator;
    }

    private static Keyframe m(Context context, Resources resources, Resources.Theme theme, AttributeSet attributeSet, int i11, XmlPullParser xmlPullParser) {
        Keyframe keyframeOfFloat;
        TypedArray typedArrayK = k.k(resources, theme, attributeSet, androidx.vectordrawable.graphics.drawable.a.f15129j);
        float f11 = k.f(typedArrayK, xmlPullParser, "fraction", 3, -1.0f);
        TypedValue typedValueL = k.l(typedArrayK, xmlPullParser, AppMeasurementSdk.ConditionalUserProperty.VALUE, 0);
        boolean z10 = typedValueL != null;
        if (i11 == 4) {
            i11 = (z10 && h(typedValueL.type)) ? 3 : 0;
        }
        if (!z10) {
            keyframeOfFloat = i11 == 0 ? Keyframe.ofFloat(f11) : Keyframe.ofInt(f11);
        } else if (i11 != 0) {
            keyframeOfFloat = (i11 == 1 || i11 == 3) ? Keyframe.ofInt(f11, k.g(typedArrayK, xmlPullParser, AppMeasurementSdk.ConditionalUserProperty.VALUE, 0, 0)) : null;
        } else {
            keyframeOfFloat = Keyframe.ofFloat(f11, k.f(typedArrayK, xmlPullParser, AppMeasurementSdk.ConditionalUserProperty.VALUE, 0, 0.0f));
        }
        int iH = k.h(typedArrayK, xmlPullParser, "interpolator", 1, 0);
        if (iH > 0) {
            keyframeOfFloat.setInterpolator(d.a(context, iH));
        }
        typedArrayK.recycle();
        return keyframeOfFloat;
    }

    private static ObjectAnimator n(Context context, Resources resources, Resources.Theme theme, AttributeSet attributeSet, float f11, XmlPullParser xmlPullParser) {
        ObjectAnimator objectAnimator = new ObjectAnimator();
        l(context, resources, theme, attributeSet, objectAnimator, f11, xmlPullParser);
        return objectAnimator;
    }

    private static PropertyValuesHolder o(Context context, Resources resources, Resources.Theme theme, XmlPullParser xmlPullParser, String str, int i11) throws XmlPullParserException, IOException {
        int size;
        PropertyValuesHolder propertyValuesHolderOfKeyframe = null;
        ArrayList arrayList = null;
        while (true) {
            int next = xmlPullParser.next();
            if (next == 3 || next == 1) {
                break;
            }
            if (xmlPullParser.getName().equals("keyframe")) {
                if (i11 == 4) {
                    i11 = g(resources, theme, Xml.asAttributeSet(xmlPullParser), xmlPullParser);
                }
                Keyframe keyframeM = m(context, resources, theme, Xml.asAttributeSet(xmlPullParser), i11, xmlPullParser);
                if (keyframeM != null) {
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                    }
                    arrayList.add(keyframeM);
                }
                xmlPullParser.next();
            }
        }
        if (arrayList != null && (size = arrayList.size()) > 0) {
            Keyframe keyframe = (Keyframe) arrayList.get(0);
            Keyframe keyframe2 = (Keyframe) arrayList.get(size - 1);
            float fraction = keyframe2.getFraction();
            if (fraction < 1.0f) {
                if (fraction < 0.0f) {
                    keyframe2.setFraction(1.0f);
                } else {
                    arrayList.add(arrayList.size(), c(keyframe2, 1.0f));
                    size++;
                }
            }
            float fraction2 = keyframe.getFraction();
            if (fraction2 != 0.0f) {
                if (fraction2 < 0.0f) {
                    keyframe.setFraction(0.0f);
                } else {
                    arrayList.add(0, c(keyframe, 0.0f));
                    size++;
                }
            }
            Keyframe[] keyframeArr = new Keyframe[size];
            arrayList.toArray(keyframeArr);
            for (int i12 = 0; i12 < size; i12++) {
                Keyframe keyframe3 = keyframeArr[i12];
                if (keyframe3.getFraction() < 0.0f) {
                    if (i12 == 0) {
                        keyframe3.setFraction(0.0f);
                    } else {
                        int i13 = size - 1;
                        if (i12 == i13) {
                            keyframe3.setFraction(1.0f);
                        } else {
                            int i14 = i12;
                            for (int i15 = i12 + 1; i15 < i13 && keyframeArr[i15].getFraction() < 0.0f; i15++) {
                                i14 = i15;
                            }
                            d(keyframeArr, keyframeArr[i14 + 1].getFraction() - keyframeArr[i12 - 1].getFraction(), i12, i14);
                        }
                    }
                }
            }
            propertyValuesHolderOfKeyframe = PropertyValuesHolder.ofKeyframe(str, keyframeArr);
            if (i11 == 3) {
                propertyValuesHolderOfKeyframe.setEvaluator(f.a());
            }
        }
        return propertyValuesHolderOfKeyframe;
    }

    private static PropertyValuesHolder[] p(Context context, Resources resources, Resources.Theme theme, XmlPullParser xmlPullParser, AttributeSet attributeSet) throws XmlPullParserException, IOException {
        int i11;
        PropertyValuesHolder[] propertyValuesHolderArr = null;
        ArrayList arrayList = null;
        while (true) {
            int eventType = xmlPullParser.getEventType();
            if (eventType == 3 || eventType == 1) {
                break;
            }
            if (eventType != 2) {
                xmlPullParser.next();
            } else {
                if (xmlPullParser.getName().equals("propertyValuesHolder")) {
                    TypedArray typedArrayK = k.k(resources, theme, attributeSet, androidx.vectordrawable.graphics.drawable.a.f15128i);
                    String strI = k.i(typedArrayK, xmlPullParser, "propertyName", 3);
                    int iG = k.g(typedArrayK, xmlPullParser, "valueType", 2, 4);
                    PropertyValuesHolder propertyValuesHolderO = o(context, resources, theme, xmlPullParser, strI, iG);
                    if (propertyValuesHolderO == null) {
                        propertyValuesHolderO = e(typedArrayK, iG, 0, 1, strI);
                    }
                    if (propertyValuesHolderO != null) {
                        if (arrayList == null) {
                            arrayList = new ArrayList();
                        }
                        arrayList.add(propertyValuesHolderO);
                    }
                    typedArrayK.recycle();
                }
                xmlPullParser.next();
            }
        }
        if (arrayList != null) {
            int size = arrayList.size();
            propertyValuesHolderArr = new PropertyValuesHolder[size];
            for (i11 = 0; i11 < size; i11++) {
                propertyValuesHolderArr[i11] = (PropertyValuesHolder) arrayList.get(i11);
            }
        }
        return propertyValuesHolderArr;
    }

    private static void q(ValueAnimator valueAnimator, TypedArray typedArray, TypedArray typedArray2, float f11, XmlPullParser xmlPullParser) {
        long jG = k.g(typedArray, xmlPullParser, "duration", 1, 300);
        long jG2 = k.g(typedArray, xmlPullParser, "startOffset", 2, 0);
        int iG = k.g(typedArray, xmlPullParser, "valueType", 7, 4);
        if (k.j(xmlPullParser, "valueFrom") && k.j(xmlPullParser, "valueTo")) {
            if (iG == 4) {
                iG = f(typedArray, 5, 6);
            }
            PropertyValuesHolder propertyValuesHolderE = e(typedArray, iG, 5, 6, "");
            if (propertyValuesHolderE != null) {
                valueAnimator.setValues(propertyValuesHolderE);
            }
        }
        valueAnimator.setDuration(jG);
        valueAnimator.setStartDelay(jG2);
        valueAnimator.setRepeatCount(k.g(typedArray, xmlPullParser, "repeatCount", 3, 0));
        valueAnimator.setRepeatMode(k.g(typedArray, xmlPullParser, "repeatMode", 4, 1));
        if (typedArray2 != null) {
            r(valueAnimator, typedArray2, iG, f11, xmlPullParser);
        }
    }

    private static void r(ValueAnimator valueAnimator, TypedArray typedArray, int i11, float f11, XmlPullParser xmlPullParser) {
        ObjectAnimator objectAnimator = (ObjectAnimator) valueAnimator;
        String strI = k.i(typedArray, xmlPullParser, "pathData", 1);
        if (strI == null) {
            objectAnimator.setPropertyName(k.i(typedArray, xmlPullParser, "propertyName", 0));
            return;
        }
        String strI2 = k.i(typedArray, xmlPullParser, "propertyXName", 2);
        String strI3 = k.i(typedArray, xmlPullParser, "propertyYName", 3);
        if (i11 != 2) {
        }
        if (strI2 != null || strI3 != null) {
            s(z0.e.e(strI), objectAnimator, f11 * 0.5f, strI2, strI3);
            return;
        }
        throw new InflateException(typedArray.getPositionDescription() + " propertyXName or propertyYName is needed for PathData");
    }

    private static void s(Path path, ObjectAnimator objectAnimator, float f11, String str, String str2) {
        int i11 = 1;
        PathMeasure pathMeasure = new PathMeasure(path, false);
        ArrayList arrayList = new ArrayList();
        float f12 = 0.0f;
        arrayList.add(Float.valueOf(0.0f));
        float length = 0.0f;
        do {
            length += pathMeasure.getLength();
            arrayList.add(Float.valueOf(length));
        } while (pathMeasure.nextContour());
        PathMeasure pathMeasure2 = new PathMeasure(path, false);
        int iMin = Math.min(100, ((int) (length / f11)) + 1);
        float[] fArr = new float[iMin];
        float[] fArr2 = new float[iMin];
        float[] fArr3 = new float[2];
        float f13 = length / (iMin - 1);
        int i12 = 0;
        int i13 = 0;
        while (true) {
            if (i12 >= iMin) {
                break;
            }
            pathMeasure2.getPosTan(f12 - ((Float) arrayList.get(i13)).floatValue(), fArr3, null);
            fArr[i12] = fArr3[0];
            fArr2[i12] = fArr3[1];
            f12 += f13;
            int i14 = i13 + 1;
            if (i14 < arrayList.size() && f12 > ((Float) arrayList.get(i14)).floatValue()) {
                pathMeasure2.nextContour();
                i13 = i14;
            }
            i11 = 1;
            i12++;
        }
        PropertyValuesHolder propertyValuesHolderOfFloat = str != null ? PropertyValuesHolder.ofFloat(str, fArr) : null;
        PropertyValuesHolder propertyValuesHolderOfFloat2 = str2 != null ? PropertyValuesHolder.ofFloat(str2, fArr2) : null;
        if (propertyValuesHolderOfFloat == null) {
            PropertyValuesHolder[] propertyValuesHolderArr = new PropertyValuesHolder[i11];
            propertyValuesHolderArr[0] = propertyValuesHolderOfFloat2;
            objectAnimator.setValues(propertyValuesHolderArr);
        } else if (propertyValuesHolderOfFloat2 == null) {
            PropertyValuesHolder[] propertyValuesHolderArr2 = new PropertyValuesHolder[i11];
            propertyValuesHolderArr2[0] = propertyValuesHolderOfFloat;
            objectAnimator.setValues(propertyValuesHolderArr2);
        } else {
            PropertyValuesHolder[] propertyValuesHolderArr3 = new PropertyValuesHolder[2];
            propertyValuesHolderArr3[0] = propertyValuesHolderOfFloat;
            propertyValuesHolderArr3[i11] = propertyValuesHolderOfFloat2;
            objectAnimator.setValues(propertyValuesHolderArr3);
        }
    }
}
