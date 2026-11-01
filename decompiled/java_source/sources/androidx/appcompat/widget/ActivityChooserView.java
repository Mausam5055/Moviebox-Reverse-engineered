package androidx.appcompat.widget;

import android.R;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.R$dimen;
import androidx.appcompat.R$id;
import androidx.appcompat.R$layout;
import androidx.appcompat.R$string;
import androidx.appcompat.R$styleable;
import androidx.core.view.ActionProvider;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;

/* JADX INFO: loaded from: classes.dex */
public class ActivityChooserView extends ViewGroup {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final f f1648a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final g f1649b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final View f1650c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Drawable f1651d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final FrameLayout f1652e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final ImageView f1653f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    final FrameLayout f1654g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final ImageView f1655h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final int f1656i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    ActionProvider f1657j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    final DataSetObserver f1658k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final ViewTreeObserver.OnGlobalLayoutListener f1659l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private ListPopupWindow f1660m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    PopupWindow.OnDismissListener f1661n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    boolean f1662o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    int f1663p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private boolean f1664q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private int f1665r;

    public static class InnerLayout extends LinearLayout {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static final int[] f1666a = {R.attr.background};

        public InnerLayout(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            j0 j0VarU = j0.u(context, attributeSet, f1666a);
            setBackgroundDrawable(j0VarU.g(0));
            j0VarU.x();
        }
    }

    class a extends DataSetObserver {
        a() {
        }

        @Override // android.database.DataSetObserver
        public void onChanged() {
            super.onChanged();
            ActivityChooserView.this.f1648a.notifyDataSetChanged();
        }

        @Override // android.database.DataSetObserver
        public void onInvalidated() {
            super.onInvalidated();
            ActivityChooserView.this.f1648a.notifyDataSetInvalidated();
        }
    }

    class b implements ViewTreeObserver.OnGlobalLayoutListener {
        b() {
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            if (ActivityChooserView.this.isShowingPopup()) {
                if (!ActivityChooserView.this.isShown()) {
                    ActivityChooserView.this.getListPopupWindow().dismiss();
                    return;
                }
                ActivityChooserView.this.getListPopupWindow().show();
                ActionProvider actionProvider = ActivityChooserView.this.f1657j;
                if (actionProvider != null) {
                    actionProvider.subUiVisibilityChanged(true);
                }
            }
        }
    }

    class c extends View.AccessibilityDelegate {
        c() {
        }

