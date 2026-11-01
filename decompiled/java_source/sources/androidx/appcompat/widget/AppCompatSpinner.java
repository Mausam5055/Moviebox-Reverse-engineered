package androidx.appcompat.widget;

import android.R;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.ThemedSpinnerAdapter;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.R$attr;
import androidx.appcompat.R$layout;
import androidx.appcompat.R$styleable;
import androidx.core.view.TintableBackgroundView;

/* JADX INFO: loaded from: classes.dex */
public class AppCompatSpinner extends Spinner implements TintableBackgroundView {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final int[] f1693i = {R.attr.spinnerMode};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final androidx.appcompat.widget.c f1694a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Context f1695b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private ForwardingListener f1696c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private SpinnerAdapter f1697d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final boolean f1698e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private g f1699f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    int f1700g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    final Rect f1701h;

    static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        boolean f1702a;

        class a implements Parcelable.Creator {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public SavedState[] newArray(int i11) {
                return new SavedState[i11];
            }
        }

        SavedState(Parcel parcel) {
            super(parcel);
            this.f1702a = parcel.readByte() != 0;
        }

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i11) {
            super.writeToParcel(parcel, i11);
            parcel.writeByte(this.f1702a ? (byte) 1 : (byte) 0);
        }
    }

    class a extends ForwardingListener {

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        final /* synthetic */ f f1703j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(View view, f fVar) {
            super(view);
            this.f1703j = fVar;
        }

        @Override // androidx.appcompat.widget.ForwardingListener
        public androidx.appcompat.view.menu.o b() {
            return this.f1703j;
        }

        @Override // androidx.appcompat.widget.ForwardingListener
        public boolean c() {
            if (AppCompatSpinner.this.getInternalPopup().a()) {
                return true;
            }
            AppCompatSpinner.this.b();
            return true;
        }
    }

    class b implements ViewTreeObserver.OnGlobalLayoutListener {
        b() {
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            if (!AppCompatSpinner.this.getInternalPopup().a()) {
                AppCompatSpinner.this.b();
            }
            ViewTreeObserver viewTreeObserver = AppCompatSpinner.this.getViewTreeObserver();
            if (viewTreeObserver != null) {
                viewTreeObserver.removeOnGlobalLayoutListener(this);
            }
        }
    }

    private static final class c {
        static void a(@NonNull ThemedSpinnerAdapter themedSpinnerAdapter, @Nullable Resources.Theme theme) {
            if (androidx.core.util.d.a(themedSpinnerAdapter.getDropDownViewTheme(), theme)) {
                return;
            }
            themedSpinnerAdapter.setDropDownViewTheme(theme);
        }
    }

    class d implements g, DialogInterface.OnClickListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        androidx.appcompat.app.c f1706a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private ListAdapter f1707b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private CharSequence f1708c;

        d() {
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.g
        public boolean a() {
            androidx.appcompat.app.c cVar = this.f1706a;
            if (cVar != null) {
                return cVar.isShowing();
            }
            return false;
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.g
        public void b(Drawable drawable) {
            Log.e("AppCompatSpinner", "Cannot set popup background for MODE_DIALOG, ignoring");
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.g
        public int c() {
            return 0;
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.g
        public void dismiss() {
            androidx.appcompat.app.c cVar = this.f1706a;
            if (cVar != null) {
                cVar.dismiss();
                this.f1706a = null;
            }
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.g
        public void e(int i11) {
            Log.e("AppCompatSpinner", "Cannot set horizontal offset for MODE_DIALOG, ignoring");
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.g
        public CharSequence f() {
            return this.f1708c;
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.g
        public Drawable g() {
            return null;
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.g
        public void h(CharSequence charSequence) {
            this.f1708c = charSequence;
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.g
        public void i(int i11) {
            Log.e("AppCompatSpinner", "Cannot set vertical offset for MODE_DIALOG, ignoring");
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.g
        public void j(int i11) {
            Log.e("AppCompatSpinner", "Cannot set horizontal (original) offset for MODE_DIALOG, ignoring");
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.g
        public void k(int i11, int i12) {
            if (this.f1707b == null) {
                return;
            }
            androidx.appcompat.app.c.a aVar = new androidx.appcompat.app.c.a(AppCompatSpinner.this.getPopupContext());
            CharSequence charSequence = this.f1708c;
            if (charSequence != null) {
                aVar.setTitle(charSequence);
            }
            androidx.appcompat.app.c cVarCreate = aVar.h(this.f1707b, AppCompatSpinner.this.getSelectedItemPosition(), this).create();
            this.f1706a = cVarCreate;
            ListView listViewF = cVarCreate.f();
            listViewF.setTextDirection(i11);
            listViewF.setTextAlignment(i12);
            this.f1706a.show();
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.g
        public int l() {
            return 0;
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.g
        public void m(ListAdapter listAdapter) {
            this.f1707b = listAdapter;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i11) {
            AppCompatSpinner.this.setSelection(i11);
            if (AppCompatSpinner.this.getOnItemClickListener() != null) {
                AppCompatSpinner.this.performItemClick(null, i11, this.f1707b.getItemId(i11));
            }
            dismiss();
        }
    }

    private static class e implements ListAdapter, SpinnerAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private SpinnerAdapter f1710a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private ListAdapter f1711b;

        public e(SpinnerAdapter spinnerAdapter, Resources.Theme theme) {
            this.f1710a = spinnerAdapter;
            if (spinnerAdapter instanceof ListAdapter) {
                this.f1711b = (ListAdapter) spinnerAdapter;
            }
            if (theme == null || !(spinnerAdapter instanceof ThemedSpinnerAdapter)) {
                return;
            }
            c.a((ThemedSpinnerAdapter) spinnerAdapter, theme);
        }

        @Override // android.widget.ListAdapter
        public boolean areAllItemsEnabled() {
            ListAdapter listAdapter = this.f1711b;
            if (listAdapter != null) {
                return listAdapter.areAllItemsEnabled();
            }
            return true;
        }

        @Override // android.widget.Adapter
        public int getCount() {
            SpinnerAdapter spinnerAdapter = this.f1710a;
            if (spinnerAdapter == null) {
                return 0;
            }
            return spinnerAdapter.getCount();
        }

        @Override // android.widget.SpinnerAdapter
        public View getDropDownView(int i11, View view, ViewGroup viewGroup) {
            SpinnerAdapter spinnerAdapter = this.f1710a;
            if (spinnerAdapter == null) {
                return null;
            }
            return spinnerAdapter.getDropDownView(i11, view, viewGroup);
        }

        @Override // android.widget.Adapter
        public Object getItem(int i11) {
            SpinnerAdapter spinnerAdapter = this.f1710a;
            if (spinnerAdapter == null) {
                return null;
            }
            return spinnerAdapter.getItem(i11);
        }

        @Override // android.widget.Adapter
        public long getItemId(int i11) {
            SpinnerAdapter spinnerAdapter = this.f1710a;
            if (spinnerAdapter == null) {
                return -1L;
            }
            return spinnerAdapter.getItemId(i11);
        }

        @Override // android.widget.Adapter
        public int getItemViewType(int i11) {
            return 0;
        }

        @Override // android.widget.Adapter
        public View getView(int i11, View view, ViewGroup viewGroup) {
            return getDropDownView(i11, view, viewGroup);
        }

        @Override // android.widget.Adapter
        public int getViewTypeCount() {
            return 1;
        }

        @Override // android.widget.Adapter
        public boolean hasStableIds() {
            SpinnerAdapter spinnerAdapter = this.f1710a;
            return spinnerAdapter != null && spinnerAdapter.hasStableIds();
        }

        @Override // android.widget.Adapter
        public boolean isEmpty() {
            return getCount() == 0;
        }

        @Override // android.widget.ListAdapter
        public boolean isEnabled(int i11) {
            ListAdapter listAdapter = this.f1711b;
            if (listAdapter != null) {
                return listAdapter.isEnabled(i11);
            }
            return true;
        }

        @Override // android.widget.Adapter
        public void registerDataSetObserver(DataSetObserver dataSetObserver) {
            SpinnerAdapter spinnerAdapter = this.f1710a;
            if (spinnerAdapter != null) {
                spinnerAdapter.registerDataSetObserver(dataSetObserver);
            }
        }

        @Override // android.widget.Adapter
        public void unregisterDataSetObserver(DataSetObserver dataSetObserver) {
            SpinnerAdapter spinnerAdapter = this.f1710a;
            if (spinnerAdapter != null) {
                spinnerAdapter.unregisterDataSetObserver(dataSetObserver);
            }
        }
    }

    class f extends ListPopupWindow implements g {
        private CharSequence J;
        ListAdapter K;
        private final Rect L;
        private int M;

        class a implements AdapterView.OnItemClickListener {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ AppCompatSpinner f1712a;

            a(AppCompatSpinner appCompatSpinner) {
                this.f1712a = appCompatSpinner;
            }

            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView adapterView, View view, int i11, long j11) {
                AppCompatSpinner.this.setSelection(i11);
                if (AppCompatSpinner.this.getOnItemClickListener() != null) {
                    f fVar = f.this;
                    AppCompatSpinner.this.performItemClick(view, i11, fVar.K.getItemId(i11));
                }
                f.this.dismiss();
            }
        }

        class b implements ViewTreeObserver.OnGlobalLayoutListener {
            b() {
            }

            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                f fVar = f.this;
                if (!fVar.U(AppCompatSpinner.this)) {
                    f.this.dismiss();
                } else {
                    f.this.S();
                    f.super.show();
                }
            }
        }

        class c implements PopupWindow.OnDismissListener {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ ViewTreeObserver.OnGlobalLayoutListener f1715a;

            c(ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener) {
                this.f1715a = onGlobalLayoutListener;
            }

            @Override // android.widget.PopupWindow.OnDismissListener
            public void onDismiss() {
                ViewTreeObserver viewTreeObserver = AppCompatSpinner.this.getViewTreeObserver();
                if (viewTreeObserver != null) {
                    viewTreeObserver.removeGlobalOnLayoutListener(this.f1715a);
                }
            }
        }

        public f(Context context, AttributeSet attributeSet, int i11) {
            super(context, attributeSet, i11);
            this.L = new Rect();
            C(AppCompatSpinner.this);
            I(true);
            O(0);
            K(new a(AppCompatSpinner.this));
        }

        void S() {
            int i11;
            Drawable drawableG = g();
            if (drawableG != null) {
                drawableG.getPadding(AppCompatSpinner.this.f1701h);
                i11 = u0.b(AppCompatSpinner.this) ? AppCompatSpinner.this.f1701h.right : -AppCompatSpinner.this.f1701h.left;
            } else {
                Rect rect = AppCompatSpinner.this.f1701h;
                rect.right = 0;
                rect.left = 0;
                i11 = 0;
            }
            int paddingLeft = AppCompatSpinner.this.getPaddingLeft();
            int paddingRight = AppCompatSpinner.this.getPaddingRight();
            int width = AppCompatSpinner.this.getWidth();
            AppCompatSpinner appCompatSpinner = AppCompatSpinner.this;
            int i12 = appCompatSpinner.f1700g;
            if (i12 == -2) {
                int iA = appCompatSpinner.a((SpinnerAdapter) this.K, g());
                int i13 = AppCompatSpinner.this.getContext().getResources().getDisplayMetrics().widthPixels;
                Rect rect2 = AppCompatSpinner.this.f1701h;
                int i14 = (i13 - rect2.left) - rect2.right;
                if (iA > i14) {
                    iA = i14;
                }
                E(Math.max(iA, (width - paddingLeft) - paddingRight));
            } else if (i12 == -1) {
                E((width - paddingLeft) - paddingRight);
            } else {
                E(i12);
            }
            e(u0.b(AppCompatSpinner.this) ? i11 + (((width - paddingRight) - y()) - T()) : i11 + paddingLeft + T());
        }

        public int T() {
            return this.M;
        }

        boolean U(View view) {
            return view.isAttachedToWindow() && view.getGlobalVisibleRect(this.L);
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.g
        public CharSequence f() {
            return this.J;
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.g
        public void h(CharSequence charSequence) {
            this.J = charSequence;
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.g
        public void j(int i11) {
            this.M = i11;
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.g
        public void k(int i11, int i12) {
            ViewTreeObserver viewTreeObserver;
            boolean zA = a();
            S();
            H(2);
            super.show();
            ListView listViewO = o();
            listViewO.setChoiceMode(1);
            listViewO.setTextDirection(i11);
            listViewO.setTextAlignment(i12);
            P(AppCompatSpinner.this.getSelectedItemPosition());
            if (zA || (viewTreeObserver = AppCompatSpinner.this.getViewTreeObserver()) == null) {
                return;
            }
            b bVar = new b();
            viewTreeObserver.addOnGlobalLayoutListener(bVar);
            J(new c(bVar));
        }

        @Override // androidx.appcompat.widget.ListPopupWindow, androidx.appcompat.widget.AppCompatSpinner.g
        public void m(ListAdapter listAdapter) {
            super.m(listAdapter);
            this.K = listAdapter;
        }
    }

    interface g {
        boolean a();

        void b(Drawable drawable);

        int c();

        void dismiss();

        void e(int i11);

        CharSequence f();

        Drawable g();

        void h(CharSequence charSequence);

        void i(int i11);

        void j(int i11);

        void k(int i11, int i12);

        int l();

        void m(ListAdapter listAdapter);
    }

    public AppCompatSpinner(@NonNull Context context) {
        this(context, (AttributeSet) null);
    }

    public AppCompatSpinner(@NonNull Context context, int i11) {
        this(context, null, R$attr.spinnerStyle, i11);
    }

    public AppCompatSpinner(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.spinnerStyle);
    }

    public AppCompatSpinner(@NonNull Context context, @Nullable AttributeSet attributeSet, int i11) {
        this(context, attributeSet, i11, -1);
    }

    public AppCompatSpinner(@NonNull Context context, @Nullable AttributeSet attributeSet, int i11, int i12) {
        this(context, attributeSet, i11, i12, null);
    }

    /* JADX WARN: Code duplicated, block: B:29:0x0067 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:31:0x006a  */
    /* JADX WARN: Code duplicated, block: B:32:0x00a1  */
    /* JADX WARN: Code duplicated, block: B:35:0x00b9  */
    /* JADX WARN: Code duplicated, block: B:38:0x00d2  */
    public AppCompatSpinner(@NonNull Context context, @Nullable AttributeSet attributeSet, int i11, int i12, Resources.Theme theme) throws Throwable {
        TypedArray typedArrayObtainStyledAttributes;
        CharSequence[] charSequenceArrQ;
        SpinnerAdapter spinnerAdapter;
        super(context, attributeSet, i11);
        this.f1701h = new Rect();
        f0.a(this, getContext());
        j0 j0VarV = j0.v(context, attributeSet, R$styleable.Spinner, i11, 0);
        this.f1694a = new androidx.appcompat.widget.c(this);
        if (theme != null) {
            this.f1695b = new androidx.appcompat.view.d(context, theme);
        } else {
            int iN = j0VarV.n(R$styleable.Spinner_popupTheme, 0);
            if (iN != 0) {
                this.f1695b = new androidx.appcompat.view.d(context, iN);
            } else {
                this.f1695b = context;
            }
        }
        TypedArray typedArray = null;
        if (i12 == -1) {
            try {
                typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, f1693i, i11, 0);
                try {
                    if (typedArrayObtainStyledAttributes.hasValue(0)) {
                        i12 = typedArrayObtainStyledAttributes.getInt(0, 0);
                    }
                } catch (Exception unused) {
                    if (typedArrayObtainStyledAttributes != null) {
                    }
                    if (i12 != 0) {
                        d dVar = new d();
                        this.f1699f = dVar;
                        dVar.h(j0VarV.o(R$styleable.Spinner_android_prompt));
                    } else if (i12 == 1) {
                        f fVar = new f(this.f1695b, attributeSet, i11);
                        j0 j0VarV2 = j0.v(this.f1695b, attributeSet, R$styleable.Spinner, i11, 0);
                        this.f1700g = j0VarV2.m(R$styleable.Spinner_android_dropDownWidth, -2);
                        fVar.b(j0VarV2.g(R$styleable.Spinner_android_popupBackground));
                        fVar.h(j0VarV.o(R$styleable.Spinner_android_prompt));
                        j0VarV2.x();
                        this.f1699f = fVar;
                        this.f1696c = new a(this, fVar);
                    }
                    charSequenceArrQ = j0VarV.q(R$styleable.Spinner_android_entries);
                    if (charSequenceArrQ != null) {
                        ArrayAdapter arrayAdapter = new ArrayAdapter(context, R.layout.simple_spinner_item, charSequenceArrQ);
                        arrayAdapter.setDropDownViewResource(R$layout.support_simple_spinner_dropdown_item);
                        setAdapter((SpinnerAdapter) arrayAdapter);
                    }
                    j0VarV.x();
                    this.f1698e = true;
                    spinnerAdapter = this.f1697d;
                    if (spinnerAdapter != null) {
                        setAdapter(spinnerAdapter);
                        this.f1697d = null;
                    }
                    this.f1694a.e(attributeSet, i11);
                } catch (Throwable th2) {
                    th = th2;
                    typedArray = typedArrayObtainStyledAttributes;
                    if (typedArray != null) {
                        typedArray.recycle();
                    }
                    throw th;
                }
            } catch (Exception unused2) {
                typedArrayObtainStyledAttributes = null;
            } catch (Throwable th3) {
                th = th3;
            }
            typedArrayObtainStyledAttributes.recycle();
        }
        if (i12 != 0) {
            d dVar2 = new d();
            this.f1699f = dVar2;
            dVar2.h(j0VarV.o(R$styleable.Spinner_android_prompt));
        } else if (i12 == 1) {
            f fVar2 = new f(this.f1695b, attributeSet, i11);
            j0 j0VarV3 = j0.v(this.f1695b, attributeSet, R$styleable.Spinner, i11, 0);
            this.f1700g = j0VarV3.m(R$styleable.Spinner_android_dropDownWidth, -2);
            fVar2.b(j0VarV3.g(R$styleable.Spinner_android_popupBackground));
            fVar2.h(j0VarV.o(R$styleable.Spinner_android_prompt));
            j0VarV3.x();
            this.f1699f = fVar2;
            this.f1696c = new a(this, fVar2);
        }
        charSequenceArrQ = j0VarV.q(R$styleable.Spinner_android_entries);
        if (charSequenceArrQ != null) {
            ArrayAdapter arrayAdapter2 = new ArrayAdapter(context, R.layout.simple_spinner_item, charSequenceArrQ);
            arrayAdapter2.setDropDownViewResource(R$layout.support_simple_spinner_dropdown_item);
            setAdapter((SpinnerAdapter) arrayAdapter2);
        }
        j0VarV.x();
        this.f1698e = true;
        spinnerAdapter = this.f1697d;
        if (spinnerAdapter != null) {
            setAdapter(spinnerAdapter);
            this.f1697d = null;
        }
        this.f1694a.e(attributeSet, i11);
    }

    int a(SpinnerAdapter spinnerAdapter, Drawable drawable) {
        int i11 = 0;
        if (spinnerAdapter == null) {
            return 0;
        }
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 0);
        int iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 0);
        int iMax = Math.max(0, getSelectedItemPosition());
        int iMin = Math.min(spinnerAdapter.getCount(), iMax + 15);
        View view = null;
        int iMax2 = 0;
        for (int iMax3 = Math.max(0, iMax - (15 - (iMin - iMax))); iMax3 < iMin; iMax3++) {
            int itemViewType = spinnerAdapter.getItemViewType(iMax3);
            if (itemViewType != i11) {
                view = null;
                i11 = itemViewType;
            }
            view = spinnerAdapter.getView(iMax3, view, this);
            if (view.getLayoutParams() == null) {
                view.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
            }
            view.measure(iMakeMeasureSpec, iMakeMeasureSpec2);
            iMax2 = Math.max(iMax2, view.getMeasuredWidth());
        }
        if (drawable == null) {
            return iMax2;
        }
        drawable.getPadding(this.f1701h);
        Rect rect = this.f1701h;
        return iMax2 + rect.left + rect.right;
    }

    void b() {
        this.f1699f.k(getTextDirection(), getTextAlignment());
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        androidx.appcompat.widget.c cVar = this.f1694a;
        if (cVar != null) {
            cVar.b();
        }
    }

    @Override // android.widget.Spinner
    public int getDropDownHorizontalOffset() {
        g gVar = this.f1699f;
        return gVar != null ? gVar.c() : super.getDropDownHorizontalOffset();
    }

    @Override // android.widget.Spinner
    public int getDropDownVerticalOffset() {
        g gVar = this.f1699f;
        return gVar != null ? gVar.l() : super.getDropDownVerticalOffset();
    }

    @Override // android.widget.Spinner
    public int getDropDownWidth() {
        return this.f1699f != null ? this.f1700g : super.getDropDownWidth();
    }

    final g getInternalPopup() {
        return this.f1699f;
    }

    @Override // android.widget.Spinner
    public Drawable getPopupBackground() {
        g gVar = this.f1699f;
        return gVar != null ? gVar.g() : super.getPopupBackground();
    }

    @Override // android.widget.Spinner
    public Context getPopupContext() {
        return this.f1695b;
    }

    @Override // android.widget.Spinner
    public CharSequence getPrompt() {
        g gVar = this.f1699f;
        return gVar != null ? gVar.f() : super.getPrompt();
    }

    @Override // androidx.core.view.TintableBackgroundView
    @Nullable
    public ColorStateList getSupportBackgroundTintList() {
        androidx.appcompat.widget.c cVar = this.f1694a;
        if (cVar != null) {
            return cVar.c();
        }
        return null;
    }

    @Override // androidx.core.view.TintableBackgroundView
    @Nullable
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        androidx.appcompat.widget.c cVar = this.f1694a;
        if (cVar != null) {
            return cVar.d();
        }
        return null;
    }

    @Override // android.widget.Spinner, android.widget.AdapterView, android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        g gVar = this.f1699f;
        if (gVar == null || !gVar.a()) {
            return;
        }
        this.f1699f.dismiss();
    }

    @Override // android.widget.Spinner, android.widget.AbsSpinner, android.view.View
    protected void onMeasure(int i11, int i12) {
        super.onMeasure(i11, i12);
        if (this.f1699f == null || View.MeasureSpec.getMode(i11) != Integer.MIN_VALUE) {
            return;
        }
        setMeasuredDimension(Math.min(Math.max(getMeasuredWidth(), a(getAdapter(), getBackground())), View.MeasureSpec.getSize(i11)), getMeasuredHeight());
    }

    @Override // android.widget.Spinner, android.widget.AbsSpinner, android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        ViewTreeObserver viewTreeObserver;
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        if (!savedState.f1702a || (viewTreeObserver = getViewTreeObserver()) == null) {
            return;
        }
        viewTreeObserver.addOnGlobalLayoutListener(new b());
    }

    @Override // android.widget.Spinner, android.widget.AbsSpinner, android.view.View
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        g gVar = this.f1699f;
        savedState.f1702a = gVar != null && gVar.a();
        return savedState;
    }

    @Override // android.widget.Spinner, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        ForwardingListener forwardingListener = this.f1696c;
        if (forwardingListener == null || !forwardingListener.onTouch(this, motionEvent)) {
            return super.onTouchEvent(motionEvent);
        }
        return true;
    }

    @Override // android.widget.Spinner, android.view.View
    public boolean performClick() {
        g gVar = this.f1699f;
        if (gVar == null) {
            return super.performClick();
        }
        if (gVar.a()) {
            return true;
        }
        b();
        return true;
    }

    @Override // android.widget.AdapterView
    public void setAdapter(SpinnerAdapter spinnerAdapter) {
        if (!this.f1698e) {
            this.f1697d = spinnerAdapter;
            return;
        }
        super.setAdapter(spinnerAdapter);
        if (this.f1699f != null) {
            Context context = this.f1695b;
            if (context == null) {
                context = getContext();
            }
            this.f1699f.m(new e(spinnerAdapter, context.getTheme()));
        }
    }

    @Override // android.view.View
    public void setBackgroundDrawable(@Nullable Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        androidx.appcompat.widget.c cVar = this.f1694a;
        if (cVar != null) {
            cVar.f(drawable);
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i11) {
        super.setBackgroundResource(i11);
        androidx.appcompat.widget.c cVar = this.f1694a;
        if (cVar != null) {
            cVar.g(i11);
        }
    }

    @Override // android.widget.Spinner
    public void setDropDownHorizontalOffset(int i11) {
        g gVar = this.f1699f;
        if (gVar == null) {
            super.setDropDownHorizontalOffset(i11);
        } else {
            gVar.j(i11);
            this.f1699f.e(i11);
        }
    }

    @Override // android.widget.Spinner
    public void setDropDownVerticalOffset(int i11) {
        g gVar = this.f1699f;
        if (gVar != null) {
            gVar.i(i11);
        } else {
            super.setDropDownVerticalOffset(i11);
        }
    }

    @Override // android.widget.Spinner
    public void setDropDownWidth(int i11) {
        if (this.f1699f != null) {
            this.f1700g = i11;
        } else {
            super.setDropDownWidth(i11);
        }
    }

    @Override // android.widget.Spinner
    public void setPopupBackgroundDrawable(Drawable drawable) {
        g gVar = this.f1699f;
        if (gVar != null) {
            gVar.b(drawable);
        } else {
            super.setPopupBackgroundDrawable(drawable);
        }
    }

    @Override // android.widget.Spinner
    public void setPopupBackgroundResource(int i11) {
        setPopupBackgroundDrawable(g.a.b(getPopupContext(), i11));
    }

    @Override // android.widget.Spinner
    public void setPrompt(CharSequence charSequence) {
        g gVar = this.f1699f;
        if (gVar != null) {
            gVar.h(charSequence);
        } else {
            super.setPrompt(charSequence);
        }
    }

    @Override // androidx.core.view.TintableBackgroundView
    public void setSupportBackgroundTintList(@Nullable ColorStateList colorStateList) {
        androidx.appcompat.widget.c cVar = this.f1694a;
        if (cVar != null) {
            cVar.i(colorStateList);
        }
    }

    @Override // androidx.core.view.TintableBackgroundView
    public void setSupportBackgroundTintMode(@Nullable PorterDuff.Mode mode) {
        androidx.appcompat.widget.c cVar = this.f1694a;
        if (cVar != null) {
            cVar.j(mode);
        }
    }
}
