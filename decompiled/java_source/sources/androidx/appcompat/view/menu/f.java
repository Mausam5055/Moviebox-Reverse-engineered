package androidx.appcompat.view.menu;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.SparseArray;
import android.view.ContextMenu;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import android.view.ViewConfiguration;
import androidx.core.view.ActionProvider;
import androidx.core.view.ViewConfigurationCompat;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import okhttp3.internal.http2.Settings;

/* JADX INFO: loaded from: classes.dex */
public class f implements b1.a {
    private static final int[] A = {1, 4, 5, 3, 2, 0};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f1439a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Resources f1440b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f1441c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f1442d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private a f1443e;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private ContextMenu.ContextMenuInfo f1451m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    CharSequence f1452n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    Drawable f1453o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    View f1454p;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private h f1462x;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private boolean f1464z;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f1450l = 0;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private boolean f1455q = false;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private boolean f1456r = false;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private boolean f1457s = false;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private boolean f1458t = false;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private boolean f1459u = false;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private ArrayList f1460v = new ArrayList();

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private CopyOnWriteArrayList f1461w = new CopyOnWriteArrayList();

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private boolean f1463y = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private ArrayList f1444f = new ArrayList();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private ArrayList f1445g = new ArrayList();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f1446h = true;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private ArrayList f1447i = new ArrayList();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private ArrayList f1448j = new ArrayList();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f1449k = true;

    public interface a {
        boolean a(f fVar, MenuItem menuItem);

        void b(f fVar);
    }

    public interface b {
        boolean invokeItem(h hVar);
    }

    public f(Context context) {
        this.f1439a = context;
        this.f1440b = context.getResources();
        g0(true);
    }

    private static int D(int i11) {
        int i12 = ((-65536) & i11) >> 16;
        if (i12 >= 0) {
            int[] iArr = A;
            if (i12 < iArr.length) {
                return (i11 & Settings.DEFAULT_INITIAL_WINDOW_SIZE) | (iArr[i12] << 16);
            }
        }
        throw new IllegalArgumentException("order does not contain a valid category.");
    }

    private void Q(int i11, boolean z10) {
        if (i11 < 0 || i11 >= this.f1444f.size()) {
            return;
        }
        this.f1444f.remove(i11);
        if (z10) {
            N(true);
        }
    }

    private void b0(int i11, CharSequence charSequence, int i12, Drawable drawable, View view) {
        Resources resourcesE = E();
        if (view != null) {
            this.f1454p = view;
            this.f1452n = null;
            this.f1453o = null;
        } else {
            if (i11 > 0) {
                this.f1452n = resourcesE.getText(i11);
            } else if (charSequence != null) {
                this.f1452n = charSequence;
            }
            if (i12 > 0) {
                this.f1453o = androidx.core.content.b.getDrawable(w(), i12);
            } else if (drawable != null) {
                this.f1453o = drawable;
            }
            this.f1454p = null;
        }
        N(false);
    }

    private h g(int i11, int i12, int i13, int i14, CharSequence charSequence, int i15) {
        return new h(this, i11, i12, i13, i14, charSequence, i15);
    }

    /* JADX WARN: Code duplicated, block: B:8:0x001c  */
    private void g0(boolean z10) {
        boolean z11;
        if (z10) {
            z11 = this.f1440b.getConfiguration().keyboard != 1 && ViewConfigurationCompat.shouldShowMenuShortcutsWhenKeyboardPresent(ViewConfiguration.get(this.f1439a), this.f1439a);
        }
        this.f1442d = z11;
    }

    private void i(boolean z10) {
        if (this.f1461w.isEmpty()) {
            return;
        }
        i0();
        for (WeakReference weakReference : this.f1461w) {
            l lVar = (l) weakReference.get();
            if (lVar == null) {
                this.f1461w.remove(weakReference);
            } else {
                lVar.h(z10);
            }
        }
        h0();
    }

