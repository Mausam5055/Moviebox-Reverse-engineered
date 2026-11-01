package com.tn.lib.view.expand;

import android.content.Context;
import android.content.res.TypedArray;
import android.text.Layout;
import android.text.SpannableStringBuilder;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.method.LinkMovementMethod;
import android.text.style.ClickableSpan;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewTreeObserver;
import androidx.appcompat.widget.AppCompatTextView;
import com.tn.lib.widget.R$mipmap;
import com.tn.lib.widget.R$string;
import com.tn.lib.widget.R$styleable;

/* JADX INFO: loaded from: classes4.dex */
public class SubjectExpandView extends AppCompatTextView {
    public static final int STATE_EXPAND = 1;
    public static final int STATE_SHRINK = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f41297a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f41298b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f41299c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f41300d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f41301e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f41302f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f41303g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f41304h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f41305i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f41306j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f41307k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f41308l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f41309m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private int f41310n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f41311o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f41312p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f41313q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private float f41314r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private qh.a f41315s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private qh.a f41316t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private Layout f41317u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private CharSequence f41318v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private ClickableSpan f41319w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private boolean f41320x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private boolean f41321y;

    class a implements ViewTreeObserver.OnGlobalLayoutListener {
        a() {
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            SubjectExpandView.this.getViewTreeObserver().removeOnGlobalLayoutListener(this);
            SubjectExpandView subjectExpandView = SubjectExpandView.this;
            subjectExpandView.k(subjectExpandView.f41318v);
            SubjectExpandView.this.f41306j = true;
        }
    }

    public interface b {
    }

    public SubjectExpandView(Context context) {
        this(context, null);
    }

