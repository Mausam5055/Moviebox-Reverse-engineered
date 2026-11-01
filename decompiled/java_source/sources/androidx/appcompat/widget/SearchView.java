package androidx.appcompat.widget;

import android.app.PendingIntent;
import android.app.SearchableInfo;
import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.database.Cursor;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.Editable;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.text.style.ImageSpan;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.TouchDelegate;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputMethodManager;
import android.widget.AdapterView;
import android.widget.AutoCompleteTextView;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.R$attr;
import androidx.appcompat.R$dimen;
import androidx.appcompat.R$id;
import androidx.appcompat.R$layout;
import androidx.appcompat.R$string;
import androidx.appcompat.R$styleable;
import androidx.core.view.ViewCompat;
import androidx.customview.view.AbsSavedState;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.ts.PsExtractor;
import com.tn.lib.view.FlowLayout;
import java.lang.reflect.Method;
import java.util.WeakHashMap;
import org.mvel2.ast.ASTNode;

/* JADX INFO: loaded from: classes.dex */
public class SearchView extends LinearLayoutCompat implements androidx.appcompat.view.c {
    static final m V;
    private boolean A;
    private CharSequence B;
    private boolean C;
    private boolean D;
    private int E;
    private boolean F;
    private CharSequence G;
    private CharSequence H;
    private boolean I;
    private int J;
    SearchableInfo K;
    private Bundle L;
    private final Runnable M;
    private Runnable N;
    private final WeakHashMap O;
    private final View.OnClickListener P;
    View.OnKeyListener Q;
    private final TextView.OnEditorActionListener R;
    private final AdapterView.OnItemClickListener S;
    private final AdapterView.OnItemSelectedListener T;
    private TextWatcher U;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final SearchAutoComplete f1838a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final View f1839b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final View f1840c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final View f1841d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final ImageView f1842e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    final ImageView f1843f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    final ImageView f1844g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    final ImageView f1845h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final View f1846i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private n f1847j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private Rect f1848k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private Rect f1849l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int[] f1850m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private int[] f1851n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final ImageView f1852o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final Drawable f1853p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final int f1854q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final int f1855r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final Intent f1856s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final Intent f1857t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private final CharSequence f1858u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    View.OnFocusChangeListener f1859v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private View.OnClickListener f1860w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private boolean f1861x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private boolean f1862y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    g1.a f1863z;

    static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        boolean f1864a;

        class a implements Parcelable.ClassLoaderCreator {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
            }

