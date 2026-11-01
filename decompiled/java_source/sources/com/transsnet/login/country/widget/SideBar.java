package com.transsnet.login.country.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.text.TextPaint;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.content.b;
import com.tn.lib.widget.R$color;
import com.transsnet.login.R$dimen;
import java.util.List;

/* JADX INFO: loaded from: classes7.dex */
public class SideBar extends View {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private List f60298a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private TextPaint f60299b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f60300c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private a f60301d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private float f60302e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f60303f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f60304g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private float f60305h;

    public interface a {
        void g(String str);
    }

    public SideBar(Context context) {
        super(context.getApplicationContext());
        this.f60300c = -1;
        this.f60302e = -1.0f;
        this.f60303f = -1;
        this.f60304g = -1;
        this.f60305h = -1.0f;
    }

    public SideBar(Context context, AttributeSet attributeSet) {
        super(context.getApplicationContext(), attributeSet);
        this.f60300c = -1;
        this.f60302e = -1.0f;
        this.f60303f = -1;
        this.f60304g = -1;
        this.f60305h = -1.0f;
        setBackgroundColor(0);
    }

    private void a(Canvas canvas) {
        if (this.f60303f < 0) {
            this.f60303f = getContext().getResources().getDimensionPixelSize(R$dimen.side_bar_txt_size);
            this.f60304g = b.getColor(getContext(), R$color.text_03);
            this.f60302e = this.f60303f * 1.5f;
        }
        int i11 = 0;
        for (String str : this.f60298a) {
            this.f60299b.setTextSize(this.f60303f);
            this.f60299b.setAntiAlias(true);
            this.f60299b.setColor(this.f60304g);
            if (i11 == this.f60300c) {
                this.f60299b.setColor(b.getColor(getContext(), R$color.text_01));
                this.f60299b.setFakeBoldText(true);
            }
            if (this.f60305h < 0.0f) {
                this.f60305h = ((getWidth() * 1.0f) / 2.0f) - (this.f60299b.measureText(str) / 2.0f);
            }
            float f11 = this.f60302e;
            canvas.drawText(str, this.f60305h, (i11 * f11) + f11, this.f60299b);
            this.f60299b.reset();
            i11++;
        }
    }

    @Override // android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (this.f60298a == null) {
            return super.dispatchTouchEvent(motionEvent);
        }
        int action = motionEvent.getAction();
        motionEvent.getX();
        float y10 = motionEvent.getY();
        int i11 = this.f60300c;
        int height = (int) ((y10 / getHeight()) * this.f60298a.size());
        if (action == 1 || action == 3) {
            setBackgroundColor(0);
            invalidate();
        } else {
            setBackgroundColor(0);
            if (i11 != height && height >= 0 && height < this.f60298a.size()) {
                a aVar = this.f60301d;
                if (aVar != null) {
                    aVar.g((String) this.f60298a.get(height));
                }
                this.f60300c = height;
                invalidate();
            }
        }
        return true;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        List list = this.f60298a;
        if (list == null || list.isEmpty()) {
            return;
        }
        if (this.f60299b == null) {
            this.f60299b = new TextPaint(1);
        }
        a(canvas);
    }

    public void setIndexs(List<String> list) {
        this.f60298a = list;
        if (this.f60303f < 0) {
            this.f60303f = getContext().getResources().getDimensionPixelSize(R$dimen.side_bar_txt_size);
            this.f60304g = b.getColor(getContext(), R$color.text_03);
            this.f60302e = this.f60303f * 1.5f;
        }
        if (list != null) {
            ViewGroup.LayoutParams layoutParams = getLayoutParams();
            layoutParams.height = (int) (this.f60302e * list.size());
            setLayoutParams(layoutParams);
        }
        invalidate();
    }

    public void setScrollerListener(a aVar) {
        this.f60301d = aVar;
    }

    public void updateIndex(int i11) {
        this.f60300c = i11;
        invalidate();
    }
}
