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
import com.tn.lib.widget.R$mipmap;
import com.tn.lib.widget.R$string;
import com.tn.lib.widget.R$styleable;
import com.tn.lib.widget.TnTextView;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes4.dex */
public class ExpandView extends TnTextView {
    public static final int STATE_EXPAND = 1;
    public static final int STATE_SHRINK = 0;
    private String A;
    private String B;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f41271b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f41272c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f41273d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f41274e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f41275f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f41276g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f41277h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f41278i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f41279j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f41280k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f41281l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f41282m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private int f41283n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f41284o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f41285p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f41286q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private int f41287r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private float f41288s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private boolean f41289t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private ClickableSpan f41290u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private qh.a f41291v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private qh.a f41292w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private Layout f41293x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private CharSequence f41294y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private c f41295z;

    class a implements ViewTreeObserver.OnGlobalLayoutListener {
        a() {
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            ExpandView.this.getViewTreeObserver().removeOnGlobalLayoutListener(this);
            ExpandView expandView = ExpandView.this;
            expandView.m(expandView.f41294y);
            ExpandView.this.f41280k = true;
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
        this.f41274e = "  ";
        this.f41275f = "  ";
        this.f41276g = false;
        this.f41277h = true;
        this.f41278i = true;
        this.f41279j = true;
        this.f41280k = false;
        this.f41281l = 1;
        this.f41282m = -1711276033;
        this.f41283n = -1711276033;
        this.f41284o = 872415231;
        this.f41285p = 872415231;
        this.f41286q = -1;
        this.f41287r = 0;
        this.f41289t = true;
        k(context, attributeSet);
    }

    public ExpandView(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        this.f41274e = "  ";
        this.f41275f = "  ";
        this.f41276g = false;
        this.f41277h = true;
        this.f41278i = true;
        this.f41279j = true;
        this.f41280k = false;
        this.f41281l = 1;
        this.f41282m = -1711276033;
        this.f41283n = -1711276033;
        this.f41284o = 872415231;
        this.f41285p = 872415231;
        this.f41286q = -1;
        this.f41287r = 0;
        this.f41289t = true;
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
        if (this.f41294y != null) {
            str = "" + ((Object) this.f41294y);
        } else {
            str = "";
        }
        if (this.f41293x == null) {
            this.f41293x = new StaticLayout(str, paint, i11, Layout.Alignment.ALIGN_NORMAL, 1.0f, 0.0f, true);
        }
        int lineCount = this.f41293x.getLineCount();
        int i13 = this.f41281l;
        if (lineCount <= i13) {
            CharSequence charSequence = this.f41294y;
            if (charSequence == null) {
                charSequence = " ";
            }
            return o(new SpannableStringBuilder(charSequence));
        }
        int i14 = this.f41287r;
        if (i14 != 0) {
            if (i14 != 1 || !this.f41279j) {
                return o(new SpannableStringBuilder(this.f41294y));
            }
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(this.f41294y);
            spannableStringBuilder.append((CharSequence) this.f41275f).append((CharSequence) this.f41273d);
            int length = (spannableStringBuilder.length() - this.f41275f.length()) - this.f41273d.length();
            int length2 = spannableStringBuilder.length();
            i12 = length >= 0 ? length : 0;
            spannableStringBuilder.setSpan(this.f41290u, i12, length2, 33);
            spannableStringBuilder.setSpan(this.f41291v, i12, length2, 33);
            return o(spannableStringBuilder);
        }
        int i15 = i(str, paint, this.f41293x.getLineStart(this.f41281l - 1), this.f41293x.getLineEnd(i13 - 1), i11);
        CharSequence charSequence2 = this.f41294y;
        if (charSequence2 != null && charSequence2.length() <= i15) {
            i15 = this.f41294y.length() - 1;
        }
        CharSequence charSequence3 = this.f41294y;
        if (charSequence3 == null || i15 <= 0) {
            return charSequence3;
        }
        SpannableStringBuilder spannableStringBuilderAppend = new SpannableStringBuilder(charSequence3.subSequence(0, i15)).append((CharSequence) this.f41271b);
        if (this.f41278i) {
            spannableStringBuilderAppend.append((CharSequence) this.f41274e);
            spannableStringBuilderAppend.append((CharSequence) this.f41272c);
            int length3 = (spannableStringBuilderAppend.length() - this.f41274e.length()) - this.f41272c.length();
            int length4 = spannableStringBuilderAppend.length();
            i12 = length3 >= 0 ? length3 : 0;
            spannableStringBuilderAppend.setSpan(this.f41290u, i12, length4, 33);
            spannableStringBuilderAppend.setSpan(this.f41292w, i12, length4, 33);
        }
        return o(spannableStringBuilderAppend);
    }

