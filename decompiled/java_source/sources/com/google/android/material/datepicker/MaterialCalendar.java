package com.google.android.material.datepicker;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.os.Bundle;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.GridView;
import android.widget.ListAdapter;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.R$dimen;
import com.google.android.material.R$id;
import com.google.android.material.R$integer;
import com.google.android.material.R$layout;
import com.google.android.material.R$string;
import com.google.android.material.button.MaterialButton;
import java.util.Calendar;
import java.util.Iterator;

/* JADX INFO: loaded from: classes4.dex */
public final class MaterialCalendar<S> extends p {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    static final Object f28768o = "MONTHS_VIEW_GROUP_TAG";

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    static final Object f28769p = "NAVIGATION_PREV_TAG";

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    static final Object f28770q = "NAVIGATION_NEXT_TAG";

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    static final Object f28771r = "SELECTOR_TOGGLE_TAG";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f28772b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private DateSelector f28773c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private CalendarConstraints f28774d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private DayViewDecorator f28775e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Month f28776f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private CalendarSelector f28777g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private com.google.android.material.datepicker.b f28778h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private RecyclerView f28779i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private RecyclerView f28780j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private View f28781k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private View f28782l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private View f28783m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private View f28784n;

    enum CalendarSelector {
        DAY,
        YEAR
    }

    class a implements View.OnClickListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ n f28785a;

