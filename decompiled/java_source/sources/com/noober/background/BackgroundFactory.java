package com.noober.background;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import android.graphics.drawable.StateListDrawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.InflateException;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.CompoundButton;
import android.widget.TextView;
import androidx.annotation.Nullable;
import com.mbridge.msdk.MBridgeConstans;
import com.noober.background.drawable.DrawableFactory;
import com.noober.background.drawable.TextViewFactory;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class BackgroundFactory implements LayoutInflater.Factory2 {
    private LayoutInflater.Factory mViewCreateFactory;
    private LayoutInflater.Factory2 mViewCreateFactory2;
    private static final Class<?>[] sConstructorSignature = {Context.class, AttributeSet.class};
    private static final Object[] mConstructorArgs = new Object[2];
    private static final Map<String, Constructor<? extends View>> sConstructorMap = new androidx.collection.a();
    private static final HashMap<String, HashMap<String, Method>> methodMap = new HashMap<>();

    /* JADX INFO: loaded from: classes5.dex */
    class a implements View.OnClickListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Method f40056a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Context f40057b;

        a(Method method, Context context) {
            this.f40056a = method;
            this.f40057b = context;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            try {
                this.f40056a.invoke(this.f40057b, null);
            } catch (IllegalAccessException e11) {
                e11.printStackTrace();
            } catch (InvocationTargetException e12) {
                e12.printStackTrace();
            }
        }
    }

    private static View createView(Context context, String str, String str2) throws InflateException {
        String str3;
        Map<String, Constructor<? extends View>> map = sConstructorMap;
        Constructor<? extends View> constructor = map.get(str);
        if (constructor == null) {
            try {
                ClassLoader classLoader = context.getClassLoader();
                if (str2 != null) {
                    str3 = str2 + str;
                } else {
                    str3 = str;
                }
                constructor = classLoader.loadClass(str3).asSubclass(View.class).getConstructor(sConstructorSignature);
                map.put(str, constructor);
            } catch (Exception unused) {
                Log.w("BackgroundLibrary", "cannot create 【" + str + "】 : ");
                return null;
            }
        }
        constructor.setAccessible(true);
        return constructor.newInstance(mConstructorArgs);
    }

    private static View createViewFromTag(Context context, String str, AttributeSet attributeSet) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        if (str.equals(MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW)) {
            str = attributeSet.getAttributeValue(null, "class");
        }
        try {
            try {
                Object[] objArr = mConstructorArgs;
                objArr[0] = context;
                objArr[1] = attributeSet;
                if (-1 != str.indexOf(46)) {
                    View viewCreateView = createView(context, str, null);
                    objArr[0] = null;
                    objArr[1] = null;
                    return viewCreateView;
                }
                View viewCreateView2 = "View".equals(str) ? createView(context, str, "android.view.") : null;
                if (viewCreateView2 == null) {
                    viewCreateView2 = createView(context, str, "android.widget.");
                }
                if (viewCreateView2 == null) {
                    viewCreateView2 = createView(context, str, "android.webkit.");
                }
                objArr[0] = null;
                objArr[1] = null;
                return viewCreateView2;
            } catch (Exception unused) {
                Log.w("BackgroundLibrary", "cannot create 【" + str + "】 : ");
                Object[] objArr2 = mConstructorArgs;
                objArr2[0] = null;
                objArr2[1] = null;
                return null;
            }
        } catch (Throwable th2) {
            Object[] objArr3 = mConstructorArgs;
            objArr3[0] = null;
            objArr3[1] = null;
            throw th2;
        }
    }

    private static Method findDeclaredMethod(Class cls, String str) {
        Method declaredMethod = null;
        try {
            declaredMethod = cls.getDeclaredMethod(str, null);
            declaredMethod.setAccessible(true);
            return declaredMethod;
        } catch (NoSuchMethodException unused) {
            return cls.getSuperclass() != null ? findDeclaredMethod(cls.getSuperclass(), str) : declaredMethod;
        }
    }

    private static Method findMethod(Class cls, String str) {
        try {
            return cls.getMethod(str, null);
        } catch (NoSuchMethodException unused) {
            return findDeclaredMethod(cls, str);
        }
    }

    private static Method getMethod(Class cls, String str) {
        Method methodFindMethod;
        HashMap<String, HashMap<String, Method>> map = methodMap;
        HashMap<String, Method> map2 = map.get(cls.getCanonicalName());
        if (map2 != null) {
            methodFindMethod = map.get(cls.getCanonicalName()).get(str);
        } else {
            map2 = new HashMap<>();
            map.put(cls.getCanonicalName(), map2);
            methodFindMethod = null;
        }
        if (methodFindMethod == null && (methodFindMethod = findMethod(cls, str)) != null) {
            map2.put(str, methodFindMethod);
        }
        return methodFindMethod;
    }

    private static boolean hasGradientState(TypedArray typedArray) {
        return typedArray.hasValue(R.styleable.background_bl_checkable_gradient_startColor) || typedArray.hasValue(R.styleable.background_bl_checked_gradient_startColor) || typedArray.hasValue(R.styleable.background_bl_enabled_gradient_startColor) || typedArray.hasValue(R.styleable.background_bl_selected_gradient_startColor) || typedArray.hasValue(R.styleable.background_bl_pressed_gradient_startColor) || typedArray.hasValue(R.styleable.background_bl_focused_gradient_startColor);
    }

    private static boolean hasStatus(int i11, int i12) {
        return (i11 & i12) == i12;
    }

    private static void setBackground(Drawable drawable, View view, TypedArray typedArray) {
        float f11 = 0.0f;
        if (typedArray.hasValue(R.styleable.background_bl_stroke_width) && typedArray.hasValue(R.styleable.background_bl_stroke_position)) {
            float dimension = typedArray.getDimension(R.styleable.background_bl_stroke_width, 0.0f);
            int i11 = typedArray.getInt(R.styleable.background_bl_stroke_position, 0);
            float f12 = hasStatus(i11, 2) ? 0.0f : -dimension;
            float f13 = hasStatus(i11, 4) ? 0.0f : -dimension;
            float f14 = hasStatus(i11, 8) ? 0.0f : -dimension;
            float f15 = hasStatus(i11, 16) ? 0.0f : -dimension;
            LayerDrawable layerDrawable = new LayerDrawable(new Drawable[]{drawable});
            layerDrawable.setLayerInset(0, (int) f12, (int) f13, (int) f14, (int) f15);
            drawable = layerDrawable;
        }
        if (typedArray.hasValue(R.styleable.background_bl_shape_alpha)) {
            float f16 = typedArray.getFloat(R.styleable.background_bl_shape_alpha, 0.0f);
            if (f16 >= 1.0f) {
                f11 = 255.0f;
            } else if (f16 > 0.0f) {
                f11 = f16 * 255.0f;
            }
            drawable.setAlpha((int) f11);
        }
        view.setBackground(drawable);
    }

    private static void setDrawable(Drawable drawable, View view, TypedArray typedArray, TypedArray typedArray2) {
        if (!(view instanceof TextView)) {
            setBackground(drawable, view, typedArray2);
            return;
        }
        if (!typedArray.hasValue(R.styleable.bl_other_bl_position)) {
            setBackground(drawable, view, typedArray2);
            return;
        }
        if (typedArray.getInt(R.styleable.bl_other_bl_position, 0) == 1) {
            drawable.setBounds(0, 0, drawable.getMinimumWidth(), drawable.getMinimumHeight());
            ((TextView) view).setCompoundDrawables(drawable, null, null, null);
            return;
        }
        if (typedArray.getInt(R.styleable.bl_other_bl_position, 0) == 2) {
            drawable.setBounds(0, 0, drawable.getMinimumWidth(), drawable.getMinimumHeight());
            ((TextView) view).setCompoundDrawables(null, drawable, null, null);
        } else if (typedArray.getInt(R.styleable.bl_other_bl_position, 0) == 4) {
            drawable.setBounds(0, 0, drawable.getMinimumWidth(), drawable.getMinimumHeight());
            ((TextView) view).setCompoundDrawables(null, null, drawable, null);
        } else if (typedArray.getInt(R.styleable.bl_other_bl_position, 0) == 8) {
            drawable.setBounds(0, 0, drawable.getMinimumWidth(), drawable.getMinimumHeight());
            ((TextView) view).setCompoundDrawables(null, null, null, drawable);
        }
    }

    @Nullable
    public static View setViewBackground(Context context, AttributeSet attributeSet, View view) {
        return setViewBackground(null, context, attributeSet, view);
    }

    /* JADX WARN: Code duplicated, block: B:102:0x01d3  */
    /* JADX WARN: Code duplicated, block: B:106:0x01e8 A[Catch: all -> 0x009b, Exception -> 0x00e5, TryCatch #1 {Exception -> 0x00e5, blocks: (B:38:0x00d0, B:40:0x00d6, B:43:0x00dd, B:44:0x00e4, B:47:0x00e8, B:49:0x00ee, B:52:0x00f5, B:53:0x00fc, B:54:0x00fd, B:56:0x0104, B:58:0x0108, B:81:0x0180, B:83:0x0184, B:85:0x018a, B:96:0x01ba, B:98:0x01c3, B:100:0x01cb, B:103:0x01d4, B:104:0x01e0, B:106:0x01e8, B:108:0x01f4, B:110:0x0202, B:86:0x0195, B:88:0x0199, B:90:0x019f, B:91:0x01aa, B:93:0x01ae, B:95:0x01b4, B:59:0x0114, B:61:0x011a, B:63:0x0123, B:65:0x0129, B:66:0x013a, B:68:0x0140, B:69:0x0148, B:71:0x014e, B:73:0x0154, B:74:0x015c, B:75:0x0166, B:77:0x016c, B:79:0x017b), top: B:120:0x00d0 }] */
    /* JADX WARN: Code duplicated, block: B:108:0x01f4 A[Catch: all -> 0x009b, Exception -> 0x00e5, TryCatch #1 {Exception -> 0x00e5, blocks: (B:38:0x00d0, B:40:0x00d6, B:43:0x00dd, B:44:0x00e4, B:47:0x00e8, B:49:0x00ee, B:52:0x00f5, B:53:0x00fc, B:54:0x00fd, B:56:0x0104, B:58:0x0108, B:81:0x0180, B:83:0x0184, B:85:0x018a, B:96:0x01ba, B:98:0x01c3, B:100:0x01cb, B:103:0x01d4, B:104:0x01e0, B:106:0x01e8, B:108:0x01f4, B:110:0x0202, B:86:0x0195, B:88:0x0199, B:90:0x019f, B:91:0x01aa, B:93:0x01ae, B:95:0x01b4, B:59:0x0114, B:61:0x011a, B:63:0x0123, B:65:0x0129, B:66:0x013a, B:68:0x0140, B:69:0x0148, B:71:0x014e, B:73:0x0154, B:74:0x015c, B:75:0x0166, B:77:0x016c, B:79:0x017b), top: B:120:0x00d0 }] */
    /* JADX WARN: Code duplicated, block: B:110:0x0202 A[Catch: all -> 0x009b, Exception -> 0x00e5, TRY_LEAVE, TryCatch #1 {Exception -> 0x00e5, blocks: (B:38:0x00d0, B:40:0x00d6, B:43:0x00dd, B:44:0x00e4, B:47:0x00e8, B:49:0x00ee, B:52:0x00f5, B:53:0x00fc, B:54:0x00fd, B:56:0x0104, B:58:0x0108, B:81:0x0180, B:83:0x0184, B:85:0x018a, B:96:0x01ba, B:98:0x01c3, B:100:0x01cb, B:103:0x01d4, B:104:0x01e0, B:106:0x01e8, B:108:0x01f4, B:110:0x0202, B:86:0x0195, B:88:0x0199, B:90:0x019f, B:91:0x01aa, B:93:0x01ae, B:95:0x01b4, B:59:0x0114, B:61:0x011a, B:63:0x0123, B:65:0x0129, B:66:0x013a, B:68:0x0140, B:69:0x0148, B:71:0x014e, B:73:0x0154, B:74:0x015c, B:75:0x0166, B:77:0x016c, B:79:0x017b), top: B:120:0x00d0 }] */
    /* JADX WARN: Code duplicated, block: B:83:0x0184 A[Catch: all -> 0x009b, Exception -> 0x00e5, TryCatch #1 {Exception -> 0x00e5, blocks: (B:38:0x00d0, B:40:0x00d6, B:43:0x00dd, B:44:0x00e4, B:47:0x00e8, B:49:0x00ee, B:52:0x00f5, B:53:0x00fc, B:54:0x00fd, B:56:0x0104, B:58:0x0108, B:81:0x0180, B:83:0x0184, B:85:0x018a, B:96:0x01ba, B:98:0x01c3, B:100:0x01cb, B:103:0x01d4, B:104:0x01e0, B:106:0x01e8, B:108:0x01f4, B:110:0x0202, B:86:0x0195, B:88:0x0199, B:90:0x019f, B:91:0x01aa, B:93:0x01ae, B:95:0x01b4, B:59:0x0114, B:61:0x011a, B:63:0x0123, B:65:0x0129, B:66:0x013a, B:68:0x0140, B:69:0x0148, B:71:0x014e, B:73:0x0154, B:74:0x015c, B:75:0x0166, B:77:0x016c, B:79:0x017b), top: B:120:0x00d0 }] */
    /* JADX WARN: Code duplicated, block: B:86:0x0195 A[Catch: all -> 0x009b, Exception -> 0x00e5, TryCatch #1 {Exception -> 0x00e5, blocks: (B:38:0x00d0, B:40:0x00d6, B:43:0x00dd, B:44:0x00e4, B:47:0x00e8, B:49:0x00ee, B:52:0x00f5, B:53:0x00fc, B:54:0x00fd, B:56:0x0104, B:58:0x0108, B:81:0x0180, B:83:0x0184, B:85:0x018a, B:96:0x01ba, B:98:0x01c3, B:100:0x01cb, B:103:0x01d4, B:104:0x01e0, B:106:0x01e8, B:108:0x01f4, B:110:0x0202, B:86:0x0195, B:88:0x0199, B:90:0x019f, B:91:0x01aa, B:93:0x01ae, B:95:0x01b4, B:59:0x0114, B:61:0x011a, B:63:0x0123, B:65:0x0129, B:66:0x013a, B:68:0x0140, B:69:0x0148, B:71:0x014e, B:73:0x0154, B:74:0x015c, B:75:0x0166, B:77:0x016c, B:79:0x017b), top: B:120:0x00d0 }] */
    /* JADX WARN: Code duplicated, block: B:88:0x0199 A[Catch: all -> 0x009b, Exception -> 0x00e5, TryCatch #1 {Exception -> 0x00e5, blocks: (B:38:0x00d0, B:40:0x00d6, B:43:0x00dd, B:44:0x00e4, B:47:0x00e8, B:49:0x00ee, B:52:0x00f5, B:53:0x00fc, B:54:0x00fd, B:56:0x0104, B:58:0x0108, B:81:0x0180, B:83:0x0184, B:85:0x018a, B:96:0x01ba, B:98:0x01c3, B:100:0x01cb, B:103:0x01d4, B:104:0x01e0, B:106:0x01e8, B:108:0x01f4, B:110:0x0202, B:86:0x0195, B:88:0x0199, B:90:0x019f, B:91:0x01aa, B:93:0x01ae, B:95:0x01b4, B:59:0x0114, B:61:0x011a, B:63:0x0123, B:65:0x0129, B:66:0x013a, B:68:0x0140, B:69:0x0148, B:71:0x014e, B:73:0x0154, B:74:0x015c, B:75:0x0166, B:77:0x016c, B:79:0x017b), top: B:120:0x00d0 }] */
    /* JADX WARN: Code duplicated, block: B:91:0x01aa A[Catch: all -> 0x009b, Exception -> 0x00e5, TryCatch #1 {Exception -> 0x00e5, blocks: (B:38:0x00d0, B:40:0x00d6, B:43:0x00dd, B:44:0x00e4, B:47:0x00e8, B:49:0x00ee, B:52:0x00f5, B:53:0x00fc, B:54:0x00fd, B:56:0x0104, B:58:0x0108, B:81:0x0180, B:83:0x0184, B:85:0x018a, B:96:0x01ba, B:98:0x01c3, B:100:0x01cb, B:103:0x01d4, B:104:0x01e0, B:106:0x01e8, B:108:0x01f4, B:110:0x0202, B:86:0x0195, B:88:0x0199, B:90:0x019f, B:91:0x01aa, B:93:0x01ae, B:95:0x01b4, B:59:0x0114, B:61:0x011a, B:63:0x0123, B:65:0x0129, B:66:0x013a, B:68:0x0140, B:69:0x0148, B:71:0x014e, B:73:0x0154, B:74:0x015c, B:75:0x0166, B:77:0x016c, B:79:0x017b), top: B:120:0x00d0 }] */
    /* JADX WARN: Code duplicated, block: B:93:0x01ae A[Catch: all -> 0x009b, Exception -> 0x00e5, TryCatch #1 {Exception -> 0x00e5, blocks: (B:38:0x00d0, B:40:0x00d6, B:43:0x00dd, B:44:0x00e4, B:47:0x00e8, B:49:0x00ee, B:52:0x00f5, B:53:0x00fc, B:54:0x00fd, B:56:0x0104, B:58:0x0108, B:81:0x0180, B:83:0x0184, B:85:0x018a, B:96:0x01ba, B:98:0x01c3, B:100:0x01cb, B:103:0x01d4, B:104:0x01e0, B:106:0x01e8, B:108:0x01f4, B:110:0x0202, B:86:0x0195, B:88:0x0199, B:90:0x019f, B:91:0x01aa, B:93:0x01ae, B:95:0x01b4, B:59:0x0114, B:61:0x011a, B:63:0x0123, B:65:0x0129, B:66:0x013a, B:68:0x0140, B:69:0x0148, B:71:0x014e, B:73:0x0154, B:74:0x015c, B:75:0x0166, B:77:0x016c, B:79:0x017b), top: B:120:0x00d0 }] */
    /* JADX WARN: Code duplicated, block: B:98:0x01c3 A[Catch: all -> 0x009b, Exception -> 0x00e5, TryCatch #1 {Exception -> 0x00e5, blocks: (B:38:0x00d0, B:40:0x00d6, B:43:0x00dd, B:44:0x00e4, B:47:0x00e8, B:49:0x00ee, B:52:0x00f5, B:53:0x00fc, B:54:0x00fd, B:56:0x0104, B:58:0x0108, B:81:0x0180, B:83:0x0184, B:85:0x018a, B:96:0x01ba, B:98:0x01c3, B:100:0x01cb, B:103:0x01d4, B:104:0x01e0, B:106:0x01e8, B:108:0x01f4, B:110:0x0202, B:86:0x0195, B:88:0x0199, B:90:0x019f, B:91:0x01aa, B:93:0x01ae, B:95:0x01b4, B:59:0x0114, B:61:0x011a, B:63:0x0123, B:65:0x0129, B:66:0x013a, B:68:0x0140, B:69:0x0148, B:71:0x014e, B:73:0x0154, B:74:0x015c, B:75:0x0166, B:77:0x016c, B:79:0x017b), top: B:120:0x00d0 }] */
    @Nullable
    private static View setViewBackground(String str, Context context, AttributeSet attributeSet, View view) {
        View viewCreateViewFromTag;
        GradientDrawable gradientDrawable;
        Drawable stateGradientDrawable;
        String string;
        Context context2;
        Method method;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.background);
        TypedArray typedArrayObtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, R.styleable.background_press);
        TypedArray typedArrayObtainStyledAttributes3 = context.obtainStyledAttributes(attributeSet, R.styleable.background_selector);
        TypedArray typedArrayObtainStyledAttributes4 = context.obtainStyledAttributes(attributeSet, R.styleable.text_selector);
        TypedArray typedArrayObtainStyledAttributes5 = context.obtainStyledAttributes(attributeSet, R.styleable.background_button_drawable);
        TypedArray typedArrayObtainStyledAttributes6 = context.obtainStyledAttributes(attributeSet, R.styleable.bl_other);
        TypedArray typedArrayObtainStyledAttributes7 = context.obtainStyledAttributes(attributeSet, R.styleable.bl_anim);
        TypedArray typedArrayObtainStyledAttributes8 = context.obtainStyledAttributes(attributeSet, R.styleable.background_multi_selector);
        TypedArray typedArrayObtainStyledAttributes9 = context.obtainStyledAttributes(attributeSet, R.styleable.background_multi_selector_text);
        TypedArray typedArrayObtainStyledAttributes10 = context.obtainStyledAttributes(attributeSet, R.styleable.bl_text);
        try {
            try {
                if (typedArrayObtainStyledAttributes.getIndexCount() == 0 && typedArrayObtainStyledAttributes3.getIndexCount() == 0 && typedArrayObtainStyledAttributes2.getIndexCount() == 0 && typedArrayObtainStyledAttributes4.getIndexCount() == 0 && typedArrayObtainStyledAttributes5.getIndexCount() == 0 && typedArrayObtainStyledAttributes7.getIndexCount() == 0 && typedArrayObtainStyledAttributes8.getIndexCount() == 0 && typedArrayObtainStyledAttributes9.getIndexCount() == 0 && typedArrayObtainStyledAttributes10.getIndexCount() == 0 && typedArrayObtainStyledAttributes6.getIndexCount() == 0) {
                    typedArrayObtainStyledAttributes.recycle();
                    typedArrayObtainStyledAttributes2.recycle();
                    typedArrayObtainStyledAttributes3.recycle();
                    typedArrayObtainStyledAttributes4.recycle();
                    typedArrayObtainStyledAttributes5.recycle();
                    typedArrayObtainStyledAttributes6.recycle();
                    typedArrayObtainStyledAttributes7.recycle();
                    typedArrayObtainStyledAttributes8.recycle();
                    typedArrayObtainStyledAttributes9.recycle();
                    typedArrayObtainStyledAttributes10.recycle();
                    return view;
                }
                viewCreateViewFromTag = view == null ? createViewFromTag(context, str, attributeSet) : view;
                if (viewCreateViewFromTag == null) {
                    typedArrayObtainStyledAttributes.recycle();
                    typedArrayObtainStyledAttributes2.recycle();
                    typedArrayObtainStyledAttributes3.recycle();
                    typedArrayObtainStyledAttributes4.recycle();
                    typedArrayObtainStyledAttributes5.recycle();
                    typedArrayObtainStyledAttributes6.recycle();
                    typedArrayObtainStyledAttributes7.recycle();
                    typedArrayObtainStyledAttributes8.recycle();
                    typedArrayObtainStyledAttributes9.recycle();
                    typedArrayObtainStyledAttributes10.recycle();
                    return null;
                }
                try {
                    if (typedArrayObtainStyledAttributes3.getIndexCount() > 0 && typedArrayObtainStyledAttributes8.getIndexCount() > 0) {
                        throw new IllegalArgumentException("Background_selector and background_multi_selector cannot be used simultaneously");
                    }
                    if (typedArrayObtainStyledAttributes4.getIndexCount() > 0 && typedArrayObtainStyledAttributes9.getIndexCount() > 0) {
                        throw new IllegalArgumentException("text_selector and background_multi_selector_text cannot be used simultaneously");
                    }
                    if (typedArrayObtainStyledAttributes5.getIndexCount() <= 0 || !(viewCreateViewFromTag instanceof CompoundButton)) {
                        if (typedArrayObtainStyledAttributes3.getIndexCount() <= 0) {
                            if (typedArrayObtainStyledAttributes2.getIndexCount() > 0) {
                                GradientDrawable drawable = DrawableFactory.getDrawable(typedArrayObtainStyledAttributes);
                                StateListDrawable pressDrawable = DrawableFactory.getPressDrawable(drawable, typedArrayObtainStyledAttributes, typedArrayObtainStyledAttributes2);
                                setDrawable(pressDrawable, viewCreateViewFromTag, typedArrayObtainStyledAttributes6, typedArrayObtainStyledAttributes);
                                gradientDrawable = drawable;
                                stateGradientDrawable = pressDrawable;
                            } else if (typedArrayObtainStyledAttributes8.getIndexCount() > 0) {
                                stateGradientDrawable = DrawableFactory.getMultiSelectorDrawable(context, typedArrayObtainStyledAttributes8, typedArrayObtainStyledAttributes);
                                setBackground(stateGradientDrawable, viewCreateViewFromTag, typedArrayObtainStyledAttributes);
                            } else if (typedArrayObtainStyledAttributes.getIndexCount() > 0) {
                                if (hasGradientState(typedArrayObtainStyledAttributes)) {
                                    stateGradientDrawable = DrawableFactory.getStateGradientDrawable(typedArrayObtainStyledAttributes);
                                    setDrawable(stateGradientDrawable, viewCreateViewFromTag, typedArrayObtainStyledAttributes6, typedArrayObtainStyledAttributes);
                                } else {
                                    GradientDrawable drawable2 = DrawableFactory.getDrawable(typedArrayObtainStyledAttributes);
                                    setDrawable(drawable2, viewCreateViewFromTag, typedArrayObtainStyledAttributes6, typedArrayObtainStyledAttributes);
                                    gradientDrawable = drawable2;
                                    stateGradientDrawable = null;
                                }
                            } else if (typedArrayObtainStyledAttributes7.getIndexCount() > 0) {
                                AnimationDrawable animationDrawable = DrawableFactory.getAnimationDrawable(typedArrayObtainStyledAttributes7);
                                setBackground(animationDrawable, viewCreateViewFromTag, typedArrayObtainStyledAttributes);
                                if (typedArrayObtainStyledAttributes7.getBoolean(R.styleable.bl_anim_bl_anim_auto_start, false)) {
                                    animationDrawable.start();
                                }
                            }
                            if (!(viewCreateViewFromTag instanceof TextView) && typedArrayObtainStyledAttributes4.getIndexCount() > 0) {
                                ((TextView) viewCreateViewFromTag).setTextColor(DrawableFactory.getTextSelectorColor(typedArrayObtainStyledAttributes4));
                            } else if (!(viewCreateViewFromTag instanceof TextView) && typedArrayObtainStyledAttributes9.getIndexCount() > 0) {
                                ((TextView) viewCreateViewFromTag).setTextColor(DrawableFactory.getMultiTextColorSelectorColorCreator(context, typedArrayObtainStyledAttributes9));
                            } else if ((viewCreateViewFromTag instanceof TextView) && typedArrayObtainStyledAttributes10.getIndexCount() > 0) {
                                TextViewFactory.setTextGradientColor(context, attributeSet, (TextView) viewCreateViewFromTag);
                            }
                            if (typedArrayObtainStyledAttributes.getBoolean(R.styleable.background_bl_ripple_enable, false) && typedArrayObtainStyledAttributes.hasValue(R.styleable.background_bl_ripple_color)) {
                                int color = typedArrayObtainStyledAttributes.getColor(R.styleable.background_bl_ripple_color, 0);
                                if (stateGradientDrawable == null) {
                                    stateGradientDrawable = gradientDrawable;
                                }
                                setBackground(new RippleDrawable(ColorStateList.valueOf(color), stateGradientDrawable, stateGradientDrawable), viewCreateViewFromTag, typedArrayObtainStyledAttributes);
                            }
                            if (typedArrayObtainStyledAttributes6.hasValue(R.styleable.bl_other_bl_function)) {
                                string = typedArrayObtainStyledAttributes6.getString(R.styleable.bl_other_bl_function);
                                if (!TextUtils.isEmpty(string)) {
                                    context2 = viewCreateViewFromTag.getContext();
                                    method = getMethod(context2.getClass(), string);
                                    if (method != null) {
                                        viewCreateViewFromTag.setOnClickListener(new a(method, context2));
                                    }
                                }
                            }
                            typedArrayObtainStyledAttributes.recycle();
                            typedArrayObtainStyledAttributes2.recycle();
                            typedArrayObtainStyledAttributes3.recycle();
                            typedArrayObtainStyledAttributes4.recycle();
                            typedArrayObtainStyledAttributes5.recycle();
                            typedArrayObtainStyledAttributes6.recycle();
                            typedArrayObtainStyledAttributes7.recycle();
                            typedArrayObtainStyledAttributes8.recycle();
                            typedArrayObtainStyledAttributes9.recycle();
                            typedArrayObtainStyledAttributes10.recycle();
                            return viewCreateViewFromTag;
                        }
                        stateGradientDrawable = DrawableFactory.getSelectorDrawable(typedArrayObtainStyledAttributes, typedArrayObtainStyledAttributes3);
                        setDrawable(stateGradientDrawable, viewCreateViewFromTag, typedArrayObtainStyledAttributes6, typedArrayObtainStyledAttributes);
                        gradientDrawable = null;
                        if (!(viewCreateViewFromTag instanceof TextView)) {
                            if (!(viewCreateViewFromTag instanceof TextView)) {
                                if (viewCreateViewFromTag instanceof TextView) {
                                    TextViewFactory.setTextGradientColor(context, attributeSet, (TextView) viewCreateViewFromTag);
                                }
                            } else if (viewCreateViewFromTag instanceof TextView) {
                                TextViewFactory.setTextGradientColor(context, attributeSet, (TextView) viewCreateViewFromTag);
                            }
                        } else if (!(viewCreateViewFromTag instanceof TextView)) {
                            if (viewCreateViewFromTag instanceof TextView) {
                                TextViewFactory.setTextGradientColor(context, attributeSet, (TextView) viewCreateViewFromTag);
                            }
                        } else if (viewCreateViewFromTag instanceof TextView) {
                            TextViewFactory.setTextGradientColor(context, attributeSet, (TextView) viewCreateViewFromTag);
                        }
                        if (typedArrayObtainStyledAttributes.getBoolean(R.styleable.background_bl_ripple_enable, false)) {
                            int color2 = typedArrayObtainStyledAttributes.getColor(R.styleable.background_bl_ripple_color, 0);
                            if (stateGradientDrawable == null) {
                                stateGradientDrawable = gradientDrawable;
                            }
                            setBackground(new RippleDrawable(ColorStateList.valueOf(color2), stateGradientDrawable, stateGradientDrawable), viewCreateViewFromTag, typedArrayObtainStyledAttributes);
                        }
                        if (typedArrayObtainStyledAttributes6.hasValue(R.styleable.bl_other_bl_function)) {
                            string = typedArrayObtainStyledAttributes6.getString(R.styleable.bl_other_bl_function);
                            if (!TextUtils.isEmpty(string)) {
                                context2 = viewCreateViewFromTag.getContext();
                                method = getMethod(context2.getClass(), string);
                                if (method != null) {
                                    viewCreateViewFromTag.setOnClickListener(new a(method, context2));
                                }
                            }
                        }
                        typedArrayObtainStyledAttributes.recycle();
                        typedArrayObtainStyledAttributes2.recycle();
                        typedArrayObtainStyledAttributes3.recycle();
                        typedArrayObtainStyledAttributes4.recycle();
                        typedArrayObtainStyledAttributes5.recycle();
                        typedArrayObtainStyledAttributes6.recycle();
                        typedArrayObtainStyledAttributes7.recycle();
                        typedArrayObtainStyledAttributes8.recycle();
                        typedArrayObtainStyledAttributes9.recycle();
                        typedArrayObtainStyledAttributes10.recycle();
                        return viewCreateViewFromTag;
                    }
                    ((CompoundButton) viewCreateViewFromTag).setButtonDrawable(DrawableFactory.getButtonDrawable(typedArrayObtainStyledAttributes, typedArrayObtainStyledAttributes5));
                    stateGradientDrawable = null;
                    gradientDrawable = null;
                    if (!(viewCreateViewFromTag instanceof TextView)) {
                        if (!(viewCreateViewFromTag instanceof TextView)) {
                            if (viewCreateViewFromTag instanceof TextView) {
                                TextViewFactory.setTextGradientColor(context, attributeSet, (TextView) viewCreateViewFromTag);
                            }
                        } else if (viewCreateViewFromTag instanceof TextView) {
                            TextViewFactory.setTextGradientColor(context, attributeSet, (TextView) viewCreateViewFromTag);
                        }
                    } else if (!(viewCreateViewFromTag instanceof TextView)) {
                        if (viewCreateViewFromTag instanceof TextView) {
                            TextViewFactory.setTextGradientColor(context, attributeSet, (TextView) viewCreateViewFromTag);
                        }
                    } else if (viewCreateViewFromTag instanceof TextView) {
                        TextViewFactory.setTextGradientColor(context, attributeSet, (TextView) viewCreateViewFromTag);
                    }
                    if (typedArrayObtainStyledAttributes.getBoolean(R.styleable.background_bl_ripple_enable, false)) {
                        int color3 = typedArrayObtainStyledAttributes.getColor(R.styleable.background_bl_ripple_color, 0);
                        if (stateGradientDrawable == null) {
                            stateGradientDrawable = gradientDrawable;
                        }
                        setBackground(new RippleDrawable(ColorStateList.valueOf(color3), stateGradientDrawable, stateGradientDrawable), viewCreateViewFromTag, typedArrayObtainStyledAttributes);
                    }
                    if (typedArrayObtainStyledAttributes6.hasValue(R.styleable.bl_other_bl_function)) {
                        string = typedArrayObtainStyledAttributes6.getString(R.styleable.bl_other_bl_function);
                        if (!TextUtils.isEmpty(string)) {
                            context2 = viewCreateViewFromTag.getContext();
                            method = getMethod(context2.getClass(), string);
                            if (method != null) {
                                viewCreateViewFromTag.setOnClickListener(new a(method, context2));
                            }
                        }
                    }
                    typedArrayObtainStyledAttributes.recycle();
                    typedArrayObtainStyledAttributes2.recycle();
                    typedArrayObtainStyledAttributes3.recycle();
                    typedArrayObtainStyledAttributes4.recycle();
                    typedArrayObtainStyledAttributes5.recycle();
                    typedArrayObtainStyledAttributes6.recycle();
                    typedArrayObtainStyledAttributes7.recycle();
                    typedArrayObtainStyledAttributes8.recycle();
                    typedArrayObtainStyledAttributes9.recycle();
                    typedArrayObtainStyledAttributes10.recycle();
                    return viewCreateViewFromTag;
                } catch (Exception e11) {
                    e = e11;
                }
            } catch (Exception e12) {
                e = e12;
                viewCreateViewFromTag = view;
            }
        } catch (Throwable th2) {
            typedArrayObtainStyledAttributes.recycle();
            typedArrayObtainStyledAttributes2.recycle();
            typedArrayObtainStyledAttributes3.recycle();
            typedArrayObtainStyledAttributes4.recycle();
            typedArrayObtainStyledAttributes5.recycle();
            typedArrayObtainStyledAttributes6.recycle();
            typedArrayObtainStyledAttributes7.recycle();
            typedArrayObtainStyledAttributes8.recycle();
            typedArrayObtainStyledAttributes9.recycle();
            typedArrayObtainStyledAttributes10.recycle();
            throw th2;
        }
        e.printStackTrace();
        typedArrayObtainStyledAttributes.recycle();
        typedArrayObtainStyledAttributes2.recycle();
        typedArrayObtainStyledAttributes3.recycle();
        typedArrayObtainStyledAttributes4.recycle();
        typedArrayObtainStyledAttributes5.recycle();
        typedArrayObtainStyledAttributes6.recycle();
        typedArrayObtainStyledAttributes7.recycle();
        typedArrayObtainStyledAttributes8.recycle();
        typedArrayObtainStyledAttributes9.recycle();
        typedArrayObtainStyledAttributes10.recycle();
        return viewCreateViewFromTag;
    }

    @Override // android.view.LayoutInflater.Factory2
    public View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        return onCreateView(str, context, attributeSet);
    }

    @Override // android.view.LayoutInflater.Factory
    public View onCreateView(String str, Context context, AttributeSet attributeSet) {
        View viewOnCreateView = null;
        if (str.startsWith("com.noober.background.view")) {
            return null;
        }
        LayoutInflater.Factory2 factory2 = this.mViewCreateFactory2;
        if (factory2 != null) {
            View viewOnCreateView2 = factory2.onCreateView(str, context, attributeSet);
            viewOnCreateView = viewOnCreateView2 == null ? this.mViewCreateFactory2.onCreateView(null, str, context, attributeSet) : viewOnCreateView2;
        } else {
            LayoutInflater.Factory factory = this.mViewCreateFactory;
            if (factory != null) {
                viewOnCreateView = factory.onCreateView(str, context, attributeSet);
            }
        }
        return setViewBackground(str, context, attributeSet, viewOnCreateView);
    }

    public void setInterceptFactory(LayoutInflater.Factory factory) {
        this.mViewCreateFactory = factory;
    }

    public void setInterceptFactory2(LayoutInflater.Factory2 factory2) {
        this.mViewCreateFactory2 = factory2;
    }
}
