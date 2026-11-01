package com.transsion.shorttv.base.widget.expand;

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
import com.transsion.shorttv.R$mipmap;
import com.transsion.shorttv.R$string;
import com.transsion.shorttv.R$styleable;
import com.transsion.shorttv.base.widget.TnTextView;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes6.dex */
public class ExpandView extends TnTextView {
    public static final int STATE_EXPAND = 1;
    public static final int STATE_SHRINK = 0;
    private String A;
    private String B;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f52887b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f52888c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f52889d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f52890e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f52891f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f52892g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f52893h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f52894i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f52895j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f52896k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f52897l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f52898m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private int f52899n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f52900o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f52901p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f52902q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private int f52903r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private float f52904s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private boolean f52905t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private ClickableSpan f52906u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private es.a f52907v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private es.a f52908w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private Layout f52909x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private CharSequence f52910y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private c f52911z;

    class a implements ViewTreeObserver.OnGlobalLayoutListener {
        a() {
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            ExpandView.this.getViewTreeObserver().removeOnGlobalLayoutListener(this);
            ExpandView expandView = ExpandView.this;
            expandView.setTitle(expandView.f52910y);
            ExpandView.this.f52896k = true;
        }
    }

    public interface b {
    }

    public interface c {
        void a(ExpandView expandView);

        void b(ExpandView expandView);
    }

    public ExpandView(Context context) {
        this(context, null);
    }

