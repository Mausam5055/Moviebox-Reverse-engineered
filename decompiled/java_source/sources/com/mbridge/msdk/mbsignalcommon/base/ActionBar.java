package com.mbridge.msdk.mbsignalcommon.base;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.widget.FrameLayout;
import android.widget.LinearLayout;

/* JADX INFO: loaded from: classes5.dex */
public class ActionBar extends LinearLayout implements View.OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private WebView f36424a;

    public interface a {
        View a();

        void a(View view, WebView webView);
    }

    public ActionBar(Context context) {
        super(context);
    }

    public ActionBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    private View a(a aVar) {
        View viewA = aVar.a();
        if (viewA == null) {
            return null;
        }
        View viewNewActionItem = newActionItem();
        ((ViewGroup) ((ViewGroup) viewNewActionItem).getChildAt(0)).addView(viewA);
        viewA.setTag(aVar);
        viewA.setOnClickListener(this);
        return viewNewActionItem;
    }

    public void addAction(a aVar) {
        addAction(aVar, getChildCount());
    }

    public void addAction(a aVar, int i11) {
        addView(a(aVar), i11);
    }

    public int getActionCount() {
        return getChildCount();
    }

    public WebView getWebView() {
        return this.f36424a;
    }

    public View newActionItem() {
        Context context = getContext();
        LinearLayout linearLayout = new LinearLayout(context);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -1);
        layoutParams.weight = 1.0f;
        linearLayout.setLayoutParams(layoutParams);
        View frameLayout = new FrameLayout(context);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-1, -1);
        layoutParams2.gravity = 17;
        frameLayout.setLayoutParams(layoutParams2);
        linearLayout.addView(frameLayout);
        return linearLayout;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        Object tag = view.getTag();
        if (tag instanceof a) {
            ((a) tag).a(view, this.f36424a);
        }
    }

    public boolean removeAction(a aVar) {
        int childCount = getChildCount();
        for (int i11 = 0; i11 < childCount; i11++) {
            View childAt = getChildAt(i11);
            if (childAt != null) {
                Object tag = childAt.getTag();
                if ((tag instanceof a) && tag.equals(aVar)) {
                    removeView(childAt);
                    return true;
                }
            }
        }
        return false;
    }

    public void removeActionAt(int i11) {
        if (i11 < 0 || i11 >= getChildCount()) {
            return;
        }
        removeViewAt(i11);
    }

    public void removeAllActions() {
        removeAllViews();
    }

    public void setWebView(WebView webView) {
        this.f36424a = webView;
    }
}