    private void j(Bundle bundle) {
        Parcelable parcelable;
        SparseArray sparseParcelableArray = bundle.getSparseParcelableArray("android:menu:presenters");
        if (sparseParcelableArray == null || this.f1461w.isEmpty()) {
            return;
        }
        for (WeakReference weakReference : this.f1461w) {
            l lVar = (l) weakReference.get();
            if (lVar == null) {
                this.f1461w.remove(weakReference);
            } else {
                int id2 = lVar.getId();
                if (id2 > 0 && (parcelable = (Parcelable) sparseParcelableArray.get(id2)) != null) {
                    lVar.e(parcelable);
                }
            }
        }
    }

    private void k(Bundle bundle) {
        Parcelable parcelableG;
        if (this.f1461w.isEmpty()) {
            return;
        }
        SparseArray<? extends Parcelable> sparseArray = new SparseArray<>();
        for (WeakReference weakReference : this.f1461w) {
            l lVar = (l) weakReference.get();
            if (lVar == null) {
                this.f1461w.remove(weakReference);
            } else {
                int id2 = lVar.getId();
                if (id2 > 0 && (parcelableG = lVar.g()) != null) {
                    sparseArray.put(id2, parcelableG);
                }
            }
        }
        bundle.putSparseParcelableArray("android:menu:presenters", sparseArray);
    }

    private boolean l(q qVar, l lVar) {
        if (this.f1461w.isEmpty()) {
            return false;
        }
        boolean zF = lVar != null ? lVar.f(qVar) : false;
        for (WeakReference weakReference : this.f1461w) {
            l lVar2 = (l) weakReference.get();
            if (lVar2 == null) {
                this.f1461w.remove(weakReference);
            } else if (!zF) {
                zF = lVar2.f(qVar);
            }
        }
        return zF;
    }

