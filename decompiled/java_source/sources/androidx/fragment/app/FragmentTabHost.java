package androidx.fragment.app;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TabHost;
import android.widget.TabWidget;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class FragmentTabHost extends TabHost implements TabHost.OnTabChangeListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ArrayList f9380a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private FrameLayout f9381b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Context f9382c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private FragmentManager f9383d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f9384e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private TabHost.OnTabChangeListener f9385f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private b f9386g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f9387h;

    static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        String f9388a;

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
            this.f9388a = parcel.readString();
        }

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        public String toString() {
            return "FragmentTabHost.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " curTab=" + this.f9388a + "}";
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i11) {
            super.writeToParcel(parcel, i11);
            parcel.writeString(this.f9388a);
        }
    }

    static class a implements TabHost.TabContentFactory {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Context f9389a;

        public a(Context context) {
            this.f9389a = context;
        }

        @Override // android.widget.TabHost.TabContentFactory
        public View createTabContent(String str) {
            View view = new View(this.f9389a);
            view.setMinimumWidth(0);
            view.setMinimumHeight(0);
            return view;
        }
    }

    static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final String f9390a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final Class f9391b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final Bundle f9392c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        Fragment f9393d;

        b(String str, Class cls, Bundle bundle) {
            this.f9390a = str;
            this.f9391b = cls;
            this.f9392c = bundle;
        }
    }

    @Deprecated
    public FragmentTabHost(@NonNull Context context) {
        super(context, null);
        this.f9380a = new ArrayList();
        e(context, null);
    }

    @Deprecated
    public FragmentTabHost(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f9380a = new ArrayList();
        e(context, attributeSet);
    }

    private w a(String str, w wVar) {
        Fragment fragment;
        b bVarD = d(str);
        if (this.f9386g != bVarD) {
            if (wVar == null) {
                wVar = this.f9383d.p();
            }
            b bVar = this.f9386g;
            if (bVar != null && (fragment = bVar.f9393d) != null) {
                wVar.m(fragment);
            }
            if (bVarD != null) {
                Fragment fragment2 = bVarD.f9393d;
                if (fragment2 == null) {
                    Fragment fragmentInstantiate = this.f9383d.w0().instantiate(this.f9382c.getClassLoader(), bVarD.f9391b.getName());
                    bVarD.f9393d = fragmentInstantiate;
                    fragmentInstantiate.setArguments(bVarD.f9392c);
                    wVar.c(this.f9384e, bVarD.f9393d, bVarD.f9390a);
                } else {
                    wVar.h(fragment2);
                }
            }
            this.f9386g = bVarD;
        }
        return wVar;
    }

    private void b() {
        if (this.f9381b == null) {
            FrameLayout frameLayout = (FrameLayout) findViewById(this.f9384e);
            this.f9381b = frameLayout;
            if (frameLayout != null) {
                return;
            }
            throw new IllegalStateException("No tab content FrameLayout found for id " + this.f9384e);
        }
    }

    private void c(Context context) {
        if (findViewById(R.id.tabs) == null) {
            LinearLayout linearLayout = new LinearLayout(context);
            linearLayout.setOrientation(1);
            addView(linearLayout, new FrameLayout.LayoutParams(-1, -1));
            TabWidget tabWidget = new TabWidget(context);
            tabWidget.setId(R.id.tabs);
            tabWidget.setOrientation(0);
            linearLayout.addView(tabWidget, new LinearLayout.LayoutParams(-1, -2, 0.0f));
            FrameLayout frameLayout = new FrameLayout(context);
            frameLayout.setId(R.id.tabcontent);
            linearLayout.addView(frameLayout, new LinearLayout.LayoutParams(0, 0, 0.0f));
            FrameLayout frameLayout2 = new FrameLayout(context);
            this.f9381b = frameLayout2;
            frameLayout2.setId(this.f9384e);
            linearLayout.addView(frameLayout2, new LinearLayout.LayoutParams(-1, 0, 1.0f));
        }
    }

    private b d(String str) {
        int size = this.f9380a.size();
        for (int i11 = 0; i11 < size; i11++) {
            b bVar = (b) this.f9380a.get(i11);
            if (bVar.f9390a.equals(str)) {
                return bVar;
            }
        }
        return null;
    }

    private void e(Context context, AttributeSet attributeSet) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, new int[]{R.attr.inflatedId}, 0, 0);
        this.f9384e = typedArrayObtainStyledAttributes.getResourceId(0, 0);
        typedArrayObtainStyledAttributes.recycle();
        super.setOnTabChangedListener(this);
    }

    @Deprecated
    public void addTab(@NonNull TabHost.TabSpec tabSpec, @NonNull Class<?> cls, @Nullable Bundle bundle) {
        tabSpec.setContent(new a(this.f9382c));
        String tag = tabSpec.getTag();
        b bVar = new b(tag, cls, bundle);
        if (this.f9387h) {
            Fragment fragmentK0 = this.f9383d.k0(tag);
            bVar.f9393d = fragmentK0;
            if (fragmentK0 != null && !fragmentK0.isDetached()) {
                w wVarP = this.f9383d.p();
                wVarP.m(bVar.f9393d);
                wVarP.i();
            }
        }
        this.f9380a.add(bVar);
        addTab(tabSpec);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        String currentTabTag = getCurrentTabTag();
        int size = this.f9380a.size();
        w wVarP = null;
        for (int i11 = 0; i11 < size; i11++) {
            b bVar = (b) this.f9380a.get(i11);
            Fragment fragmentK0 = this.f9383d.k0(bVar.f9390a);
            bVar.f9393d = fragmentK0;
            if (fragmentK0 != null && !fragmentK0.isDetached()) {
                if (bVar.f9390a.equals(currentTabTag)) {
                    this.f9386g = bVar;
                } else {
                    if (wVarP == null) {
                        wVarP = this.f9383d.p();
                    }
                    wVarP.m(bVar.f9393d);
                }
            }
        }
        this.f9387h = true;
        w wVarA = a(currentTabTag, wVarP);
        if (wVarA != null) {
            wVarA.i();
            this.f9383d.g0();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.f9387h = false;
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        setCurrentTabByTag(savedState.f9388a);
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.f9388a = getCurrentTabTag();
        return savedState;
    }

    @Override // android.widget.TabHost.OnTabChangeListener
    @Deprecated
    public void onTabChanged(@Nullable String str) {
        w wVarA;
        if (this.f9387h && (wVarA = a(str, null)) != null) {
            wVarA.i();
        }
        TabHost.OnTabChangeListener onTabChangeListener = this.f9385f;
        if (onTabChangeListener != null) {
            onTabChangeListener.onTabChanged(str);
        }
    }

    @Override // android.widget.TabHost
    @Deprecated
    public void setOnTabChangedListener(@Nullable TabHost.OnTabChangeListener onTabChangeListener) {
        this.f9385f = onTabChangeListener;
    }

    @Override // android.widget.TabHost
    @Deprecated
    public void setup() {
        throw new IllegalStateException("Must call setup() that takes a Context and FragmentManager");
    }

    @Deprecated
    public void setup(@NonNull Context context, @NonNull FragmentManager fragmentManager) {
        c(context);
        super.setup();
        this.f9382c = context;
        this.f9383d = fragmentManager;
        b();
    }

    @Deprecated
    public void setup(@NonNull Context context, @NonNull FragmentManager fragmentManager, int i11) {
        c(context);
        super.setup();
        this.f9382c = context;
        this.f9383d = fragmentManager;
        this.f9384e = i11;
        b();
        this.f9381b.setId(i11);
        if (getId() == -1) {
            setId(R.id.tabhost);
        }
    }
}
