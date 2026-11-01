package androidx.appcompat.view;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.PorterDuff;
import android.util.AttributeSet;
import android.util.Log;
import android.util.Xml;
import android.view.InflateException;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import androidx.appcompat.R$styleable;
import androidx.appcompat.widget.j0;
import androidx.appcompat.widget.y;
import androidx.core.view.ActionProvider;
import androidx.core.view.MenuItemCompat;
import com.tn.lib.view.FlowLayout;
import com.transsion.web.api.WebConstants;
import java.io.IOException;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import okhttp3.internal.http2.Settings;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes.dex */
public class g extends MenuInflater {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    static final Class[] f1280e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    static final Class[] f1281f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final Object[] f1282a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final Object[] f1283b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    Context f1284c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Object f1285d;

    private static class a implements MenuItem.OnMenuItemClickListener {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static final Class[] f1286c = {MenuItem.class};

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Object f1287a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private Method f1288b;

        public a(Object obj, String str) {
            this.f1287a = obj;
            Class<?> cls = obj.getClass();
            try {
                this.f1288b = cls.getMethod(str, f1286c);
            } catch (Exception e11) {
                InflateException inflateException = new InflateException("Couldn't resolve menu item onClick handler " + str + " in class " + cls.getName());
                inflateException.initCause(e11);
                throw inflateException;
            }
        }

        @Override // android.view.MenuItem.OnMenuItemClickListener
        public boolean onMenuItemClick(MenuItem menuItem) {
            try {
                if (this.f1288b.getReturnType() == Boolean.TYPE) {
                    return ((Boolean) this.f1288b.invoke(this.f1287a, menuItem)).booleanValue();
                }
                this.f1288b.invoke(this.f1287a, menuItem);
                return true;
            } catch (Exception e11) {
                throw new RuntimeException(e11);
            }
        }
    }

    private class b {
        ActionProvider A;
        private CharSequence B;
        private CharSequence C;
        private ColorStateList D = null;
        private PorterDuff.Mode E = null;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Menu f1289a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f1290b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private int f1291c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f1292d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private int f1293e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private boolean f1294f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private boolean f1295g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private boolean f1296h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private int f1297i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private int f1298j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private CharSequence f1299k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private CharSequence f1300l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        private int f1301m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        private char f1302n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private int f1303o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        private char f1304p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        private int f1305q;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        private int f1306r;

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        private boolean f1307s;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        private boolean f1308t;

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        private boolean f1309u;

        /* JADX INFO: renamed from: v, reason: collision with root package name */
        private int f1310v;

        /* JADX INFO: renamed from: w, reason: collision with root package name */
        private int f1311w;

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        private String f1312x;

        /* JADX INFO: renamed from: y, reason: collision with root package name */
        private String f1313y;

        /* JADX INFO: renamed from: z, reason: collision with root package name */
        private String f1314z;

        public b(Menu menu) {
            this.f1289a = menu;
            h();
        }

        private char c(String str) {
            if (str == null) {
                return (char) 0;
            }
            return str.charAt(0);
        }

        private Object e(String str, Class[] clsArr, Object[] objArr) {
            try {
                Constructor<?> constructor = Class.forName(str, false, g.this.f1284c.getClassLoader()).getConstructor(clsArr);
                constructor.setAccessible(true);
                return constructor.newInstance(objArr);
            } catch (Exception e11) {
                Log.w("SupportMenuInflater", "Cannot instantiate class: " + str, e11);
                return null;
            }
        }

        private void i(MenuItem menuItem) {
            boolean z10 = false;
            menuItem.setChecked(this.f1307s).setVisible(this.f1308t).setEnabled(this.f1309u).setCheckable(this.f1306r >= 1).setTitleCondensed(this.f1300l).setIcon(this.f1301m);
            int i11 = this.f1310v;
            if (i11 >= 0) {
                menuItem.setShowAsAction(i11);
            }
            if (this.f1314z != null) {
                if (g.this.f1284c.isRestricted()) {
                    throw new IllegalStateException("The android:onClick attribute cannot be used within a restricted context");
                }
                menuItem.setOnMenuItemClickListener(new a(g.this.b(), this.f1314z));
            }
            if (this.f1306r >= 2) {
                if (menuItem instanceof androidx.appcompat.view.menu.h) {
                    ((androidx.appcompat.view.menu.h) menuItem).t(true);
                } else if (menuItem instanceof androidx.appcompat.view.menu.i) {
                    ((androidx.appcompat.view.menu.i) menuItem).h(true);
                }
            }
            String str = this.f1312x;
            if (str != null) {
                menuItem.setActionView((View) e(str, g.f1280e, g.this.f1282a));
                z10 = true;
            }
            int i12 = this.f1311w;
            if (i12 > 0) {
                if (z10) {
                    Log.w("SupportMenuInflater", "Ignoring attribute 'itemActionViewLayout'. Action view already specified.");
                } else {
                    menuItem.setActionView(i12);
                }
            }
            ActionProvider actionProvider = this.A;
            if (actionProvider != null) {
                MenuItemCompat.setActionProvider(menuItem, actionProvider);
            }
            MenuItemCompat.setContentDescription(menuItem, this.B);
            MenuItemCompat.setTooltipText(menuItem, this.C);
            MenuItemCompat.setAlphabeticShortcut(menuItem, this.f1302n, this.f1303o);
            MenuItemCompat.setNumericShortcut(menuItem, this.f1304p, this.f1305q);
            PorterDuff.Mode mode = this.E;
            if (mode != null) {
                MenuItemCompat.setIconTintMode(menuItem, mode);
            }
            ColorStateList colorStateList = this.D;
            if (colorStateList != null) {
                MenuItemCompat.setIconTintList(menuItem, colorStateList);
            }
        }

