package com.mbridge.msdk.mbsignalcommon.commonwebview;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.view.ViewCompat;
import com.mbridge.msdk.foundation.tools.t0;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class ToolBar extends LinearLayout {
    public static final String BACKWARD = "backward";
    public static final String EXITS = "exits";
    public static final String FORWARD = "forward";
    public static final String OPEN_BY_BROWSER = "open_by_browser";
    public static final String REFRESH = "refresh";
    public String title;
    public TextView titleView;

    public static class a {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static int f36483b = 40;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f36484a;

        public int a() {
            return f36483b;
        }

        public void a(int i11) {
            this.f36484a = i11;
        }

        public void b(int i11) {
            f36483b = i11;
        }
    }

    public static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public String f36485a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public String f36486b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public boolean f36487c = true;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public View.OnClickListener f36488d;

        public b(String str) {
            this.f36485a = str;
        }

        public b a(View.OnClickListener onClickListener) {
            this.f36488d = onClickListener;
            return this;
        }

        public b a(String str) {
            this.f36486b = str;
            return this;
        }

        public b a(boolean z10) {
            this.f36487c = z10;
            return this;
        }
    }

    public ToolBar(Context context) {
        super(context);
        c();
    }

    public ToolBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        c();
    }

    public ToolBar(Context context, AttributeSet attributeSet, a aVar, List<b> list) {
        super(context, attributeSet);
        a(aVar, list);
    }

    public ToolBar(Context context, AttributeSet attributeSet, List<b> list) {
        super(context, attributeSet);
        a(list);
    }

    public ToolBar(Context context, a aVar, List<b> list) {
        super(context);
        a(aVar, list);
    }

    public ToolBar(Context context, List<b> list) {
        super(context);
        a(list);
    }

    private View a() {
        TextView textView = new TextView(getContext());
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -1);
        layoutParams.weight = 1.0f;
        textView.setLayoutParams(layoutParams);
        textView.setClickable(true);
        return textView;
    }

    private void a(a aVar, List<b> list) {
        setOrientation(0);
        try {
            int iA = t0.a(getContext(), 10.0f);
            setPadding(0, iA, t0.a(getContext(), 20.0f), iA);
        } catch (Exception unused) {
        }
        try {
            for (b bVar : list) {
                ImageView imageView = (ImageView) b();
                imageView.setTag(bVar.f36485a);
                imageView.setImageDrawable(getResources().getDrawable(getResources().getIdentifier(bVar.f36486b, "drawable", com.mbridge.msdk.foundation.controller.c.m().h())));
                LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(aVar.a(), -1);
                layoutParams.setMargins(32, 0, 32, 0);
                imageView.setLayoutParams(layoutParams);
                imageView.setOnClickListener(bVar.f36488d);
                if (!bVar.f36487c) {
                    imageView.setVisibility(8);
                }
                addView(imageView);
            }
        } catch (Exception unused2) {
        }
    }

    private void a(List<b> list) {
        setOrientation(0);
        try {
            int iA = t0.a(getContext(), 10.0f);
            setPadding(0, iA, 0, iA);
        } catch (Exception unused) {
        }
        try {
            for (b bVar : list) {
                ImageView imageView = (ImageView) b();
                imageView.setTag(bVar.f36485a);
                imageView.setImageDrawable(getResources().getDrawable(getResources().getIdentifier(bVar.f36486b, "drawable", com.mbridge.msdk.foundation.controller.c.m().h())));
                imageView.setOnClickListener(bVar.f36488d);
                if (!bVar.f36487c) {
                    imageView.setVisibility(8);
                }
                addView(imageView);
            }
        } catch (Exception unused2) {
        }
    }

    private View b() {
        ImageView imageView = new ImageView(getContext());
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -1);
        layoutParams.weight = 1.0f;
        imageView.setLayoutParams(layoutParams);
        imageView.setClickable(true);
        return imageView;
    }

    private void c() {
        setOrientation(0);
        try {
            int iA = t0.a(getContext(), 10.0f);
            setPadding(0, iA, 0, iA);
        } catch (Exception unused) {
        }
        try {
            ImageView imageView = (ImageView) b();
            imageView.setTag(BACKWARD);
            imageView.setImageDrawable(getResources().getDrawable(getResources().getIdentifier("mbridge_cm_backward", "drawable", com.mbridge.msdk.foundation.controller.c.m().h())));
            addView(imageView);
        } catch (Exception unused2) {
        }
        try {
            ImageView imageView2 = (ImageView) b();
            imageView2.setTag(FORWARD);
            imageView2.setImageDrawable(getResources().getDrawable(getResources().getIdentifier("mbridge_cm_forward", "drawable", com.mbridge.msdk.foundation.controller.c.m().h())));
            addView(imageView2);
        } catch (Exception unused3) {
        }
        try {
            ImageView imageView3 = (ImageView) b();
            imageView3.setTag(REFRESH);
            imageView3.setImageDrawable(getResources().getDrawable(getResources().getIdentifier("mbridge_cm_refresh", "drawable", com.mbridge.msdk.foundation.controller.c.m().h())));
            addView(imageView3);
        } catch (Exception unused4) {
        }
        try {
            ImageView imageView4 = (ImageView) b();
            imageView4.setTag(OPEN_BY_BROWSER);
            imageView4.setImageDrawable(getResources().getDrawable(getResources().getIdentifier("mbridge_cm_browser", "drawable", com.mbridge.msdk.foundation.controller.c.m().h())));
            addView(imageView4);
        } catch (Exception unused5) {
        }
        try {
            ImageView imageView5 = (ImageView) b();
            imageView5.setTag(EXITS);
            imageView5.setImageDrawable(getResources().getDrawable(getResources().getIdentifier("mbridge_cm_exits", "drawable", com.mbridge.msdk.foundation.controller.c.m().h())));
            addView(imageView5);
        } catch (Exception unused6) {
        }
    }

    public View getItem(String str) {
        return findViewWithTag(str);
    }

    public void hideTitle() {
        TextView textView = this.titleView;
        if (textView != null) {
            textView.setText("");
        }
    }

    public void setButtonIcon(String str, String str2) {
        ((ImageView) findViewWithTag(str)).setImageDrawable(getResources().getDrawable(getResources().getIdentifier(str2, "drawable", com.mbridge.msdk.foundation.controller.c.m().h())));
    }

    public void setOnItemClickListener(View.OnClickListener onClickListener) {
        int childCount = getChildCount();
        for (int i11 = 0; i11 < childCount; i11++) {
            getChildAt(i11).setOnClickListener(onClickListener);
        }
    }

    public void setTitle(String str) {
        setTitle(str, ViewCompat.MEASURED_STATE_MASK);
    }

    public void setTitle(String str, int i11) {
        this.title = str;
        if (this.titleView == null) {
            TextView textView = (TextView) a();
            this.titleView = textView;
            textView.setPadding(64, 0, 10, 0);
            this.titleView.setTextColor(i11);
            addView(this.titleView, 0);
        }
        this.titleView.setText(str);
    }

    public void showTitle() {
        TextView textView = this.titleView;
        if (textView != null) {
            textView.setText(this.title);
        }
    }
}