    private int i(String str, TextPaint textPaint, int i11, int i12, int i13) {
        String str2;
        qh.a aVar = this.f41292w;
        String str3 = this.f41271b;
        if (this.f41278i) {
            str2 = this.f41272c + this.f41274e;
        } else {
            str2 = "";
        }
        return textPaint.breakText(str, i11, i12, true, i13 - aVar.e(textPaint, str3, str2), null) + i11;
    }

    private void j() {
        if (this.f41288s == 0.0f) {
            this.f41288s = getTextSize();
        }
        boolean z10 = getLayoutDirection() == 1;
        this.f41292w = new qh.a(getContext(), this.f41289t ? R$mipmap.info_player_ic_expand : -111, this.f41282m, this.f41284o, this.f41288s, 5, z10);
        this.f41291v = new qh.a(getContext(), this.f41289t ? R$mipmap.info_player_ic_collapse : -111, this.f41283n, this.f41285p, this.f41288s, 5, z10);
        setMovementMethod(new LinkMovementMethod());
        if (TextUtils.isEmpty(this.f41271b)) {
            this.f41271b = "...";
        }
        if (TextUtils.isEmpty(this.f41272c)) {
            this.f41272c = getResources().getString(R$string.player_more);
        }
        if (TextUtils.isEmpty(this.f41273d)) {
            this.f41273d = getResources().getString(R$string.player_hide);
        }
        if (this.f41274e == null) {
            this.f41274e = "  ";
        }
        if (this.f41275f == null) {
            this.f41275f = "  ";
        }
        setOnClickListener(new View.OnClickListener() { // from class: qh.c
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f73626a.l(view);
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
                this.f41288s = typedArrayObtainStyledAttributes.getDimension(index, 0.0f);
            } else if (index == R$styleable.ExpandView_pop_reverse_Lines) {
                this.f41281l = typedArrayObtainStyledAttributes.getInteger(index, 1);
            } else if (index == R$styleable.ExpandView_pop_ellipsis) {
                this.f41271b = typedArrayObtainStyledAttributes.getString(index);
            } else if (index == R$styleable.ExpandView_pop_expand_hint) {
                this.f41272c = typedArrayObtainStyledAttributes.getString(index);
            } else if (index == R$styleable.ExpandView_pop_shrink_hint) {
                this.f41273d = typedArrayObtainStyledAttributes.getString(index);
            } else if (index == R$styleable.ExpandView_pop_toggle_enabled) {
                this.f41276g = typedArrayObtainStyledAttributes.getBoolean(index, this.f41276g);
            } else if (index == R$styleable.ExpandView_pop_show_expand_hint) {
                this.f41278i = typedArrayObtainStyledAttributes.getBoolean(index, this.f41278i);
            } else if (index == R$styleable.ExpandView_pop_show_shrink_hint) {
                this.f41279j = typedArrayObtainStyledAttributes.getBoolean(index, this.f41279j);
            } else if (index == R$styleable.ExpandView_pop_expand_hint_color) {
                this.f41282m = typedArrayObtainStyledAttributes.getInteger(index, -1711276033);
            } else if (index == R$styleable.ExpandView_pop_shrink_hint_color) {
                this.f41283n = typedArrayObtainStyledAttributes.getInteger(index, -1711276033);
            } else if (index == R$styleable.ExpandView_pop_expand_bg_Color) {
                this.f41284o = typedArrayObtainStyledAttributes.getInteger(index, 872415231);
            } else if (index == R$styleable.ExpandView_pop_shrink_bg_color) {
                this.f41285p = typedArrayObtainStyledAttributes.getInteger(index, 872415231);
            } else if (index == R$styleable.ExpandView_pop_Init_state) {
                this.f41287r = typedArrayObtainStyledAttributes.getInteger(index, 0);
            } else if (index == R$styleable.ExpandView_pop_expand_gap) {
                this.f41274e = typedArrayObtainStyledAttributes.getString(index);
            } else if (index == R$styleable.ExpandView_pop_collapse_gap) {
                this.f41275f = typedArrayObtainStyledAttributes.getString(index);
            } else if (index == R$styleable.ExpandView_pop_hash_tag_color) {
                this.f41286q = typedArrayObtainStyledAttributes.getInteger(index, this.f41286q);
            } else if (index == R$styleable.ExpandView_pop_show_hint_icon) {
                this.f41289t = typedArrayObtainStyledAttributes.getBoolean(index, true);
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
    public /* synthetic */ CharSequence n(final CharSequence charSequence) {
        if (!this.f41277h) {
            return charSequence;
        }
        if (!TextUtils.equals(charSequence, this.f41294y)) {
            this.f41293x = null;
        }
        this.f41294y = charSequence;
        int layoutWidth = getLayoutWidth();
        if (layoutWidth > 0) {
            return this.f41294y == null ? charSequence : h(layoutWidth);
        }
        if (this.f41280k) {
            postDelayed(new Runnable() { // from class: qh.d
                @Override // java.lang.Runnable
                public final void run() {
                    this.f73627a.m(charSequence);
                }
            }, 100L);
        }
        return null;
    }

    private CharSequence o(SpannableStringBuilder spannableStringBuilder) {
        return spannableStringBuilder;
    }

    private void p() {
        if (getText().toString().contains(this.f41272c) || getText().toString().contains(this.f41273d)) {
            int i11 = this.f41287r;
            if (i11 == 0) {
                this.f41287r = 1;
                c cVar = this.f41295z;
                if (cVar != null) {
                    cVar.b(this);
                }
            } else if (i11 == 1) {
                this.f41287r = 0;
                c cVar2 = this.f41295z;
                if (cVar2 != null) {
                    cVar2.a(this);
                }
            }
            m(this.f41294y);
        }
    }

    public void addLegacyHashTag(String str, String str2) {
        this.B = str;
        this.A = str2;
    }

    @Override // com.tn.lib.widget.TnTextView, tj.a
    public void changeLocal() {
        this.f41272c = getResources().getString(R$string.player_more);
        this.f41273d = getResources().getString(R$string.player_hide);
        super.changeLocal();
    }

    public int getExpandState() {
        return this.f41287r;
    }

    public boolean isOutLines() {
        Layout layout = this.f41293x;
        return layout != null && layout.getLineCount() > this.f41281l;
    }

    @Override // androidx.appcompat.widget.AppCompatTextView, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
    }

    public void reset() {
        this.f41287r = 0;
        c cVar = this.f41295z;
        if (cVar != null) {
            cVar.a(this);
        }
        m(this.f41294y);
    }

    public void setCollapseEnable(boolean z10) {
        this.f41277h = z10;
    }

    public void setExpandListener(c cVar) {
        this.f41295z = cVar;
    }

    public void setOnClickHashTagListener(b bVar) {
    }

    /* JADX INFO: renamed from: setTitle, reason: merged with bridge method [inline-methods] */
    public void m(final CharSequence charSequence) {
        setTextAction(new Function0() { // from class: qh.b
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return this.f73624a.n(charSequence);
            }
        });
    }
}