    public ExpandView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f52890e = "  ";
        this.f52891f = "  ";
        this.f52892g = false;
        this.f52893h = true;
        this.f52894i = true;
        this.f52895j = true;
        this.f52896k = false;
        this.f52897l = 1;
        this.f52898m = -1711276033;
        this.f52899n = -1711276033;
        this.f52900o = 872415231;
        this.f52901p = 872415231;
        this.f52902q = -1;
        this.f52903r = 0;
        this.f52905t = true;
        k(context, attributeSet);
    }

    public ExpandView(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        this.f52890e = "  ";
        this.f52891f = "  ";
        this.f52892g = false;
        this.f52893h = true;
        this.f52894i = true;
        this.f52895j = true;
        this.f52896k = false;
        this.f52897l = 1;
        this.f52898m = -1711276033;
        this.f52899n = -1711276033;
        this.f52900o = 872415231;
        this.f52901p = 872415231;
        this.f52902q = -1;
        this.f52903r = 0;
        this.f52905t = true;
        k(context, attributeSet);
    }

    private int getLayoutWidth() {
        Layout layout = getLayout();
        int width = layout != null ? layout.getWidth() : 0;
        return (width > 0 || getWidth() == 0) ? width : (getWidth() - getPaddingLeft()) - getPaddingRight();
    }

    private CharSequence h(int i11) {
        String str;
        int i12;
        TextPaint paint = getPaint();
        if (this.f52910y != null) {
            str = "" + ((Object) this.f52910y);
        } else {
            str = "";
        }
        if (this.f52909x == null) {
            this.f52909x = new StaticLayout(str, paint, i11, Layout.Alignment.ALIGN_NORMAL, 1.0f, 0.0f, true);
        }
        int lineCount = this.f52909x.getLineCount();
        int i13 = this.f52897l;
        if (lineCount <= i13) {
            CharSequence charSequence = this.f52910y;
            if (charSequence == null) {
                charSequence = " ";
            }
            return o(new SpannableStringBuilder(charSequence));
        }
        int i14 = this.f52903r;
        if (i14 != 0) {
            if (i14 != 1 || !this.f52895j) {
                return o(new SpannableStringBuilder(this.f52910y));
            }
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(this.f52910y);
            spannableStringBuilder.append((CharSequence) this.f52891f).append((CharSequence) this.f52889d);
            int length = (spannableStringBuilder.length() - this.f52891f.length()) - this.f52889d.length();
            int length2 = spannableStringBuilder.length();
            i12 = length >= 0 ? length : 0;
            spannableStringBuilder.setSpan(this.f52906u, i12, length2, 33);
            spannableStringBuilder.setSpan(this.f52907v, i12, length2, 33);
            return o(spannableStringBuilder);
        }
        int i15 = i(str, paint, this.f52909x.getLineStart(this.f52897l - 1), this.f52909x.getLineEnd(i13 - 1), i11);
        CharSequence charSequence2 = this.f52910y;
        if (charSequence2 != null && charSequence2.length() <= i15) {
            i15 = this.f52910y.length() - 1;
        }
        CharSequence charSequence3 = this.f52910y;
        if (charSequence3 == null || i15 <= 0) {
            return charSequence3;
        }
        SpannableStringBuilder spannableStringBuilderAppend = new SpannableStringBuilder(charSequence3.subSequence(0, i15)).append((CharSequence) this.f52887b);
        if (this.f52894i) {
            spannableStringBuilderAppend.append((CharSequence) this.f52890e);
            spannableStringBuilderAppend.append((CharSequence) this.f52888c);
            int length3 = (spannableStringBuilderAppend.length() - this.f52890e.length()) - this.f52888c.length();
            int length4 = spannableStringBuilderAppend.length();
            i12 = length3 >= 0 ? length3 : 0;
            spannableStringBuilderAppend.setSpan(this.f52906u, i12, length4, 33);
            spannableStringBuilderAppend.setSpan(this.f52908w, i12, length4, 33);
        }
        return o(spannableStringBuilderAppend);
    }

    private int i(String str, TextPaint textPaint, int i11, int i12, int i13) {
        String str2;
        es.a aVar = this.f52908w;
        String str3 = this.f52887b;
        if (this.f52894i) {
            str2 = this.f52888c + this.f52890e;
        } else {
            str2 = "";
        }
        return textPaint.breakText(str, i11, i12, true, i13 - aVar.e(textPaint, str3, str2), null) + i11;
    }

    private void j() {
        if (this.f52904s == 0.0f) {
            this.f52904s = getTextSize();
        }
        boolean z10 = getLayoutDirection() == 1;
        this.f52908w = new es.a(getContext(), this.f52905t ? R$mipmap.short_tv_ic_down_more : -111, this.f52898m, this.f52900o, this.f52904s, 6, z10, 8);
        this.f52907v = new es.a(getContext(), this.f52905t ? R$mipmap.short_tv_ic_up_hide : -111, this.f52899n, this.f52901p, this.f52904s, 6, z10, 8);
        setMovementMethod(new LinkMovementMethod());
        if (TextUtils.isEmpty(this.f52887b)) {
            this.f52887b = "...";
        }
        if (TextUtils.isEmpty(this.f52888c)) {
            this.f52888c = getResources().getString(R$string.short_tv_str_more);
        }
        if (TextUtils.isEmpty(this.f52889d)) {
            this.f52889d = getResources().getString(R$string.short_tv_str_hide);
        }
        if (this.f52890e == null) {
            this.f52890e = "  ";
        }
        if (this.f52891f == null) {
            this.f52891f = "  ";
        }
        setOnClickListener(new View.OnClickListener() { // from class: es.c
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f61991a.l(view);
            }
        });
        getViewTreeObserver().addOnGlobalLayoutListener(new a());
    }

    private void k(Context context, AttributeSet attributeSet) {
        if (attributeSet == null) {
            j();
            return;
        }
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.ExpandView);
        int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
        for (int i11 = 0; i11 < indexCount; i11++) {
            int index = typedArrayObtainStyledAttributes.getIndex(i11);
            if (index == R$styleable.ExpandView_pop_hint_text_size) {
                this.f52904s = typedArrayObtainStyledAttributes.getDimension(index, 0.0f);
            } else if (index == R$styleable.ExpandView_pop_reverse_Lines) {
                this.f52897l = typedArrayObtainStyledAttributes.getInteger(index, 1);
            } else if (index == R$styleable.ExpandView_pop_ellipsis) {
                this.f52887b = typedArrayObtainStyledAttributes.getString(index);
            } else if (index == R$styleable.ExpandView_pop_expand_hint) {
                this.f52888c = typedArrayObtainStyledAttributes.getString(index);
            } else if (index == R$styleable.ExpandView_pop_shrink_hint) {
                this.f52889d = typedArrayObtainStyledAttributes.getString(index);
            } else if (index == R$styleable.ExpandView_pop_toggle_enabled) {
                this.f52892g = typedArrayObtainStyledAttributes.getBoolean(index, this.f52892g);
            } else if (index == R$styleable.ExpandView_pop_show_expand_hint) {
                this.f52894i = typedArrayObtainStyledAttributes.getBoolean(index, this.f52894i);
            } else if (index == R$styleable.ExpandView_pop_show_shrink_hint) {
                this.f52895j = typedArrayObtainStyledAttributes.getBoolean(index, this.f52895j);
            } else if (index == R$styleable.ExpandView_pop_expand_hint_color) {
                this.f52898m = typedArrayObtainStyledAttributes.getInteger(index, -1711276033);
            } else if (index == R$styleable.ExpandView_pop_shrink_hint_color) {
                this.f52899n = typedArrayObtainStyledAttributes.getInteger(index, -1711276033);
            } else if (index == R$styleable.ExpandView_pop_expand_bg_Color) {
                this.f52900o = typedArrayObtainStyledAttributes.getInteger(index, 872415231);
            } else if (index == R$styleable.ExpandView_pop_shrink_bg_color) {
                this.f52901p = typedArrayObtainStyledAttributes.getInteger(index, 872415231);
            } else if (index == R$styleable.ExpandView_pop_Init_state) {
                this.f52903r = typedArrayObtainStyledAttributes.getInteger(index, 0);
            } else if (index == R$styleable.ExpandView_pop_expand_gap) {
                this.f52890e = typedArrayObtainStyledAttributes.getString(index);
            } else if (index == R$styleable.ExpandView_pop_collapse_gap) {
                this.f52891f = typedArrayObtainStyledAttributes.getString(index);
            } else if (index == R$styleable.ExpandView_pop_hash_tag_color) {
                this.f52902q = typedArrayObtainStyledAttributes.getInteger(index, this.f52902q);
            } else if (index == R$styleable.ExpandView_pop_show_hint_icon) {
                this.f52905t = typedArrayObtainStyledAttributes.getBoolean(index, true);
            }
        }
        typedArrayObtainStyledAttributes.recycle();
        j();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void l(View view) {
        p();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void m(CharSequence charSequence) {
        if (this.f52896k) {
            setTitle(charSequence);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ CharSequence n(final CharSequence charSequence) {
        if (!this.f52893h) {
            return charSequence;
        }
        if (!TextUtils.equals(charSequence, this.f52910y)) {
            this.f52909x = null;
        }
        this.f52910y = charSequence;
        int layoutWidth = getLayoutWidth();
        if (layoutWidth > 0) {
            return this.f52910y == null ? charSequence : h(layoutWidth);
        }
        postDelayed(new Runnable() { // from class: es.d
            @Override // java.lang.Runnable
            public final void run() {
                this.f61992a.m(charSequence);
            }
        }, 200L);
        return null;
    }

    private CharSequence o(SpannableStringBuilder spannableStringBuilder) {
        return spannableStringBuilder;
    }

    private void p() {
        if (getText().toString().contains(this.f52888c) || getText().toString().contains(this.f52889d)) {
            int i11 = this.f52903r;
            if (i11 == 0) {
                this.f52903r = 1;
                c cVar = this.f52911z;
                if (cVar != null) {
                    cVar.a(this);
                }
            } else if (i11 == 1) {
                this.f52903r = 0;
                c cVar2 = this.f52911z;
                if (cVar2 != null) {
                    cVar2.b(this);
                }
            }
            setTitle(this.f52910y);
        }
    }

    public void addLegacyHashTag(String str, String str2) {
        this.B = str;
        this.A = str2;
    }

    @Override // com.transsion.shorttv.base.widget.TnTextView, bs.a
    public void changeLocal() {
        this.f52888c = getResources().getString(R$string.short_tv_str_more);
        this.f52889d = getResources().getString(R$string.short_tv_str_hide);
        super.changeLocal();
    }

    public int getExpandState() {
        return this.f52903r;
    }

    public boolean isOutLines() {
        Layout layout = this.f52909x;
        return layout != null && layout.getLineCount() > this.f52897l;
    }

    @Override // androidx.appcompat.widget.AppCompatTextView, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
    }

    public void reset() {
        this.f52903r = 0;
        c cVar = this.f52911z;
        if (cVar != null) {
            cVar.b(this);
        }
        setTitle(this.f52910y);
    }

    public void setCollapseEnable(boolean z10) {
        this.f52893h = z10;
    }

    public void setExpandListener(c cVar) {
        this.f52911z = cVar;
    }

    public void setOnClickHashTagListener(b bVar) {
    }

    public void setTitle(final CharSequence charSequence) {
        setTextAction(new Function0() { // from class: es.b
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return this.f61989a.n(charSequence);
            }
        });
    }
}