        public void a() {
            this.f1296h = true;
            i(this.f1289a.add(this.f1290b, this.f1297i, this.f1298j, this.f1299k));
        }

        public SubMenu b() {
            this.f1296h = true;
            SubMenu subMenuAddSubMenu = this.f1289a.addSubMenu(this.f1290b, this.f1297i, this.f1298j, this.f1299k);
            i(subMenuAddSubMenu.getItem());
            return subMenuAddSubMenu;
        }

        public boolean d() {
            return this.f1296h;
        }

        public void f(AttributeSet attributeSet) {
            TypedArray typedArrayObtainStyledAttributes = g.this.f1284c.obtainStyledAttributes(attributeSet, R$styleable.MenuGroup);
            this.f1290b = typedArrayObtainStyledAttributes.getResourceId(R$styleable.MenuGroup_android_id, 0);
            this.f1291c = typedArrayObtainStyledAttributes.getInt(R$styleable.MenuGroup_android_menuCategory, 0);
            this.f1292d = typedArrayObtainStyledAttributes.getInt(R$styleable.MenuGroup_android_orderInCategory, 0);
            this.f1293e = typedArrayObtainStyledAttributes.getInt(R$styleable.MenuGroup_android_checkableBehavior, 0);
            this.f1294f = typedArrayObtainStyledAttributes.getBoolean(R$styleable.MenuGroup_android_visible, true);
            this.f1295g = typedArrayObtainStyledAttributes.getBoolean(R$styleable.MenuGroup_android_enabled, true);
            typedArrayObtainStyledAttributes.recycle();
        }

        public void g(AttributeSet attributeSet) {
            j0 j0VarU = j0.u(g.this.f1284c, attributeSet, R$styleable.MenuItem);
            this.f1297i = j0VarU.n(R$styleable.MenuItem_android_id, 0);
            this.f1298j = (j0VarU.k(R$styleable.MenuItem_android_menuCategory, this.f1291c) & FlowLayout.SPACING_AUTO) | (j0VarU.k(R$styleable.MenuItem_android_orderInCategory, this.f1292d) & Settings.DEFAULT_INITIAL_WINDOW_SIZE);
            this.f1299k = j0VarU.p(R$styleable.MenuItem_android_title);
            this.f1300l = j0VarU.p(R$styleable.MenuItem_android_titleCondensed);
            this.f1301m = j0VarU.n(R$styleable.MenuItem_android_icon, 0);
            this.f1302n = c(j0VarU.o(R$styleable.MenuItem_android_alphabeticShortcut));
            this.f1303o = j0VarU.k(R$styleable.MenuItem_alphabeticModifiers, 4096);
            this.f1304p = c(j0VarU.o(R$styleable.MenuItem_android_numericShortcut));
            this.f1305q = j0VarU.k(R$styleable.MenuItem_numericModifiers, 4096);
            if (j0VarU.s(R$styleable.MenuItem_android_checkable)) {
                this.f1306r = j0VarU.a(R$styleable.MenuItem_android_checkable, false) ? 1 : 0;
            } else {
                this.f1306r = this.f1293e;
            }
            this.f1307s = j0VarU.a(R$styleable.MenuItem_android_checked, false);
            this.f1308t = j0VarU.a(R$styleable.MenuItem_android_visible, this.f1294f);
            this.f1309u = j0VarU.a(R$styleable.MenuItem_android_enabled, this.f1295g);
            this.f1310v = j0VarU.k(R$styleable.MenuItem_showAsAction, -1);
            this.f1314z = j0VarU.o(R$styleable.MenuItem_android_onClick);
            this.f1311w = j0VarU.n(R$styleable.MenuItem_actionLayout, 0);
            this.f1312x = j0VarU.o(R$styleable.MenuItem_actionViewClass);
            String strO = j0VarU.o(R$styleable.MenuItem_actionProviderClass);
            this.f1313y = strO;
            boolean z10 = strO != null;
            if (z10 && this.f1311w == 0 && this.f1312x == null) {
                this.A = (ActionProvider) e(strO, g.f1281f, g.this.f1283b);
            } else {
                if (z10) {
                    Log.w("SupportMenuInflater", "Ignoring attribute 'actionProviderClass'. Action view already specified.");
                }
                this.A = null;
            }
            this.B = j0VarU.p(R$styleable.MenuItem_contentDescription);
            this.C = j0VarU.p(R$styleable.MenuItem_tooltipText);
            if (j0VarU.s(R$styleable.MenuItem_iconTintMode)) {
                this.E = y.e(j0VarU.k(R$styleable.MenuItem_iconTintMode, -1), this.E);
            } else {
                this.E = null;
            }
            if (j0VarU.s(R$styleable.MenuItem_iconTint)) {
                this.D = j0VarU.c(R$styleable.MenuItem_iconTint);
            } else {
                this.D = null;
            }
            j0VarU.x();
            this.f1296h = false;
        }

