package androidx.appcompat.view.menu;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.Log;
import android.view.ContextMenu;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.appcompat.R$string;
import androidx.core.view.ActionProvider;

/* JADX INFO: loaded from: classes.dex */
public final class h implements b1.b {
    private View A;
    private ActionProvider B;
    private MenuItem.OnActionExpandListener C;
    private ContextMenu.ContextMenuInfo E;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f1469a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f1470b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f1471c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f1472d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private CharSequence f1473e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private CharSequence f1474f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Intent f1475g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private char f1476h;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private char f1478j;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private Drawable f1480l;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    f f1482n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private q f1483o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private Runnable f1484p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private MenuItem.OnMenuItemClickListener f1485q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private CharSequence f1486r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private CharSequence f1487s;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private int f1494z;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f1477i = 4096;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f1479k = 4096;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f1481m = 0;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private ColorStateList f1488t = null;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private PorterDuff.Mode f1489u = null;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private boolean f1490v = false;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private boolean f1491w = false;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private boolean f1492x = false;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private int f1493y = 16;
    private boolean D = false;

    class a implements ActionProvider.VisibilityListener {
        a() {
        }

        @Override // androidx.core.view.ActionProvider.VisibilityListener
        public void onActionProviderVisibilityChanged(boolean z10) {
            h hVar = h.this;
            hVar.f1482n.M(hVar);
        }
    }

    h(f fVar, int i11, int i12, int i13, int i14, CharSequence charSequence, int i15) {
        this.f1482n = fVar;
        this.f1469a = i12;
        this.f1470b = i11;
        this.f1471c = i13;
        this.f1472d = i14;
        this.f1473e = charSequence;
        this.f1494z = i15;
    }

    private static void d(StringBuilder sb2, int i11, int i12, String str) {
        if ((i11 & i12) == i12) {
            sb2.append(str);
        }
    }

    private Drawable e(Drawable drawable) {
        if (drawable != null && this.f1492x && (this.f1490v || this.f1491w)) {
            drawable = a1.a.r(drawable).mutate();
            if (this.f1490v) {
                a1.a.o(drawable, this.f1488t);
            }
            if (this.f1491w) {
                a1.a.p(drawable, this.f1489u);
            }
            this.f1492x = false;
        }
        return drawable;
    }

    boolean A() {
        return this.f1482n.K() && g() != 0;
    }

    public boolean B() {
        return (this.f1494z & 4) == 4;
    }

    @Override // b1.b
    public ActionProvider a() {
        return this.B;
    }

    @Override // b1.b
    public b1.b b(ActionProvider actionProvider) {
        ActionProvider actionProvider2 = this.B;
        if (actionProvider2 != null) {
            actionProvider2.reset();
        }
        this.A = null;
        this.B = actionProvider;
        this.f1482n.N(true);
        ActionProvider actionProvider3 = this.B;
        if (actionProvider3 != null) {
            actionProvider3.setVisibilityListener(new a());
        }
        return this;
    }

    public void c() {
        this.f1482n.L(this);
    }

    @Override // b1.b, android.view.MenuItem
    public boolean collapseActionView() {
        if ((this.f1494z & 8) == 0) {
            return false;
        }
        if (this.A == null) {
            return true;
        }
        MenuItem.OnActionExpandListener onActionExpandListener = this.C;
        if (onActionExpandListener == null || onActionExpandListener.onMenuItemActionCollapse(this)) {
            return this.f1482n.f(this);
        }
        return false;
    }

    @Override // b1.b, android.view.MenuItem
    public boolean expandActionView() {
        if (!j()) {
            return false;
        }
        MenuItem.OnActionExpandListener onActionExpandListener = this.C;
        if (onActionExpandListener == null || onActionExpandListener.onMenuItemActionExpand(this)) {
            return this.f1482n.m(this);
        }
        return false;
    }

    public int f() {
        return this.f1472d;
    }

    char g() {
        return this.f1482n.J() ? this.f1478j : this.f1476h;
    }

    @Override // android.view.MenuItem
    public android.view.ActionProvider getActionProvider() {
        throw new UnsupportedOperationException("This is not supported, use MenuItemCompat.getActionProvider()");
    }

    @Override // b1.b, android.view.MenuItem
    public View getActionView() {
        View view = this.A;
        if (view != null) {
            return view;
        }
        ActionProvider actionProvider = this.B;
        if (actionProvider == null) {
            return null;
        }
        View viewOnCreateActionView = actionProvider.onCreateActionView(this);
        this.A = viewOnCreateActionView;
        return viewOnCreateActionView;
    }

