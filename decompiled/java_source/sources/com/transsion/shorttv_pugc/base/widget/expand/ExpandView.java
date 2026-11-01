package com.transsion.shorttv_pugc.base.widget.expand;

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
import com.transsion.shorttv_pugc.base.widget.TnTextView;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes6.dex */
public class ExpandView extends TnTextView {
    public static final int STATE_EXPAND = 1;
    public static final int STATE_SHRINK = 0;
    private String A;
    private String B;
    private boolean C;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f53869b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f53870c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f53871d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f53872e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f53873f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f53874g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f53875h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f53876i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f53877j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f53878k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f53879l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f53880m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private int f53881n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f53882o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f53883p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f53884q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private int f53885r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private float f53886s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private boolean f53887t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private ClickableSpan f53888u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private jt.a f53889v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private jt.a f53890w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private Layout f53891x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private CharSequence f53892y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private c f53893z;

    class a implements ViewTreeObserver.OnGlobalLayoutListener {
        a() {
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            ExpandView.this.getViewTreeObserver().removeOnGlobalLayoutListener(this);
            ExpandView expandView = ExpandView.this;
            expandView.l(expandView.f53892y);
            ExpandView.this.f53878k = true;
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
        this.f53872e = "  ";
        this.f53873f = "  ";
        this.f53874g = false;
        this.f53875h = true;
        this.f53876i = true;
        this.f53877j = true;
        this.f53878k = false;
        this.f53879l = 1;
        this.f53880m = -1711276033;
        this.f53881n = -1711276033;
        this.f53882o = 0;
        this.f53883p = 0;
        this.f53884q = -1;
        this.f53885r = 0;
        this.f53887t = true;
        this.C = false;
        j(context, attributeSet);
    }

    public ExpandView(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        this.f53872e = "  ";
        this.f53873f = "  ";
        this.f53874g = false;
        this.f53875h = true;
        this.f53876i = true;
        this.f53877j = true;
        this.f53878k = false;
        this.f53879l = 1;
        this.f53880m = -1711276033;
        this.f53881n = -1711276033;
        this.f53882o = 0;
        this.f53883p = 0;
        this.f53884q = -1;
        this.f53885r = 0;
        this.f53887t = true;
        this.C = false;
        j(context, attributeSet);
    }

    private int getLayoutWidth() {
        Layout layout = getLayout();
        int width = layout != null ? layout.getWidth() : 0;
        return (width > 0 || getWidth() == 0) ? width : (getWidth() - getPaddingLeft()) - getPaddingRight();
    }

    private CharSequence h(int i11) {
        int i12;
        TextPaint paint = getPaint();
        String str = "";
        if (this.f53892y != null) {
            str = "" + ((Object) this.f53892y);
        }
        if (this.f53891x == null) {
            this.f53891x = new StaticLayout(str, paint, i11, Layout.Alignment.ALIGN_NORMAL, 1.0f, 0.0f, true);
        }
        int lineCount = this.f53891x.getLineCount();
        int i13 = this.f53879l;
        if (lineCount <= i13) {
            CharSequence charSequence = this.f53892y;
            if (charSequence == null) {
                charSequence = " ";
            }
            return n(new SpannableStringBuilder(charSequence));
        }
        int i14 = this.f53885r;
        if (i14 != 0) {
            if (i14 != 1 || !this.f53877j) {
                return n(new SpannableStringBuilder(this.f53892y));
            }
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(this.f53892y);
            spannableStringBuilder.append((CharSequence) this.f53873f).append((CharSequence) this.f53871d);
            int length = (spannableStringBuilder.length() - this.f53873f.length()) - this.f53871d.length();
            int length2 = spannableStringBuilder.length();
            i12 = length >= 0 ? length : 0;
            spannableStringBuilder.setSpan(this.f53888u, i12, length2, 33);
            spannableStringBuilder.setSpan(this.f53889v, i12, length2, 33);
            return n(spannableStringBuilder);
        }
        int lineEnd = this.f53891x.getLineEnd(i13 - 1);
        this.f53891x.getLineStart(this.f53879l - 1);
        CharSequence charSequence2 = this.f53892y;
        if (charSequence2 != null && charSequence2.length() <= lineEnd) {
            lineEnd = this.f53892y.length() - 1;
        }
        CharSequence charSequence3 = this.f53892y;
        if (charSequence3 == null || lineEnd <= 0) {
            return charSequence3;
        }
        SpannableStringBuilder spannableStringBuilder2 = new SpannableStringBuilder((charSequence3.subSequence(0, Math.max(0, lineEnd - 3)).toString() + this.f53869b).replace("\n\n", "\n"));
        if (this.f53876i) {
            spannableStringBuilder2.append((CharSequence) this.f53872e);
            spannableStringBuilder2.append((CharSequence) this.f53870c);
            int length3 = (spannableStringBuilder2.length() - this.f53872e.length()) - this.f53870c.length();
            int length4 = spannableStringBuilder2.length();
            i12 = length3 >= 0 ? length3 : 0;
            spannableStringBuilder2.setSpan(this.f53888u, i12, length4, 33);
            spannableStringBuilder2.setSpan(this.f53890w, i12, length4, 33);
        }
        return n(spannableStringBuilder2);
    }

