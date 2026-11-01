package androidx.appcompat.view.menu;

import android.content.Context;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.Log;
import android.view.CollapsibleActionView;
import android.view.ContextMenu;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import android.widget.FrameLayout;
import androidx.core.view.ActionProvider;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes.dex */
public class i extends androidx.appcompat.view.menu.c implements MenuItem {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final b1.b f1496d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Method f1497e;

    private class a extends ActionProvider implements android.view.ActionProvider.VisibilityListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private ActionProvider.VisibilityListener f1498a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final android.view.ActionProvider f1499b;

        a(Context context, android.view.ActionProvider actionProvider) {
            super(context);
            this.f1499b = actionProvider;
        }

        @Override // androidx.core.view.ActionProvider
        public boolean hasSubMenu() {
            return this.f1499b.hasSubMenu();
        }

        @Override // androidx.core.view.ActionProvider
        public boolean isVisible() {
            return this.f1499b.isVisible();
        }

        @Override // android.view.ActionProvider.VisibilityListener
        public void onActionProviderVisibilityChanged(boolean z10) {
            ActionProvider.VisibilityListener visibilityListener = this.f1498a;
            if (visibilityListener != null) {
                visibilityListener.onActionProviderVisibilityChanged(z10);
            }
        }

        @Override // androidx.core.view.ActionProvider
        public View onCreateActionView() {
            return this.f1499b.onCreateActionView();
        }

        @Override // androidx.core.view.ActionProvider
        public View onCreateActionView(MenuItem menuItem) {
            return this.f1499b.onCreateActionView(menuItem);
        }

        @Override // androidx.core.view.ActionProvider
        public boolean onPerformDefaultAction() {
            return this.f1499b.onPerformDefaultAction();
        }

        @Override // androidx.core.view.ActionProvider
        public void onPrepareSubMenu(SubMenu subMenu) {
            this.f1499b.onPrepareSubMenu(i.this.d(subMenu));
        }

        @Override // androidx.core.view.ActionProvider
        public boolean overridesItemVisibility() {
            return this.f1499b.overridesItemVisibility();
        }

        @Override // androidx.core.view.ActionProvider
        public void refreshVisibility() {
            this.f1499b.refreshVisibility();
        }

