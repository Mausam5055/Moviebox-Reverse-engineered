package com.google.android.exoplayer2.ui;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckedTextView;
import android.widget.LinearLayout;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.o1;
import com.google.android.exoplayer2.source.TrackGroup;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class TrackSelectionView extends LinearLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f27080a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final LayoutInflater f27081b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final CheckedTextView f27082c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final CheckedTextView f27083d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final b f27084e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final SparseArray f27085f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f27086g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f27087h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private o0 f27088i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private CheckedTextView[][] f27089j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private com.google.android.exoplayer2.trackselection.i.a f27090k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f27091l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private t9.x f27092m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private boolean f27093n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private Comparator f27094o;

    private class b implements View.OnClickListener {
        private b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            TrackSelectionView.this.f(view);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    static final class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f27096a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f27097b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final o1 f27098c;

        public c(int i11, int i12, o1 o1Var) {
            this.f27096a = i11;
            this.f27097b = i12;
            this.f27098c = o1Var;
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
        this.f27085f = new SparseArray();
        setSaveFromParentEnabled(false);
        TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(new int[]{R.attr.selectableItemBackground});
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(0, 0);
        this.f27080a = resourceId;
        typedArrayObtainStyledAttributes.recycle();
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(context);
        this.f27081b = layoutInflaterFrom;
        b bVar = new b();
        this.f27084e = bVar;
        this.f27088i = new g(getResources());
        this.f27092m = t9.x.f76163d;
        CheckedTextView checkedTextView = (CheckedTextView) layoutInflaterFrom.inflate(R.layout.simple_list_item_single_choice, (ViewGroup) this, false);
        this.f27082c = checkedTextView;
        checkedTextView.setBackgroundResource(resourceId);
        checkedTextView.setText(R$string.exo_track_selection_none);
        checkedTextView.setEnabled(false);
        checkedTextView.setFocusable(true);
        checkedTextView.setOnClickListener(bVar);
        checkedTextView.setVisibility(8);
        addView(checkedTextView);
        addView(layoutInflaterFrom.inflate(R$layout.exo_list_divider, (ViewGroup) this, false));
        CheckedTextView checkedTextView2 = (CheckedTextView) layoutInflaterFrom.inflate(R.layout.simple_list_item_single_choice, (ViewGroup) this, false);
        this.f27083d = checkedTextView2;
        checkedTextView2.setBackgroundResource(resourceId);
        checkedTextView2.setText(R$string.exo_track_selection_auto);
        checkedTextView2.setEnabled(false);
        checkedTextView2.setFocusable(true);
        checkedTextView2.setOnClickListener(bVar);
        addView(checkedTextView2);
    }

    private static int[] c(int[] iArr, int i11) {
        int[] iArrCopyOf = Arrays.copyOf(iArr, iArr.length + 1);
        iArrCopyOf[iArrCopyOf.length - 1] = i11;
        return iArrCopyOf;
    }

    private static int[] d(int[] iArr, int i11) {
        int[] iArr2 = new int[iArr.length - 1];
        int i12 = 0;
        for (int i13 : iArr) {
            if (i13 != i11) {
                iArr2[i12] = i13;
                i12++;
            }
        }
        return iArr2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int e(Comparator comparator, c cVar, c cVar2) {
        return comparator.compare(cVar.f27098c, cVar2.f27098c);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f(View view) {
        if (view == this.f27082c) {
            h();
        } else if (view == this.f27083d) {
            g();
        } else {
            i(view);
        }
        l();
    }

    private void g() {
        this.f27093n = false;
        this.f27085f.clear();
    }

    private void h() {
        this.f27093n = true;
        this.f27085f.clear();
    }

    private void i(View view) {
        this.f27093n = false;
        c cVar = (c) com.google.android.exoplayer2.util.a.e(view.getTag());
        int i11 = cVar.f27096a;
        int i12 = cVar.f27097b;
        com.google.android.exoplayer2.trackselection.e.C0379e c0379e = (com.google.android.exoplayer2.trackselection.e.C0379e) this.f27085f.get(i11);
        com.google.android.exoplayer2.util.a.e(this.f27090k);
        if (c0379e == null) {
            if (!this.f27087h && this.f27085f.size() > 0) {
                this.f27085f.clear();
            }
            this.f27085f.put(i11, new com.google.android.exoplayer2.trackselection.e.C0379e(i11, i12));
            return;
        }
        int i13 = c0379e.f26837c;
        int[] iArr = c0379e.f26836b;
        boolean zIsChecked = ((CheckedTextView) view).isChecked();
        boolean zJ = j(i11);
        boolean z10 = zJ || k();
        if (zIsChecked && z10) {
            if (i13 == 1) {
                this.f27085f.remove(i11);
                return;
            } else {
                this.f27085f.put(i11, new com.google.android.exoplayer2.trackselection.e.C0379e(i11, d(iArr, i12)));
                return;
            }
        }
        if (zIsChecked) {
            return;
        }
        if (zJ) {
            this.f27085f.put(i11, new com.google.android.exoplayer2.trackselection.e.C0379e(i11, c(iArr, i12)));
        } else {
            this.f27085f.put(i11, new com.google.android.exoplayer2.trackselection.e.C0379e(i11, i12));
        }
    }

    private boolean j(int i11) {
        return this.f27086g && this.f27092m.b(i11).f25673a > 1 && this.f27090k.a(this.f27091l, i11, false) != 0;
    }

    private boolean k() {
        return this.f27087h && this.f27092m.f76165a > 1;
    }

    private void l() {
        this.f27082c.setChecked(this.f27093n);
        this.f27083d.setChecked(!this.f27093n && this.f27085f.size() == 0);
        for (int i11 = 0; i11 < this.f27089j.length; i11++) {
            com.google.android.exoplayer2.trackselection.e.C0379e c0379e = (com.google.android.exoplayer2.trackselection.e.C0379e) this.f27085f.get(i11);
            int i12 = 0;
            while (true) {
                CheckedTextView[] checkedTextViewArr = this.f27089j[i11];
                if (i12 < checkedTextViewArr.length) {
                    if (c0379e != null) {
                        this.f27089j[i11][i12].setChecked(c0379e.b(((c) com.google.android.exoplayer2.util.a.e(checkedTextViewArr[i12].getTag())).f27097b));
                    } else {
                        checkedTextViewArr[i12].setChecked(false);
                    }
                    i12++;
                }
            }
        }
    }

    private void m() {
        for (int childCount = getChildCount() - 1; childCount >= 3; childCount--) {
            removeViewAt(childCount);
        }
        if (this.f27090k == null) {
            this.f27082c.setEnabled(false);
            this.f27083d.setEnabled(false);
            return;
        }
        this.f27082c.setEnabled(true);
        this.f27083d.setEnabled(true);
        t9.x xVarF = this.f27090k.f(this.f27091l);
        this.f27092m = xVarF;
        this.f27089j = new CheckedTextView[xVarF.f76165a][];
        boolean zK = k();
        int i11 = 0;
        while (true) {
            t9.x xVar = this.f27092m;
            if (i11 >= xVar.f76165a) {
                l();
                return;
            }
            TrackGroup trackGroupB = xVar.b(i11);
            boolean zJ = j(i11);
            CheckedTextView[][] checkedTextViewArr = this.f27089j;
            int i12 = trackGroupB.f25673a;
            checkedTextViewArr[i11] = new CheckedTextView[i12];
            c[] cVarArr = new c[i12];
            for (int i13 = 0; i13 < trackGroupB.f25673a; i13++) {
                cVarArr[i13] = new c(i11, i13, trackGroupB.c(i13));
            }
            Comparator comparator = this.f27094o;
            if (comparator != null) {
                Arrays.sort(cVarArr, comparator);
            }
            for (int i14 = 0; i14 < i12; i14++) {
                if (i14 == 0) {
                    addView(this.f27081b.inflate(R$layout.exo_list_divider, (ViewGroup) this, false));
                }
                CheckedTextView checkedTextView = (CheckedTextView) this.f27081b.inflate((zJ || zK) ? R.layout.simple_list_item_multiple_choice : R.layout.simple_list_item_single_choice, (ViewGroup) this, false);
                checkedTextView.setBackgroundResource(this.f27080a);
                checkedTextView.setText(this.f27088i.a(cVarArr[i14].f27098c));
                checkedTextView.setTag(cVarArr[i14]);
                if (this.f27090k.g(this.f27091l, i11, i14) == 4) {
                    checkedTextView.setFocusable(true);
                    checkedTextView.setOnClickListener(this.f27084e);
                } else {
                    checkedTextView.setFocusable(false);
                    checkedTextView.setEnabled(false);
                }
                this.f27089j[i11][i14] = checkedTextView;
                addView(checkedTextView);
            }
            i11++;
        }
    }

    public boolean getIsDisabled() {
        return this.f27093n;
    }

    public List<com.google.android.exoplayer2.trackselection.e.C0379e> getOverrides() {
        ArrayList arrayList = new ArrayList(this.f27085f.size());
        for (int i11 = 0; i11 < this.f27085f.size(); i11++) {
            arrayList.add((com.google.android.exoplayer2.trackselection.e.C0379e) this.f27085f.valueAt(i11));
        }
        return arrayList;
    }

    public void init(com.google.android.exoplayer2.trackselection.i.a aVar, int i11, boolean z10, List<com.google.android.exoplayer2.trackselection.e.C0379e> list, @Nullable final Comparator<o1> comparator, @Nullable d dVar) {
        this.f27090k = aVar;
        this.f27091l = i11;
        this.f27093n = z10;
        this.f27094o = comparator == null ? null : new Comparator() { // from class: com.google.android.exoplayer2.ui.p0
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return TrackSelectionView.e(comparator, (TrackSelectionView.c) obj, (TrackSelectionView.c) obj2);
            }
        };
        int size = this.f27087h ? list.size() : Math.min(list.size(), 1);
        for (int i12 = 0; i12 < size; i12++) {
            com.google.android.exoplayer2.trackselection.e.C0379e c0379e = list.get(i12);
            this.f27085f.put(c0379e.f26835a, c0379e);
        }
        m();
    }

    public void setAllowAdaptiveSelections(boolean z10) {
        if (this.f27086g != z10) {
            this.f27086g = z10;
            m();
        }
    }

    public void setAllowMultipleOverrides(boolean z10) {
        if (this.f27087h != z10) {
            this.f27087h = z10;
            if (!z10 && this.f27085f.size() > 1) {
                for (int size = this.f27085f.size() - 1; size > 0; size--) {
                    this.f27085f.remove(size);
                }
            }
            m();
        }
    }

    public void setShowDisableOption(boolean z10) {
        this.f27082c.setVisibility(z10 ? 0 : 8);
    }

    public void setTrackNameProvider(o0 o0Var) {
        this.f27088i = (o0) com.google.android.exoplayer2.util.a.e(o0Var);
        m();
    }
}