    @Override // b1.b, android.view.MenuItem
    public int getAlphabeticModifiers() {
        return this.f1479k;
    }

    @Override // android.view.MenuItem
    public char getAlphabeticShortcut() {
        return this.f1478j;
    }

    @Override // b1.b, android.view.MenuItem
    public CharSequence getContentDescription() {
        return this.f1486r;
    }

    @Override // android.view.MenuItem
    public int getGroupId() {
        return this.f1470b;
    }

    @Override // android.view.MenuItem
    public Drawable getIcon() {
        Drawable drawable = this.f1480l;
        if (drawable != null) {
            return e(drawable);
        }
        if (this.f1481m == 0) {
            return null;
        }
        Drawable drawableB = g.a.b(this.f1482n.w(), this.f1481m);
        this.f1481m = 0;
        this.f1480l = drawableB;
        return e(drawableB);
    }

    @Override // b1.b, android.view.MenuItem
    public ColorStateList getIconTintList() {
        return this.f1488t;
    }

    @Override // b1.b, android.view.MenuItem
    public PorterDuff.Mode getIconTintMode() {
        return this.f1489u;
    }

    @Override // android.view.MenuItem
    public Intent getIntent() {
        return this.f1475g;
    }

    @Override // android.view.MenuItem
    public int getItemId() {
        return this.f1469a;
    }

    @Override // android.view.MenuItem
    public ContextMenu.ContextMenuInfo getMenuInfo() {
        return this.E;
    }

    @Override // b1.b, android.view.MenuItem
    public int getNumericModifiers() {
        return this.f1477i;
    }

    @Override // android.view.MenuItem
    public char getNumericShortcut() {
        return this.f1476h;
    }

    @Override // android.view.MenuItem
    public int getOrder() {
        return this.f1471c;
    }

    @Override // android.view.MenuItem
    public SubMenu getSubMenu() {
        return this.f1483o;
    }

    @Override // android.view.MenuItem
    public CharSequence getTitle() {
        return this.f1473e;
    }

    @Override // android.view.MenuItem
    public CharSequence getTitleCondensed() {
        CharSequence charSequence = this.f1474f;
        return charSequence != null ? charSequence : this.f1473e;
    }

    @Override // b1.b, android.view.MenuItem
    public CharSequence getTooltipText() {
        return this.f1487s;
    }

    String h() {
        char cG = g();
        if (cG == 0) {
            return "";
        }
        Resources resources = this.f1482n.w().getResources();
        StringBuilder sb2 = new StringBuilder();
        if (ViewConfiguration.get(this.f1482n.w()).hasPermanentMenuKey()) {
            sb2.append(resources.getString(R$string.abc_prepend_shortcut_label));
        }
        int i11 = this.f1482n.J() ? this.f1479k : this.f1477i;
        d(sb2, i11, 65536, resources.getString(R$string.abc_menu_meta_shortcut_label));
        d(sb2, i11, 4096, resources.getString(R$string.abc_menu_ctrl_shortcut_label));
        d(sb2, i11, 2, resources.getString(R$string.abc_menu_alt_shortcut_label));
        d(sb2, i11, 1, resources.getString(R$string.abc_menu_shift_shortcut_label));
        d(sb2, i11, 4, resources.getString(R$string.abc_menu_sym_shortcut_label));
        d(sb2, i11, 8, resources.getString(R$string.abc_menu_function_shortcut_label));
        if (cG == '\b') {
            sb2.append(resources.getString(R$string.abc_menu_delete_shortcut_label));
        } else if (cG == '\n') {
            sb2.append(resources.getString(R$string.abc_menu_enter_shortcut_label));
        } else if (cG != ' ') {
            sb2.append(cG);
        } else {
            sb2.append(resources.getString(R$string.abc_menu_space_shortcut_label));
        }
        return sb2.toString();
    }

    @Override // android.view.MenuItem
    public boolean hasSubMenu() {
        return this.f1483o != null;
    }

    CharSequence i(m.a aVar) {
        return (aVar == null || !aVar.prefersCondensedTitle()) ? getTitle() : getTitleCondensed();
    }

    @Override // b1.b, android.view.MenuItem
    public boolean isActionViewExpanded() {
        return this.D;
    }

    @Override // android.view.MenuItem
    public boolean isCheckable() {
        return (this.f1493y & 1) == 1;
    }

    @Override // android.view.MenuItem
    public boolean isChecked() {
        return (this.f1493y & 2) == 2;
    }

    @Override // android.view.MenuItem
    public boolean isEnabled() {
        return (this.f1493y & 16) != 0;
    }

