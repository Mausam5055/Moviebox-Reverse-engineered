package androidx.recyclerview.widget;

import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;

/* JADX INFO: loaded from: classes.dex */
public abstract class m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected final RecyclerView.m f14404a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f14405b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final Rect f14406c;

    /* JADX INFO: loaded from: classes2.dex */
    class a extends m {
        a(RecyclerView.m mVar) {
            super(mVar, null);
        }

        @Override // androidx.recyclerview.widget.m
        public int d(View view) {
            return this.f14404a.getDecoratedRight(view) + ((ViewGroup.MarginLayoutParams) ((RecyclerView.n) view.getLayoutParams())).rightMargin;
        }

        @Override // androidx.recyclerview.widget.m
        public int e(View view) {
            RecyclerView.n nVar = (RecyclerView.n) view.getLayoutParams();
            return this.f14404a.getDecoratedMeasuredWidth(view) + ((ViewGroup.MarginLayoutParams) nVar).leftMargin + ((ViewGroup.MarginLayoutParams) nVar).rightMargin;
        }

        @Override // androidx.recyclerview.widget.m
        public int f(View view) {
            RecyclerView.n nVar = (RecyclerView.n) view.getLayoutParams();
            return this.f14404a.getDecoratedMeasuredHeight(view) + ((ViewGroup.MarginLayoutParams) nVar).topMargin + ((ViewGroup.MarginLayoutParams) nVar).bottomMargin;
        }

        @Override // androidx.recyclerview.widget.m
        public int g(View view) {
            return this.f14404a.getDecoratedLeft(view) - ((ViewGroup.MarginLayoutParams) ((RecyclerView.n) view.getLayoutParams())).leftMargin;
        }

        @Override // androidx.recyclerview.widget.m
        public int h() {
            return this.f14404a.getWidth();
        }

        @Override // androidx.recyclerview.widget.m
        public int i() {
            return this.f14404a.getWidth() - this.f14404a.getPaddingRight();
        }

        @Override // androidx.recyclerview.widget.m
        public int j() {
            return this.f14404a.getPaddingRight();
        }

        @Override // androidx.recyclerview.widget.m
        public int k() {
            return this.f14404a.getWidthMode();
        }

        @Override // androidx.recyclerview.widget.m
        public int l() {
            return this.f14404a.getHeightMode();
        }

        @Override // androidx.recyclerview.widget.m
        public int m() {
            return this.f14404a.getPaddingLeft();
        }

        @Override // androidx.recyclerview.widget.m
        public int n() {
            return (this.f14404a.getWidth() - this.f14404a.getPaddingLeft()) - this.f14404a.getPaddingRight();
        }

        @Override // androidx.recyclerview.widget.m
        public int p(View view) {
            this.f14404a.getTransformedBoundingBox(view, true, this.f14406c);
            return this.f14406c.right;
        }

        @Override // androidx.recyclerview.widget.m
        public int q(View view) {
            this.f14404a.getTransformedBoundingBox(view, true, this.f14406c);
            return this.f14406c.left;
        }

        @Override // androidx.recyclerview.widget.m
        public void r(int i11) {
            this.f14404a.offsetChildrenHorizontal(i11);
        }
    }

    /* JADX INFO: loaded from: classes2.dex */
    class b extends m {
        b(RecyclerView.m mVar) {
            super(mVar, null);
        }

        @Override // androidx.recyclerview.widget.m
        public int d(View view) {
            return this.f14404a.getDecoratedBottom(view) + ((ViewGroup.MarginLayoutParams) ((RecyclerView.n) view.getLayoutParams())).bottomMargin;
        }

        @Override // androidx.recyclerview.widget.m
        public int e(View view) {
            RecyclerView.n nVar = (RecyclerView.n) view.getLayoutParams();
            return this.f14404a.getDecoratedMeasuredHeight(view) + ((ViewGroup.MarginLayoutParams) nVar).topMargin + ((ViewGroup.MarginLayoutParams) nVar).bottomMargin;
        }

        @Override // androidx.recyclerview.widget.m
        public int f(View view) {
            RecyclerView.n nVar = (RecyclerView.n) view.getLayoutParams();
            return this.f14404a.getDecoratedMeasuredWidth(view) + ((ViewGroup.MarginLayoutParams) nVar).leftMargin + ((ViewGroup.MarginLayoutParams) nVar).rightMargin;
        }

        @Override // androidx.recyclerview.widget.m
        public int g(View view) {
            return this.f14404a.getDecoratedTop(view) - ((ViewGroup.MarginLayoutParams) ((RecyclerView.n) view.getLayoutParams())).topMargin;
        }

        @Override // androidx.recyclerview.widget.m
        public int h() {
            return this.f14404a.getHeight();
        }

        @Override // androidx.recyclerview.widget.m
        public int i() {
            return this.f14404a.getHeight() - this.f14404a.getPaddingBottom();
        }

        @Override // androidx.recyclerview.widget.m
        public int j() {
            return this.f14404a.getPaddingBottom();
        }

        @Override // androidx.recyclerview.widget.m
        public int k() {
            return this.f14404a.getHeightMode();
        }

        @Override // androidx.recyclerview.widget.m
        public int l() {
            return this.f14404a.getWidthMode();
        }

        @Override // androidx.recyclerview.widget.m
        public int m() {
            return this.f14404a.getPaddingTop();
        }

        @Override // androidx.recyclerview.widget.m
        public int n() {
            return (this.f14404a.getHeight() - this.f14404a.getPaddingTop()) - this.f14404a.getPaddingBottom();
        }

        @Override // androidx.recyclerview.widget.m
        public int p(View view) {
            this.f14404a.getTransformedBoundingBox(view, true, this.f14406c);
            return this.f14406c.bottom;
        }

        @Override // androidx.recyclerview.widget.m
        public int q(View view) {
            this.f14404a.getTransformedBoundingBox(view, true, this.f14406c);
            return this.f14406c.top;
        }

        @Override // androidx.recyclerview.widget.m
        public void r(int i11) {
            this.f14404a.offsetChildrenVertical(i11);
        }
    }

    private m(RecyclerView.m mVar) {
        this.f14405b = Integer.MIN_VALUE;
        this.f14406c = new Rect();
        this.f14404a = mVar;
    }

    /* synthetic */ m(RecyclerView.m mVar, a aVar) {
        this(mVar);
    }

    public static m a(RecyclerView.m mVar) {
        return new a(mVar);
    }

    public static m b(RecyclerView.m mVar, int i11) {
        if (i11 == 0) {
            return a(mVar);
        }
        if (i11 == 1) {
            return c(mVar);
        }
        throw new IllegalArgumentException("invalid orientation");
    }

    public static m c(RecyclerView.m mVar) {
        return new b(mVar);
    }

    public abstract int d(View view);

    public abstract int e(View view);

    public abstract int f(View view);

    public abstract int g(View view);

    public abstract int h();

    public abstract int i();

    public abstract int j();

    public abstract int k();

    public abstract int l();

    public abstract int m();

    public abstract int n();

    public int o() {
        if (Integer.MIN_VALUE == this.f14405b) {
            return 0;
        }
        return n() - this.f14405b;
    }

    public abstract int p(View view);

    public abstract int q(View view);

    public abstract void r(int i11);

    public void s() {
        this.f14405b = n();
    }
}