    public SubjectExpandView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f41300d = "  ";
        this.f41301e = "  ";
        this.f41302f = false;
        this.f41303g = true;
        this.f41304h = true;
        this.f41305i = true;
        this.f41306j = false;
        this.f41307k = 1;
        this.f41308l = -1711276033;
        this.f41309m = -1711276033;
        this.f41310n = 872415231;
        this.f41311o = 872415231;
        this.f41312p = -1;
        this.f41313q = 0;
        this.f41320x = false;
        this.f41321y = false;
        i(context, attributeSet);
    }

    public SubjectExpandView(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        this.f41300d = "  ";
        this.f41301e = "  ";
        this.f41302f = false;
        this.f41303g = true;
        this.f41304h = true;
        this.f41305i = true;
        this.f41306j = false;
        this.f41307k = 1;
        this.f41308l = -1711276033;
        this.f41309m = -1711276033;
        this.f41310n = 872415231;
        this.f41311o = 872415231;
        this.f41312p = -1;
        this.f41313q = 0;
        this.f41320x = false;
        this.f41321y = false;
        i(context, attributeSet);
    }

    private CharSequence f(int i11) {
        String str;
        int i12;
        TextPaint paint = getPaint();
        if (this.f41318v != null) {
            str = "" + ((Object) this.f41318v);
        } else {
            str = "";
        }
        if (this.f41317u == null) {
            this.f41317u = new StaticLayout(str, paint, i11, Layout.Alignment.ALIGN_NORMAL, 1.0f, 0.0f, true);
        }
        int lineCount = this.f41317u.getLineCount();
        int i13 = this.f41307k;
        if (lineCount <= i13) {
            CharSequence charSequence = this.f41318v;
            if (charSequence == null) {
                charSequence = " ";
            }
            return l(new SpannableStringBuilder(charSequence));
        }
        int i14 = this.f41313q;
        if (i14 != 0) {
            if (i14 != 1 || !this.f41305i) {
                return l(new SpannableStringBuilder(this.f41318v));
            }
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(this.f41318v);
            spannableStringBuilder.append((CharSequence) this.f41301e).append((CharSequence) this.f41299c);
            int length = (spannableStringBuilder.length() - this.f41301e.length()) - this.f41299c.length();
            int length2 = spannableStringBuilder.length();
            i12 = length >= 0 ? length : 0;
            spannableStringBuilder.setSpan(this.f41319w, i12, length2, 33);
            spannableStringBuilder.setSpan(this.f41315s, i12, length2, 33);
            return l(spannableStringBuilder);
        }
        int iG = g(str, paint, this.f41317u.getLineStart(this.f41307k - 1), this.f41317u.getLineEnd(i13 - 1), i11);
        CharSequence charSequence2 = this.f41318v;
        if (charSequence2 != null && charSequence2.length() <= iG) {
            iG = this.f41318v.length() - 1;
        }
        CharSequence charSequence3 = this.f41318v;
        if (charSequence3 == null || iG <= 0) {
            return charSequence3;
        }
        SpannableStringBuilder spannableStringBuilderAppend = new SpannableStringBuilder(charSequence3.length() > 180 ? this.f41318v.subSequence(0, 180) : this.f41318v).append((CharSequence) this.f41297a);
        if (this.f41304h) {
            spannableStringBuilderAppend.append((CharSequence) this.f41300d);
            spannableStringBuilderAppend.append((CharSequence) this.f41298b);
            int length3 = (spannableStringBuilderAppend.length() - this.f41300d.length()) - this.f41298b.length();
            int length4 = spannableStringBuilderAppend.length();
            i12 = length3 >= 0 ? length3 : 0;
            spannableStringBuilderAppend.setSpan(this.f41319w, i12, length4, 33);
            spannableStringBuilderAppend.setSpan(this.f41316t, i12, length4, 33);
        }
        return l(spannableStringBuilderAppend);
    }

    private int g(String str, TextPaint textPaint, int i11, int i12, int i13) {
        String str2;
        qh.a aVar = this.f41316t;
        String str3 = this.f41297a;
        if (this.f41304h) {
            str2 = this.f41298b + this.f41300d;
        } else {
            str2 = "";
        }
        return textPaint.breakText(str, i11, i12, true, i13 - aVar.e(textPaint, str3, str2), null) + i11;
    }

    private int getLayoutWidth() {
        Layout layout = getLayout();
        int width = layout != null ? layout.getWidth() : 0;
        return (width > 0 || getWidth() == 0) ? width : (getWidth() - getPaddingLeft()) - getPaddingRight();
    }

    private void h() {
        if (this.f41314r == 0.0f) {
            this.f41314r = getTextSize();
        }
        boolean z10 = getLayoutDirection() == 1;
        this.f41316t = new qh.a(getContext(), R$mipmap.info_player_ic_expand, this.f41308l, this.f41310n, this.f41314r, 5, z10);
        this.f41315s = new qh.a(getContext(), R$mipmap.info_player_ic_collapse, this.f41309m, this.f41311o, this.f41314r, 5, z10);
        setMovementMethod(new LinkMovementMethod());
        if (TextUtils.isEmpty(this.f41297a)) {
            this.f41297a = "...";
        }
        if (TextUtils.isEmpty(this.f41298b)) {
            this.f41298b = getResources().getString(R$string.player_more);
        }
        if (TextUtils.isEmpty(this.f41299c)) {
            this.f41299c = getResources().getString(R$string.player_hide);
        }
        if (this.f41300d == null) {
            this.f41300d = "  ";
        }
        if (this.f41301e == null) {
            this.f41301e = "  ";
        }
        setOnClickListener(new View.OnClickListener() { // from class: qh.e
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f73629a.j(view);
            }
        });
        getViewTreeObserver().addOnGlobalLayoutListener(new a());
    }

    private void i(Context context, AttributeSet attributeSet) {
        if (attributeSet == null) {
            h();
            return;
        }
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.ExpandView);
        int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
        for (int i11 = 0; i11 < indexCount; i11++) {
            int index = typedArrayObtainStyledAttributes.getIndex(i11);
            if (index == R$styleable.ExpandView_pop_hint_text_size) {
                this.f41314r = typedArrayObtainStyledAttributes.getDimension(index, 0.0f);
            } else if (index == R$styleable.ExpandView_pop_reverse_Lines) {
                this.f41307k = typedArrayObtainStyledAttributes.getInteger(index, 1);
            } else if (index == R$styleable.ExpandView_pop_ellipsis) {
                this.f41297a = typedArrayObtainStyledAttributes.getString(index);
            } else if (index == R$styleable.ExpandView_pop_expand_hint) {
                this.f41298b = typedArrayObtainStyledAttributes.getString(index);
            } else if (index == R$styleable.ExpandView_pop_shrink_hint) {
                this.f41299c = typedArrayObtainStyledAttributes.getString(index);
            } else if (index == R$styleable.ExpandView_pop_toggle_enabled) {
                this.f41302f = typedArrayObtainStyledAttributes.getBoolean(index, this.f41302f);
            } else if (index == R$styleable.ExpandView_pop_show_expand_hint) {
                this.f41304h = typedArrayObtainStyledAttributes.getBoolean(index, this.f41304h);
            } else if (index == R$styleable.ExpandView_pop_show_shrink_hint) {
                this.f41305i = typedArrayObtainStyledAttributes.getBoolean(index, this.f41305i);
            } else if (index == R$styleable.ExpandView_pop_expand_hint_color) {
                this.f41308l = typedArrayObtainStyledAttributes.getInteger(index, -1711276033);
            } else if (index == R$styleable.ExpandView_pop_shrink_hint_color) {
                this.f41309m = typedArrayObtainStyledAttributes.getInteger(index, -1711276033);
            } else if (index == R$styleable.ExpandView_pop_expand_bg_Color) {
                this.f41310n = typedArrayObtainStyledAttributes.getInteger(index, 872415231);
            } else if (index == R$styleable.ExpandView_pop_shrink_bg_color) {
                this.f41311o = typedArrayObtainStyledAttributes.getInteger(index, 872415231);
            } else if (index == R$styleable.ExpandView_pop_Init_state) {
                this.f41313q = typedArrayObtainStyledAttributes.getInteger(index, 0);
            } else if (index == R$styleable.ExpandView_pop_expand_gap) {
                this.f41300d = typedArrayObtainStyledAttributes.getString(index);
            } else if (index == R$styleable.ExpandView_pop_collapse_gap) {
                this.f41301e = typedArrayObtainStyledAttributes.getString(index);
            } else if (index == R$styleable.ExpandView_pop_hash_tag_color) {
                this.f41312p = typedArrayObtainStyledAttributes.getInteger(index, this.f41312p);
            }
        }
        typedArrayObtainStyledAttributes.recycle();
        h();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void j(View view) {
        m();
    }

    private CharSequence l(SpannableStringBuilder spannableStringBuilder) {
        return spannableStringBuilder;
    }

    private void m() {
        if (getText().toString().contains(this.f41298b) || getText().toString().contains(this.f41299c) || this.f41321y) {
            int i11 = this.f41313q;
            if (i11 == 0) {
                this.f41313q = 1;
            } else if (i11 == 1) {
                this.f41313q = 0;
            }
            k(this.f41318v);
        }
    }

    public int getExpandState() {
        return this.f41313q;
    }

    public boolean isOutLines() {
        Layout layout = this.f41317u;
        return layout != null && layout.getLineCount() > this.f41307k;
    }

    @Override // androidx.appcompat.widget.AppCompatTextView, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
    }

    public void reset() {
        this.f41313q = 0;
        k(this.f41318v);
    }

    public void setCollapseEnable(boolean z10) {
        this.f41303g = z10;
    }

    public void setExpandListener(b bVar) {
    }

    public void setHasStarring(boolean z10) {
        this.f41320x = z10;
    }

    public void setShrink(boolean z10) {
        this.f41321y = z10;
        if (z10) {
            this.f41313q = 1;
            m();
            this.f41321y = false;
        }
    }

    /* JADX INFO: renamed from: setTitle, reason: merged with bridge method [inline-methods] */
    public void k(final CharSequence charSequence) {
        if (!this.f41303g) {
            super.setText(charSequence);
            return;
        }
        if (!TextUtils.equals(charSequence, this.f41318v)) {
            this.f41317u = null;
        }
        this.f41318v = charSequence;
        int layoutWidth = getLayoutWidth();
        if (this.f41320x) {
            if (this.f41313q == 1) {
                super.setText(charSequence);
                return;
            }
            if (this.f41318v != null) {
                charSequence = f(layoutWidth);
            }
            super.setText(charSequence);
            return;
        }
        if (layoutWidth > 0) {
            if (this.f41318v != null) {
                charSequence = f(layoutWidth);
            }
            super.setText(charSequence);
        } else if (this.f41306j) {
            postDelayed(new Runnable() { // from class: qh.f
                @Override // java.lang.Runnable
                public final void run() {
                    this.f73630a.k(charSequence);
                }
            }, 100L);
        }
    }
}
