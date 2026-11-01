package net.lucode.hackware.magicindicator.buildins.commonnavigator.titles;

import android.content.Context;
import android.graphics.Paint;
import android.graphics.Rect;
import android.text.TextUtils;
import android.widget.TextView;
import j00.b;

/* JADX INFO: loaded from: classes.dex */
public class SimplePagerTitleView extends TextView implements b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected int f70420a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected int f70421b;

    public SimplePagerTitleView(Context context) {
        super(context, null);
        a(context);
    }

    private void a(Context context) {
        setGravity(17);
        int iA = i00.b.a(context, 10.0d);
        setPadding(iA, 0, iA, 0);
        setSingleLine();
        setEllipsize(TextUtils.TruncateAt.END);
    }

    @Override // j00.b
    public int getContentBottom() {
        Paint.FontMetrics fontMetrics = getPaint().getFontMetrics();
        return (int) ((getHeight() / 2) + ((fontMetrics.bottom - fontMetrics.top) / 2.0f));
    }

    @Override // j00.b
    public int getContentLeft() {
        String string;
        Rect rect = new Rect();
        if (getText().toString().contains("\n")) {
            string = "";
            for (String str : getText().toString().split("\\n")) {
                if (str.length() > string.length()) {
                    string = str;
                }
            }
        } else {
            string = getText().toString();
        }
        getPaint().getTextBounds(string, 0, string.length(), rect);
        return (getLeft() + (getWidth() / 2)) - (rect.width() / 2);
    }

    @Override // j00.b
    public int getContentRight() {
        String string;
        Rect rect = new Rect();
        if (getText().toString().contains("\n")) {
            string = "";
            for (String str : getText().toString().split("\\n")) {
                if (str.length() > string.length()) {
                    string = str;
                }
            }
        } else {
            string = getText().toString();
        }
        getPaint().getTextBounds(string, 0, string.length(), rect);
        return getLeft() + (getWidth() / 2) + (rect.width() / 2);
    }

    @Override // j00.b
    public int getContentTop() {
        Paint.FontMetrics fontMetrics = getPaint().getFontMetrics();
        return (int) ((getHeight() / 2) - ((fontMetrics.bottom - fontMetrics.top) / 2.0f));
    }

    public int getNormalColor() {
        return this.f70421b;
    }

    public int getSelectedColor() {
        return this.f70420a;
    }

    public void onDeselected(int i11, int i12) {
        setTextColor(this.f70421b);
    }

    public void onEnter(int i11, int i12, float f11, boolean z10) {
    }

    public void onLeave(int i11, int i12, float f11, boolean z10) {
    }

    public void onSelected(int i11, int i12) {
        setTextColor(this.f70420a);
    }

    public void setNormalColor(int i11) {
        this.f70421b = i11;
    }

    public void setSelectedColor(int i11) {
        this.f70420a = i11;
    }
}
