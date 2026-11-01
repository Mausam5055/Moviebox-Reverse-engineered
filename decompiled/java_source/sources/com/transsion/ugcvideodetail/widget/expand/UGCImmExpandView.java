package com.transsion.ugcvideodetail.widget.expand;

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
public class UGCImmExpandView extends TnTextView {
    public static final int STATE_EXPAND = 1;
    public static final int STATE_SHRINK = 0;
    private String A;
    private boolean B;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f56558b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f56559c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f56560d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f56561e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f56562f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f56563g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f56564h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f56565i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f56566j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f56567k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f56568l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f56569m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private int f56570n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f56571o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f56572p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f56573q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private int f56574r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private float f56575s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private boolean f56576t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private ClickableSpan f56577u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private uv.a f56578v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private uv.a f56579w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private Layout f56580x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private CharSequence f56581y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private String f56582z;

    class a implements ViewTreeObserver.OnGlobalLayoutListener {
        a() {
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            UGCImmExpandView.this.getViewTreeObserver().removeOnGlobalLayoutListener(this);
            UGCImmExpandView uGCImmExpandView = UGCImmExpandView.this;
            uGCImmExpandView.l(uGCImmExpandView.f56581y);
            UGCImmExpandView.this.f56567k = true;
        }
    }

    public interface b {
    }

    public interface c {
    }

    public UGCImmExpandView(Context context) {
        this(context, null);
    }

