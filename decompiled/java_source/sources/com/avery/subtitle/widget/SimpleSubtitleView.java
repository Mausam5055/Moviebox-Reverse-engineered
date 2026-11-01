package com.avery.subtitle.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.RectF;
import android.text.Html;
import android.text.TextUtils;
import android.util.AttributeSet;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.AppCompatTextView;
import com.avery.subtitle.DefaultSubtitleEngine;
import com.avery.subtitle.b;
import i5.a;

/* JADX INFO: loaded from: classes2.dex */
public class SimpleSubtitleView extends AppCompatTextView implements b, b.a, b.InterfaceC0182b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private b f19937a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f19938b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f19939c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private BgBubbleDrawable f19940d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f19941e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f19942f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f19943g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f19944h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f19945i;

    public SimpleSubtitleView(Context context) {
        super(context);
        this.f19941e = false;
        this.f19942f = false;
        this.f19943g = 0;
        this.f19944h = 0;
        this.f19945i = 0;
        b();
    }

    public SimpleSubtitleView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f19941e = false;
        this.f19942f = false;
        this.f19943g = 0;
        this.f19944h = 0;
        this.f19945i = 0;
        b();
    }

    public SimpleSubtitleView(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        this.f19941e = false;
        this.f19942f = false;
        this.f19943g = 0;
        this.f19944h = 0;
        this.f19945i = 0;
        b();
    }

    private void b() {
        DefaultSubtitleEngine defaultSubtitleEngine = new DefaultSubtitleEngine();
        this.f19937a = defaultSubtitleEngine;
        defaultSubtitleEngine.setOnSubtitlePreparedListener(this);
        this.f19937a.setOnSubtitleChangeListener(this);
    }

    private void c() {
        d(getWidth(), getHeight());
    }

    private void d(int i11, int i12) {
        e(0, i11, 0, i12);
    }

    private void e(int i11, int i12, int i13, int i14) {
        if (this.f19941e || this.f19942f) {
            this.f19942f = false;
            BgBubbleDrawable bgBubbleDrawableT = new BgBubbleDrawable.b().u(new RectF(i11, i13, i12, i14)).s(BgBubbleDrawable.BubbleType.COLOR).p(this.f19945i).q(BgBubbleDrawable.ArrowLocation.NONE).r(this.f19943g).t();
            this.f19940d = bgBubbleDrawableT;
            bgBubbleDrawableT.setAlpha(this.f19944h);
        }
    }

    public void closeBg() {
        this.f19941e = false;
        this.f19942f = true;
        this.f19943g = 0;
        this.f19944h = 0;
        this.f19945i = 0;
        requestLayout();
    }

    @Override // com.avery.subtitle.b
    public void destroy() {
        this.f19937a.destroy();
    }

    @Override // com.avery.subtitle.b
    public void initSubtitle(a aVar, boolean z10) {
        this.f19937a.initSubtitle(aVar, z10);
    }

    @Override // android.view.View
    public void layout(int i11, int i12, int i13, int i14) {
        super.layout(i11, i12, i13, i14);
        c();
    }

    @Override // androidx.appcompat.widget.AppCompatTextView, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
    }

    @Override // android.widget.TextView, android.view.View
    protected void onDraw(Canvas canvas) {
        BgBubbleDrawable bgBubbleDrawable = this.f19940d;
        if (bgBubbleDrawable != null) {
            bgBubbleDrawable.draw(canvas);
        }
        super.onDraw(canvas);
    }

    @Override // com.avery.subtitle.b.InterfaceC0182b
    public void onRefreshSubtitle() {
        refreshImmediately();
    }

    @Override // android.view.View
    protected void onSizeChanged(int i11, int i12, int i13, int i14) {
        super.onSizeChanged(i11, i12, i13, i14);
        if (i11 <= 0 || i12 <= 0) {
            return;
        }
        d(i11, i12);
    }

    @Override // com.avery.subtitle.b.a
    public void onSubtitleChanged(@Nullable k5.b bVar) {
        if (this.f19939c) {
            return;
        }
        if (bVar == null || TextUtils.isEmpty(bVar.f66653d)) {
            setText("");
            setVisibility(4);
        } else {
            if (TextUtils.equals(this.f19938b, bVar.f66653d)) {
                return;
            }
            setVisibility(0);
            String strReplace = bVar.f66653d.replace("\\N", "\n");
            bVar.f66653d = strReplace;
            this.f19938b = strReplace;
            if (l5.b.b(strReplace).booleanValue()) {
                setText(Html.fromHtml(bVar.f66653d));
            } else {
                setText(bVar.f66653d);
            }
        }
    }

    @Override // com.avery.subtitle.b.InterfaceC0182b
    public void onSubtitlePrepared() {
        start();
    }

    public void openBg() {
        this.f19941e = true;
        requestLayout();
    }

    @Override // com.avery.subtitle.b
    public void pause() {
        this.f19937a.pause();
    }

    @Override // com.avery.subtitle.b
    public void refreshImmediately() {
        this.f19937a.refreshImmediately();
    }

    @Override // com.avery.subtitle.b
    public void reset() {
        this.f19937a.reset();
    }

    @Override // com.avery.subtitle.b
    public void resume() {
        this.f19937a.resume();
    }

    @Override // com.avery.subtitle.b
    public void selectSubtitle(String str, String str2, i5.b bVar) {
        this.f19937a.selectSubtitle(str, str2, bVar);
    }

    public void setBgAlpha(int i11) {
        if (this.f19941e) {
            this.f19944h = i11;
            requestLayout();
        }
    }

    public void setBgColor(int i11) {
        if (this.f19941e) {
            this.f19943g = i11;
            requestLayout();
        }
    }

    public void setBgdRadius(int i11) {
        if (this.f19941e) {
            this.f19945i = i11;
            requestLayout();
        }
    }

    @Override // com.avery.subtitle.b
    public void setDefaultSubtitle(String str) {
        this.f19937a.setDefaultSubtitle(str);
    }

    @Override // com.avery.subtitle.b
    public void setOnSubtitleChangeListener(b.a aVar) {
        this.f19937a.setOnSubtitleChangeListener(aVar);
    }

    @Override // com.avery.subtitle.b
    public void setOnSubtitlePreparedListener(b.InterfaceC0182b interfaceC0182b) {
        this.f19937a.setOnSubtitlePreparedListener(interfaceC0182b);
    }

    @Override // com.avery.subtitle.b
    public void setSubtitlePath(String str, String str2) {
        this.f19937a.setSubtitlePath(str, str2);
    }

    @Override // com.avery.subtitle.b
    public void start() {
        this.f19937a.start();
    }

    @Override // com.avery.subtitle.b
    public void stop() {
        this.f19937a.stop();
    }

    @Override // com.avery.subtitle.b
    public void subtitleDelay(long j11) {
        this.f19937a.subtitleDelay(j11);
    }

    public void turnOff(boolean z10) {
        this.f19939c = z10;
        setText("");
        setVisibility(4);
    }
}