        @Override // androidx.core.view.ActionProvider
        public void setVisibilityListener(ActionProvider.VisibilityListener visibilityListener) {
            this.f1498a = visibilityListener;
            this.f1499b.setVisibilityListener(visibilityListener != null ? this : null);
        }
    }

    static class b extends FrameLayout implements androidx.appcompat.view.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final CollapsibleActionView f1501a;

        /* JADX WARN: Multi-variable type inference failed */
        b(View view) {
            super(view.getContext());
            this.f1501a = (CollapsibleActionView) view;
            addView(view);
        }

        View a() {
            return (View) this.f1501a;
        }

        @Override // androidx.appcompat.view.c
        public void onActionViewCollapsed() {
            this.f1501a.onActionViewCollapsed();
        }

        @Override // androidx.appcompat.view.c
        public void onActionViewExpanded() {
            this.f1501a.onActionViewExpanded();
        }
    }

    private class c implements MenuItem.OnActionExpandListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final MenuItem.OnActionExpandListener f1502a;

        c(MenuItem.OnActionExpandListener onActionExpandListener) {
            this.f1502a = onActionExpandListener;
        }

        @Override // android.view.MenuItem.OnActionExpandListener
        public boolean onMenuItemActionCollapse(MenuItem menuItem) {
            return this.f1502a.onMenuItemActionCollapse(i.this.c(menuItem));
        }

        @Override // android.view.MenuItem.OnActionExpandListener
        public boolean onMenuItemActionExpand(MenuItem menuItem) {
            return this.f1502a.onMenuItemActionExpand(i.this.c(menuItem));
        }
    }

    private class d implements MenuItem.OnMenuItemClickListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final MenuItem.OnMenuItemClickListener f1504a;

        d(MenuItem.OnMenuItemClickListener onMenuItemClickListener) {
            this.f1504a = onMenuItemClickListener;
        }

        @Override // android.view.MenuItem.OnMenuItemClickListener
        public boolean onMenuItemClick(MenuItem menuItem) {
            return this.f1504a.onMenuItemClick(i.this.c(menuItem));
        }
    }

    public i(Context context, b1.b bVar) {
        super(context);
        if (bVar == null) {
            throw new IllegalArgumentException("Wrapped Object can not be null.");
        }
        this.f1496d = bVar;
    }

    @Override // android.view.MenuItem
    public boolean collapseActionView() {
        return this.f1496d.collapseActionView();
    }

    @Override // android.view.MenuItem
    public boolean expandActionView() {
        return this.f1496d.expandActionView();
    }

    @Override // android.view.MenuItem
    public android.view.ActionProvider getActionProvider() {
        ActionProvider actionProviderA = this.f1496d.a();
        if (actionProviderA instanceof a) {
            return ((a) actionProviderA).f1499b;
        }
        return null;
    }

    @Override // android.view.MenuItem
    public View getActionView() {
        View actionView = this.f1496d.getActionView();
        return actionView instanceof b ? ((b) actionView).a() : actionView;
    }

    @Override // android.view.MenuItem
    public int getAlphabeticModifiers() {
        return this.f1496d.getAlphabeticModifiers();
    }

    @Override // android.view.MenuItem
    public char getAlphabeticShortcut() {
        return this.f1496d.getAlphabeticShortcut();
    }

    @Override // android.view.MenuItem
    public CharSequence getContentDescription() {
        return this.f1496d.getContentDescription();
    }

    @Override // android.view.MenuItem
    public int getGroupId() {
        return this.f1496d.getGroupId();
    }

    @Override // android.view.MenuItem
    public Drawable getIcon() {
        return this.f1496d.getIcon();
    }

    @Override // android.view.MenuItem
    public ColorStateList getIconTintList() {
        return this.f1496d.getIconTintList();
    }

    @Override // android.view.MenuItem
    public PorterDuff.Mode getIconTintMode() {
        return this.f1496d.getIconTintMode();
    }

    @Override // android.view.MenuItem
    public Intent getIntent() {
        return this.f1496d.getIntent();
    }

    @Override // android.view.MenuItem
    public int getItemId() {
        return this.f1496d.getItemId();
    }

    @Override // android.view.MenuItem
    public ContextMenu.ContextMenuInfo getMenuInfo() {
        return this.f1496d.getMenuInfo();
    }

    @Override // android.view.MenuItem
    public int getNumericModifiers() {
        return this.f1496d.getNumericModifiers();
    }

    @Override // android.view.MenuItem
    public char getNumericShortcut() {
        return this.f1496d.getNumericShortcut();
    }

    @Override // android.view.MenuItem
    public int getOrder() {
        return this.f1496d.getOrder();
    }

    @Override // android.view.MenuItem
    public SubMenu getSubMenu() {
        return d(this.f1496d.getSubMenu());
    }

    @Override // android.view.MenuItem
    public CharSequence getTitle() {
        return this.f1496d.getTitle();
    }

    @Override // android.view.MenuItem
    public CharSequence getTitleCondensed() {
        return this.f1496d.getTitleCondensed();
    }

    @Override // android.view.MenuItem
    public CharSequence getTooltipText() {
        return this.f1496d.getTooltipText();
    }

    public void h(boolean z10) {
        try {
            if (this.f1497e == null) {
                this.f1497e = this.f1496d.getClass().getDeclaredMethod("setExclusiveCheckable", Boolean.TYPE);
            }
            this.f1497e.invoke(this.f1496d, Boolean.valueOf(z10));
        } catch (Exception e11) {
            Log.w("MenuItemWrapper", "Error while calling setExclusiveCheckable", e11);
        }
    }

    @Override // android.view.MenuItem
    public boolean hasSubMenu() {
        return this.f1496d.hasSubMenu();
    }

    @Override // android.view.MenuItem
    public boolean isActionViewExpanded() {
        return this.f1496d.isActionViewExpanded();
    }

    @Override // android.view.MenuItem
    public boolean isCheckable() {
        return this.f1496d.isCheckable();
    }

    @Override // android.view.MenuItem
    public boolean isChecked() {
        return this.f1496d.isChecked();
    }

    @Override // android.view.MenuItem
    public boolean isEnabled() {
        return this.f1496d.isEnabled();
    }

    @Override // android.view.MenuItem
    public boolean isVisible() {
        return this.f1496d.isVisible();
    }

    @Override // android.view.MenuItem
    public MenuItem setActionProvider(android.view.ActionProvider actionProvider) {
        a aVar = new a(this.f1418a, actionProvider);
        b1.b bVar = this.f1496d;
        if (actionProvider == null) {
            aVar = null;
        }
        bVar.b(aVar);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setActionView(int i11) {
        this.f1496d.setActionView(i11);
        View actionView = this.f1496d.getActionView();
        if (actionView instanceof CollapsibleActionView) {
            this.f1496d.setActionView(new b(actionView));
        }
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setActionView(View view) {
        if (view instanceof CollapsibleActionView) {
            view = new b(view);
        }
        this.f1496d.setActionView(view);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setAlphabeticShortcut(char c11) {
        this.f1496d.setAlphabeticShortcut(c11);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setAlphabeticShortcut(char c11, int i11) {
        this.f1496d.setAlphabeticShortcut(c11, i11);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setCheckable(boolean z10) {
        this.f1496d.setCheckable(z10);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setChecked(boolean z10) {
        this.f1496d.setChecked(z10);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setContentDescription(CharSequence charSequence) {
        this.f1496d.setContentDescription(charSequence);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setEnabled(boolean z10) {
        this.f1496d.setEnabled(z10);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIcon(int i11) {
        this.f1496d.setIcon(i11);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIcon(Drawable drawable) {
        this.f1496d.setIcon(drawable);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIconTintList(ColorStateList colorStateList) {
        this.f1496d.setIconTintList(colorStateList);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIconTintMode(PorterDuff.Mode mode) {
        this.f1496d.setIconTintMode(mode);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIntent(Intent intent) {
        this.f1496d.setIntent(intent);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setNumericShortcut(char c11) {
        this.f1496d.setNumericShortcut(c11);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setNumericShortcut(char c11, int i11) {
        this.f1496d.setNumericShortcut(c11, i11);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setOnActionExpandListener(MenuItem.OnActionExpandListener onActionExpandListener) {
        this.f1496d.setOnActionExpandListener(onActionExpandListener != null ? new c(onActionExpandListener) : null);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setOnMenuItemClickListener(MenuItem.OnMenuItemClickListener onMenuItemClickListener) {
        this.f1496d.setOnMenuItemClickListener(onMenuItemClickListener != null ? new d(onMenuItemClickListener) : null);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setShortcut(char c11, char c12) {
        this.f1496d.setShortcut(c11, c12);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setShortcut(char c11, char c12, int i11, int i12) {
        this.f1496d.setShortcut(c11, c12, i11, i12);
        return this;
    }

    @Override // android.view.MenuItem
    public void setShowAsAction(int i11) {
        this.f1496d.setShowAsAction(i11);
    }

    @Override // android.view.MenuItem
    public MenuItem setShowAsActionFlags(int i11) {
        this.f1496d.setShowAsActionFlags(i11);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setTitle(int i11) {
        this.f1496d.setTitle(i11);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setTitle(CharSequence charSequence) {
        this.f1496d.setTitle(charSequence);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setTitleCondensed(CharSequence charSequence) {
        this.f1496d.setTitleCondensed(charSequence);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setTooltipText(CharSequence charSequence) {
        this.f1496d.setTooltipText(charSequence);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setVisible(boolean z10) {
        return this.f1496d.setVisible(z10);
    }
}
