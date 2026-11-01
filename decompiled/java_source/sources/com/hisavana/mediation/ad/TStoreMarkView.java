package com.hisavana.mediation.ad;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.cloud.sdk.commonutil.util.h;
import com.hisavana.mediation.R$styleable;

/* JADX INFO: loaded from: classes4.dex */
public class TStoreMarkView extends FrameLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f33184a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f33185b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f33186c;

    public TStoreMarkView(@NonNull Context context) {
        this(context, null);
    }

    public TStoreMarkView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public TStoreMarkView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.TStoreMarkView);
            this.f33184a = typedArrayObtainStyledAttributes.getInt(R$styleable.TStoreMarkView_sdkTypeSetStoreMark, 0);
            this.f33186c = typedArrayObtainStyledAttributes.getColor(R$styleable.TStoreMarkView_storeTextColor, -1);
            int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.TStoreMarkView_storeTextSize, 0);
            this.f33185b = dimensionPixelSize == 0 ? 8 : h.h(dimensionPixelSize);
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    public int getSdkTypeSetStoreMark() {
        return this.f33184a;
    }

    public int getTextColor() {
        return this.f33186c;
    }

    public int getTextSize() {
        return this.f33185b;
    }
}
