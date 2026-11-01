package androidx.appcompat.view.menu;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.TextView;
import androidx.appcompat.R$attr;
import androidx.appcompat.R$id;
import androidx.appcompat.R$layout;
import androidx.appcompat.R$styleable;
import androidx.appcompat.widget.j0;

/* JADX INFO: loaded from: classes.dex */
public class ListMenuItemView extends LinearLayout implements m.a, AbsListView.SelectionBoundsAdjuster {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private h f1371a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private ImageView f1372b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private RadioButton f1373c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private TextView f1374d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private CheckBox f1375e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private TextView f1376f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private ImageView f1377g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private ImageView f1378h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private LinearLayout f1379i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private Drawable f1380j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f1381k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private Context f1382l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private boolean f1383m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private Drawable f1384n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private boolean f1385o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private LayoutInflater f1386p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private boolean f1387q;

    public ListMenuItemView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.listMenuViewStyle);
    }

    public ListMenuItemView(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet);
        j0 j0VarV = j0.v(getContext(), attributeSet, R$styleable.MenuView, i11, 0);
        this.f1380j = j0VarV.g(R$styleable.MenuView_android_itemBackground);
        this.f1381k = j0VarV.n(R$styleable.MenuView_android_itemTextAppearance, -1);
        this.f1383m = j0VarV.a(R$styleable.MenuView_preserveIconSpacing, false);
        this.f1382l = context;
        this.f1384n = j0VarV.g(R$styleable.MenuView_subMenuArrow);
        TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(null, new int[]{R.attr.divider}, R$attr.dropDownListViewStyle, 0);
        this.f1385o = typedArrayObtainStyledAttributes.hasValue(0);
        j0VarV.x();
        typedArrayObtainStyledAttributes.recycle();
    }

    private void a(View view) {
        b(view, -1);
    }

    private void b(View view, int i11) {
        LinearLayout linearLayout = this.f1379i;
        if (linearLayout != null) {
            linearLayout.addView(view, i11);
        } else {
            addView(view, i11);
        }
    }

    private void c() {
        CheckBox checkBox = (CheckBox) getInflater().inflate(R$layout.abc_list_menu_item_checkbox, (ViewGroup) this, false);
        this.f1375e = checkBox;
        a(checkBox);
    }

    private void d() {
        ImageView imageView = (ImageView) getInflater().inflate(R$layout.abc_list_menu_item_icon, (ViewGroup) this, false);
        this.f1372b = imageView;
        b(imageView, 0);
    }

    private void e() {
        RadioButton radioButton = (RadioButton) getInflater().inflate(R$layout.abc_list_menu_item_radio, (ViewGroup) this, false);
        this.f1373c = radioButton;
        a(radioButton);
    }

    private LayoutInflater getInflater() {
        if (this.f1386p == null) {
            this.f1386p = LayoutInflater.from(getContext());
        }
        return this.f1386p;
    }

    private void setSubMenuArrowVisible(boolean z10) {
        ImageView imageView = this.f1377g;
        if (imageView != null) {
            imageView.setVisibility(z10 ? 0 : 8);
        }
    }

    @Override // android.widget.AbsListView.SelectionBoundsAdjuster
    public void adjustListItemSelectionBounds(Rect rect) {
        ImageView imageView = this.f1378h;
        if (imageView == null || imageView.getVisibility() != 0) {
            return;
        }
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.f1378h.getLayoutParams();
        rect.top += this.f1378h.getHeight() + layoutParams.topMargin + layoutParams.bottomMargin;
    }

    @Override // androidx.appcompat.view.menu.m.a
    public h getItemData() {
        return this.f1371a;
    }

    @Override // androidx.appcompat.view.menu.m.a
    public void initialize(h hVar, int i11) {
        this.f1371a = hVar;
        setVisibility(hVar.isVisible() ? 0 : 8);
        setTitle(hVar.i(this));
        setCheckable(hVar.isCheckable());
        setShortcut(hVar.A(), hVar.g());
        setIcon(hVar.getIcon());
        setEnabled(hVar.isEnabled());
        setSubMenuArrowVisible(hVar.hasSubMenu());
        setContentDescription(hVar.getContentDescription());
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        setBackground(this.f1380j);
        TextView textView = (TextView) findViewById(R$id.title);
        this.f1374d = textView;
        int i11 = this.f1381k;
        if (i11 != -1) {
            textView.setTextAppearance(this.f1382l, i11);
        }
        this.f1376f = (TextView) findViewById(R$id.shortcut);
        ImageView imageView = (ImageView) findViewById(R$id.submenuarrow);
        this.f1377g = imageView;
        if (imageView != null) {
            imageView.setImageDrawable(this.f1384n);
        }
        this.f1378h = (ImageView) findViewById(R$id.group_divider);
        this.f1379i = (LinearLayout) findViewById(R$id.content);
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int i11, int i12) {
        if (this.f1372b != null && this.f1383m) {
            ViewGroup.LayoutParams layoutParams = getLayoutParams();
            LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) this.f1372b.getLayoutParams();
            int i13 = layoutParams.height;
            if (i13 > 0 && layoutParams2.width <= 0) {
                layoutParams2.width = i13;
            }
        }
        super.onMeasure(i11, i12);
    }

    @Override // androidx.appcompat.view.menu.m.a
    public boolean prefersCondensedTitle() {
        return false;
    }

    public void setCheckable(boolean z10) {
        CompoundButton compoundButton;
        View view;
        if (!z10 && this.f1373c == null && this.f1375e == null) {
            return;
        }
        if (this.f1371a.m()) {
            if (this.f1373c == null) {
                e();
            }
            compoundButton = this.f1373c;
            view = this.f1375e;
        } else {
            if (this.f1375e == null) {
                c();
            }
            compoundButton = this.f1375e;
            view = this.f1373c;
        }
        if (z10) {
            compoundButton.setChecked(this.f1371a.isChecked());
            if (compoundButton.getVisibility() != 0) {
                compoundButton.setVisibility(0);
            }
            if (view == null || view.getVisibility() == 8) {
                return;
            }
            view.setVisibility(8);
            return;
        }
        CheckBox checkBox = this.f1375e;
        if (checkBox != null) {
            checkBox.setVisibility(8);
        }
        RadioButton radioButton = this.f1373c;
        if (radioButton != null) {
            radioButton.setVisibility(8);
        }
    }

    public void setChecked(boolean z10) {
        CompoundButton compoundButton;
        if (this.f1371a.m()) {
            if (this.f1373c == null) {
                e();
            }
            compoundButton = this.f1373c;
        } else {
            if (this.f1375e == null) {
                c();
            }
            compoundButton = this.f1375e;
        }
        compoundButton.setChecked(z10);
    }

    public void setForceShowIcon(boolean z10) {
        this.f1387q = z10;
        this.f1383m = z10;
    }

    public void setGroupDividerEnabled(boolean z10) {
        ImageView imageView = this.f1378h;
        if (imageView != null) {
            imageView.setVisibility((this.f1385o || !z10) ? 8 : 0);
        }
    }

    public void setIcon(Drawable drawable) {
        boolean z10 = this.f1371a.z() || this.f1387q;
        if (z10 || this.f1383m) {
            ImageView imageView = this.f1372b;
            if (imageView == null && drawable == null && !this.f1383m) {
                return;
            }
            if (imageView == null) {
                d();
            }
            if (drawable == null && !this.f1383m) {
                this.f1372b.setVisibility(8);
                return;
            }
            ImageView imageView2 = this.f1372b;
            if (!z10) {
                drawable = null;
            }
            imageView2.setImageDrawable(drawable);
            if (this.f1372b.getVisibility() != 0) {
                this.f1372b.setVisibility(0);
            }
        }
    }

    public void setShortcut(boolean z10, char c11) {
        int i11 = (z10 && this.f1371a.A()) ? 0 : 8;
        if (i11 == 0) {
            this.f1376f.setText(this.f1371a.h());
        }
        if (this.f1376f.getVisibility() != i11) {
            this.f1376f.setVisibility(i11);
        }
    }

    public void setTitle(CharSequence charSequence) {
        if (charSequence == null) {
            if (this.f1374d.getVisibility() != 8) {
                this.f1374d.setVisibility(8);
            }
        } else {
            this.f1374d.setText(charSequence);
            if (this.f1374d.getVisibility() != 0) {
                this.f1374d.setVisibility(0);
            }
        }
    }

    public boolean showsIcon() {
        return this.f1387q;
    }
}