    @Override // android.view.MenuItem
    public boolean isVisible() {
        ActionProvider actionProvider = this.B;
        if (actionProvider == null || !actionProvider.overridesItemVisibility()) {
            return (this.f1493y & 8) == 0;
        }
        return (this.f1493y & 8) == 0 && this.B.isVisible();
    }

    public boolean j() {
        ActionProvider actionProvider;
        if ((this.f1494z & 8) == 0) {
            return false;
        }
        if (this.A == null && (actionProvider = this.B) != null) {
            this.A = actionProvider.onCreateActionView(this);
        }
        return this.A != null;
    }

    public boolean k() {
        MenuItem.OnMenuItemClickListener onMenuItemClickListener = this.f1485q;
        if (onMenuItemClickListener != null && onMenuItemClickListener.onMenuItemClick(this)) {
            return true;
        }
        f fVar = this.f1482n;
        if (fVar.h(fVar, this)) {
            return true;
        }
        Runnable runnable = this.f1484p;
        if (runnable != null) {
            runnable.run();
            return true;
        }
        if (this.f1475g != null) {
            try {
                this.f1482n.w().startActivity(this.f1475g);
                return true;
            } catch (ActivityNotFoundException e11) {
                Log.e("MenuItemImpl", "Can't find activity to handle intent; ignoring", e11);
            }
        }
        ActionProvider actionProvider = this.B;
        return actionProvider != null && actionProvider.onPerformDefaultAction();
    }

    public boolean l() {
        return (this.f1493y & 32) == 32;
    }

    public boolean m() {
        return (this.f1493y & 4) != 0;
    }

    public boolean n() {
        return (this.f1494z & 1) == 1;
    }

    public boolean o() {
        return (this.f1494z & 2) == 2;
    }

    @Override // b1.b, android.view.MenuItem
    /* JADX INFO: renamed from: p, reason: merged with bridge method [inline-methods] */
    public b1.b setActionView(int i11) {
        Context contextW = this.f1482n.w();
        setActionView(LayoutInflater.from(contextW).inflate(i11, (ViewGroup) new LinearLayout(contextW), false));
        return this;
    }

    @Override // b1.b, android.view.MenuItem
    /* JADX INFO: renamed from: q, reason: merged with bridge method [inline-methods] */
    public b1.b setActionView(View view) {
        int i11;
        this.A = view;
        this.B = null;
        if (view != null && view.getId() == -1 && (i11 = this.f1469a) > 0) {
            view.setId(i11);
        }
        this.f1482n.L(this);
        return this;
    }

    public void r(boolean z10) {
        this.D = z10;
        this.f1482n.N(false);
    }

    void s(boolean z10) {
        int i11 = this.f1493y;
        int i12 = (z10 ? 2 : 0) | (i11 & (-3));
        this.f1493y = i12;
        if (i11 != i12) {
            this.f1482n.N(false);
        }
    }

    @Override // android.view.MenuItem
    public MenuItem setActionProvider(android.view.ActionProvider actionProvider) {
        throw new UnsupportedOperationException("This is not supported, use MenuItemCompat.setActionProvider()");
    }

    @Override // android.view.MenuItem
    public MenuItem setAlphabeticShortcut(char c11) {
        if (this.f1478j == c11) {
            return this;
        }
        this.f1478j = Character.toLowerCase(c11);
        this.f1482n.N(false);
        return this;
    }

