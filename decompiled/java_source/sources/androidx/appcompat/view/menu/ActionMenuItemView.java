package androidx.appcompat.view.menu;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.Button;
import androidx.appcompat.R$styleable;
import androidx.appcompat.widget.ActionMenuView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.ForwardingListener;
import androidx.appcompat.widget.o0;

/* JADX INFO: loaded from: classes.dex */
public class ActionMenuItemView extends AppCompatTextView implements m.a, View.OnClickListener, ActionMenuView.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    h f1325a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private CharSequence f1326b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Drawable f1327c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    f.b f1328d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private ForwardingListener f1329e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    b f1330f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f1331g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f1332h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f1333i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f1334j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f1335k;

    private class a extends ForwardingListener {
        public a() {
            super(ActionMenuItemView.this);
        }

        @Override // androidx.appcompat.widget.ForwardingListener
        public o b() {
            b bVar = ActionMenuItemView.this.f1330f;
            if (bVar != null) {
                return bVar.a();
            }
            return null;
        }

        @Override // androidx.appcompat.widget.ForwardingListener
        protected boolean c() {
            o oVarB;
            ActionMenuItemView actionMenuItemView = ActionMenuItemView.this;
            f.b bVar = actionMenuItemView.f1328d;
            return bVar != null && bVar.invokeItem(actionMenuItemView.f1325a) && (oVarB = b()) != null && oVarB.a();
        }
    }

    public static abstract class b {
        public abstract o a();
    }

    public ActionMenuItemView(Context context) {
        this(context, null);
    }

    public ActionMenuItemView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ActionMenuItemView(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        Resources resources = context.getResources();
        this.f1331g = b();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.ActionMenuItemView, i11, 0);
        this.f1333i = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.ActionMenuItemView_android_minWidth, 0);
        typedArrayObtainStyledAttributes.recycle();
        this.f1335k = (int) ((resources.getDisplayMetrics().density * 32.0f) + 0.5f);
        setOnClickListener(this);
        this.f1334j = -1;
        setSaveEnabled(false);
    }

    private boolean b() {
        Configuration configuration = getContext().getResources().getConfiguration();
        int i11 = configuration.screenWidthDp;
        return i11 >= 480 || (i11 >= 640 && configuration.screenHeightDp >= 480) || configuration.orientation == 2;
    }

    private void c() {
        boolean z10 = true;
        boolean z11 = !TextUtils.isEmpty(this.f1326b);
        if (this.f1327c != null && (!this.f1325a.B() || (!this.f1331g && !this.f1332h))) {
            z10 = false;
        }
        boolean z12 = z11 & z10;
        setText(z12 ? this.f1326b : null);
        CharSequence contentDescription = this.f1325a.getContentDescription();
        if (TextUtils.isEmpty(contentDescription)) {
            setContentDescription(z12 ? null : this.f1325a.getTitle());
        } else {
            setContentDescription(contentDescription);
        }
        CharSequence tooltipText = this.f1325a.getTooltipText();
        if (TextUtils.isEmpty(tooltipText)) {
            o0.a(this, z12 ? null : this.f1325a.getTitle());
        } else {
            o0.a(this, tooltipText);
        }
    }

    @Override // android.widget.TextView, android.view.View
    public CharSequence getAccessibilityClassName() {
        return Button.class.getName();
    }

    @Override // androidx.appcompat.view.menu.m.a
    public h getItemData() {
        return this.f1325a;
    }

    public boolean hasText() {
        return !TextUtils.isEmpty(getText());
    }

    @Override // androidx.appcompat.view.menu.m.a
    public void initialize(h hVar, int i11) {
        this.f1325a = hVar;
        setIcon(hVar.getIcon());
        setTitle(hVar.i(this));
        setId(hVar.getItemId());
        setVisibility(hVar.isVisible() ? 0 : 8);
        setEnabled(hVar.isEnabled());
        if (hVar.hasSubMenu() && this.f1329e == null) {
            this.f1329e = new a();
        }
    }

    @Override // androidx.appcompat.widget.ActionMenuView.a
    public boolean needsDividerAfter() {
        return hasText();
    }

    @Override // androidx.appcompat.widget.ActionMenuView.a
    public boolean needsDividerBefore() {
        return hasText() && this.f1325a.getIcon() == null;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        f.b bVar = this.f1328d;
        if (bVar != null) {
            bVar.invokeItem(this.f1325a);
        }
    }

    @Override // android.widget.TextView, android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.f1331g = b();
        c();
    }

    @Override // androidx.appcompat.widget.AppCompatTextView, android.widget.TextView, android.view.View
    protected void onMeasure(int i11, int i12) {
        int i13;
        boolean zHasText = hasText();
        if (zHasText && (i13 = this.f1334j) >= 0) {
            super.setPadding(i13, getPaddingTop(), getPaddingRight(), getPaddingBottom());
        }
        super.onMeasure(i11, i12);
        int mode = View.MeasureSpec.getMode(i11);
        int size = View.MeasureSpec.getSize(i11);
        int measuredWidth = getMeasuredWidth();
        int iMin = mode == Integer.MIN_VALUE ? Math.min(size, this.f1333i) : this.f1333i;
        if (mode != 1073741824 && this.f1333i > 0 && measuredWidth < iMin) {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(iMin, 1073741824), i12);
        }
        if (zHasText || this.f1327c == null) {
            return;
        }
        super.setPadding((getMeasuredWidth() - this.f1327c.getBounds().width()) / 2, getPaddingTop(), getPaddingRight(), getPaddingBottom());
    }

    @Override // android.widget.TextView, android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        super.onRestoreInstanceState(null);
    }

    @Override // android.widget.TextView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        ForwardingListener forwardingListener;
        if (this.f1325a.hasSubMenu() && (forwardingListener = this.f1329e) != null && forwardingListener.onTouch(this, motionEvent)) {
            return true;
        }
        return super.onTouchEvent(motionEvent);
    }

    @Override // androidx.appcompat.view.menu.m.a
    public boolean prefersCondensedTitle() {
        return true;
    }

    public void setCheckable(boolean z10) {
    }

    public void setChecked(boolean z10) {
    }

    public void setExpandedFormat(boolean z10) {
        if (this.f1332h != z10) {
            this.f1332h = z10;
            h hVar = this.f1325a;
            if (hVar != null) {
                hVar.c();
            }
        }
    }

    public void setIcon(Drawable drawable) {
        this.f1327c = drawable;
        if (drawable != null) {
            int intrinsicWidth = drawable.getIntrinsicWidth();
            int intrinsicHeight = drawable.getIntrinsicHeight();
            int i11 = this.f1335k;
            if (intrinsicWidth > i11) {
                intrinsicHeight = (int) (intrinsicHeight * (i11 / intrinsicWidth));
                intrinsicWidth = i11;
            }
            if (intrinsicHeight > i11) {
                intrinsicWidth = (int) (intrinsicWidth * (i11 / intrinsicHeight));
            } else {
                i11 = intrinsicHeight;
            }
            drawable.setBounds(0, 0, intrinsicWidth, i11);
        }
        setCompoundDrawables(drawable, null, null, null);
        c();
    }

    public void setItemInvoker(f.b bVar) {
        this.f1328d = bVar;
    }

    @Override // android.widget.TextView, android.view.View
    public void setPadding(int i11, int i12, int i13, int i14) {
        this.f1334j = i11;
        super.setPadding(i11, i12, i13, i14);
    }

    public void setPopupCallback(b bVar) {
        this.f1330f = bVar;
    }

    public void setShortcut(boolean z10, char c11) {
    }

    public void setTitle(CharSequence charSequence) {
        this.f1326b = charSequence;
        c();
    }

    public boolean showsIcon() {
        return true;
    }
}