    public UGCImmExpandView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f56561e = "  ";
        this.f56562f = "  ";
        this.f56563g = false;
        this.f56564h = true;
        this.f56565i = true;
        this.f56566j = true;
        this.f56567k = false;
        this.f56568l = 1;
        this.f56569m = -1711276033;
        this.f56570n = -1711276033;
        this.f56571o = 0;
        this.f56572p = 0;
        this.f56573q = -1;
        this.f56574r = 0;
        this.f56576t = true;
        this.B = false;
        j(context, attributeSet);
    }

    public UGCImmExpandView(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        this.f56561e = "  ";
        this.f56562f = "  ";
        this.f56563g = false;
        this.f56564h = true;
        this.f56565i = true;
        this.f56566j = true;
        this.f56567k = false;
        this.f56568l = 1;
        this.f56569m = -1711276033;
        this.f56570n = -1711276033;
        this.f56571o = 0;
        this.f56572p = 0;
        this.f56573q = -1;
        this.f56574r = 0;
        this.f56576t = true;
        this.B = false;
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
        if (this.f56581y != null) {
            str = "" + ((Object) this.f56581y);
        }
        if (this.f56580x == null) {
            this.f56580x = new StaticLayout(str, paint, i11, Layout.Alignment.ALIGN_NORMAL, 1.0f, 0.0f, true);
        }
        int lineCount = this.f56580x.getLineCount();
        int i13 = this.f56568l;
        if (lineCount <= i13) {
            CharSequence charSequence = this.f56581y;
            if (charSequence == null) {
                charSequence = " ";
            }
            return n(new SpannableStringBuilder(charSequence));
        }
        int i14 = this.f56574r;
        if (i14 != 0) {
            if (i14 != 1 || !this.f56566j) {
                return n(new SpannableStringBuilder(this.f56581y));
            }
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(this.f56581y);
            spannableStringBuilder.append((CharSequence) this.f56562f).append((CharSequence) this.f56560d);
            int length = (spannableStringBuilder.length() - this.f56562f.length()) - this.f56560d.length();
            int length2 = spannableStringBuilder.length();
            i12 = length >= 0 ? length : 0;
            spannableStringBuilder.setSpan(this.f56577u, i12, length2, 33);
            spannableStringBuilder.setSpan(this.f56578v, i12, length2, 33);
            return n(spannableStringBuilder);
        }
        int lineEnd = this.f56580x.getLineEnd(i13 - 1);
        this.f56580x.getLineStart(this.f56568l - 1);
        CharSequence charSequence2 = this.f56581y;
        if (charSequence2 != null && charSequence2.length() <= lineEnd) {
            lineEnd = this.f56581y.length() - 1;
        }
        CharSequence charSequence3 = this.f56581y;
        if (charSequence3 == null || lineEnd <= 0) {
            return charSequence3;
        }
        SpannableStringBuilder spannableStringBuilder2 = new SpannableStringBuilder((charSequence3.subSequence(0, Math.max(0, lineEnd - 3)).toString() + this.f56558b).replace("\n\n", "\n"));
        if (this.f56565i) {
            spannableStringBuilder2.append((CharSequence) this.f56561e);
            spannableStringBuilder2.append((CharSequence) this.f56559c);
            int length3 = (spannableStringBuilder2.length() - this.f56561e.length()) - this.f56559c.length();
            int length4 = spannableStringBuilder2.length();
            i12 = length3 >= 0 ? length3 : 0;
            spannableStringBuilder2.setSpan(this.f56577u, i12, length4, 33);
            spannableStringBuilder2.setSpan(this.f56579w, i12, length4, 33);
        }
        return n(spannableStringBuilder2);
    }

    private void i() {
        if (this.f56575s == 0.0f) {
            this.f56575s = getTextSize();
        }
        boolean z10 = getLayoutDirection() == 1;
        this.f56579w = new uv.a(getContext(), this.f56576t ? R$mipmap.short_tv_ic_down_more : -111, this.f56569m, this.f56571o, this.f56575s, 0, z10);
        this.f56578v = new uv.a(getContext(), this.f56576t ? R$mipmap.short_tv_ic_up_hide : -111, this.f56570n, this.f56572p, this.f56575s, 0, z10);
        setMovementMethod(new LinkMovementMethod());
        if (TextUtils.isEmpty(this.f56558b)) {
            this.f56558b = "...";
        }
        if (TextUtils.isEmpty(this.f56559c)) {
            this.f56559c = getResources().getString(R$string.short_tv_str_more);
        }
        if (TextUtils.isEmpty(this.f56560d)) {
            this.f56560d = "\n" + getResources().getString(R$string.short_tv_str_hide);
        }
        if (this.f56561e == null) {
            this.f56561e = "  ";
        }
        if (this.f56562f == null) {
            this.f56562f = "  ";
        }
        setOnClickListener(new View.OnClickListener() { // from class: uv.c
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f76934a.k(view);
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
                this.f56575s = typedArrayObtainStyledAttributes.getDimension(index, 0.0f);
            } else if (index == R$styleable.ExpandView_pop_reverse_Lines) {
                this.f56568l = typedArrayObtainStyledAttributes.getInteger(index, 1);
            } else if (index == R$styleable.ExpandView_pop_ellipsis) {
                this.f56558b = typedArrayObtainStyledAttributes.getString(index);
            } else if (index == R$styleable.ExpandView_pop_expand_hint) {
                this.f56559c = typedArrayObtainStyledAttributes.getString(index);
            } else if (index == R$styleable.ExpandView_pop_shrink_hint) {
                this.f56560d = typedArrayObtainStyledAttributes.getString(index);
            } else if (index == R$styleable.ExpandView_pop_toggle_enabled) {
                this.f56563g = typedArrayObtainStyledAttributes.getBoolean(index, this.f56563g);
            } else if (index == R$styleable.ExpandView_pop_show_expand_hint) {
                this.f56565i = typedArrayObtainStyledAttributes.getBoolean(index, this.f56565i);
            } else if (index == R$styleable.ExpandView_pop_show_shrink_hint) {
                this.f56566j = typedArrayObtainStyledAttributes.getBoolean(index, this.f56566j);
            } else if (index == R$styleable.ExpandView_pop_expand_hint_color) {
                this.f56569m = typedArrayObtainStyledAttributes.getInteger(index, -1711276033);
            } else if (index == R$styleable.ExpandView_pop_shrink_hint_color) {
                this.f56570n = typedArrayObtainStyledAttributes.getInteger(index, -1711276033);
            } else if (index == R$styleable.ExpandView_pop_expand_bg_Color) {
                this.f56571o = typedArrayObtainStyledAttributes.getInteger(index, 0);
            } else if (index == R$styleable.ExpandView_pop_shrink_bg_color) {
                this.f56572p = typedArrayObtainStyledAttributes.getInteger(index, 0);
            } else if (index == R$styleable.ExpandView_pop_Init_state) {
                this.f56574r = typedArrayObtainStyledAttributes.getInteger(index, 0);
            } else if (index == R$styleable.ExpandView_pop_expand_gap) {
                this.f56561e = typedArrayObtainStyledAttributes.getString(index);
            } else if (index == R$styleable.ExpandView_pop_collapse_gap) {
                this.f56562f = typedArrayObtainStyledAttributes.getString(index);
            } else if (index == R$styleable.ExpandView_pop_hash_tag_color) {
                this.f56573q = typedArrayObtainStyledAttributes.getInteger(index, this.f56573q);
            } else if (index == R$styleable.ExpandView_pop_show_hint_icon) {
                this.f56576t = typedArrayObtainStyledAttributes.getBoolean(index, true);
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
        if (!this.f56564h) {
            return charSequence;
        }
        if (!TextUtils.equals(charSequence, this.f56581y)) {
            this.f56580x = null;
        }
        this.f56581y = charSequence;
        int layoutWidth = getLayoutWidth();
        if (layoutWidth > 0) {
            this.B = true;
            return this.f56581y == null ? charSequence : h(layoutWidth);
        }
        if (this.f56567k) {
            postDelayed(new Runnable() { // from class: uv.d
                @Override // java.lang.Runnable
                public final void run() {
                    this.f76935a.l(charSequence);
                }
            }, 100L);
        }
        return null;
    }

    private CharSequence n(SpannableStringBuilder spannableStringBuilder) {
        return spannableStringBuilder;
    }

    private void o() {
        if (getText().toString().contains(this.f56559c) || getText().toString().contains(this.f56560d)) {
            int i11 = this.f56574r;
            if (i11 == 0) {
                this.f56574r = 1;
            } else if (i11 == 1) {
                this.f56574r = 0;
            }
            l(this.f56581y);
        }
    }

    public void addLegacyHashTag(String str, String str2) {
        this.A = str;
        this.f56582z = str2;
    }

    @Override // com.transsion.shorttv_pugc.base.widget.TnTextView, ft.a
    public void changeLocal() {
        this.f56559c = getResources().getString(R$string.short_tv_str_more);
        this.f56560d = getResources().getString(R$string.short_tv_str_hide);
        super.changeLocal();
    }

    public int getExpandState() {
        return this.f56574r;
    }

    public boolean isOutLines() {
        Layout layout = this.f56580x;
        return layout != null && layout.getLineCount() > this.f56568l;
    }

    public boolean isSetTitleSuccess() {
        return this.B;
    }

    @Override // androidx.appcompat.widget.AppCompatTextView, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
    }

    public void reset() {
        this.f56574r = 0;
        l(this.f56581y);
    }

    public void setCollapseEnable(boolean z10) {
        this.f56564h = z10;
    }

    public void setExpandListener(c cVar) {
    }

    public void setOnClickHashTagListener(b bVar) {
    }

    /* JADX INFO: renamed from: setTitle, reason: merged with bridge method [inline-methods] */
    public void l(final CharSequence charSequence) {
        setTextAction(new Function0() { // from class: uv.b
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return this.f76932a.m(charSequence);
            }
        });
    }
}
