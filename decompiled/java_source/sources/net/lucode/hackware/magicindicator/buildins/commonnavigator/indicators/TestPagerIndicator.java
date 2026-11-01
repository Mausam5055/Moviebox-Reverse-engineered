package net.lucode.hackware.magicindicator.buildins.commonnavigator.indicators;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.view.View;
import com.tn.lib.view.FlowLayout;
import j00.c;
import java.util.List;
import k00.a;

/* JADX INFO: loaded from: classes7.dex */
public class TestPagerIndicator extends View implements c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Paint f70386a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f70387b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f70388c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private RectF f70389d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private RectF f70390e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private List f70391f;

    public TestPagerIndicator(Context context) {
        super(context);
        this.f70389d = new RectF();
        this.f70390e = new RectF();
        a(context);
    }

    private void a(Context context) {
        Paint paint = new Paint(1);
        this.f70386a = paint;
        paint.setStyle(Paint.Style.STROKE);
        this.f70387b = FlowLayout.SPACING_AUTO;
        this.f70388c = -16711936;
    }

    public int getInnerRectColor() {
        return this.f70388c;
    }

    public int getOutRectColor() {
        return this.f70387b;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        this.f70386a.setColor(this.f70387b);
        canvas.drawRect(this.f70389d, this.f70386a);
        this.f70386a.setColor(this.f70388c);
        canvas.drawRect(this.f70390e, this.f70386a);
    }

    @Override // j00.c
    public void onPageScrollStateChanged(int i11) {
    }

    @Override // j00.c
    public void onPageScrolled(int i11, float f11, int i12) {
        List list = this.f70391f;
        if (list == null || list.isEmpty()) {
            return;
        }
        a aVarF = g00.a.f(this.f70391f, i11);
        a aVarF2 = g00.a.f(this.f70391f, i11 + 1);
        RectF rectF = this.f70389d;
        int i13 = aVarF.f66555a;
        rectF.left = i13 + ((aVarF2.f66555a - i13) * f11);
        int i14 = aVarF.f66556b;
        rectF.top = i14 + ((aVarF2.f66556b - i14) * f11);
        int i15 = aVarF.f66557c;
        rectF.right = i15 + ((aVarF2.f66557c - i15) * f11);
        int i16 = aVarF.f66558d;
        rectF.bottom = i16 + ((aVarF2.f66558d - i16) * f11);
        RectF rectF2 = this.f70390e;
        int i17 = aVarF.f66559e;
        rectF2.left = i17 + ((aVarF2.f66559e - i17) * f11);
        int i18 = aVarF.f66560f;
        rectF2.top = i18 + ((aVarF2.f66560f - i18) * f11);
        int i19 = aVarF.f66561g;
        rectF2.right = i19 + ((aVarF2.f66561g - i19) * f11);
        int i20 = aVarF.f66562h;
        rectF2.bottom = i20 + ((aVarF2.f66562h - i20) * f11);
        invalidate();
    }

    @Override // j00.c
    public void onPageSelected(int i11) {
    }

    @Override // j00.c
    public void onPositionDataProvide(List<a> list) {
        this.f70391f = list;
    }

    public void setInnerRectColor(int i11) {
        this.f70388c = i11;
    }

    public void setOutRectColor(int i11) {
        this.f70387b = i11;
    }
}