        public void h() {
            this.f1290b = 0;
            this.f1291c = 0;
            this.f1292d = 0;
            this.f1293e = 0;
            this.f1294f = true;
            this.f1295g = true;
        }
    }

    static {
        Class[] clsArr = {Context.class};
        f1280e = clsArr;
        f1281f = clsArr;
    }

    public g(Context context) {
        super(context);
        this.f1284c = context;
        Object[] objArr = {context};
        this.f1282a = objArr;
        this.f1283b = objArr;
    }

    private Object a(Object obj) {
        return (!(obj instanceof Activity) && (obj instanceof ContextWrapper)) ? a(((ContextWrapper) obj).getBaseContext()) : obj;
    }

    private void c(XmlPullParser xmlPullParser, AttributeSet attributeSet, Menu menu) throws XmlPullParserException, IOException {
        b bVar = new b(menu);
        int eventType = xmlPullParser.getEventType();
        do {
            if (eventType == 2) {
                String name = xmlPullParser.getName();
                if (name.equals("menu")) {
                    eventType = xmlPullParser.next();
                    break;
                }
                throw new RuntimeException("Expecting menu, got " + name);
            }
            eventType = xmlPullParser.next();
        } while (eventType != 1);
        boolean z10 = false;
        boolean z11 = false;
        String str = null;
        while (!z10) {
            if (eventType == 1) {
                throw new RuntimeException("Unexpected end of document");
            }
            if (eventType != 2) {
                if (eventType == 3) {
                    String name2 = xmlPullParser.getName();
                    if (z11 && name2.equals(str)) {
                        z11 = false;
                        str = null;
                    } else if (name2.equals("group")) {
                        bVar.h();
                    } else if (name2.equals(WebConstants.FIELD_ITEM)) {
                        if (!bVar.d()) {
                            ActionProvider actionProvider = bVar.A;
                            if (actionProvider == null || !actionProvider.hasSubMenu()) {
                                bVar.a();
                            } else {
                                bVar.b();
                            }
                        }
                    } else if (name2.equals("menu")) {
                        z10 = true;
                    }
                }
            } else if (!z11) {
                String name3 = xmlPullParser.getName();
                if (name3.equals("group")) {
                    bVar.f(attributeSet);
                } else if (name3.equals(WebConstants.FIELD_ITEM)) {
                    bVar.g(attributeSet);
                } else if (name3.equals("menu")) {
                    c(xmlPullParser, attributeSet, bVar.b());
                } else {
                    str = name3;
                    z11 = true;
                }
            }
            eventType = xmlPullParser.next();
        }
    }

    Object b() {
        if (this.f1285d == null) {
            this.f1285d = a(this.f1284c);
        }
        return this.f1285d;
    }

    @Override // android.view.MenuInflater
    public void inflate(int i11, Menu menu) {
        if (!(menu instanceof b1.a)) {
            super.inflate(i11, menu);
            return;
        }
        XmlResourceParser layout = null;
        boolean z10 = false;
        try {
            try {
                layout = this.f1284c.getResources().getLayout(i11);
                AttributeSet attributeSetAsAttributeSet = Xml.asAttributeSet(layout);
                if (menu instanceof androidx.appcompat.view.menu.f) {
                    androidx.appcompat.view.menu.f fVar = (androidx.appcompat.view.menu.f) menu;
                    if (fVar.H()) {
                        fVar.i0();
                        z10 = true;
                    }
                }
                c(layout, attributeSetAsAttributeSet, menu);
                if (z10) {
                    ((androidx.appcompat.view.menu.f) menu).h0();
                }
                if (layout != null) {
                    layout.close();
                }
            } catch (IOException e11) {
                throw new InflateException("Error inflating menu XML", e11);
            } catch (XmlPullParserException e12) {
                throw new InflateException("Error inflating menu XML", e12);
            }
        } catch (Throwable th2) {
            if (z10) {
                ((androidx.appcompat.view.menu.f) menu).h0();
            }
            if (layout != null) {
                layout.close();
            }
            throw th2;
        }
    }
}