        @Override // android.view.View.AccessibilityDelegate
        public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfo accessibilityNodeInfo) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
            AccessibilityNodeInfoCompat.wrap(accessibilityNodeInfo).setCanOpenPopup(true);
        }
    }

    class d extends ForwardingListener {
        d(View view) {
            super(view);
        }

        @Override // androidx.appcompat.widget.ForwardingListener
        public androidx.appcompat.view.menu.o b() {
            return ActivityChooserView.this.getListPopupWindow();
        }

        @Override // androidx.appcompat.widget.ForwardingListener
        protected boolean c() {
            ActivityChooserView.this.showPopup();
            return true;
        }

        @Override // androidx.appcompat.widget.ForwardingListener
        protected boolean d() {
            ActivityChooserView.this.dismissPopup();
            return true;
        }
    }

    class e extends DataSetObserver {
        e() {
        }

        @Override // android.database.DataSetObserver
        public void onChanged() {
            super.onChanged();
            ActivityChooserView.this.b();
        }
    }

    private class f extends BaseAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private int f1672a = 4;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private boolean f1673b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private boolean f1674c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private boolean f1675d;

        f() {
        }

        public int a() {
            throw null;
        }

        public androidx.appcompat.widget.b b() {
            return null;
        }

        public ResolveInfo c() {
            throw null;
        }

        public int d() {
            throw null;
        }

        public boolean e() {
            return this.f1673b;
        }

        public void f(androidx.appcompat.widget.b bVar) {
            ActivityChooserView.this.f1648a.b();
            notifyDataSetChanged();
        }

        @Override // android.widget.Adapter
        public int getCount() {
            throw null;
        }

        @Override // android.widget.Adapter
        public Object getItem(int i11) {
            int itemViewType = getItemViewType(i11);
            if (itemViewType != 0) {
                if (itemViewType == 1) {
                    return null;
                }
                throw new IllegalArgumentException();
            }
            if (this.f1673b) {
                throw null;
            }
            throw null;
        }

        @Override // android.widget.Adapter
        public long getItemId(int i11) {
            return i11;
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public int getItemViewType(int i11) {
            return (this.f1675d && i11 == getCount() - 1) ? 1 : 0;
        }

        @Override // android.widget.Adapter
        public View getView(int i11, View view, ViewGroup viewGroup) {
            int itemViewType = getItemViewType(i11);
            if (itemViewType != 0) {
                if (itemViewType != 1) {
                    throw new IllegalArgumentException();
                }
                if (view != null && view.getId() == 1) {
                    return view;
                }
                View viewInflate = LayoutInflater.from(ActivityChooserView.this.getContext()).inflate(R$layout.abc_activity_chooser_view_list_item, viewGroup, false);
                viewInflate.setId(1);
                ((TextView) viewInflate.findViewById(R$id.title)).setText(ActivityChooserView.this.getContext().getString(R$string.abc_activity_chooser_view_see_all));
                return viewInflate;
            }
            if (view == null || view.getId() != R$id.list_item) {
                view = LayoutInflater.from(ActivityChooserView.this.getContext()).inflate(R$layout.abc_activity_chooser_view_list_item, viewGroup, false);
            }
            PackageManager packageManager = ActivityChooserView.this.getContext().getPackageManager();
            ImageView imageView = (ImageView) view.findViewById(R$id.icon);
            ResolveInfo resolveInfo = (ResolveInfo) getItem(i11);
            imageView.setImageDrawable(resolveInfo.loadIcon(packageManager));
            ((TextView) view.findViewById(R$id.title)).setText(resolveInfo.loadLabel(packageManager));
            if (this.f1673b && i11 == 0 && this.f1674c) {
                view.setActivated(true);
            } else {
                view.setActivated(false);
            }
            return view;
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public int getViewTypeCount() {
            return 3;
        }
    }

    private class g implements AdapterView.OnItemClickListener, View.OnClickListener, View.OnLongClickListener, PopupWindow.OnDismissListener {
        g() {
        }

        private void a() {
            PopupWindow.OnDismissListener onDismissListener = ActivityChooserView.this.f1661n;
            if (onDismissListener != null) {
                onDismissListener.onDismiss();
            }
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ActivityChooserView activityChooserView = ActivityChooserView.this;
            if (view == activityChooserView.f1654g) {
                activityChooserView.dismissPopup();
                ActivityChooserView.this.f1648a.c();
                ActivityChooserView.this.f1648a.b();
                throw null;
            }
            if (view != activityChooserView.f1652e) {
                throw new IllegalArgumentException();
            }
            activityChooserView.f1662o = false;
            activityChooserView.a(activityChooserView.f1663p);
        }

        @Override // android.widget.PopupWindow.OnDismissListener
        public void onDismiss() {
            a();
            ActionProvider actionProvider = ActivityChooserView.this.f1657j;
            if (actionProvider != null) {
                actionProvider.subUiVisibilityChanged(false);
            }
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView adapterView, View view, int i11, long j11) {
            int itemViewType = ((f) adapterView.getAdapter()).getItemViewType(i11);
            if (itemViewType != 0) {
                if (itemViewType != 1) {
                    throw new IllegalArgumentException();
                }
                ActivityChooserView.this.a(Integer.MAX_VALUE);
                return;
            }
            ActivityChooserView.this.dismissPopup();
            ActivityChooserView activityChooserView = ActivityChooserView.this;
            if (!activityChooserView.f1662o) {
                activityChooserView.f1648a.e();
                ActivityChooserView.this.f1648a.b();
                throw null;
            }
            if (i11 <= 0) {
                return;
            }
            activityChooserView.f1648a.b();
            throw null;
        }

        @Override // android.view.View.OnLongClickListener
        public boolean onLongClick(View view) {
            ActivityChooserView activityChooserView = ActivityChooserView.this;
            if (view != activityChooserView.f1654g) {
                throw new IllegalArgumentException();
            }
            if (activityChooserView.f1648a.getCount() > 0) {
                ActivityChooserView activityChooserView2 = ActivityChooserView.this;
                activityChooserView2.f1662o = true;
                activityChooserView2.a(activityChooserView2.f1663p);
            }
            return true;
        }
    }

    public ActivityChooserView(@NonNull Context context) {
        this(context, null);
    }

    public ActivityChooserView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ActivityChooserView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        this.f1658k = new a();
        this.f1659l = new b();
        this.f1663p = 4;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.ActivityChooserView, i11, 0);
        ViewCompat.saveAttributeDataForStyleable(this, context, R$styleable.ActivityChooserView, attributeSet, typedArrayObtainStyledAttributes, i11, 0);
        this.f1663p = typedArrayObtainStyledAttributes.getInt(R$styleable.ActivityChooserView_initialActivityCount, 4);
        Drawable drawable = typedArrayObtainStyledAttributes.getDrawable(R$styleable.ActivityChooserView_expandActivityOverflowButtonDrawable);
        typedArrayObtainStyledAttributes.recycle();
        LayoutInflater.from(getContext()).inflate(R$layout.abc_activity_chooser_view, (ViewGroup) this, true);
        g gVar = new g();
        this.f1649b = gVar;
        View viewFindViewById = findViewById(R$id.activity_chooser_view_content);
        this.f1650c = viewFindViewById;
        this.f1651d = viewFindViewById.getBackground();
        FrameLayout frameLayout = (FrameLayout) findViewById(R$id.default_activity_button);
        this.f1654g = frameLayout;
        frameLayout.setOnClickListener(gVar);
        frameLayout.setOnLongClickListener(gVar);
        this.f1655h = (ImageView) frameLayout.findViewById(R$id.image);
        FrameLayout frameLayout2 = (FrameLayout) findViewById(R$id.expand_activities_button);
        frameLayout2.setOnClickListener(gVar);
        frameLayout2.setAccessibilityDelegate(new c());
        frameLayout2.setOnTouchListener(new d(frameLayout2));
        this.f1652e = frameLayout2;
        ImageView imageView = (ImageView) frameLayout2.findViewById(R$id.image);
        this.f1653f = imageView;
        imageView.setImageDrawable(drawable);
        f fVar = new f();
        this.f1648a = fVar;
        fVar.registerDataSetObserver(new e());
        Resources resources = context.getResources();
        this.f1656i = Math.max(resources.getDisplayMetrics().widthPixels / 2, resources.getDimensionPixelSize(R$dimen.abc_config_prefDialogWidth));
    }

    void a(int i11) {
        this.f1648a.b();
        throw new IllegalStateException("No data model. Did you call #setDataModel?");
    }

    void b() {
        if (this.f1648a.getCount() > 0) {
            this.f1652e.setEnabled(true);
        } else {
            this.f1652e.setEnabled(false);
        }
        int iA = this.f1648a.a();
        int iD = this.f1648a.d();
        if (iA == 1 || (iA > 1 && iD > 0)) {
            this.f1654g.setVisibility(0);
            ResolveInfo resolveInfoC = this.f1648a.c();
            PackageManager packageManager = getContext().getPackageManager();
            this.f1655h.setImageDrawable(resolveInfoC.loadIcon(packageManager));
            if (this.f1665r != 0) {
                this.f1654g.setContentDescription(getContext().getString(this.f1665r, resolveInfoC.loadLabel(packageManager)));
            }
        } else {
            this.f1654g.setVisibility(8);
        }
        if (this.f1654g.getVisibility() == 0) {
            this.f1650c.setBackgroundDrawable(this.f1651d);
        } else {
            this.f1650c.setBackgroundDrawable(null);
        }
    }

    public boolean dismissPopup() {
        if (!isShowingPopup()) {
            return true;
        }
        getListPopupWindow().dismiss();
        ViewTreeObserver viewTreeObserver = getViewTreeObserver();
        if (!viewTreeObserver.isAlive()) {
            return true;
        }
        viewTreeObserver.removeGlobalOnLayoutListener(this.f1659l);
        return true;
    }

    public androidx.appcompat.widget.b getDataModel() {
        this.f1648a.b();
        return null;
    }

    ListPopupWindow getListPopupWindow() {
        if (this.f1660m == null) {
            ListPopupWindow listPopupWindow = new ListPopupWindow(getContext());
            this.f1660m = listPopupWindow;
            listPopupWindow.m(this.f1648a);
            this.f1660m.C(this);
            this.f1660m.I(true);
            this.f1660m.K(this.f1649b);
            this.f1660m.J(this.f1649b);
        }
        return this.f1660m;
    }

    public boolean isShowingPopup() {
        return getListPopupWindow().a();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f1648a.b();
        this.f1664q = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.f1648a.b();
        ViewTreeObserver viewTreeObserver = getViewTreeObserver();
        if (viewTreeObserver.isAlive()) {
            viewTreeObserver.removeGlobalOnLayoutListener(this.f1659l);
        }
        if (isShowingPopup()) {
            dismissPopup();
        }
        this.f1664q = false;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z10, int i11, int i12, int i13, int i14) {
        this.f1650c.layout(0, 0, i13 - i11, i14 - i12);
        if (isShowingPopup()) {
            return;
        }
        dismissPopup();
    }

    @Override // android.view.View
    protected void onMeasure(int i11, int i12) {
        View view = this.f1650c;
        if (this.f1654g.getVisibility() != 0) {
            i12 = View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i12), 1073741824);
        }
        measureChild(view, i11, i12);
        setMeasuredDimension(view.getMeasuredWidth(), view.getMeasuredHeight());
    }

    public void setActivityChooserModel(androidx.appcompat.widget.b bVar) {
        this.f1648a.f(bVar);
        if (isShowingPopup()) {
            dismissPopup();
            showPopup();
        }
    }

    public void setDefaultActionButtonContentDescription(int i11) {
        this.f1665r = i11;
    }

    public void setExpandActivityOverflowButtonContentDescription(int i11) {
        this.f1653f.setContentDescription(getContext().getString(i11));
    }

    public void setExpandActivityOverflowButtonDrawable(Drawable drawable) {
        this.f1653f.setImageDrawable(drawable);
    }

    public void setInitialActivityCount(int i11) {
        this.f1663p = i11;
    }

    public void setOnDismissListener(PopupWindow.OnDismissListener onDismissListener) {
        this.f1661n = onDismissListener;
    }

    public void setProvider(ActionProvider actionProvider) {
        this.f1657j = actionProvider;
    }

    public boolean showPopup() {
        if (isShowingPopup() || !this.f1664q) {
            return false;
        }
        this.f1662o = false;
        a(this.f1663p);
        return true;
    }
}