    private static int p(ArrayList arrayList, int i11) {
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            if (((h) arrayList.get(size)).f() <= i11) {
                return size + 1;
            }
        }
        return 0;
    }

    public View A() {
        return this.f1454p;
    }

    public ArrayList B() {
        t();
        return this.f1448j;
    }

    boolean C() {
        return this.f1458t;
    }

    Resources E() {
        return this.f1440b;
    }

    public f F() {
        return this;
    }

    public ArrayList G() {
        if (!this.f1446h) {
            return this.f1445g;
        }
        this.f1445g.clear();
        int size = this.f1444f.size();
        for (int i11 = 0; i11 < size; i11++) {
            h hVar = (h) this.f1444f.get(i11);
            if (hVar.isVisible()) {
                this.f1445g.add(hVar);
            }
        }
        this.f1446h = false;
        this.f1449k = true;
        return this.f1445g;
    }

    public boolean H() {
        return !this.f1455q;
    }

    public boolean I() {
        return this.f1463y;
    }

    boolean J() {
        return this.f1441c;
    }

    public boolean K() {
        return this.f1442d;
    }

    void L(h hVar) {
        this.f1449k = true;
        N(true);
    }

    void M(h hVar) {
        this.f1446h = true;
        N(true);
    }

    public void N(boolean z10) {
        if (this.f1455q) {
            this.f1456r = true;
            if (z10) {
                this.f1457s = true;
                return;
            }
            return;
        }
        if (z10) {
            this.f1446h = true;
            this.f1449k = true;
        }
        i(z10);
    }

    public boolean O(MenuItem menuItem, int i11) {
        return P(menuItem, null, i11);
    }

    public boolean P(MenuItem menuItem, l lVar, int i11) {
        h hVar = (h) menuItem;
        if (hVar == null || !hVar.isEnabled()) {
            return false;
        }
        boolean zK = hVar.k();
        ActionProvider actionProviderA = hVar.a();
        boolean z10 = actionProviderA != null && actionProviderA.hasSubMenu();
        if (hVar.j()) {
            zK |= hVar.expandActionView();
            if (zK) {
                e(true);
            }
        } else if (hVar.hasSubMenu() || z10) {
            if ((i11 & 4) == 0) {
                e(false);
            }
            if (!hVar.hasSubMenu()) {
                hVar.x(new q(w(), this, hVar));
            }
            q qVar = (q) hVar.getSubMenu();
            if (z10) {
                actionProviderA.onPrepareSubMenu(qVar);
            }
            zK |= l(qVar, lVar);
            if (!zK) {
                e(true);
            }
        } else if ((i11 & 1) == 0) {
            e(true);
        }
        return zK;
    }

    public void R(l lVar) {
        for (WeakReference weakReference : this.f1461w) {
            l lVar2 = (l) weakReference.get();
            if (lVar2 == null || lVar2 == lVar) {
                this.f1461w.remove(weakReference);
            }
        }
    }

    public void S(Bundle bundle) {
        MenuItem menuItemFindItem;
        if (bundle == null) {
            return;
        }
        SparseArray<Parcelable> sparseParcelableArray = bundle.getSparseParcelableArray(v());
        int size = size();
        for (int i11 = 0; i11 < size; i11++) {
            MenuItem item = getItem(i11);
            View actionView = item.getActionView();
            if (actionView != null && actionView.getId() != -1) {
                actionView.restoreHierarchyState(sparseParcelableArray);
            }
            if (item.hasSubMenu()) {
                ((q) item.getSubMenu()).S(bundle);
            }
        }
        int i12 = bundle.getInt("android:menu:expandedactionview");
        if (i12 <= 0 || (menuItemFindItem = findItem(i12)) == null) {
            return;
        }
        menuItemFindItem.expandActionView();
    }

    public void T(Bundle bundle) {
        j(bundle);
    }

    public void U(Bundle bundle) {
        int size = size();
        SparseArray<? extends Parcelable> sparseArray = null;
        for (int i11 = 0; i11 < size; i11++) {
            MenuItem item = getItem(i11);
            View actionView = item.getActionView();
            if (actionView != null && actionView.getId() != -1) {
                if (sparseArray == null) {
                    sparseArray = new SparseArray<>();
                }
                actionView.saveHierarchyState(sparseArray);
                if (item.isActionViewExpanded()) {
                    bundle.putInt("android:menu:expandedactionview", item.getItemId());
                }
            }
            if (item.hasSubMenu()) {
                ((q) item.getSubMenu()).U(bundle);
            }
        }
        if (sparseArray != null) {
            bundle.putSparseParcelableArray(v(), sparseArray);
        }
    }

    public void V(Bundle bundle) {
        k(bundle);
    }

    public void W(a aVar) {
        this.f1443e = aVar;
    }

    public f X(int i11) {
        this.f1450l = i11;
        return this;
    }

    void Y(MenuItem menuItem) {
        int groupId = menuItem.getGroupId();
        int size = this.f1444f.size();
        i0();
        for (int i11 = 0; i11 < size; i11++) {
            h hVar = (h) this.f1444f.get(i11);
            if (hVar.getGroupId() == groupId && hVar.m() && hVar.isCheckable()) {
                hVar.s(hVar == menuItem);
            }
        }
        h0();
    }

    protected f Z(int i11) {
        b0(0, null, i11, null, null);
        return this;
    }

    protected MenuItem a(int i11, int i12, int i13, CharSequence charSequence) {
        int iD = D(i13);
        h hVarG = g(i11, i12, i13, iD, charSequence, this.f1450l);
        ContextMenu.ContextMenuInfo contextMenuInfo = this.f1451m;
        if (contextMenuInfo != null) {
            hVarG.v(contextMenuInfo);
        }
        ArrayList arrayList = this.f1444f;
        arrayList.add(p(arrayList, iD), hVarG);
        N(true);
        return hVarG;
    }

    protected f a0(Drawable drawable) {
        b0(0, null, 0, drawable, null);
        return this;
    }

    @Override // android.view.Menu
    public MenuItem add(int i11) {
        return a(0, 0, 0, this.f1440b.getString(i11));
    }

    @Override // android.view.Menu
    public MenuItem add(int i11, int i12, int i13, int i14) {
        return a(i11, i12, i13, this.f1440b.getString(i14));
    }

    @Override // android.view.Menu
    public MenuItem add(int i11, int i12, int i13, CharSequence charSequence) {
        return a(i11, i12, i13, charSequence);
    }

    @Override // android.view.Menu
    public MenuItem add(CharSequence charSequence) {
        return a(0, 0, 0, charSequence);
    }

    @Override // android.view.Menu
    public int addIntentOptions(int i11, int i12, int i13, ComponentName componentName, Intent[] intentArr, Intent intent, int i14, MenuItem[] menuItemArr) {
        int i15;
        PackageManager packageManager = this.f1439a.getPackageManager();
        List<ResolveInfo> listQueryIntentActivityOptions = packageManager.queryIntentActivityOptions(componentName, intentArr, intent, 0);
        int size = listQueryIntentActivityOptions != null ? listQueryIntentActivityOptions.size() : 0;
        if ((i14 & 1) == 0) {
            removeGroup(i11);
        }
        for (int i16 = 0; i16 < size; i16++) {
            ResolveInfo resolveInfo = listQueryIntentActivityOptions.get(i16);
            int i17 = resolveInfo.specificIndex;
            Intent intent2 = new Intent(i17 < 0 ? intent : intentArr[i17]);
            ActivityInfo activityInfo = resolveInfo.activityInfo;
            intent2.setComponent(new ComponentName(activityInfo.applicationInfo.packageName, activityInfo.name));
            MenuItem intent3 = add(i11, i12, i13, resolveInfo.loadLabel(packageManager)).setIcon(resolveInfo.loadIcon(packageManager)).setIntent(intent2);
            if (menuItemArr != null && (i15 = resolveInfo.specificIndex) >= 0) {
                menuItemArr[i15] = intent3;
            }
        }
        return size;
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(int i11) {
        return addSubMenu(0, 0, 0, this.f1440b.getString(i11));
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(int i11, int i12, int i13, int i14) {
        return addSubMenu(i11, i12, i13, this.f1440b.getString(i14));
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(int i11, int i12, int i13, CharSequence charSequence) {
        h hVar = (h) a(i11, i12, i13, charSequence);
        q qVar = new q(this.f1439a, this, hVar);
        hVar.x(qVar);
        return qVar;
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(CharSequence charSequence) {
        return addSubMenu(0, 0, 0, charSequence);
    }

    public void b(l lVar) {
        c(lVar, this.f1439a);
    }

    public void c(l lVar, Context context) {
        this.f1461w.add(new WeakReference(lVar));
        lVar.k(context, this);
        this.f1449k = true;
    }

    protected f c0(int i11) {
        b0(i11, null, 0, null, null);
        return this;
    }

    @Override // android.view.Menu
    public void clear() {
        h hVar = this.f1462x;
        if (hVar != null) {
            f(hVar);
        }
        this.f1444f.clear();
        N(true);
    }

    public void clearHeader() {
        this.f1453o = null;
        this.f1452n = null;
        this.f1454p = null;
        N(false);
    }

    @Override // android.view.Menu
    public void close() {
        e(true);
    }

    public void d() {
        a aVar = this.f1443e;
        if (aVar != null) {
            aVar.b(this);
        }
    }

    protected f d0(CharSequence charSequence) {
        b0(0, charSequence, 0, null, null);
        return this;
    }

    public final void e(boolean z10) {
        if (this.f1459u) {
            return;
        }
        this.f1459u = true;
        for (WeakReference weakReference : this.f1461w) {
            l lVar = (l) weakReference.get();
            if (lVar == null) {
                this.f1461w.remove(weakReference);
            } else {
                lVar.b(this, z10);
            }
        }
        this.f1459u = false;
    }

    protected f e0(View view) {
        b0(0, null, 0, null, view);
        return this;
    }

    public boolean f(h hVar) {
        boolean zJ = false;
        if (!this.f1461w.isEmpty() && this.f1462x == hVar) {
            i0();
            for (WeakReference weakReference : this.f1461w) {
                l lVar = (l) weakReference.get();
                if (lVar != null) {
                    zJ = lVar.j(this, hVar);
                    if (zJ) {
                        break;
                    }
                } else {
                    this.f1461w.remove(weakReference);
                }
            }
            h0();
            if (zJ) {
                this.f1462x = null;
            }
        }
        return zJ;
    }

    public void f0(boolean z10) {
        this.f1464z = z10;
    }

    @Override // android.view.Menu
    public MenuItem findItem(int i11) {
        MenuItem menuItemFindItem;
        int size = size();
        for (int i12 = 0; i12 < size; i12++) {
            h hVar = (h) this.f1444f.get(i12);
            if (hVar.getItemId() == i11) {
                return hVar;
            }
            if (hVar.hasSubMenu() && (menuItemFindItem = hVar.getSubMenu().findItem(i11)) != null) {
                return menuItemFindItem;
            }
        }
        return null;
    }

    @Override // android.view.Menu
    public MenuItem getItem(int i11) {
        return (MenuItem) this.f1444f.get(i11);
    }

    boolean h(f fVar, MenuItem menuItem) {
        a aVar = this.f1443e;
        return aVar != null && aVar.a(fVar, menuItem);
    }

    public void h0() {
        this.f1455q = false;
        if (this.f1456r) {
            this.f1456r = false;
            N(this.f1457s);
        }
    }

    @Override // android.view.Menu
    public boolean hasVisibleItems() {
        if (this.f1464z) {
            return true;
        }
        int size = size();
        for (int i11 = 0; i11 < size; i11++) {
            if (((h) this.f1444f.get(i11)).isVisible()) {
                return true;
            }
        }
        return false;
    }

    public void i0() {
        if (this.f1455q) {
            return;
        }
        this.f1455q = true;
        this.f1456r = false;
        this.f1457s = false;
    }

    @Override // android.view.Menu
    public boolean isShortcutKey(int i11, KeyEvent keyEvent) {
        return r(i11, keyEvent) != null;
    }

    public boolean m(h hVar) {
        boolean zC = false;
        if (this.f1461w.isEmpty()) {
            return false;
        }
        i0();
        for (WeakReference weakReference : this.f1461w) {
            l lVar = (l) weakReference.get();
            if (lVar != null) {
                zC = lVar.c(this, hVar);
                if (zC) {
                    break;
                }
            } else {
                this.f1461w.remove(weakReference);
            }
        }
        h0();
        if (zC) {
            this.f1462x = hVar;
        }
        return zC;
    }

    public int n(int i11) {
        return o(i11, 0);
    }

    public int o(int i11, int i12) {
        int size = size();
        if (i12 < 0) {
            i12 = 0;
        }
        while (i12 < size) {
            if (((h) this.f1444f.get(i12)).getGroupId() == i11) {
                return i12;
            }
            i12++;
        }
        return -1;
    }

    @Override // android.view.Menu
    public boolean performIdentifierAction(int i11, int i12) {
        return O(findItem(i11), i12);
    }

    @Override // android.view.Menu
    public boolean performShortcut(int i11, KeyEvent keyEvent, int i12) {
        h hVarR = r(i11, keyEvent);
        boolean zO = hVarR != null ? O(hVarR, i12) : false;
        if ((i12 & 2) != 0) {
            e(true);
        }
        return zO;
    }

    public int q(int i11) {
        int size = size();
        for (int i12 = 0; i12 < size; i12++) {
            if (((h) this.f1444f.get(i12)).getItemId() == i11) {
                return i12;
            }
        }
        return -1;
    }

    h r(int i11, KeyEvent keyEvent) {
        ArrayList arrayList = this.f1460v;
        arrayList.clear();
        s(arrayList, i11, keyEvent);
        if (arrayList.isEmpty()) {
            return null;
        }
        int metaState = keyEvent.getMetaState();
        KeyCharacterMap.KeyData keyData = new KeyCharacterMap.KeyData();
        keyEvent.getKeyData(keyData);
        int size = arrayList.size();
        if (size == 1) {
            return (h) arrayList.get(0);
        }
        boolean zJ = J();
        for (int i12 = 0; i12 < size; i12++) {
            h hVar = (h) arrayList.get(i12);
            char alphabeticShortcut = zJ ? hVar.getAlphabeticShortcut() : hVar.getNumericShortcut();
            char[] cArr = keyData.meta;
            if ((alphabeticShortcut == cArr[0] && (metaState & 2) == 0) || ((alphabeticShortcut == cArr[2] && (metaState & 2) != 0) || (zJ && alphabeticShortcut == '\b' && i11 == 67))) {
                return hVar;
            }
        }
        return null;
    }

    @Override // android.view.Menu
    public void removeGroup(int i11) {
        int iN = n(i11);
        if (iN >= 0) {
            int size = this.f1444f.size() - iN;
            int i12 = 0;
            while (true) {
                int i13 = i12 + 1;
                if (i12 >= size || ((h) this.f1444f.get(iN)).getGroupId() != i11) {
                    break;
                }
                Q(iN, false);
                i12 = i13;
            }
            N(true);
        }
    }

    @Override // android.view.Menu
    public void removeItem(int i11) {
        Q(q(i11), true);
    }

    void s(List list, int i11, KeyEvent keyEvent) {
        boolean zJ = J();
        int modifiers = keyEvent.getModifiers();
        KeyCharacterMap.KeyData keyData = new KeyCharacterMap.KeyData();
        if (keyEvent.getKeyData(keyData) || i11 == 67) {
            int size = this.f1444f.size();
            for (int i12 = 0; i12 < size; i12++) {
                h hVar = (h) this.f1444f.get(i12);
                if (hVar.hasSubMenu()) {
                    ((f) hVar.getSubMenu()).s(list, i11, keyEvent);
                }
                char alphabeticShortcut = zJ ? hVar.getAlphabeticShortcut() : hVar.getNumericShortcut();
                if ((modifiers & 69647) == ((zJ ? hVar.getAlphabeticModifiers() : hVar.getNumericModifiers()) & 69647) && alphabeticShortcut != 0) {
                    char[] cArr = keyData.meta;
                    if ((alphabeticShortcut == cArr[0] || alphabeticShortcut == cArr[2] || (zJ && alphabeticShortcut == '\b' && i11 == 67)) && hVar.isEnabled()) {
                        list.add(hVar);
                    }
                }
            }
        }
    }

    @Override // android.view.Menu
    public void setGroupCheckable(int i11, boolean z10, boolean z11) {
        int size = this.f1444f.size();
        for (int i12 = 0; i12 < size; i12++) {
            h hVar = (h) this.f1444f.get(i12);
            if (hVar.getGroupId() == i11) {
                hVar.t(z11);
                hVar.setCheckable(z10);
            }
        }
    }

    @Override // b1.a, android.view.Menu
    public void setGroupDividerEnabled(boolean z10) {
        this.f1463y = z10;
    }

    @Override // android.view.Menu
    public void setGroupEnabled(int i11, boolean z10) {
        int size = this.f1444f.size();
        for (int i12 = 0; i12 < size; i12++) {
            h hVar = (h) this.f1444f.get(i12);
            if (hVar.getGroupId() == i11) {
                hVar.setEnabled(z10);
            }
        }
    }

    @Override // android.view.Menu
    public void setGroupVisible(int i11, boolean z10) {
        int size = this.f1444f.size();
        boolean z11 = false;
        for (int i12 = 0; i12 < size; i12++) {
            h hVar = (h) this.f1444f.get(i12);
            if (hVar.getGroupId() == i11 && hVar.y(z10)) {
                z11 = true;
            }
        }
        if (z11) {
            N(true);
        }
    }

    @Override // android.view.Menu
    public void setQwertyMode(boolean z10) {
        this.f1441c = z10;
        N(false);
    }

    @Override // android.view.Menu
    public int size() {
        return this.f1444f.size();
    }

    public void t() {
        ArrayList arrayListG = G();
        if (this.f1449k) {
            boolean zI = false;
            for (WeakReference weakReference : this.f1461w) {
                l lVar = (l) weakReference.get();
                if (lVar == null) {
                    this.f1461w.remove(weakReference);
                } else {
                    zI |= lVar.i();
                }
            }
            if (zI) {
                this.f1447i.clear();
                this.f1448j.clear();
                int size = arrayListG.size();
                for (int i11 = 0; i11 < size; i11++) {
                    h hVar = (h) arrayListG.get(i11);
                    if (hVar.l()) {
                        this.f1447i.add(hVar);
                    } else {
                        this.f1448j.add(hVar);
                    }
                }
            } else {
                this.f1447i.clear();
                this.f1448j.clear();
                this.f1448j.addAll(G());
            }
            this.f1449k = false;
        }
    }

    public ArrayList u() {
        t();
        return this.f1447i;
    }

    protected String v() {
        return "android:menu:actionviewstates";
    }

    public Context w() {
        return this.f1439a;
    }

    public h x() {
        return this.f1462x;
    }

    public Drawable y() {
        return this.f1453o;
    }

    public CharSequence z() {
        return this.f1452n;
    }
}