            @Override // android.os.Parcelable.ClassLoaderCreator
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
            public SavedState[] newArray(int i11) {
                return new SavedState[i11];
            }
        }

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f1864a = ((Boolean) parcel.readValue(null)).booleanValue();
        }

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        public String toString() {
            return "SearchView.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " isIconified=" + this.f1864a + "}";
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i11) {
            super.writeToParcel(parcel, i11);
            parcel.writeValue(Boolean.valueOf(this.f1864a));
        }
    }

    public static class SearchAutoComplete extends AppCompatAutoCompleteTextView {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private int f1865e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private SearchView f1866f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private boolean f1867g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        final Runnable f1868h;

        public SearchAutoComplete(Context context) {
            this(context, null);
        }

        public SearchAutoComplete(Context context, AttributeSet attributeSet) {
            this(context, attributeSet, R$attr.autoCompleteTextViewStyle);
        }

        public SearchAutoComplete(Context context, AttributeSet attributeSet, int i11) {
            super(context, attributeSet, i11);
            this.f1868h = new Runnable() { // from class: androidx.appcompat.widget.SearchView.SearchAutoComplete.1
                @Override // java.lang.Runnable
                public void run() {
                    SearchAutoComplete.this.d();
                }
            };
            this.f1865e = getThreshold();
        }

        private int getSearchViewTextMinWidthDp() {
            Configuration configuration = getResources().getConfiguration();
            int i11 = configuration.screenWidthDp;
            int i12 = configuration.screenHeightDp;
            if (i11 >= 960 && i12 >= 720 && configuration.orientation == 2) {
                return 256;
            }
            if (i11 >= 600) {
                return PsExtractor.AUDIO_STREAM;
            }
            if (i11 < 640 || i12 < 480) {
                return 160;
            }
            return PsExtractor.AUDIO_STREAM;
        }

        void b() {
            if (Build.VERSION.SDK_INT < 29) {
                SearchView.V.c(this);
                return;
            }
            i.b(this, 1);
            if (enoughToFilter()) {
                showDropDown();
            }
        }

        boolean c() {
            return TextUtils.getTrimmedLength(getText()) == 0;
        }

        void d() {
            if (this.f1867g) {
                ((InputMethodManager) getContext().getSystemService("input_method")).showSoftInput(this, 0);
                this.f1867g = false;
            }
        }

        @Override // android.widget.AutoCompleteTextView
        public boolean enoughToFilter() {
            return this.f1865e <= 0 || super.enoughToFilter();
        }

        @Override // androidx.appcompat.widget.AppCompatAutoCompleteTextView, android.widget.TextView, android.view.View
        public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
            InputConnection inputConnectionOnCreateInputConnection = super.onCreateInputConnection(editorInfo);
            if (this.f1867g) {
                removeCallbacks(this.f1868h);
                post(this.f1868h);
            }
            return inputConnectionOnCreateInputConnection;
        }

        @Override // android.view.View
        protected void onFinishInflate() {
            super.onFinishInflate();
            setMinWidth((int) TypedValue.applyDimension(1, getSearchViewTextMinWidthDp(), getResources().getDisplayMetrics()));
        }

        @Override // android.widget.AutoCompleteTextView, android.widget.TextView, android.view.View
        protected void onFocusChanged(boolean z10, int i11, Rect rect) {
            super.onFocusChanged(z10, i11, rect);
            this.f1866f.A();
        }

        @Override // android.widget.AutoCompleteTextView, android.widget.TextView, android.view.View
        public boolean onKeyPreIme(int i11, KeyEvent keyEvent) {
            if (i11 == 4) {
                if (keyEvent.getAction() == 0 && keyEvent.getRepeatCount() == 0) {
                    KeyEvent.DispatcherState keyDispatcherState = getKeyDispatcherState();
                    if (keyDispatcherState != null) {
                        keyDispatcherState.startTracking(keyEvent, this);
                    }
                    return true;
                }
                if (keyEvent.getAction() == 1) {
                    KeyEvent.DispatcherState keyDispatcherState2 = getKeyDispatcherState();
                    if (keyDispatcherState2 != null) {
                        keyDispatcherState2.handleUpEvent(keyEvent);
                    }
                    if (keyEvent.isTracking() && !keyEvent.isCanceled()) {
                        this.f1866f.clearFocus();
                        setImeVisibility(false);
                        return true;
                    }
                }
            }
            return super.onKeyPreIme(i11, keyEvent);
        }

        @Override // android.widget.AutoCompleteTextView, android.widget.TextView, android.view.View
        public void onWindowFocusChanged(boolean z10) {
            super.onWindowFocusChanged(z10);
            if (z10 && this.f1866f.hasFocus() && getVisibility() == 0) {
                this.f1867g = true;
                if (SearchView.n(getContext())) {
                    b();
                }
            }
        }

        @Override // android.widget.AutoCompleteTextView
        public void performCompletion() {
        }

        @Override // android.widget.AutoCompleteTextView
        protected void replaceText(CharSequence charSequence) {
        }

        void setImeVisibility(boolean z10) {
            InputMethodManager inputMethodManager = (InputMethodManager) getContext().getSystemService("input_method");
            if (!z10) {
                this.f1867g = false;
                removeCallbacks(this.f1868h);
                inputMethodManager.hideSoftInputFromWindow(getWindowToken(), 0);
            } else {
                if (!inputMethodManager.isActive(this)) {
                    this.f1867g = true;
                    return;
                }
                this.f1867g = false;
                removeCallbacks(this.f1868h);
                inputMethodManager.showSoftInput(this, 0);
            }
        }

        void setSearchView(SearchView searchView) {
            this.f1866f = searchView;
        }

        @Override // android.widget.AutoCompleteTextView
        public void setThreshold(int i11) {
            super.setThreshold(i11);
            this.f1865e = i11;
        }
    }

    class a implements TextWatcher {
        a() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i11, int i12, int i13) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i11, int i12, int i13) {
            SearchView.this.z(charSequence);
        }
    }

    class b implements View.OnFocusChangeListener {
        b() {
        }

        @Override // android.view.View.OnFocusChangeListener
        public void onFocusChange(View view, boolean z10) {
            SearchView searchView = SearchView.this;
            View.OnFocusChangeListener onFocusChangeListener = searchView.f1859v;
            if (onFocusChangeListener != null) {
                onFocusChangeListener.onFocusChange(searchView, z10);
            }
        }
    }

    class c implements View.OnLayoutChangeListener {
        c() {
        }

        @Override // android.view.View.OnLayoutChangeListener
        public void onLayoutChange(View view, int i11, int i12, int i13, int i14, int i15, int i16, int i17, int i18) {
            SearchView.this.d();
        }
    }

    class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            SearchView searchView = SearchView.this;
            if (view == searchView.f1842e) {
                searchView.w();
                return;
            }
            if (view == searchView.f1844g) {
                searchView.s();
                return;
            }
            if (view == searchView.f1843f) {
                searchView.x();
            } else if (view == searchView.f1845h) {
                searchView.B();
            } else if (view == searchView.f1838a) {
                searchView.j();
            }
        }
    }

    class e implements View.OnKeyListener {
        e() {
        }

        @Override // android.view.View.OnKeyListener
        public boolean onKey(View view, int i11, KeyEvent keyEvent) {
            SearchView searchView = SearchView.this;
            if (searchView.K == null) {
                return false;
            }
            if (searchView.f1838a.isPopupShowing() && SearchView.this.f1838a.getListSelection() != -1) {
                return SearchView.this.y(view, i11, keyEvent);
            }
            if (SearchView.this.f1838a.c() || !keyEvent.hasNoModifiers() || keyEvent.getAction() != 1 || i11 != 66) {
                return false;
            }
            view.cancelLongPress();
            SearchView searchView2 = SearchView.this;
            searchView2.q(0, null, searchView2.f1838a.getText().toString());
            return true;
        }
    }

    class f implements TextView.OnEditorActionListener {
        f() {
        }

        @Override // android.widget.TextView.OnEditorActionListener
        public boolean onEditorAction(TextView textView, int i11, KeyEvent keyEvent) {
            SearchView.this.x();
            return true;
        }
    }

    class g implements AdapterView.OnItemClickListener {
        g() {
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView adapterView, View view, int i11, long j11) {
            SearchView.this.t(i11, 0, null);
        }
    }

    class h implements AdapterView.OnItemSelectedListener {
        h() {
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onItemSelected(AdapterView adapterView, View view, int i11, long j11) {
            SearchView.this.u(i11);
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onNothingSelected(AdapterView adapterView) {
        }
    }

    static class i {
        static void a(AutoCompleteTextView autoCompleteTextView) {
            autoCompleteTextView.refreshAutoCompleteResults();
        }

        static void b(SearchAutoComplete searchAutoComplete, int i11) {
            searchAutoComplete.setInputMethodMode(i11);
        }
    }

    public interface j {
    }

    public interface k {
    }

    public interface l {
    }

    private static class m {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Method f1877a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private Method f1878b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private Method f1879c;

        m() {
            this.f1877a = null;
            this.f1878b = null;
            this.f1879c = null;
            d();
            try {
                Method declaredMethod = AutoCompleteTextView.class.getDeclaredMethod("doBeforeTextChanged", null);
                this.f1877a = declaredMethod;
                declaredMethod.setAccessible(true);
            } catch (NoSuchMethodException unused) {
            }
            try {
                Method declaredMethod2 = AutoCompleteTextView.class.getDeclaredMethod("doAfterTextChanged", null);
                this.f1878b = declaredMethod2;
                declaredMethod2.setAccessible(true);
            } catch (NoSuchMethodException unused2) {
            }
            try {
                Method method = AutoCompleteTextView.class.getMethod("ensureImeVisible", Boolean.TYPE);
                this.f1879c = method;
                method.setAccessible(true);
            } catch (NoSuchMethodException unused3) {
            }
        }

        private static void d() {
            if (Build.VERSION.SDK_INT >= 29) {
                throw new UnsupportedClassVersionError("This function can only be used for API Level < 29.");
            }
        }

        void a(AutoCompleteTextView autoCompleteTextView) {
            d();
            Method method = this.f1878b;
            if (method != null) {
                try {
                    method.invoke(autoCompleteTextView, null);
                } catch (Exception unused) {
                }
            }
        }

        void b(AutoCompleteTextView autoCompleteTextView) {
            d();
            Method method = this.f1877a;
            if (method != null) {
                try {
                    method.invoke(autoCompleteTextView, null);
                } catch (Exception unused) {
                }
            }
        }

        void c(AutoCompleteTextView autoCompleteTextView) {
            d();
            Method method = this.f1879c;
            if (method != null) {
                try {
                    method.invoke(autoCompleteTextView, Boolean.TRUE);
                } catch (Exception unused) {
                }
            }
        }
    }

    private static class n extends TouchDelegate {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final View f1880a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final Rect f1881b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final Rect f1882c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final Rect f1883d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final int f1884e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private boolean f1885f;

        public n(Rect rect, Rect rect2, View view) {
            super(rect, view);
            this.f1884e = ViewConfiguration.get(view.getContext()).getScaledTouchSlop();
            this.f1881b = new Rect();
            this.f1883d = new Rect();
            this.f1882c = new Rect();
            a(rect, rect2);
            this.f1880a = view;
        }

        public void a(Rect rect, Rect rect2) {
            this.f1881b.set(rect);
            this.f1883d.set(rect);
            Rect rect3 = this.f1883d;
            int i11 = this.f1884e;
            rect3.inset(-i11, -i11);
            this.f1882c.set(rect2);
        }

        /* JADX WARN: Code duplicated, block: B:19:0x003e  */
        @Override // android.view.TouchDelegate
        public boolean onTouchEvent(MotionEvent motionEvent) {
            boolean z10;
            boolean z11;
            int x10 = (int) motionEvent.getX();
            int y10 = (int) motionEvent.getY();
            int action = motionEvent.getAction();
            boolean z12 = true;
            if (action != 0) {
                if (action == 1 || action == 2) {
                    z11 = this.f1885f;
                    if (z11 && !this.f1883d.contains(x10, y10)) {
                        z12 = z11;
                        z10 = false;
                    }
                } else if (action != 3) {
                    z10 = true;
                    z12 = false;
                } else {
                    z11 = this.f1885f;
                    this.f1885f = false;
                }
                z12 = z11;
                z10 = true;
            } else if (this.f1881b.contains(x10, y10)) {
                this.f1885f = true;
                z10 = true;
            } else {
                z10 = true;
                z12 = false;
            }
            if (!z12) {
                return false;
            }
            if (!z10 || this.f1882c.contains(x10, y10)) {
                Rect rect = this.f1882c;
                motionEvent.setLocation(x10 - rect.left, y10 - rect.top);
            } else {
                motionEvent.setLocation(this.f1880a.getWidth() / 2, this.f1880a.getHeight() / 2);
            }
            return this.f1880a.dispatchTouchEvent(motionEvent);
        }
    }

    static {
        V = Build.VERSION.SDK_INT < 29 ? new m() : null;
    }

    public SearchView(@NonNull Context context) {
        this(context, null);
    }

    public SearchView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.searchViewStyle);
    }

    public SearchView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        this.f1848k = new Rect();
        this.f1849l = new Rect();
        this.f1850m = new int[2];
        this.f1851n = new int[2];
        this.M = new Runnable() { // from class: androidx.appcompat.widget.SearchView.1
            @Override // java.lang.Runnable
            public void run() {
                SearchView.this.F();
            }
        };
        this.N = new Runnable() { // from class: androidx.appcompat.widget.SearchView.2
            @Override // java.lang.Runnable
            public void run() {
                g1.a aVar = SearchView.this.f1863z;
                if (aVar instanceof e0) {
                    aVar.a(null);
                }
            }
        };
        this.O = new WeakHashMap();
        d dVar = new d();
        this.P = dVar;
        this.Q = new e();
        f fVar = new f();
        this.R = fVar;
        g gVar = new g();
        this.S = gVar;
        h hVar = new h();
        this.T = hVar;
        this.U = new a();
        j0 j0VarV = j0.v(context, attributeSet, R$styleable.SearchView, i11, 0);
        ViewCompat.saveAttributeDataForStyleable(this, context, R$styleable.SearchView, attributeSet, j0VarV.r(), i11, 0);
        LayoutInflater.from(context).inflate(j0VarV.n(R$styleable.SearchView_layout, R$layout.abc_search_view), (ViewGroup) this, true);
        SearchAutoComplete searchAutoComplete = (SearchAutoComplete) findViewById(R$id.search_src_text);
        this.f1838a = searchAutoComplete;
        searchAutoComplete.setSearchView(this);
        this.f1839b = findViewById(R$id.search_edit_frame);
        View viewFindViewById = findViewById(R$id.search_plate);
        this.f1840c = viewFindViewById;
        View viewFindViewById2 = findViewById(R$id.submit_area);
        this.f1841d = viewFindViewById2;
        ImageView imageView = (ImageView) findViewById(R$id.search_button);
        this.f1842e = imageView;
        ImageView imageView2 = (ImageView) findViewById(R$id.search_go_btn);
        this.f1843f = imageView2;
        ImageView imageView3 = (ImageView) findViewById(R$id.search_close_btn);
        this.f1844g = imageView3;
        ImageView imageView4 = (ImageView) findViewById(R$id.search_voice_btn);
        this.f1845h = imageView4;
        ImageView imageView5 = (ImageView) findViewById(R$id.search_mag_icon);
        this.f1852o = imageView5;
        ViewCompat.setBackground(viewFindViewById, j0VarV.g(R$styleable.SearchView_queryBackground));
        ViewCompat.setBackground(viewFindViewById2, j0VarV.g(R$styleable.SearchView_submitBackground));
        imageView.setImageDrawable(j0VarV.g(R$styleable.SearchView_searchIcon));
        imageView2.setImageDrawable(j0VarV.g(R$styleable.SearchView_goIcon));
        imageView3.setImageDrawable(j0VarV.g(R$styleable.SearchView_closeIcon));
        imageView4.setImageDrawable(j0VarV.g(R$styleable.SearchView_voiceIcon));
        imageView5.setImageDrawable(j0VarV.g(R$styleable.SearchView_searchIcon));
        this.f1853p = j0VarV.g(R$styleable.SearchView_searchHintIcon);
        o0.a(imageView, getResources().getString(R$string.abc_searchview_description_search));
        this.f1854q = j0VarV.n(R$styleable.SearchView_suggestionRowLayout, R$layout.abc_search_dropdown_item_icons_2line);
        this.f1855r = j0VarV.n(R$styleable.SearchView_commitIcon, 0);
        imageView.setOnClickListener(dVar);
        imageView3.setOnClickListener(dVar);
        imageView2.setOnClickListener(dVar);
        imageView4.setOnClickListener(dVar);
        searchAutoComplete.setOnClickListener(dVar);
        searchAutoComplete.addTextChangedListener(this.U);
        searchAutoComplete.setOnEditorActionListener(fVar);
        searchAutoComplete.setOnItemClickListener(gVar);
        searchAutoComplete.setOnItemSelectedListener(hVar);
        searchAutoComplete.setOnKeyListener(this.Q);
        searchAutoComplete.setOnFocusChangeListener(new b());
        setIconifiedByDefault(j0VarV.a(R$styleable.SearchView_iconifiedByDefault, true));
        int iF = j0VarV.f(R$styleable.SearchView_android_maxWidth, -1);
        if (iF != -1) {
            setMaxWidth(iF);
        }
        this.f1858u = j0VarV.p(R$styleable.SearchView_defaultQueryHint);
        this.B = j0VarV.p(R$styleable.SearchView_queryHint);
        int iK = j0VarV.k(R$styleable.SearchView_android_imeOptions, -1);
        if (iK != -1) {
            setImeOptions(iK);
        }
        int iK2 = j0VarV.k(R$styleable.SearchView_android_inputType, -1);
        if (iK2 != -1) {
            setInputType(iK2);
        }
        setFocusable(j0VarV.a(R$styleable.SearchView_android_focusable, true));
        j0VarV.x();
        Intent intent = new Intent("android.speech.action.WEB_SEARCH");
        this.f1856s = intent;
        intent.addFlags(ASTNode.DEOP);
        intent.putExtra("android.speech.extra.LANGUAGE_MODEL", "web_search");
        Intent intent2 = new Intent("android.speech.action.RECOGNIZE_SPEECH");
        this.f1857t = intent2;
        intent2.addFlags(ASTNode.DEOP);
        View viewFindViewById3 = findViewById(searchAutoComplete.getDropDownAnchor());
        this.f1846i = viewFindViewById3;
        if (viewFindViewById3 != null) {
            viewFindViewById3.addOnLayoutChangeListener(new c());
        }
        K(this.f1861x);
        G();
    }

    private void C() {
        post(this.M);
    }

    private void D(int i11) {
        Editable text = this.f1838a.getText();
        Cursor cursorD = this.f1863z.d();
        if (cursorD == null) {
            return;
        }
        if (!cursorD.moveToPosition(i11)) {
            setQuery(text);
            return;
        }
        CharSequence charSequenceB = this.f1863z.b(cursorD);
        if (charSequenceB != null) {
            setQuery(charSequenceB);
        } else {
            setQuery(text);
        }
    }

    private void E() {
        boolean zIsEmpty = TextUtils.isEmpty(this.f1838a.getText());
        this.f1844g.setVisibility(!zIsEmpty || (this.f1861x && !this.I) ? 0 : 8);
        Drawable drawable = this.f1844g.getDrawable();
        if (drawable != null) {
            drawable.setState(!zIsEmpty ? ViewGroup.ENABLED_STATE_SET : ViewGroup.EMPTY_STATE_SET);
        }
    }

    private void G() {
        CharSequence queryHint = getQueryHint();
        SearchAutoComplete searchAutoComplete = this.f1838a;
        if (queryHint == null) {
            queryHint = "";
        }
        searchAutoComplete.setHint(l(queryHint));
    }

    private void H() {
        this.f1838a.setThreshold(this.K.getSuggestThreshold());
        this.f1838a.setImeOptions(this.K.getImeOptions());
        int inputType = this.K.getInputType();
        if ((inputType & 15) == 1) {
            inputType &= FlowLayout.SPACING_ALIGN;
            if (this.K.getSuggestAuthority() != null) {
                inputType |= 589824;
            }
        }
        this.f1838a.setInputType(inputType);
        g1.a aVar = this.f1863z;
        if (aVar != null) {
            aVar.a(null);
        }
        if (this.K.getSuggestAuthority() != null) {
            e0 e0Var = new e0(getContext(), this, this.K, this.O);
            this.f1863z = e0Var;
            this.f1838a.setAdapter(e0Var);
            ((e0) this.f1863z).x(this.C ? 2 : 1);
        }
    }

    private void I() {
        this.f1841d.setVisibility((o() && (this.f1843f.getVisibility() == 0 || this.f1845h.getVisibility() == 0)) ? 0 : 8);
    }

    private void J(boolean z10) {
        this.f1843f.setVisibility((this.A && o() && hasFocus() && (z10 || !this.F)) ? 0 : 8);
    }

    private void K(boolean z10) {
        this.f1862y = z10;
        int i11 = 8;
        int i12 = z10 ? 0 : 8;
        boolean zIsEmpty = TextUtils.isEmpty(this.f1838a.getText());
        this.f1842e.setVisibility(i12);
        J(!zIsEmpty);
        this.f1839b.setVisibility(z10 ? 8 : 0);
        if (this.f1852o.getDrawable() != null && !this.f1861x) {
            i11 = 0;
        }
        this.f1852o.setVisibility(i11);
        E();
        L(zIsEmpty);
        I();
    }

    private void L(boolean z10) {
        int i11 = 8;
        if (this.F && !isIconified() && z10) {
            this.f1843f.setVisibility(8);
            i11 = 0;
        }
        this.f1845h.setVisibility(i11);
    }

    private Intent e(String str, Uri uri, String str2, String str3, int i11, String str4) {
        Intent intent = new Intent(str);
        intent.addFlags(ASTNode.DEOP);
        if (uri != null) {
            intent.setData(uri);
        }
        intent.putExtra("user_query", this.H);
        if (str3 != null) {
            intent.putExtra("query", str3);
        }
        if (str2 != null) {
            intent.putExtra("intent_extra_data_key", str2);
        }
        Bundle bundle = this.L;
        if (bundle != null) {
            intent.putExtra("app_data", bundle);
        }
        if (i11 != 0) {
            intent.putExtra("action_key", i11);
            intent.putExtra("action_msg", str4);
        }
        intent.setComponent(this.K.getSearchActivity());
        return intent;
    }

    private Intent f(Cursor cursor, int i11, String str) {
        int position;
        String strO;
        try {
            String strO2 = e0.o(cursor, "suggest_intent_action");
            if (strO2 == null) {
                strO2 = this.K.getSuggestIntentAction();
            }
            if (strO2 == null) {
                strO2 = "android.intent.action.SEARCH";
            }
            String str2 = strO2;
            String strO3 = e0.o(cursor, "suggest_intent_data");
            if (strO3 == null) {
                strO3 = this.K.getSuggestIntentData();
            }
            if (strO3 != null && (strO = e0.o(cursor, "suggest_intent_data_id")) != null) {
                strO3 = strO3 + "/" + Uri.encode(strO);
            }
            return e(str2, strO3 == null ? null : Uri.parse(strO3), e0.o(cursor, "suggest_intent_extra_data"), e0.o(cursor, "suggest_intent_query"), i11, str);
        } catch (RuntimeException e11) {
            try {
                position = cursor.getPosition();
            } catch (RuntimeException unused) {
                position = -1;
            }
            Log.w("SearchView", "Search suggestions cursor at row " + position + " returned exception.", e11);
            return null;
        }
    }

    private Intent g(Intent intent, SearchableInfo searchableInfo) {
        ComponentName searchActivity = searchableInfo.getSearchActivity();
        Intent intent2 = new Intent("android.intent.action.SEARCH");
        intent2.setComponent(searchActivity);
        PendingIntent activity = PendingIntent.getActivity(getContext(), 0, intent2, 1107296256);
        Bundle bundle = new Bundle();
        Bundle bundle2 = this.L;
        if (bundle2 != null) {
            bundle.putParcelable("app_data", bundle2);
        }
        Intent intent3 = new Intent(intent);
        Resources resources = getResources();
        String string = searchableInfo.getVoiceLanguageModeId() != 0 ? resources.getString(searchableInfo.getVoiceLanguageModeId()) : "free_form";
        String string2 = searchableInfo.getVoicePromptTextId() != 0 ? resources.getString(searchableInfo.getVoicePromptTextId()) : null;
        String string3 = searchableInfo.getVoiceLanguageId() != 0 ? resources.getString(searchableInfo.getVoiceLanguageId()) : null;
        int voiceMaxResults = searchableInfo.getVoiceMaxResults() != 0 ? searchableInfo.getVoiceMaxResults() : 1;
        intent3.putExtra("android.speech.extra.LANGUAGE_MODEL", string);
        intent3.putExtra("android.speech.extra.PROMPT", string2);
        intent3.putExtra("android.speech.extra.LANGUAGE", string3);
        intent3.putExtra("android.speech.extra.MAX_RESULTS", voiceMaxResults);
        intent3.putExtra("calling_package", searchActivity != null ? searchActivity.flattenToShortString() : null);
        intent3.putExtra("android.speech.extra.RESULTS_PENDINGINTENT", activity);
        intent3.putExtra("android.speech.extra.RESULTS_PENDINGINTENT_BUNDLE", bundle);
        return intent3;
    }

    private int getPreferredHeight() {
        return getContext().getResources().getDimensionPixelSize(R$dimen.abc_search_view_preferred_height);
    }

    private int getPreferredWidth() {
        return getContext().getResources().getDimensionPixelSize(R$dimen.abc_search_view_preferred_width);
    }

    private Intent h(Intent intent, SearchableInfo searchableInfo) {
        Intent intent2 = new Intent(intent);
        ComponentName searchActivity = searchableInfo.getSearchActivity();
        intent2.putExtra("calling_package", searchActivity == null ? null : searchActivity.flattenToShortString());
        return intent2;
    }

    private void i() {
        this.f1838a.dismissDropDown();
    }

    private void k(View view, Rect rect) {
        view.getLocationInWindow(this.f1850m);
        getLocationInWindow(this.f1851n);
        int[] iArr = this.f1850m;
        int i11 = iArr[1];
        int[] iArr2 = this.f1851n;
        int i12 = i11 - iArr2[1];
        int i13 = iArr[0] - iArr2[0];
        rect.set(i13, i12, view.getWidth() + i13, view.getHeight() + i12);
    }

    private CharSequence l(CharSequence charSequence) {
        if (!this.f1861x || this.f1853p == null) {
            return charSequence;
        }
        int textSize = (int) (((double) this.f1838a.getTextSize()) * 1.25d);
        this.f1853p.setBounds(0, 0, textSize, textSize);
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder("   ");
        spannableStringBuilder.setSpan(new ImageSpan(this.f1853p), 1, 2, 33);
        spannableStringBuilder.append(charSequence);
        return spannableStringBuilder;
    }

    private boolean m() {
        Intent intent;
        SearchableInfo searchableInfo = this.K;
        if (searchableInfo == null || !searchableInfo.getVoiceSearchEnabled()) {
            return false;
        }
        if (this.K.getVoiceSearchLaunchWebSearch()) {
            intent = this.f1856s;
        } else {
            intent = this.K.getVoiceSearchLaunchRecognizer() ? this.f1857t : null;
        }
        return (intent == null || getContext().getPackageManager().resolveActivity(intent, 65536) == null) ? false : true;
    }

    static boolean n(Context context) {
        return context.getResources().getConfiguration().orientation == 2;
    }

    private boolean o() {
        return (this.A || this.F) && !isIconified();
    }

    private void p(Intent intent) {
        if (intent == null) {
            return;
        }
        try {
            getContext().startActivity(intent);
        } catch (RuntimeException e11) {
            Log.e("SearchView", "Failed launch activity: " + intent, e11);
        }
    }

    private boolean r(int i11, int i12, String str) {
        Cursor cursorD = this.f1863z.d();
        if (cursorD == null || !cursorD.moveToPosition(i11)) {
            return false;
        }
        p(f(cursorD, i12, str));
        return true;
    }

    private void setQuery(CharSequence charSequence) {
        this.f1838a.setText(charSequence);
        this.f1838a.setSelection(TextUtils.isEmpty(charSequence) ? 0 : charSequence.length());
    }

    void A() {
        K(isIconified());
        C();
        if (this.f1838a.hasFocus()) {
            j();
        }
    }

    void B() {
        SearchableInfo searchableInfo = this.K;
        if (searchableInfo == null) {
            return;
        }
        try {
            if (searchableInfo.getVoiceSearchLaunchWebSearch()) {
                getContext().startActivity(h(this.f1856s, searchableInfo));
            } else if (searchableInfo.getVoiceSearchLaunchRecognizer()) {
                getContext().startActivity(g(this.f1857t, searchableInfo));
            }
        } catch (ActivityNotFoundException unused) {
            Log.w("SearchView", "Could not find voice search activity");
        }
    }

    void F() {
        int[] iArr = this.f1838a.hasFocus() ? ViewGroup.FOCUSED_STATE_SET : ViewGroup.EMPTY_STATE_SET;
        Drawable background = this.f1840c.getBackground();
        if (background != null) {
            background.setState(iArr);
        }
        Drawable background2 = this.f1841d.getBackground();
        if (background2 != null) {
            background2.setState(iArr);
        }
        invalidate();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void clearFocus() {
        this.D = true;
        super.clearFocus();
        this.f1838a.clearFocus();
        this.f1838a.setImeVisibility(false);
        this.D = false;
    }

    void d() {
        if (this.f1846i.getWidth() > 1) {
            Resources resources = getContext().getResources();
            int paddingLeft = this.f1840c.getPaddingLeft();
            Rect rect = new Rect();
            boolean zB = u0.b(this);
            int dimensionPixelSize = this.f1861x ? resources.getDimensionPixelSize(R$dimen.abc_dropdownitem_icon_width) + resources.getDimensionPixelSize(R$dimen.abc_dropdownitem_text_padding_left) : 0;
            this.f1838a.getDropDownBackground().getPadding(rect);
            this.f1838a.setDropDownHorizontalOffset(zB ? -rect.left : paddingLeft - (rect.left + dimensionPixelSize));
            this.f1838a.setDropDownWidth((((this.f1846i.getWidth() + rect.left) + rect.right) + dimensionPixelSize) - paddingLeft);
        }
    }

    public int getImeOptions() {
        return this.f1838a.getImeOptions();
    }

    public int getInputType() {
        return this.f1838a.getInputType();
    }

    public int getMaxWidth() {
        return this.E;
    }

    public CharSequence getQuery() {
        return this.f1838a.getText();
    }

    @Nullable
    public CharSequence getQueryHint() {
        CharSequence charSequence = this.B;
        if (charSequence != null) {
            return charSequence;
        }
        SearchableInfo searchableInfo = this.K;
        return (searchableInfo == null || searchableInfo.getHintId() == 0) ? this.f1858u : getContext().getText(this.K.getHintId());
    }

    int getSuggestionCommitIconResId() {
        return this.f1855r;
    }

    int getSuggestionRowLayout() {
        return this.f1854q;
    }

    public g1.a getSuggestionsAdapter() {
        return this.f1863z;
    }

    public boolean isIconfiedByDefault() {
        return this.f1861x;
    }

    public boolean isIconified() {
        return this.f1862y;
    }

    public boolean isQueryRefinementEnabled() {
        return this.C;
    }

    public boolean isSubmitButtonEnabled() {
        return this.A;
    }

    void j() {
        if (Build.VERSION.SDK_INT >= 29) {
            i.a(this.f1838a);
            return;
        }
        m mVar = V;
        mVar.b(this.f1838a);
        mVar.a(this.f1838a);
    }

    @Override // androidx.appcompat.view.c
    public void onActionViewCollapsed() {
        setQuery("", false);
        clearFocus();
        K(true);
        this.f1838a.setImeOptions(this.J);
        this.I = false;
    }

    @Override // androidx.appcompat.view.c
    public void onActionViewExpanded() {
        if (this.I) {
            return;
        }
        this.I = true;
        int imeOptions = this.f1838a.getImeOptions();
        this.J = imeOptions;
        this.f1838a.setImeOptions(imeOptions | ASTNode.PCTX_STORED);
        this.f1838a.setText("");
        setIconified(false);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        removeCallbacks(this.M);
        post(this.N);
        super.onDetachedFromWindow();
    }

    @Override // androidx.appcompat.widget.LinearLayoutCompat, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z10, int i11, int i12, int i13, int i14) {
        super.onLayout(z10, i11, i12, i13, i14);
        if (z10) {
            k(this.f1838a, this.f1848k);
            Rect rect = this.f1849l;
            Rect rect2 = this.f1848k;
            rect.set(rect2.left, 0, rect2.right, i14 - i12);
            n nVar = this.f1847j;
            if (nVar != null) {
                nVar.a(this.f1849l, this.f1848k);
                return;
            }
            n nVar2 = new n(this.f1849l, this.f1848k, this.f1838a);
            this.f1847j = nVar2;
            setTouchDelegate(nVar2);
        }
    }

    @Override // androidx.appcompat.widget.LinearLayoutCompat, android.view.View
    protected void onMeasure(int i11, int i12) {
        int i13;
        if (isIconified()) {
            super.onMeasure(i11, i12);
            return;
        }
        int mode = View.MeasureSpec.getMode(i11);
        int size = View.MeasureSpec.getSize(i11);
        if (mode == Integer.MIN_VALUE) {
            int i14 = this.E;
            size = i14 > 0 ? Math.min(i14, size) : Math.min(getPreferredWidth(), size);
        } else if (mode == 0) {
            size = this.E;
            if (size <= 0) {
                size = getPreferredWidth();
            }
        } else if (mode == 1073741824 && (i13 = this.E) > 0) {
            size = Math.min(i13, size);
        }
        int mode2 = View.MeasureSpec.getMode(i12);
        int size2 = View.MeasureSpec.getSize(i12);
        if (mode2 == Integer.MIN_VALUE) {
            size2 = Math.min(getPreferredHeight(), size2);
        } else if (mode2 == 0) {
            size2 = getPreferredHeight();
        }
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(size, 1073741824), View.MeasureSpec.makeMeasureSpec(size2, 1073741824));
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        K(savedState.f1864a);
        requestLayout();
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.f1864a = isIconified();
        return savedState;
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z10) {
        super.onWindowFocusChanged(z10);
        C();
    }

    void q(int i11, String str, String str2) {
        getContext().startActivity(e("android.intent.action.SEARCH", null, null, str2, i11, str));
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean requestFocus(int i11, Rect rect) {
        if (this.D || !isFocusable()) {
            return false;
        }
        if (isIconified()) {
            return super.requestFocus(i11, rect);
        }
        boolean zRequestFocus = this.f1838a.requestFocus(i11, rect);
        if (zRequestFocus) {
            K(false);
        }
        return zRequestFocus;
    }

    void s() {
        if (!TextUtils.isEmpty(this.f1838a.getText())) {
            this.f1838a.setText("");
            this.f1838a.requestFocus();
            this.f1838a.setImeVisibility(true);
        } else if (this.f1861x) {
            clearFocus();
            K(true);
        }
    }

    public void setAppSearchData(Bundle bundle) {
        this.L = bundle;
    }

    public void setIconified(boolean z10) {
        if (z10) {
            s();
        } else {
            w();
        }
    }

    public void setIconifiedByDefault(boolean z10) {
        if (this.f1861x == z10) {
            return;
        }
        this.f1861x = z10;
        K(z10);
        G();
    }

    public void setImeOptions(int i11) {
        this.f1838a.setImeOptions(i11);
    }

    public void setInputType(int i11) {
        this.f1838a.setInputType(i11);
    }

    public void setMaxWidth(int i11) {
        this.E = i11;
        requestLayout();
    }

    public void setOnCloseListener(j jVar) {
    }

    public void setOnQueryTextFocusChangeListener(View.OnFocusChangeListener onFocusChangeListener) {
        this.f1859v = onFocusChangeListener;
    }

    public void setOnQueryTextListener(k kVar) {
    }

    public void setOnSearchClickListener(View.OnClickListener onClickListener) {
        this.f1860w = onClickListener;
    }

    public void setOnSuggestionListener(l lVar) {
    }

    public void setQuery(CharSequence charSequence, boolean z10) {
        this.f1838a.setText(charSequence);
        if (charSequence != null) {
            SearchAutoComplete searchAutoComplete = this.f1838a;
            searchAutoComplete.setSelection(searchAutoComplete.length());
            this.H = charSequence;
        }
        if (!z10 || TextUtils.isEmpty(charSequence)) {
            return;
        }
        x();
    }

    public void setQueryHint(@Nullable CharSequence charSequence) {
        this.B = charSequence;
        G();
    }

    public void setQueryRefinementEnabled(boolean z10) {
        this.C = z10;
        g1.a aVar = this.f1863z;
        if (aVar instanceof e0) {
            ((e0) aVar).x(z10 ? 2 : 1);
        }
    }

    public void setSearchableInfo(SearchableInfo searchableInfo) {
        this.K = searchableInfo;
        if (searchableInfo != null) {
            H();
            G();
        }
        boolean zM = m();
        this.F = zM;
        if (zM) {
            this.f1838a.setPrivateImeOptions("nm");
        }
        K(isIconified());
    }

    public void setSubmitButtonEnabled(boolean z10) {
        this.A = z10;
        K(isIconified());
    }

    public void setSuggestionsAdapter(g1.a aVar) {
        this.f1863z = aVar;
        this.f1838a.setAdapter(aVar);
    }

    boolean t(int i11, int i12, String str) {
        r(i11, 0, null);
        this.f1838a.setImeVisibility(false);
        i();
        return true;
    }

    boolean u(int i11) {
        D(i11);
        return true;
    }

    protected void v(CharSequence charSequence) {
        setQuery(charSequence);
    }

    void w() {
        K(false);
        this.f1838a.requestFocus();
        this.f1838a.setImeVisibility(true);
        View.OnClickListener onClickListener = this.f1860w;
        if (onClickListener != null) {
            onClickListener.onClick(this);
        }
    }

    void x() {
        Editable text = this.f1838a.getText();
        if (text == null || TextUtils.getTrimmedLength(text) <= 0) {
            return;
        }
        if (this.K != null) {
            q(0, null, text.toString());
        }
        this.f1838a.setImeVisibility(false);
        i();
    }

    boolean y(View view, int i11, KeyEvent keyEvent) {
        if (this.K != null && this.f1863z != null && keyEvent.getAction() == 0 && keyEvent.hasNoModifiers()) {
            if (i11 == 66 || i11 == 84 || i11 == 61) {
                return t(this.f1838a.getListSelection(), 0, null);
            }
            if (i11 == 21 || i11 == 22) {
                this.f1838a.setSelection(i11 == 21 ? 0 : this.f1838a.length());
                this.f1838a.setListSelection(0);
                this.f1838a.clearListSelection();
                this.f1838a.b();
                return true;
            }
            if (i11 == 19) {
                this.f1838a.getListSelection();
                return false;
            }
        }
        return false;
    }

    void z(CharSequence charSequence) {
        Editable text = this.f1838a.getText();
        this.H = text;
        boolean zIsEmpty = TextUtils.isEmpty(text);
        J(!zIsEmpty);
        L(zIsEmpty);
        E();
        I();
        this.G = charSequence.toString();
    }
}