    private void i() {
        if (this.f53886s == 0.0f) {
            this.f53886s = getTextSize();
        }
        boolean z10 = getLayoutDirection() == 1;
        this.f53890w = new jt.a(getContext(), this.f53887t ? R$mipmap.short_tv_ic_down_more : -111, this.f53880m, this.f53882o, this.f53886s, 0, z10);
        this.f53889v = new jt.a(getContext(), this.f53887t ? R$mipmap.short_tv_ic_up_hide : -111, this.f53881n, this.f53883p, this.f53886s, 0, z10);
        setMovementMethod(new LinkMovementMethod());
        if (TextUtils.isEmpty(this.f53869b)) {
            this.f53869b = "...";
        }
        if (TextUtils.isEmpty(this.f53870c)) {
            this.f53870c = getResources().getString(R$string.short_tv_str_more);
        }
        if (TextUtils.isEmpty(this.f53871d)) {
            this.f53871d = "\n" + getResources().getString(R$string.short_tv_str_hide);
        }
        if (this.f53872e == null) {
            this.f53872e = "  ";
        }
        if (this.f53873f == null) {
            this.f53873f = "  ";
        }
        setOnClickListener(new View.OnClickListener() { // from class: jt.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f66291a.k(view);
            }
        });
        getViewTreeObserver().addOnGlobalLayoutListener(new a());
    }

