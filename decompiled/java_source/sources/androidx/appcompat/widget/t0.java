package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.Movie;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import java.io.IOException;
import java.io.InputStream;
import java.lang.ref.WeakReference;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes.dex */
public class t0 extends c0 {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static boolean f2119c;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final WeakReference f2120b;

    public t0(Context context, Resources resources) {
        super(resources);
        this.f2120b = new WeakReference(context);
    }

    public static boolean b() {
        return f2119c;
    }

    public static boolean c() {
        b();
        return false;
    }

    @Override // androidx.appcompat.widget.c0, android.content.res.Resources
    public /* bridge */ /* synthetic */ XmlResourceParser getAnimation(int i11) {
        return super.getAnimation(i11);
    }

    @Override // androidx.appcompat.widget.c0, android.content.res.Resources
    public /* bridge */ /* synthetic */ boolean getBoolean(int i11) {
        return super.getBoolean(i11);
    }

    @Override // androidx.appcompat.widget.c0, android.content.res.Resources
    public /* bridge */ /* synthetic */ int getColor(int i11) {
        return super.getColor(i11);
    }

    @Override // androidx.appcompat.widget.c0, android.content.res.Resources
    public /* bridge */ /* synthetic */ ColorStateList getColorStateList(int i11) {
        return super.getColorStateList(i11);
    }

    @Override // androidx.appcompat.widget.c0, android.content.res.Resources
    public /* bridge */ /* synthetic */ Configuration getConfiguration() {
        return super.getConfiguration();
    }

    @Override // androidx.appcompat.widget.c0, android.content.res.Resources
    public /* bridge */ /* synthetic */ float getDimension(int i11) {
        return super.getDimension(i11);
    }

    @Override // androidx.appcompat.widget.c0, android.content.res.Resources
    public /* bridge */ /* synthetic */ int getDimensionPixelOffset(int i11) {
        return super.getDimensionPixelOffset(i11);
    }

    @Override // androidx.appcompat.widget.c0, android.content.res.Resources
    public /* bridge */ /* synthetic */ int getDimensionPixelSize(int i11) {
        return super.getDimensionPixelSize(i11);
    }

    @Override // androidx.appcompat.widget.c0, android.content.res.Resources
    public /* bridge */ /* synthetic */ DisplayMetrics getDisplayMetrics() {
        return super.getDisplayMetrics();
    }

    @Override // android.content.res.Resources
    public Drawable getDrawable(int i11) {
        Context context = (Context) this.f2120b.get();
        return context != null ? b0.h().t(context, this, i11) : a(i11);
    }

    @Override // androidx.appcompat.widget.c0, android.content.res.Resources
    public /* bridge */ /* synthetic */ Drawable getDrawable(int i11, Resources.Theme theme) {
        return super.getDrawable(i11, theme);
    }

    @Override // androidx.appcompat.widget.c0, android.content.res.Resources
    public /* bridge */ /* synthetic */ Drawable getDrawableForDensity(int i11, int i12) {
        return super.getDrawableForDensity(i11, i12);
    }

    @Override // androidx.appcompat.widget.c0, android.content.res.Resources
    public /* bridge */ /* synthetic */ Drawable getDrawableForDensity(int i11, int i12, Resources.Theme theme) {
        return super.getDrawableForDensity(i11, i12, theme);
    }

    @Override // androidx.appcompat.widget.c0, android.content.res.Resources
    public /* bridge */ /* synthetic */ float getFraction(int i11, int i12, int i13) {
        return super.getFraction(i11, i12, i13);
    }

    @Override // androidx.appcompat.widget.c0, android.content.res.Resources
    public /* bridge */ /* synthetic */ int getIdentifier(String str, String str2, String str3) {
        return super.getIdentifier(str, str2, str3);
    }

    @Override // androidx.appcompat.widget.c0, android.content.res.Resources
    public /* bridge */ /* synthetic */ int[] getIntArray(int i11) {
        return super.getIntArray(i11);
    }

    @Override // androidx.appcompat.widget.c0, android.content.res.Resources
    public /* bridge */ /* synthetic */ int getInteger(int i11) {
        return super.getInteger(i11);
    }

    @Override // androidx.appcompat.widget.c0, android.content.res.Resources
    public /* bridge */ /* synthetic */ XmlResourceParser getLayout(int i11) {
        return super.getLayout(i11);
    }

    @Override // androidx.appcompat.widget.c0, android.content.res.Resources
    public /* bridge */ /* synthetic */ Movie getMovie(int i11) {
        return super.getMovie(i11);
    }

    @Override // androidx.appcompat.widget.c0, android.content.res.Resources
    public /* bridge */ /* synthetic */ String getQuantityString(int i11, int i12) {
        return super.getQuantityString(i11, i12);
    }

    @Override // androidx.appcompat.widget.c0, android.content.res.Resources
    public /* bridge */ /* synthetic */ String getQuantityString(int i11, int i12, Object[] objArr) {
        return super.getQuantityString(i11, i12, objArr);
    }

    @Override // androidx.appcompat.widget.c0, android.content.res.Resources
    public /* bridge */ /* synthetic */ CharSequence getQuantityText(int i11, int i12) {
        return super.getQuantityText(i11, i12);
    }