        a(n nVar) {
            this.f28785a = nVar;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            int iFindLastVisibleItemPosition = MaterialCalendar.this.m0().findLastVisibleItemPosition() - 1;
            if (iFindLastVisibleItemPosition >= 0) {
                MaterialCalendar.this.p0(this.f28785a.h(iFindLastVisibleItemPosition));
            }
        }
    }

    class b extends AccessibilityDelegateCompat {
        b() {
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
            accessibilityNodeInfoCompat.setCollectionInfo(null);
        }
    }

    class c extends q {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ int f28788a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(Context context, int i11, boolean z10, int i12) {
            super(context, i11, z10);
            this.f28788a = i12;
        }

        @Override // androidx.recyclerview.widget.LinearLayoutManager
        protected void calculateExtraLayoutSpace(RecyclerView.y yVar, int[] iArr) {
            if (this.f28788a == 0) {
                iArr[0] = MaterialCalendar.this.f28780j.getWidth();
                iArr[1] = MaterialCalendar.this.f28780j.getWidth();
            } else {
                iArr[0] = MaterialCalendar.this.f28780j.getHeight();
                iArr[1] = MaterialCalendar.this.f28780j.getHeight();
            }
        }
    }

    class d implements k {
        d() {
        }

        @Override // com.google.android.material.datepicker.MaterialCalendar.k
        public void a(long j11) {
            if (MaterialCalendar.this.f28774d.getDateValidator().isValid(j11)) {
                MaterialCalendar.this.f28773c.select(j11);
                Iterator it = MaterialCalendar.this.f28908a.iterator();
                while (it.hasNext()) {
                    ((o) it.next()).b(MaterialCalendar.this.f28773c.getSelection());
                }
                MaterialCalendar.this.f28780j.getAdapter().notifyDataSetChanged();
                if (MaterialCalendar.this.f28779i != null) {
                    MaterialCalendar.this.f28779i.getAdapter().notifyDataSetChanged();
                }
            }
        }
    }

    class e extends AccessibilityDelegateCompat {
        e() {
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
            accessibilityNodeInfoCompat.setScrollable(false);
        }
    }

    class f extends RecyclerView.l {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Calendar f28792a = x.s();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final Calendar f28793b = x.s();

        f() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.l
        public void onDraw(Canvas canvas, RecyclerView recyclerView, RecyclerView.y yVar) {
            if ((recyclerView.getAdapter() instanceof y) && (recyclerView.getLayoutManager() instanceof GridLayoutManager)) {
                y yVar2 = (y) recyclerView.getAdapter();
                GridLayoutManager gridLayoutManager = (GridLayoutManager) recyclerView.getLayoutManager();
                for (androidx.core.util.e eVar : MaterialCalendar.this.f28773c.getSelectedRanges()) {
                    Object obj = eVar.f8267a;
                    if (obj != null && eVar.f8268b != null) {
                        this.f28792a.setTimeInMillis(((Long) obj).longValue());
                        this.f28793b.setTimeInMillis(((Long) eVar.f8268b).longValue());
                        int i11 = yVar2.i(this.f28792a.get(1));
                        int i12 = yVar2.i(this.f28793b.get(1));
                        View viewFindViewByPosition = gridLayoutManager.findViewByPosition(i11);
                        View viewFindViewByPosition2 = gridLayoutManager.findViewByPosition(i12);
                        int iU = i11 / gridLayoutManager.U();
                        int iU2 = i12 / gridLayoutManager.U();
                        int i13 = iU;
                        while (i13 <= iU2) {
                            View viewFindViewByPosition3 = gridLayoutManager.findViewByPosition(gridLayoutManager.U() * i13);
                            if (viewFindViewByPosition3 != null) {
                                canvas.drawRect((i13 != iU || viewFindViewByPosition == null) ? 0 : viewFindViewByPosition.getLeft() + (viewFindViewByPosition.getWidth() / 2), viewFindViewByPosition3.getTop() + MaterialCalendar.this.f28778h.f28867d.c(), (i13 != iU2 || viewFindViewByPosition2 == null) ? recyclerView.getWidth() : viewFindViewByPosition2.getLeft() + (viewFindViewByPosition2.getWidth() / 2), viewFindViewByPosition3.getBottom() - MaterialCalendar.this.f28778h.f28867d.b(), MaterialCalendar.this.f28778h.f28871h);
                            }
                            i13++;
                        }
                    }
                }
            }
        }
    }

    class g extends AccessibilityDelegateCompat {
        g() {
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
            accessibilityNodeInfoCompat.setHintText(MaterialCalendar.this.f28784n.getVisibility() == 0 ? MaterialCalendar.this.getString(R$string.mtrl_picker_toggle_to_year_selection) : MaterialCalendar.this.getString(R$string.mtrl_picker_toggle_to_day_selection));
        }
    }

    class h extends RecyclerView.r {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ n f28796a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ MaterialButton f28797b;

        h(n nVar, MaterialButton materialButton) {
            this.f28796a = nVar;
            this.f28797b = materialButton;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.r
        public void onScrollStateChanged(RecyclerView recyclerView, int i11) {
            if (i11 == 0) {
                recyclerView.announceForAccessibility(this.f28797b.getText());
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.r
        public void onScrolled(RecyclerView recyclerView, int i11, int i12) {
            int iFindFirstVisibleItemPosition = i11 < 0 ? MaterialCalendar.this.m0().findFirstVisibleItemPosition() : MaterialCalendar.this.m0().findLastVisibleItemPosition();
            MaterialCalendar.this.f28776f = this.f28796a.h(iFindFirstVisibleItemPosition);
            this.f28797b.setText(this.f28796a.i(iFindFirstVisibleItemPosition));
        }
    }

    class i implements View.OnClickListener {
        i() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MaterialCalendar.this.s0();
        }
    }

    class j implements View.OnClickListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ n f28800a;

        j(n nVar) {
            this.f28800a = nVar;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            int iFindFirstVisibleItemPosition = MaterialCalendar.this.m0().findFirstVisibleItemPosition() + 1;
            if (iFindFirstVisibleItemPosition < MaterialCalendar.this.f28780j.getAdapter().getItemCount()) {
                MaterialCalendar.this.p0(this.f28800a.h(iFindFirstVisibleItemPosition));
            }
        }
    }

    interface k {
        void a(long j11);
    }

    private void e0(View view, n nVar) {
        MaterialButton materialButton = (MaterialButton) view.findViewById(R$id.month_navigation_fragment_toggle);
        materialButton.setTag(f28771r);
        ViewCompat.setAccessibilityDelegate(materialButton, new g());
        View viewFindViewById = view.findViewById(R$id.month_navigation_previous);
        this.f28781k = viewFindViewById;
        viewFindViewById.setTag(f28769p);
        View viewFindViewById2 = view.findViewById(R$id.month_navigation_next);
        this.f28782l = viewFindViewById2;
        viewFindViewById2.setTag(f28770q);
        this.f28783m = view.findViewById(R$id.mtrl_calendar_year_selector_frame);
        this.f28784n = view.findViewById(R$id.mtrl_calendar_day_selector_frame);
        q0(CalendarSelector.DAY);
        materialButton.setText(this.f28776f.i());
        this.f28780j.addOnScrollListener(new h(nVar, materialButton));
        materialButton.setOnClickListener(new i());
        this.f28782l.setOnClickListener(new j(nVar));
        this.f28781k.setOnClickListener(new a(nVar));
    }

    private RecyclerView.l f0() {
        return new f();
    }

    static int k0(Context context) {
        return context.getResources().getDimensionPixelSize(R$dimen.mtrl_calendar_day_height);
    }

    private static int l0(Context context) {
        Resources resources = context.getResources();
        int dimensionPixelSize = resources.getDimensionPixelSize(R$dimen.mtrl_calendar_navigation_height) + resources.getDimensionPixelOffset(R$dimen.mtrl_calendar_navigation_top_padding) + resources.getDimensionPixelOffset(R$dimen.mtrl_calendar_navigation_bottom_padding);
        int dimensionPixelSize2 = resources.getDimensionPixelSize(R$dimen.mtrl_calendar_days_of_week_height);
        int i11 = m.f28891g;
        return dimensionPixelSize + dimensionPixelSize2 + (resources.getDimensionPixelSize(R$dimen.mtrl_calendar_day_height) * i11) + ((i11 - 1) * resources.getDimensionPixelOffset(R$dimen.mtrl_calendar_month_vertical_padding)) + resources.getDimensionPixelOffset(R$dimen.mtrl_calendar_bottom_padding);
    }

    public static MaterialCalendar n0(DateSelector dateSelector, int i11, CalendarConstraints calendarConstraints, DayViewDecorator dayViewDecorator) {
        MaterialCalendar materialCalendar = new MaterialCalendar();
        Bundle bundle = new Bundle();
        bundle.putInt("THEME_RES_ID_KEY", i11);
        bundle.putParcelable("GRID_SELECTOR_KEY", dateSelector);
        bundle.putParcelable("CALENDAR_CONSTRAINTS_KEY", calendarConstraints);
        bundle.putParcelable("DAY_VIEW_DECORATOR_KEY", dayViewDecorator);
        bundle.putParcelable("CURRENT_MONTH_KEY", calendarConstraints.getOpenAt());
        materialCalendar.setArguments(bundle);
        return materialCalendar;
    }

    private void o0(final int i11) {
        this.f28780j.post(new Runnable() { // from class: com.google.android.material.datepicker.MaterialCalendar.11
            @Override // java.lang.Runnable
            public void run() {
                MaterialCalendar.this.f28780j.smoothScrollToPosition(i11);
            }
        });
    }

    private void r0() {
        ViewCompat.setAccessibilityDelegate(this.f28780j, new e());
    }

    @Override // com.google.android.material.datepicker.p
    public boolean V(o oVar) {
        return super.V(oVar);
    }

    CalendarConstraints g0() {
        return this.f28774d;
    }

    com.google.android.material.datepicker.b h0() {
        return this.f28778h;
    }

    Month i0() {
        return this.f28776f;
    }

    public DateSelector j0() {
        return this.f28773c;
    }

    LinearLayoutManager m0() {
        return (LinearLayoutManager) this.f28780j.getLayoutManager();
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle == null) {
            bundle = getArguments();
        }
        this.f28772b = bundle.getInt("THEME_RES_ID_KEY");
        this.f28773c = (DateSelector) bundle.getParcelable("GRID_SELECTOR_KEY");
        this.f28774d = (CalendarConstraints) bundle.getParcelable("CALENDAR_CONSTRAINTS_KEY");
        this.f28775e = (DayViewDecorator) bundle.getParcelable("DAY_VIEW_DECORATOR_KEY");
        this.f28776f = (Month) bundle.getParcelable("CURRENT_MONTH_KEY");
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        int i11;
        int i12;
        ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(getContext(), this.f28772b);
        this.f28778h = new com.google.android.material.datepicker.b(contextThemeWrapper);
        LayoutInflater layoutInflaterCloneInContext = layoutInflater.cloneInContext(contextThemeWrapper);
        Month start = this.f28774d.getStart();
        if (MaterialDatePicker.m0(contextThemeWrapper)) {
            i11 = R$layout.mtrl_calendar_vertical;
            i12 = 1;
        } else {
            i11 = R$layout.mtrl_calendar_horizontal;
            i12 = 0;
        }
        View viewInflate = layoutInflaterCloneInContext.inflate(i11, viewGroup, false);
        viewInflate.setMinimumHeight(l0(requireContext()));
        GridView gridView = (GridView) viewInflate.findViewById(R$id.mtrl_calendar_days_of_week);
        ViewCompat.setAccessibilityDelegate(gridView, new b());
        int firstDayOfWeek = this.f28774d.getFirstDayOfWeek();
        gridView.setAdapter((ListAdapter) (firstDayOfWeek > 0 ? new com.google.android.material.datepicker.k(firstDayOfWeek) : new com.google.android.material.datepicker.k()));
        gridView.setNumColumns(start.f28844c);
        gridView.setEnabled(false);
        this.f28780j = (RecyclerView) viewInflate.findViewById(R$id.mtrl_calendar_months);
        this.f28780j.setLayoutManager(new c(getContext(), i12, false, i12));
        this.f28780j.setTag(f28768o);
        n nVar = new n(contextThemeWrapper, this.f28773c, this.f28774d, this.f28775e, new d());
        this.f28780j.setAdapter(nVar);
        int integer = contextThemeWrapper.getResources().getInteger(R$integer.mtrl_calendar_year_selector_span);
        RecyclerView recyclerView = (RecyclerView) viewInflate.findViewById(R$id.mtrl_calendar_year_selector_frame);
        this.f28779i = recyclerView;
        if (recyclerView != null) {
            recyclerView.setHasFixedSize(true);
            this.f28779i.setLayoutManager(new GridLayoutManager((Context) contextThemeWrapper, integer, 1, false));
            this.f28779i.setAdapter(new y(this));
            this.f28779i.addItemDecoration(f0());
        }
        if (viewInflate.findViewById(R$id.month_navigation_fragment_toggle) != null) {
            e0(viewInflate, nVar);
        }
        if (!MaterialDatePicker.m0(contextThemeWrapper)) {
            new androidx.recyclerview.widget.n().attachToRecyclerView(this.f28780j);
        }
        this.f28780j.scrollToPosition(nVar.j(this.f28776f));
        r0();
        return viewInflate;
    }

    @Override // androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt("THEME_RES_ID_KEY", this.f28772b);
        bundle.putParcelable("GRID_SELECTOR_KEY", this.f28773c);
        bundle.putParcelable("CALENDAR_CONSTRAINTS_KEY", this.f28774d);
        bundle.putParcelable("DAY_VIEW_DECORATOR_KEY", this.f28775e);
        bundle.putParcelable("CURRENT_MONTH_KEY", this.f28776f);
    }

    void p0(Month month) {
        n nVar = (n) this.f28780j.getAdapter();
        int iJ = nVar.j(month);
        int iJ2 = iJ - nVar.j(this.f28776f);
        boolean z10 = Math.abs(iJ2) > 3;
        boolean z11 = iJ2 > 0;
        this.f28776f = month;
        if (z10 && z11) {
            this.f28780j.scrollToPosition(iJ - 3);
            o0(iJ);
        } else if (!z10) {
            o0(iJ);
        } else {
            this.f28780j.scrollToPosition(iJ + 3);
            o0(iJ);
        }
    }

    void q0(CalendarSelector calendarSelector) {
        this.f28777g = calendarSelector;
        if (calendarSelector == CalendarSelector.YEAR) {
            this.f28779i.getLayoutManager().scrollToPosition(((y) this.f28779i.getAdapter()).i(this.f28776f.f28843b));
            this.f28783m.setVisibility(0);
            this.f28784n.setVisibility(8);
            this.f28781k.setVisibility(8);
            this.f28782l.setVisibility(8);
            return;
        }
        if (calendarSelector == CalendarSelector.DAY) {
            this.f28783m.setVisibility(8);
            this.f28784n.setVisibility(0);
            this.f28781k.setVisibility(0);
            this.f28782l.setVisibility(0);
            p0(this.f28776f);
        }
    }

    void s0() {
        CalendarSelector calendarSelector = this.f28777g;
        CalendarSelector calendarSelector2 = CalendarSelector.YEAR;
        if (calendarSelector == calendarSelector2) {
            q0(CalendarSelector.DAY);
        } else if (calendarSelector == CalendarSelector.DAY) {
            q0(calendarSelector2);
        }
    }
}
