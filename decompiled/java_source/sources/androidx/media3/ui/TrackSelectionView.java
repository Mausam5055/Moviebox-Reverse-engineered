package androidx.media3.ui;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckedTextView;
import android.widget.LinearLayout;
import androidx.annotation.Nullable;
import com.google.common.collect.ImmutableList;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class TrackSelectionView extends LinearLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f13607a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final LayoutInflater f13608b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final CheckedTextView f13609c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final CheckedTextView f13610d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final b f13611e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final List f13612f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Map f13613g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f13614h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f13615i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private z0 f13616j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private CheckedTextView[][] f13617k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private boolean f13618l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private Comparator f13619m;

    private class b implements View.OnClickListener {
        private b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            TrackSelectionView.this.d(view);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    static final class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final androidx.media3.common.i0.a f13621a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f13622b;

        public c(androidx.media3.common.i0.a aVar, int i11) {
            this.f13621a = aVar;
            this.f13622b = i11;
        }

        public androidx.media3.common.r a() {
            return this.f13621a.b(this.f13622b);
        }
    }

    public interface d {
    }

    public TrackSelectionView(Context context) {
        this(context, null);
    }

    public TrackSelectionView(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public TrackSelectionView(Context context, @Nullable AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        setOrientation(1);
        setSaveFromParentEnabled(false);
        TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(new int[]{R.attr.selectableItemBackground});
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(0, 0);
        this.f13607a = resourceId;
        typedArrayObtainStyledAttributes.recycle();
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(context);
        this.f13608b = layoutInflaterFrom;
        b bVar = new b();
        this.f13611e = bVar;
        this.f13616j = new f(getResources());
        this.f13612f = new ArrayList();
        this.f13613g = new HashMap();
        CheckedTextView checkedTextView = (CheckedTextView) layoutInflaterFrom.inflate(R.layout.simple_list_item_single_choice, (ViewGroup) this, false);
        this.f13609c = checkedTextView;
        checkedTextView.setBackgroundResource(resourceId);
        checkedTextView.setText(R$string.exo_track_selection_none);
        checkedTextView.setEnabled(false);
        checkedTextView.setFocusable(true);
        checkedTextView.setOnClickListener(bVar);
        checkedTextView.setVisibility(8);
        addView(checkedTextView);
        addView(layoutInflaterFrom.inflate(R$layout.exo_list_divider, (ViewGroup) this, false));
        CheckedTextView checkedTextView2 = (CheckedTextView) layoutInflaterFrom.inflate(R.layout.simple_list_item_single_choice, (ViewGroup) this, false);
        this.f13610d = checkedTextView2;
        checkedTextView2.setBackgroundResource(resourceId);
        checkedTextView2.setText(R$string.exo_track_selection_auto);
        checkedTextView2.setEnabled(false);
        checkedTextView2.setFocusable(true);
        checkedTextView2.setOnClickListener(bVar);
        addView(checkedTextView2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int c(Comparator comparator, c cVar, c cVar2) {
        return comparator.compare(cVar.a(), cVar2.a());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(View view) {
        if (view == this.f13609c) {
            f();
        } else if (view == this.f13610d) {
            e();
        } else {
            g(view);
        }
        j();
    }

    private void e() {
        this.f13618l = false;
        this.f13613g.clear();
    }

    private void f() {
        this.f13618l = true;
        this.f13613g.clear();
    }

    public static Map<androidx.media3.common.f0, androidx.media3.common.g0> filterOverrides(Map<androidx.media3.common.f0, androidx.media3.common.g0> map, List<androidx.media3.common.i0.a> list, boolean z10) {
        HashMap map2 = new HashMap();
        for (int i11 = 0; i11 < list.size(); i11++) {
            androidx.media3.common.g0 g0Var = map.get(list.get(i11).a());
            if (g0Var != null && (z10 || map2.isEmpty())) {
                map2.put(g0Var.f9979a, g0Var);
            }
        }
        return map2;
    }

    private void g(View view) {
        this.f13618l = false;
        c cVar = (c) androidx.media3.common.util.a.e(view.getTag());
        androidx.media3.common.f0 f0VarA = cVar.f13621a.a();
        int i11 = cVar.f13622b;
        androidx.media3.common.g0 g0Var = (androidx.media3.common.g0) this.f13613g.get(f0VarA);
        if (g0Var == null) {
            if (!this.f13615i && this.f13613g.size() > 0) {
                this.f13613g.clear();
            }
            this.f13613g.put(f0VarA, new androidx.media3.common.g0(f0VarA, ImmutableList.of(Integer.valueOf(i11))));
            return;
        }
        ArrayList arrayList = new ArrayList(g0Var.f9980b);
        boolean zIsChecked = ((CheckedTextView) view).isChecked();
        boolean zH = h(cVar.f13621a);
        boolean z10 = zH || i();
        if (zIsChecked && z10) {
            arrayList.remove(Integer.valueOf(i11));
            if (arrayList.isEmpty()) {
                this.f13613g.remove(f0VarA);
                return;
            } else {
                this.f13613g.put(f0VarA, new androidx.media3.common.g0(f0VarA, arrayList));
                return;
            }
        }
        if (zIsChecked) {
            return;
        }
        if (!zH) {
            this.f13613g.put(f0VarA, new androidx.media3.common.g0(f0VarA, ImmutableList.of(Integer.valueOf(i11))));
        } else {
            arrayList.add(Integer.valueOf(i11));
            this.f13613g.put(f0VarA, new androidx.media3.common.g0(f0VarA, arrayList));
        }
    }

    private boolean h(androidx.media3.common.i0.a aVar) {
        return this.f13614h && aVar.e();
    }

    private boolean i() {
        return this.f13615i && this.f13612f.size() > 1;
    }

    private void j() {
        this.f13609c.setChecked(this.f13618l);
        this.f13610d.setChecked(!this.f13618l && this.f13613g.size() == 0);
        for (int i11 = 0; i11 < this.f13617k.length; i11++) {
            androidx.media3.common.g0 g0Var = (androidx.media3.common.g0) this.f13613g.get(((androidx.media3.common.i0.a) this.f13612f.get(i11)).a());
            int i12 = 0;
            while (true) {
                CheckedTextView[] checkedTextViewArr = this.f13617k[i11];
                if (i12 < checkedTextViewArr.length) {
                    if (g0Var != null) {
                        this.f13617k[i11][i12].setChecked(g0Var.f9980b.contains(Integer.valueOf(((c) androidx.media3.common.util.a.e(checkedTextViewArr[i12].getTag())).f13622b)));
                    } else {
                        checkedTextViewArr[i12].setChecked(false);
                    }
                    i12++;
                }
            }
        }
    }

    private void k() {
        for (int childCount = getChildCount() - 1; childCount >= 3; childCount--) {
            removeViewAt(childCount);
        }
        if (this.f13612f.isEmpty()) {
            this.f13609c.setEnabled(false);
            this.f13610d.setEnabled(false);
            return;
        }
        this.f13609c.setEnabled(true);
        this.f13610d.setEnabled(true);
        this.f13617k = new CheckedTextView[this.f13612f.size()][];
        boolean zI = i();
        for (int i11 = 0; i11 < this.f13612f.size(); i11++) {
            androidx.media3.common.i0.a aVar = (androidx.media3.common.i0.a) this.f13612f.get(i11);
            boolean zH = h(aVar);
            CheckedTextView[][] checkedTextViewArr = this.f13617k;
            int i12 = aVar.f10091a;
            checkedTextViewArr[i11] = new CheckedTextView[i12];
            c[] cVarArr = new c[i12];
            for (int i13 = 0; i13 < aVar.f10091a; i13++) {
                cVarArr[i13] = new c(aVar, i13);
            }
            Comparator comparator = this.f13619m;
            if (comparator != null) {
                Arrays.sort(cVarArr, comparator);
            }
            for (int i14 = 0; i14 < i12; i14++) {
                if (i14 == 0) {
                    addView(this.f13608b.inflate(R$layout.exo_list_divider, (ViewGroup) this, false));
                }
                CheckedTextView checkedTextView = (CheckedTextView) this.f13608b.inflate((zH || zI) ? R.layout.simple_list_item_multiple_choice : R.layout.simple_list_item_single_choice, (ViewGroup) this, false);
                checkedTextView.setBackgroundResource(this.f13607a);
                checkedTextView.setText(this.f13616j.a(cVarArr[i14].a()));
                checkedTextView.setTag(cVarArr[i14]);
                if (aVar.i(i14)) {
                    checkedTextView.setFocusable(true);
                    checkedTextView.setOnClickListener(this.f13611e);
                } else {
                    checkedTextView.setFocusable(false);
                    checkedTextView.setEnabled(false);
                }
                this.f13617k[i11][i14] = checkedTextView;
                addView(checkedTextView);
            }
        }
        j();
    }

    public boolean getIsDisabled() {
        return this.f13618l;
    }

    public Map<androidx.media3.common.f0, androidx.media3.common.g0> getOverrides() {
        return this.f13613g;
    }

    public void init(List<androidx.media3.common.i0.a> list, boolean z10, Map<androidx.media3.common.f0, androidx.media3.common.g0> map, @Nullable final Comparator<androidx.media3.common.r> comparator, @Nullable d dVar) {
        this.f13618l = z10;
        this.f13619m = comparator == null ? null : new Comparator() { // from class: androidx.media3.ui.a1
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return TrackSelectionView.c(comparator, (TrackSelectionView.c) obj, (TrackSelectionView.c) obj2);
            }
        };
        this.f13612f.clear();
        this.f13612f.addAll(list);
        this.f13613g.clear();
        this.f13613g.putAll(filterOverrides(map, list, this.f13615i));
        k();
    }

    public void setAllowAdaptiveSelections(boolean z10) {
        if (this.f13614h != z10) {
            this.f13614h = z10;
            k();
        }
    }

    public void setAllowMultipleOverrides(boolean z10) {
        if (this.f13615i != z10) {
            this.f13615i = z10;
            if (!z10 && this.f13613g.size() > 1) {
                Map<androidx.media3.common.f0, androidx.media3.common.g0> mapFilterOverrides = filterOverrides(this.f13613g, this.f13612f, false);
                this.f13613g.clear();
                this.f13613g.putAll(mapFilterOverrides);
            }
            k();
        }
    }

    public void setShowDisableOption(boolean z10) {
        this.f13609c.setVisibility(z10 ? 0 : 8);
    }

    public void setTrackNameProvider(z0 z0Var) {
        this.f13616j = (z0) androidx.media3.common.util.a.e(z0Var);
        k();
    }
}