    @Override // androidx.appcompat.widget.c0, android.content.res.Resources
    public /* bridge */ /* synthetic */ String getResourceEntryName(int i11) {
        return super.getResourceEntryName(i11);
    }

    @Override // androidx.appcompat.widget.c0, android.content.res.Resources
    public /* bridge */ /* synthetic */ String getResourceName(int i11) {
        return super.getResourceName(i11);
    }

    @Override // androidx.appcompat.widget.c0, android.content.res.Resources
    public /* bridge */ /* synthetic */ String getResourcePackageName(int i11) {
        return super.getResourcePackageName(i11);
    }

    @Override // androidx.appcompat.widget.c0, android.content.res.Resources
    public /* bridge */ /* synthetic */ String getResourceTypeName(int i11) {
        return super.getResourceTypeName(i11);
    }

    @Override // androidx.appcompat.widget.c0, android.content.res.Resources
    public /* bridge */ /* synthetic */ String getString(int i11) {
        return super.getString(i11);
    }

    @Override // androidx.appcompat.widget.c0, android.content.res.Resources
    public /* bridge */ /* synthetic */ String getString(int i11, Object[] objArr) {
        return super.getString(i11, objArr);
    }

    @Override // androidx.appcompat.widget.c0, android.content.res.Resources
    public /* bridge */ /* synthetic */ String[] getStringArray(int i11) {
        return super.getStringArray(i11);
    }

    @Override // androidx.appcompat.widget.c0, android.content.res.Resources
    public /* bridge */ /* synthetic */ CharSequence getText(int i11) {
        return super.getText(i11);
    }

    @Override // androidx.appcompat.widget.c0, android.content.res.Resources
    public /* bridge */ /* synthetic */ CharSequence getText(int i11, CharSequence charSequence) {
        return super.getText(i11, charSequence);
    }

    @Override // androidx.appcompat.widget.c0, android.content.res.Resources
    public /* bridge */ /* synthetic */ CharSequence[] getTextArray(int i11) {
        return super.getTextArray(i11);
    }

    @Override // androidx.appcompat.widget.c0, android.content.res.Resources
    public /* bridge */ /* synthetic */ void getValue(int i11, TypedValue typedValue, boolean z10) {
        super.getValue(i11, typedValue, z10);
    }

    @Override // androidx.appcompat.widget.c0, android.content.res.Resources
    public /* bridge */ /* synthetic */ void getValue(String str, TypedValue typedValue, boolean z10) {
        super.getValue(str, typedValue, z10);
    }

    @Override // androidx.appcompat.widget.c0, android.content.res.Resources
    public /* bridge */ /* synthetic */ void getValueForDensity(int i11, int i12, TypedValue typedValue, boolean z10) {
        super.getValueForDensity(i11, i12, typedValue, z10);
    }

    @Override // androidx.appcompat.widget.c0, android.content.res.Resources
    public /* bridge */ /* synthetic */ XmlResourceParser getXml(int i11) {
        return super.getXml(i11);
    }

    @Override // androidx.appcompat.widget.c0, android.content.res.Resources
    public /* bridge */ /* synthetic */ TypedArray obtainAttributes(AttributeSet attributeSet, int[] iArr) {
        return super.obtainAttributes(attributeSet, iArr);
    }

    @Override // androidx.appcompat.widget.c0, android.content.res.Resources
    public /* bridge */ /* synthetic */ TypedArray obtainTypedArray(int i11) {
        return super.obtainTypedArray(i11);
    }

    @Override // androidx.appcompat.widget.c0, android.content.res.Resources
    public /* bridge */ /* synthetic */ InputStream openRawResource(int i11) {
        return super.openRawResource(i11);
    }

    @Override // androidx.appcompat.widget.c0, android.content.res.Resources
    public /* bridge */ /* synthetic */ InputStream openRawResource(int i11, TypedValue typedValue) {
        return super.openRawResource(i11, typedValue);
    }

    @Override // androidx.appcompat.widget.c0, android.content.res.Resources
    public /* bridge */ /* synthetic */ AssetFileDescriptor openRawResourceFd(int i11) {
        return super.openRawResourceFd(i11);
    }

    @Override // androidx.appcompat.widget.c0, android.content.res.Resources
    public /* bridge */ /* synthetic */ void parseBundleExtra(String str, AttributeSet attributeSet, Bundle bundle) throws XmlPullParserException {
        super.parseBundleExtra(str, attributeSet, bundle);
    }

    @Override // androidx.appcompat.widget.c0, android.content.res.Resources
    public /* bridge */ /* synthetic */ void parseBundleExtras(XmlResourceParser xmlResourceParser, Bundle bundle) throws XmlPullParserException, IOException {
        super.parseBundleExtras(xmlResourceParser, bundle);
    }

    @Override // androidx.appcompat.widget.c0, android.content.res.Resources
    public /* bridge */ /* synthetic */ void updateConfiguration(Configuration configuration, DisplayMetrics displayMetrics) {
        super.updateConfiguration(configuration, displayMetrics);
    }
}
