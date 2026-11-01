package net.lucode.hackware.magicindicator;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import h00.a;

/* JADX INFO: loaded from: classes.dex */
public class MagicIndicator extends FrameLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private a f70326a;

    public MagicIndicator(Context context) {
        super(context);
    }

    public MagicIndicator(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public a getNavigator() {
        return this.f70326a;
    }

    public void onPageScrollStateChanged(int i11) {
        a aVar = this.f70326a;
        if (aVar != null) {
            aVar.onPageScrollStateChanged(i11);
        }
    }

    public void onPageScrolled(int i11, float f11, int i12) {
        a aVar = this.f70326a;
        if (aVar != null) {
            aVar.onPageScrolled(i11, f11, i12);
        }
    }

    public void onPageSelected(int i11) {
        a aVar = this.f70326a;
        if (aVar != null) {
            aVar.onPageSelected(i11);
        }
    }

    public void setNavigator(a aVar) {
        a aVar2 = this.f70326a;
        if (aVar2 == aVar) {
            return;
        }
        if (aVar2 != null) {
            aVar2.onDetachFromMagicIndicator();
        }
        this.f70326a = aVar;
        removeAllViews();
        if (this.f70326a instanceof View) {
            addView((View) this.f70326a, new FrameLayout.LayoutParams(-1, -1));
            this.f70326a.onAttachToMagicIndicator();
        }
    }
}
