package androidx.appcompat.view.menu;

import android.content.Context;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.view.ContextMenu;
import android.view.KeyEvent;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import androidx.core.view.ActionProvider;

/* JADX INFO: loaded from: classes.dex */
public class a implements b1.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f1388a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f1389b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f1390c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private CharSequence f1391d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private CharSequence f1392e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Intent f1393f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private char f1394g;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private char f1396i;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private Drawable f1398k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private Context f1399l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private MenuItem.OnMenuItemClickListener f1400m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private CharSequence f1401n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private CharSequence f1402o;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f1395h = 4096;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f1397j = 4096;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private ColorStateList f1403p = null;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private PorterDuff.Mode f1404q = null;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private boolean f1405r = false;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private boolean f1406s = false;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private int f1407t = 16;

    public a(Context context, int i11, int i12, int i13, int i14, CharSequence charSequence) {
        this.f1399l = context;
        this.f1388a = i12;
        this.f1389b = i11;
        this.f1390c = i14;
        this.f1391d = charSequence;
    }

    private void c() {
        Drawable drawable = this.f1398k;
        if (drawable != null) {
            if (this.f1405r || this.f1406s) {
                Drawable drawableR = a1.a.r(drawable);
                this.f1398k = drawableR;
                Drawable drawableMutate = drawableR.mutate();
                this.f1398k = drawableMutate;
                if (this.f1405r) {
                    a1.a.o(drawableMutate, this.f1403p);
                }
                if (this.f1406s) {
                    a1.a.p(this.f1398k, this.f1404q);
                }
            }
        }
    }

    @Override // b1.b
    public ActionProvider a() {
        return null;
    }

    @Override // b1.b
    public b1.b b(ActionProvider actionProvider) {
        throw new UnsupportedOperationException();
    }

    @Override // b1.b, android.view.MenuItem
    public boolean collapseActionView() {
        return false;
    }

    @Override // b1.b, android.view.MenuItem
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public b1.b setActionView(int i11) {
        throw new UnsupportedOperationException();
    }

    @Override // b1.b, android.view.MenuItem
    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public b1.b setActionView(View view) {
        throw new UnsupportedOperationException();
    }

    @Override // b1.b, android.view.MenuItem
    public boolean expandActionView() {
        return false;
    }

    @Override // b1.b, android.view.MenuItem
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public b1.b setShowAsActionFlags(int i11) {
        setShowAsAction(i11);
        return this;
    }

    @Override // android.view.MenuItem
    public android.view.ActionProvider getActionProvider() {
        throw new UnsupportedOperationException();
    }

    @Override // b1.b, android.view.MenuItem
    public View getActionView() {
        return null;
    }

    @Override // b1.b, android.view.MenuItem
    public int getAlphabeticModifiers() {
        return this.f1397j;
    }

    @Override // android.view.MenuItem
    public char getAlphabeticShortcut() {
        return this.f1396i;
    }

    @Override // b1.b, android.view.MenuItem
    public CharSequence getContentDescription() {
        return this.f1401n;
    }

    @Override // android.view.MenuItem
    public int getGroupId() {
        return this.f1389b;
    }

    @Override // android.view.MenuItem
    public Drawable getIcon() {
        return this.f1398k;
    }

    @Override // b1.b, android.view.MenuItem
    public ColorStateList getIconTintList() {
        return this.f1403p;
    }

    @Override // b1.b, android.view.MenuItem
    public PorterDuff.Mode getIconTintMode() {
        return this.f1404q;
    }

    @Override // android.view.MenuItem
    public Intent getIntent() {
        return this.f1393f;
    }

    @Override // android.view.MenuItem
    public int getItemId() {
        return this.f1388a;
    }

    @Override // android.view.MenuItem
    public ContextMenu.ContextMenuInfo getMenuInfo() {
        return null;
    }

    @Override // b1.b, android.view.MenuItem
    public int getNumericModifiers() {
        return this.f1395h;
    }

    @Override // android.view.MenuItem
    public char getNumericShortcut() {
        return this.f1394g;
    }

    @Override // android.view.MenuItem
    public int getOrder() {
        return this.f1390c;
    }

    @Override // android.view.MenuItem
    public SubMenu getSubMenu() {
        return null;
    }

    @Override // android.view.MenuItem
    public CharSequence getTitle() {
        return this.f1391d;
    }

    @Override // android.view.MenuItem
    public CharSequence getTitleCondensed() {
        CharSequence charSequence = this.f1392e;
        return charSequence != null ? charSequence : this.f1391d;
    }

    @Override // b1.b, android.view.MenuItem
    public CharSequence getTooltipText() {
        return this.f1402o;
    }

    @Override // android.view.MenuItem
    public boolean hasSubMenu() {
        return false;
    }

    @Override // b1.b, android.view.MenuItem
    public boolean isActionViewExpanded() {
        return false;
    }

    @Override // android.view.MenuItem
    public boolean isCheckable() {
        return (this.f1407t & 1) != 0;
    }

    @Override // android.view.MenuItem
    public boolean isChecked() {
        return (this.f1407t & 2) != 0;
    }

    @Override // android.view.MenuItem
    public boolean isEnabled() {
        return (this.f1407t & 16) != 0;
    }

    @Override // android.view.MenuItem
    public boolean isVisible() {
        return (this.f1407t & 8) == 0;
    }

    @Override // android.view.MenuItem
    public MenuItem setActionProvider(android.view.ActionProvider actionProvider) {
        throw new UnsupportedOperationException();
    }

    @Override // android.view.MenuItem
    public MenuItem setAlphabeticShortcut(char c11) {
        this.f1396i = Character.toLowerCase(c11);
        return this;
    }

    @Override // b1.b, android.view.MenuItem
    public MenuItem setAlphabeticShortcut(char c11, int i11) {
        this.f1396i = Character.toLowerCase(c11);
        this.f1397j = KeyEvent.normalizeMetaState(i11);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setCheckable(boolean z10) {
        this.f1407t = (z10 ? 1 : 0) | (this.f1407t & (-2));
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setChecked(boolean z10) {
        this.f1407t = (z10 ? 2 : 0) | (this.f1407t & (-3));
        return this;
    }

    @Override // android.view.MenuItem
    public b1.b setContentDescription(CharSequence charSequence) {
        this.f1401n = charSequence;
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setEnabled(boolean z10) {
        this.f1407t = (z10 ? 16 : 0) | (this.f1407t & (-17));
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIcon(int i11) {
        this.f1398k = androidx.core.content.b.getDrawable(this.f1399l, i11);
        c();
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIcon(Drawable drawable) {
        this.f1398k = drawable;
        c();
        return this;
    }

    @Override // b1.b, android.view.MenuItem
    public MenuItem setIconTintList(ColorStateList colorStateList) {
        this.f1403p = colorStateList;
        this.f1405r = true;
        c();
        return this;
    }

    @Override // b1.b, android.view.MenuItem
    public MenuItem setIconTintMode(PorterDuff.Mode mode) {
        this.f1404q = mode;
        this.f1406s = true;
        c();
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIntent(Intent intent) {
        this.f1393f = intent;
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setNumericShortcut(char c11) {
        this.f1394g = c11;
        return this;
    }

    @Override // b1.b, android.view.MenuItem
    public MenuItem setNumericShortcut(char c11, int i11) {
        this.f1394g = c11;
        this.f1395h = KeyEvent.normalizeMetaState(i11);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setOnActionExpandListener(MenuItem.OnActionExpandListener onActionExpandListener) {
        throw new UnsupportedOperationException();
    }

    @Override // android.view.MenuItem
    public MenuItem setOnMenuItemClickListener(MenuItem.OnMenuItemClickListener onMenuItemClickListener) {
        this.f1400m = onMenuItemClickListener;
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setShortcut(char c11, char c12) {
        this.f1394g = c11;
        this.f1396i = Character.toLowerCase(c12);
        return this;
    }

    @Override // b1.b, android.view.MenuItem
    public MenuItem setShortcut(char c11, char c12, int i11, int i12) {
        this.f1394g = c11;
        this.f1395h = KeyEvent.normalizeMetaState(i11);
        this.f1396i = Character.toLowerCase(c12);
        this.f1397j = KeyEvent.normalizeMetaState(i12);
        return this;
    }

    @Override // b1.b, android.view.MenuItem
    public void setShowAsAction(int i11) {
    }

    @Override // android.view.MenuItem
    public MenuItem setTitle(int i11) {
        this.f1391d = this.f1399l.getResources().getString(i11);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setTitle(CharSequence charSequence) {
        this.f1391d = charSequence;
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setTitleCondensed(CharSequence charSequence) {
        this.f1392e = charSequence;
        return this;
    }

    @Override // android.view.MenuItem
    public b1.b setTooltipText(CharSequence charSequence) {
        this.f1402o = charSequence;
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setVisible(boolean z10) {
        this.f1407t = (this.f1407t & 8) | (z10 ? 0 : 8);
        return this;
    }
}
