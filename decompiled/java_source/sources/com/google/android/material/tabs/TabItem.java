package com.google.android.material.tabs;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import androidx.appcompat.widget.j0;
import com.google.android.material.R$styleable;

/* JADX INFO: loaded from: classes4.dex */
public class TabItem extends View {
    public final int customLayout;
    public final Drawable icon;
    public final CharSequence text;

    public TabItem(Context context) {
        this(context, null);
    }

    public TabItem(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        j0 j0VarU = j0.u(context, attributeSet, R$styleable.TabItem);
        this.text = j0VarU.p(R$styleable.TabItem_android_text);
        this.icon = j0VarU.g(R$styleable.TabItem_android_icon);
        this.customLayout = j0VarU.n(R$styleable.TabItem_android_layout, 0);
        j0VarU.x();
    }
}