    @Override // b1.b, android.view.MenuItem
    public MenuItem setAlphabeticShortcut(char c11, int i11) {
        if (this.f1478j == c11 && this.f1479k == i11) {
            return this;
        }
        this.f1478j = Character.toLowerCase(c11);
        this.f1479k = KeyEvent.normalizeMetaState(i11);
        this.f1482n.N(false);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setCheckable(boolean z10) {
        int i11 = this.f1493y;
        int i12 = (z10 ? 1 : 0) | (i11 & (-2));
        this.f1493y = i12;
        if (i11 != i12) {
            this.f1482n.N(false);
        }
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setChecked(boolean z10) {
        if ((this.f1493y & 4) != 0) {
            this.f1482n.Y(this);
        } else {
            s(z10);
        }
        return this;
    }

    @Override // android.view.MenuItem
    public b1.b setContentDescription(CharSequence charSequence) {
        this.f1486r = charSequence;
        this.f1482n.N(false);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setEnabled(boolean z10) {
        if (z10) {
            this.f1493y |= 16;
        } else {
            this.f1493y &= -17;
        }
        this.f1482n.N(false);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIcon(int i11) {
        this.f1480l = null;
        this.f1481m = i11;
        this.f1492x = true;
        this.f1482n.N(false);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIcon(Drawable drawable) {
        this.f1481m = 0;
        this.f1480l = drawable;
        this.f1492x = true;
        this.f1482n.N(false);
        return this;
    }

    @Override // b1.b, android.view.MenuItem
    public MenuItem setIconTintList(ColorStateList colorStateList) {
        this.f1488t = colorStateList;
        this.f1490v = true;
        this.f1492x = true;
        this.f1482n.N(false);
        return this;
    }

    @Override // b1.b, android.view.MenuItem
    public MenuItem setIconTintMode(PorterDuff.Mode mode) {
        this.f1489u = mode;
        this.f1491w = true;
        this.f1492x = true;
        this.f1482n.N(false);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIntent(Intent intent) {
        this.f1475g = intent;
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setNumericShortcut(char c11) {
        if (this.f1476h == c11) {
            return this;
        }
        this.f1476h = c11;
        this.f1482n.N(false);
        return this;
    }

    @Override // b1.b, android.view.MenuItem
    public MenuItem setNumericShortcut(char c11, int i11) {
        if (this.f1476h == c11 && this.f1477i == i11) {
            return this;
        }
        this.f1476h = c11;
        this.f1477i = KeyEvent.normalizeMetaState(i11);
        this.f1482n.N(false);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setOnActionExpandListener(MenuItem.OnActionExpandListener onActionExpandListener) {
        this.C = onActionExpandListener;
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setOnMenuItemClickListener(MenuItem.OnMenuItemClickListener onMenuItemClickListener) {
        this.f1485q = onMenuItemClickListener;
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setShortcut(char c11, char c12) {
        this.f1476h = c11;
        this.f1478j = Character.toLowerCase(c12);
        this.f1482n.N(false);
        return this;
    }

    @Override // b1.b, android.view.MenuItem
    public MenuItem setShortcut(char c11, char c12, int i11, int i12) {
        this.f1476h = c11;
        this.f1477i = KeyEvent.normalizeMetaState(i11);
        this.f1478j = Character.toLowerCase(c12);
        this.f1479k = KeyEvent.normalizeMetaState(i12);
        this.f1482n.N(false);
        return this;
    }

    @Override // b1.b, android.view.MenuItem
    public void setShowAsAction(int i11) {
        int i12 = i11 & 3;
        if (i12 != 0 && i12 != 1 && i12 != 2) {
            throw new IllegalArgumentException("SHOW_AS_ACTION_ALWAYS, SHOW_AS_ACTION_IF_ROOM, and SHOW_AS_ACTION_NEVER are mutually exclusive.");
        }
        this.f1494z = i11;
        this.f1482n.L(this);
    }

    @Override // android.view.MenuItem
    public MenuItem setTitle(int i11) {
        return setTitle(this.f1482n.w().getString(i11));
    }

    @Override // android.view.MenuItem
    public MenuItem setTitle(CharSequence charSequence) {
        this.f1473e = charSequence;
        this.f1482n.N(false);
        q qVar = this.f1483o;
        if (qVar != null) {
            qVar.setHeaderTitle(charSequence);
        }
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setTitleCondensed(CharSequence charSequence) {
        this.f1474f = charSequence;
        this.f1482n.N(false);
        return this;
    }

    @Override // android.view.MenuItem
    public b1.b setTooltipText(CharSequence charSequence) {
        this.f1487s = charSequence;
        this.f1482n.N(false);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setVisible(boolean z10) {
        if (y(z10)) {
            this.f1482n.M(this);
        }
        return this;
    }

    public void t(boolean z10) {
        this.f1493y = (z10 ? 4 : 0) | (this.f1493y & (-5));
    }

    public String toString() {
        CharSequence charSequence = this.f1473e;
        if (charSequence != null) {
            return charSequence.toString();
        }
        return null;
    }

    public void u(boolean z10) {
        if (z10) {
            this.f1493y |= 32;
        } else {
            this.f1493y &= -33;
        }
    }

    void v(ContextMenu.ContextMenuInfo contextMenuInfo) {
        this.E = contextMenuInfo;
    }

    @Override // b1.b, android.view.MenuItem
    /* JADX INFO: renamed from: w, reason: merged with bridge method [inline-methods] */
    public b1.b setShowAsActionFlags(int i11) {
        setShowAsAction(i11);
        return this;
    }

    public void x(q qVar) {
        this.f1483o = qVar;
        qVar.setHeaderTitle(getTitle());
    }

    boolean y(boolean z10) {
        int i11 = this.f1493y;
        int i12 = (z10 ? 0 : 8) | (i11 & (-9));
        this.f1493y = i12;
        return i11 != i12;
    }

    public boolean z() {
        return this.f1482n.C();
    }
}