    private void j(Context context, AttributeSet attributeSet) {
        if (attributeSet == null) {
            i();
            return;
        }
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.ExpandView);
        int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
        for (int i11 = 0; i11 < indexCount; i11++) {
            int index = typedArrayObtainStyledAttributes.getIndex(i11);
            if (index == R$styleable.ExpandView_pop_hint_text_size) {
                this.f53886s = typedArrayObtainStyledAttributes.getDimension(index, 0.0f);
            } else if (index == R$styleable.ExpandView_pop_reverse_Lines) {
                this.f53879l = typedArrayObtainStyledAttributes.getInteger(index, 1);
            } else if (index == R$styleable.ExpandView_pop_ellipsis) {
                this.f53869b = typedArrayObtainStyledAttributes.getString(index);
            } else if (index == R$styleable.ExpandView_pop_expand_hint) {
                this.f53870c = typedArrayObtainStyledAttributes.getString(index);
            } else if (index == R$styleable.ExpandView_pop_shrink_hint) {
                this.f53871d = typedArrayObtainStyledAttributes.getString(index);
            } else if (index == R$styleable.ExpandView_pop_toggle_enabled) {
                this.f53874g = typedArrayObtainStyledAttributes.getBoolean(index, this.f53874g);
            } else if (index == R$styleable.ExpandView_pop_show_expand_hint) {
                this.f53876i = typedArrayObtainStyledAttributes.getBoolean(index, this.f53876i);
            } else if (index == R$styleable.ExpandView_pop_show_shrink_hint) {
                this.f53877j = typedArrayObtainStyledAttributes.getBoolean(index, this.f53877j);
            } else if (index == R$styleable.ExpandView_pop_expand_hint_color) {
                this.f53880m = typedArrayObtainStyledAttributes.getInteger(index, -1711276033);
            } else if (index == R$styleable.ExpandView_pop_shrink_hint_color) {
                this.f53881n = typedArrayObtainStyledAttributes.getInteger(index, -1711276033);
            } else if (index == R$styleable.ExpandView_pop_expand_bg_Color) {
                this.f53882o = typedArrayObtainStyledAttributes.getInteger(index, 0);
            } else if (index == R$styleable.ExpandView_pop_shrink_bg_color) {
                this.f53883p = typedArrayObtainStyledAttributes.getInteger(index, 0);
            } else if (index == R$styleable.ExpandView_pop_Init_state) {
                this.f53885r = typedArrayObtainStyledAttributes.getInteger(index, 0);
            } else if (index == R$styleable.ExpandView_pop_expand_gap) {
                this.f53872e = typedArrayObtainStyledAttributes.getString(index);
            } else if (index == R$styleable.ExpandView_pop_collapse_gap) {
                this.f53873f = typedArrayObtainStyledAttributes.getString(index);
            } else if (index == R$styleable.ExpandView_pop_hash_tag_color) {
                this.f53884q = typedArrayObtainStyledAttributes.getInteger(index, this.f53884q);
            } else if (index == R$styleable.ExpandView_pop_show_hint_icon) {
                this.f53887t = typedArrayObtainStyledAttributes.getBoolean(index, true);
            }
        }
        typedArrayObtainStyledAttributes.recycle();
        i();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void k(View view) {
        o();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ CharSequence m(final CharSequence charSequence) {
        if (!this.f53875h) {
            return charSequence;
        }
        if (!TextUtils.equals(charSequence, this.f53892y)) {
            this.f53891x = null;
        }
        this.f53892y = charSequence;
        int layoutWidth = getLayoutWidth();
        if (layoutWidth > 0) {
            this.C = true;
            return this.f53892y == null ? charSequence : h(layoutWidth);
        }
        if (this.f53878k) {
            postDelayed(new Runnable() { // from class: jt.d
                @Override // java.lang.Runnable
                public final void run() {
                    this.f66294a.l(charSequence);
                }
            }, 100L);
        }
        return null;
    }

    private CharSequence n(SpannableStringBuilder spannableStringBuilder) {
        return spannableStringBuilder;
    }

    private void o() {
        if (getText().toString().contains(this.f53870c) || getText().toString().contains(this.f53871d)) {
            int i11 = this.f53885r;
            if (i11 == 0) {
                this.f53885r = 1;
                c cVar = this.f53893z;
                if (cVar != null) {
                    cVar.a(this);
                }
            } else if (i11 == 1) {
                this.f53885r = 0;
                c cVar2 = this.f53893z;
                if (cVar2 != null) {
                    cVar2.b(this);
                }
            }
            l(this.f53892y);
        }
    }

    public void addLegacyHashTag(String str, String str2) {
        this.B = str;
        this.A = str2;
    }

    @Override // com.transsion.shorttv_pugc.base.widget.TnTextView, ft.a
    public void changeLocal() {
        this.f53870c = getResources().getString(R$string.short_tv_str_more);
        this.f53871d = getResources().getString(R$string.short_tv_str_hide);
        super.changeLocal();
    }

    public int getExpandState() {
        return this.f53885r;
    }

    public boolean isOutLines() {
        Layout layout = this.f53891x;
        return layout != null && layout.getLineCount() > this.f53879l;
    }

    public boolean isSetTitleSuccess() {
        return this.C;
    }

    @Override // androidx.appcompat.widget.AppCompatTextView, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
    }

    public void reset() {
        this.f53885r = 0;
        c cVar = this.f53893z;
        if (cVar != null) {
            cVar.b(this);
        }
        l(this.f53892y);
    }

    public void setCollapseEnable(boolean z10) {
        this.f53875h = z10;
    }

    public void setExpandListener(c cVar) {
        this.f53893z = cVar;
    }

    public void setOnClickHashTagListener(b bVar) {
    }

    /* JADX INFO: renamed from: setTitle, reason: merged with bridge method [inline-methods] */
    public void l(final CharSequence charSequence) {
        setTextAction(new Function0() { // from class: jt.c
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return this.f66292a.m(charSequence);
            }
        });
    }
}
