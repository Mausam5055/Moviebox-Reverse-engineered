package androidx.constraintlayout.motion.widget;

import android.content.Context;
import android.graphics.Rect;
import android.util.Log;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AnimationUtils;
import android.view.animation.BounceInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.view.animation.OvershootInterpolator;
import androidx.constraintlayout.widget.ConstraintAttribute;
import androidx.constraintlayout.widget.ConstraintLayout;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public class m {
    private HashMap B;
    private HashMap C;
    private HashMap D;
    private k[] E;
    private int F;
    private int G;
    private View H;
    private int I;
    private float J;
    private Interpolator K;
    private boolean L;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    View f7377b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    int f7378c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    String f7380e;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private androidx.constraintlayout.core.motion.utils.b[] f7386k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private androidx.constraintlayout.core.motion.utils.b f7387l;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    float f7391p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    float f7392q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private int[] f7393r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private double[] f7394s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private double[] f7395t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private String[] f7396u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private int[] f7397v;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    Rect f7376a = new Rect();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    boolean f7379d = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f7381f = -1;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private o f7382g = new o();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private o f7383h = new o();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private l f7384i = new l();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private l f7385j = new l();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    float f7388m = Float.NaN;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    float f7389n = 0.0f;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    float f7390o = 1.0f;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private int f7398w = 4;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private float[] f7399x = new float[4];

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private ArrayList f7400y = new ArrayList();

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private float[] f7401z = new float[1];
    private ArrayList A = new ArrayList();

    class a implements Interpolator {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ androidx.constraintlayout.core.motion.utils.c f7402a;

        a(androidx.constraintlayout.core.motion.utils.c cVar) {
            this.f7402a = cVar;
        }

        @Override // android.animation.TimeInterpolator
        public float getInterpolation(float f11) {
            return (float) this.f7402a.a(f11);
        }
    }

    m(View view) {
        int i11 = d.f7249f;
        this.F = i11;
        this.G = i11;
        this.H = null;
        this.I = i11;
        this.J = Float.NaN;
        this.K = null;
        this.L = false;
        H(view);
    }

    private float g(float f11, float[] fArr) {
        float f12 = 0.0f;
        if (fArr != null) {
            fArr[0] = 1.0f;
        } else {
            float f13 = this.f7390o;
            if (f13 != 1.0d) {
                float f14 = this.f7389n;
                if (f11 < f14) {
                    f11 = 0.0f;
                }
                if (f11 > f14 && f11 < 1.0d) {
                    f11 = Math.min((f11 - f14) * f13, 1.0f);
                }
            }
        }
        androidx.constraintlayout.core.motion.utils.c cVar = this.f7382g.f7404a;
        float f15 = Float.NaN;
        for (o oVar : this.f7400y) {
            androidx.constraintlayout.core.motion.utils.c cVar2 = oVar.f7404a;
            if (cVar2 != null) {
                float f16 = oVar.f7406c;
                if (f16 < f11) {
                    cVar = cVar2;
                    f12 = f16;
                } else if (Float.isNaN(f15)) {
                    f15 = oVar.f7406c;
                }
            }
        }
        if (cVar != null) {
            float f17 = (Float.isNaN(f15) ? 1.0f : f15) - f12;
            double d11 = (f11 - f12) / f17;
            f11 = (((float) cVar.a(d11)) * f17) + f12;
            if (fArr != null) {
                fArr[0] = (float) cVar.b(d11);
            }
        }
        return f11;
    }

    private static Interpolator p(Context context, int i11, String str, int i12) {
        if (i11 == -2) {
            return AnimationUtils.loadInterpolator(context, i12);
        }
        if (i11 == -1) {
            return new a(androidx.constraintlayout.core.motion.utils.c.c(str));
        }
        if (i11 == 0) {
            return new AccelerateDecelerateInterpolator();
        }
        if (i11 == 1) {
            return new AccelerateInterpolator();
        }
        if (i11 == 2) {
            return new DecelerateInterpolator();
        }
        if (i11 == 4) {
            return new BounceInterpolator();
        }
        if (i11 != 5) {
            return null;
        }
        return new OvershootInterpolator();
    }

    private float s() {
        char c11;
        float fHypot;
        float[] fArr = new float[2];
        float f11 = 1.0f / 99;
        double d11 = 0.0d;
        double d12 = 0.0d;
        float f12 = 0.0f;
        int i11 = 0;
        while (i11 < 100) {
            float f13 = i11 * f11;
            double dA = f13;
            androidx.constraintlayout.core.motion.utils.c cVar = this.f7382g.f7404a;
            float f14 = Float.NaN;
            float f15 = 0.0f;
            for (o oVar : this.f7400y) {
                androidx.constraintlayout.core.motion.utils.c cVar2 = oVar.f7404a;
                if (cVar2 != null) {
                    float f16 = oVar.f7406c;
                    if (f16 < f13) {
                        cVar = cVar2;
                        f15 = f16;
                    } else if (Float.isNaN(f14)) {
                        f14 = oVar.f7406c;
                    }
                }
            }
            if (cVar != null) {
                if (Float.isNaN(f14)) {
                    f14 = 1.0f;
                }
                float f17 = f14 - f15;
                dA = (((float) cVar.a((f13 - f15) / f17)) * f17) + f15;
            }
            this.f7386k[0].d(dA, this.f7394s);
            float f18 = f12;
            int i12 = i11;
            this.f7382g.g(dA, this.f7393r, this.f7394s, fArr, 0);
            if (i12 > 0) {
                c11 = 0;
                fHypot = (float) (((double) f18) + Math.hypot(d12 - ((double) fArr[1]), d11 - ((double) fArr[0])));
            } else {
                c11 = 0;
                fHypot = f18;
            }
            d11 = fArr[c11];
            i11 = i12 + 1;
            f12 = fHypot;
            d12 = fArr[1];
        }
        return f12;
    }

    private void w(o oVar) {
        int iBinarySearch = Collections.binarySearch(this.f7400y, oVar);
        if (iBinarySearch == 0) {
            Log.e("MotionController", " KeyPath position \"" + oVar.f7407d + "\" outside of range");
        }
        this.f7400y.add((-iBinarySearch) - 1, oVar);
    }

    private void y(o oVar) {
        oVar.q((int) this.f7377b.getX(), (int) this.f7377b.getY(), this.f7377b.getWidth(), this.f7377b.getHeight());
    }

    void A(Rect rect, Rect rect2, int i11, int i12, int i13) {
        if (i11 == 1) {
            int i14 = rect.left + rect.right;
            rect2.left = ((rect.top + rect.bottom) - rect.width()) / 2;
            rect2.top = i13 - ((i14 + rect.height()) / 2);
            rect2.right = rect2.left + rect.width();
            rect2.bottom = rect2.top + rect.height();
            return;
        }
        if (i11 == 2) {
            int i15 = rect.left + rect.right;
            rect2.left = i12 - (((rect.top + rect.bottom) + rect.width()) / 2);
            rect2.top = (i15 - rect.height()) / 2;
            rect2.right = rect2.left + rect.width();
            rect2.bottom = rect2.top + rect.height();
            return;
        }
        if (i11 == 3) {
            int i16 = rect.left + rect.right;
            rect2.left = ((rect.height() / 2) + rect.top) - (i16 / 2);
            rect2.top = i13 - ((i16 + rect.height()) / 2);
            rect2.right = rect2.left + rect.width();
            rect2.bottom = rect2.top + rect.height();
            return;
        }
        if (i11 != 4) {
            return;
        }
        int i17 = rect.left + rect.right;
        rect2.left = i12 - (((rect.bottom + rect.top) + rect.width()) / 2);
        rect2.top = (i17 - rect.height()) / 2;
        rect2.right = rect2.left + rect.width();
        rect2.bottom = rect2.top + rect.height();
    }

    void B(View view) {
        o oVar = this.f7382g;
        oVar.f7406c = 0.0f;
        oVar.f7407d = 0.0f;
        this.L = true;
        oVar.q(view.getX(), view.getY(), view.getWidth(), view.getHeight());
        this.f7383h.q(view.getX(), view.getY(), view.getWidth(), view.getHeight());
        this.f7384i.k(view);
        this.f7385j.k(view);
    }

    void C(Rect rect, androidx.constraintlayout.widget.b bVar, int i11, int i12) {
        int i13 = bVar.f7759d;
        if (i13 != 0) {
            A(rect, this.f7376a, i13, i11, i12);
            rect = this.f7376a;
        }
        o oVar = this.f7383h;
        oVar.f7406c = 1.0f;
        oVar.f7407d = 1.0f;
        y(oVar);
        this.f7383h.q(rect.left, rect.top, rect.width(), rect.height());
        this.f7383h.a(bVar.D(this.f7378c));
        this.f7385j.j(rect, bVar, i13, this.f7378c);
    }

    public void D(int i11) {
        this.F = i11;
    }

    void E(View view) {
        o oVar = this.f7382g;
        oVar.f7406c = 0.0f;
        oVar.f7407d = 0.0f;
        oVar.q(view.getX(), view.getY(), view.getWidth(), view.getHeight());
        this.f7384i.k(view);
    }

    void F(Rect rect, androidx.constraintlayout.widget.b bVar, int i11, int i12) {
        int i13 = bVar.f7759d;
        if (i13 != 0) {
            A(rect, this.f7376a, i13, i11, i12);
        }
        o oVar = this.f7382g;
        oVar.f7406c = 0.0f;
        oVar.f7407d = 0.0f;
        y(oVar);
        this.f7382g.q(rect.left, rect.top, rect.width(), rect.height());
        androidx.constraintlayout.widget.b.a aVarD = bVar.D(this.f7378c);
        this.f7382g.a(aVarD);
        this.f7388m = aVarD.f7766d.f7834g;
        this.f7384i.j(rect, bVar, i13, this.f7378c);
        this.G = aVarD.f7768f.f7856i;
        androidx.constraintlayout.widget.b.c cVar = aVarD.f7766d;
        this.I = cVar.f7838k;
        this.J = cVar.f7837j;
        Context context = this.f7377b.getContext();
        androidx.constraintlayout.widget.b.c cVar2 = aVarD.f7766d;
        this.K = p(context, cVar2.f7840m, cVar2.f7839l, cVar2.f7841n);
    }

    public void G(v0.e eVar, View view, int i11, int i12, int i13) {
        o oVar = this.f7382g;
        oVar.f7406c = 0.0f;
        oVar.f7407d = 0.0f;
        Rect rect = new Rect();
        if (i11 == 1) {
            int i14 = eVar.f76979b + eVar.f76981d;
            rect.left = ((eVar.f76980c + eVar.f76982e) - eVar.c()) / 2;
            rect.top = i12 - ((i14 + eVar.b()) / 2);
            rect.right = rect.left + eVar.c();
            rect.bottom = rect.top + eVar.b();
        } else if (i11 == 2) {
            int i15 = eVar.f76979b + eVar.f76981d;
            rect.left = i13 - (((eVar.f76980c + eVar.f76982e) + eVar.c()) / 2);
            rect.top = (i15 - eVar.b()) / 2;
            rect.right = rect.left + eVar.c();
            rect.bottom = rect.top + eVar.b();
        }
        this.f7382g.q(rect.left, rect.top, rect.width(), rect.height());
        this.f7384i.i(rect, view, i11, eVar.f76978a);
    }

    public void H(View view) {
        this.f7377b = view;
        this.f7378c = view.getId();
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams instanceof ConstraintLayout.b) {
            this.f7380e = ((ConstraintLayout.b) layoutParams).a();
        }
    }

    public void I(int i11, int i12, float f11, long j11) {
        ArrayList arrayList;
        String[] strArr;
        ConstraintAttribute constraintAttribute;
        v0.f fVarH;
        ConstraintAttribute constraintAttribute2;
        Integer num;
        v0.d dVarG;
        ConstraintAttribute constraintAttribute3;
        new HashSet();
        HashSet<String> hashSet = new HashSet();
        HashSet<String> hashSet2 = new HashSet();
        HashSet<String> hashSet3 = new HashSet();
        HashMap map = new HashMap();
        int i13 = this.F;
        if (i13 != d.f7249f) {
            this.f7382g.f7414k = i13;
        }
        this.f7384i.g(this.f7385j, hashSet2);
        ArrayList<d> arrayList2 = this.A;
        if (arrayList2 != null) {
            arrayList = null;
            for (d dVar : arrayList2) {
                if (dVar instanceof h) {
                    h hVar = (h) dVar;
                    w(new o(i11, i12, hVar, this.f7382g, this.f7383h));
                    int i14 = hVar.f7309g;
                    if (i14 != d.f7249f) {
                        this.f7381f = i14;
                    }
                } else if (dVar instanceof f) {
                    dVar.d(hashSet3);
                } else if (dVar instanceof j) {
                    dVar.d(hashSet);
                } else if (dVar instanceof k) {
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                    }
                    arrayList.add((k) dVar);
                } else {
                    dVar.h(map);
                    dVar.d(hashSet2);
                }
            }
        } else {
            arrayList = null;
        }
        if (arrayList != null) {
            this.E = (k[]) arrayList.toArray(new k[0]);
        }
        char c11 = 1;
        if (!hashSet2.isEmpty()) {
            this.C = new HashMap();
            for (String str : hashSet2) {
                if (str.startsWith("CUSTOM,")) {
                    SparseArray sparseArray = new SparseArray();
                    String str2 = str.split(",")[1];
                    for (d dVar2 : this.A) {
                        HashMap map2 = dVar2.f7254e;
                        if (map2 != null && (constraintAttribute3 = (ConstraintAttribute) map2.get(str2)) != null) {
                            sparseArray.append(dVar2.f7250a, constraintAttribute3);
                        }
                    }
                    dVarG = v0.d.f(str, sparseArray);
                } else {
                    dVarG = v0.d.g(str);
                }
                if (dVarG != null) {
                    dVarG.d(str);
                    this.C.put(str, dVarG);
                }
            }
            ArrayList<d> arrayList3 = this.A;
            if (arrayList3 != null) {
                for (d dVar3 : arrayList3) {
                    if (dVar3 instanceof e) {
                        dVar3.a(this.C);
                    }
                }
            }
            this.f7384i.a(this.C, 0);
            this.f7385j.a(this.C, 100);
            for (String str3 : this.C.keySet()) {
                int iIntValue = (!map.containsKey(str3) || (num = (Integer) map.get(str3)) == null) ? 0 : num.intValue();
                androidx.constraintlayout.core.motion.utils.i iVar = (androidx.constraintlayout.core.motion.utils.i) this.C.get(str3);
                if (iVar != null) {
                    iVar.e(iIntValue);
                }
            }
        }
        if (!hashSet.isEmpty()) {
            if (this.B == null) {
                this.B = new HashMap();
            }
            for (String str4 : hashSet) {
                if (!this.B.containsKey(str4)) {
                    if (str4.startsWith("CUSTOM,")) {
                        SparseArray sparseArray2 = new SparseArray();
                        String str5 = str4.split(",")[1];
                        for (d dVar4 : this.A) {
                            HashMap map3 = dVar4.f7254e;
                            if (map3 != null && (constraintAttribute2 = (ConstraintAttribute) map3.get(str5)) != null) {
                                sparseArray2.append(dVar4.f7250a, constraintAttribute2);
                            }
                        }
                        fVarH = v0.f.g(str4, sparseArray2);
                    } else {
                        fVarH = v0.f.h(str4, j11);
                    }
                    if (fVarH != null) {
                        fVarH.d(str4);
                        this.B.put(str4, fVarH);
                    }
                }
            }
            ArrayList<d> arrayList4 = this.A;
            if (arrayList4 != null) {
                for (d dVar5 : arrayList4) {
                    if (dVar5 instanceof j) {
                        ((j) dVar5).U(this.B);
                    }
                }
            }
            for (String str6 : this.B.keySet()) {
                ((v0.f) this.B.get(str6)).e(map.containsKey(str6) ? ((Integer) map.get(str6)).intValue() : 0);
            }
        }
        int size = this.f7400y.size();
        int i15 = size + 2;
        o[] oVarArr = new o[i15];
        oVarArr[0] = this.f7382g;
        oVarArr[size + 1] = this.f7383h;
        if (this.f7400y.size() > 0 && this.f7381f == -1) {
            this.f7381f = 0;
        }
        Iterator it = this.f7400y.iterator();
        int i16 = 1;
        while (it.hasNext()) {
            oVarArr[i16] = (o) it.next();
            i16++;
        }
        HashSet hashSet4 = new HashSet();
        for (String str7 : this.f7383h.f7418o.keySet()) {
            if (this.f7382g.f7418o.containsKey(str7)) {
                if (!hashSet2.contains("CUSTOM," + str7)) {
                    hashSet4.add(str7);
                }
            }
        }
        String[] strArr2 = (String[]) hashSet4.toArray(new String[0]);
        this.f7396u = strArr2;
        this.f7397v = new int[strArr2.length];
        int i17 = 0;
        while (true) {
            strArr = this.f7396u;
            if (i17 >= strArr.length) {
                break;
            }
            String str8 = strArr[i17];
            this.f7397v[i17] = 0;
            for (int i18 = 0; i18 < i15; i18++) {
                if (oVarArr[i18].f7418o.containsKey(str8) && (constraintAttribute = (ConstraintAttribute) oVarArr[i18].f7418o.get(str8)) != null) {
                    int[] iArr = this.f7397v;
                    iArr[i17] = iArr[i17] + constraintAttribute.h();
                    break;
                }
            }
            i17++;
        }
        boolean z10 = oVarArr[0].f7414k != d.f7249f;
        int length = 18 + strArr.length;
        boolean[] zArr = new boolean[length];
        for (int i19 = 1; i19 < i15; i19++) {
            oVarArr[i19].e(oVarArr[i19 - 1], zArr, this.f7396u, z10);
        }
        int i20 = 0;
        for (int i21 = 1; i21 < length; i21++) {
            if (zArr[i21]) {
                i20++;
            }
        }
        this.f7393r = new int[i20];
        int i22 = 2;
        int iMax = Math.max(2, i20);
        this.f7394s = new double[iMax];
        this.f7395t = new double[iMax];
        int i23 = 0;
        for (int i24 = 1; i24 < length; i24++) {
            if (zArr[i24]) {
                this.f7393r[i23] = i24;
                i23++;
            }
        }
        double[][] dArr = (double[][]) Array.newInstance((Class<?>) Double.TYPE, i15, this.f7393r.length);
        double[] dArr2 = new double[i15];
        for (int i25 = 0; i25 < i15; i25++) {
            oVarArr[i25].f(dArr[i25], this.f7393r);
            dArr2[i25] = oVarArr[i25].f7406c;
        }
        int i26 = 0;
        while (true) {
            int[] iArr2 = this.f7393r;
            if (i26 >= iArr2.length) {
                break;
            }
            if (iArr2[i26] < o.f7403t.length) {
                String str9 = o.f7403t[this.f7393r[i26]] + " [";
                for (int i27 = 0; i27 < i15; i27++) {
                    str9 = str9 + dArr[i27][i26];
                }
            }
            i26++;
        }
        this.f7386k = new androidx.constraintlayout.core.motion.utils.b[this.f7396u.length + 1];
        int i28 = 0;
        while (true) {
            String[] strArr3 = this.f7396u;
            if (i28 >= strArr3.length) {
                break;
            }
            String str10 = strArr3[i28];
            int i29 = 0;
            int i30 = 0;
            double[] dArr3 = null;
            double[][] dArr4 = null;
            while (i29 < i15) {
                if (oVarArr[i29].l(str10)) {
                    if (dArr4 == null) {
                        dArr3 = new double[i15];
                        int[] iArr3 = new int[i22];
                        iArr3[c11] = oVarArr[i29].j(str10);
                        iArr3[0] = i15;
                        dArr4 = (double[][]) Array.newInstance((Class<?>) Double.TYPE, iArr3);
                    }
                    o oVar = oVarArr[i29];
                    dArr3[i30] = oVar.f7406c;
                    oVar.i(str10, dArr4[i30], 0);
                    i30++;
                }
                i29++;
                dArr = dArr;
                i22 = 2;
                c11 = 1;
            }
            i28++;
            this.f7386k[i28] = androidx.constraintlayout.core.motion.utils.b.a(this.f7381f, Arrays.copyOf(dArr3, i30), (double[][]) Arrays.copyOf(dArr4, i30));
            dArr = dArr;
            i22 = 2;
            c11 = 1;
        }
        this.f7386k[0] = androidx.constraintlayout.core.motion.utils.b.a(this.f7381f, dArr2, dArr);
        if (oVarArr[0].f7414k != d.f7249f) {
            int[] iArr4 = new int[i15];
            double[] dArr5 = new double[i15];
            double[][] dArr6 = (double[][]) Array.newInstance((Class<?>) Double.TYPE, i15, 2);
            for (int i31 = 0; i31 < i15; i31++) {
                o oVar2 = oVarArr[i31];
                iArr4[i31] = oVar2.f7414k;
                dArr5[i31] = oVar2.f7406c;
                double[] dArr7 = dArr6[i31];
                dArr7[0] = oVar2.f7408e;
                dArr7[1] = oVar2.f7409f;
            }
            this.f7387l = androidx.constraintlayout.core.motion.utils.b.b(iArr4, dArr5, dArr6);
        }
        this.D = new HashMap();
        if (this.A != null) {
            float fS = Float.NaN;
            for (String str11 : hashSet3) {
                v0.c cVarI = v0.c.i(str11);
                if (cVarI != null) {
                    if (cVarI.h() && Float.isNaN(fS)) {
                        fS = s();
                    }
                    cVarI.f(str11);
                    this.D.put(str11, cVarI);
                }
            }
            for (d dVar6 : this.A) {
                if (dVar6 instanceof f) {
                    ((f) dVar6).Y(this.D);
                }
            }
            Iterator it2 = this.D.values().iterator();
            while (it2.hasNext()) {
                ((v0.c) it2.next()).g(fS);
            }
        }
    }

    public void J(m mVar) {
        this.f7382g.t(mVar, mVar.f7382g);
        this.f7383h.t(mVar, mVar.f7383h);
    }

    public void a(d dVar) {
        this.A.add(dVar);
    }

    void b(ArrayList arrayList) {
        this.A.addAll(arrayList);
    }

    int c(float[] fArr, int[] iArr) {
        if (fArr == null) {
            return 0;
        }
        double[] dArrH = this.f7386k[0].h();
        if (iArr != null) {
            Iterator it = this.f7400y.iterator();
            int i11 = 0;
            while (it.hasNext()) {
                iArr[i11] = ((o) it.next()).f7419p;
                i11++;
            }
        }
        int i12 = 0;
        for (int i13 = 0; i13 < dArrH.length; i13++) {
            this.f7386k[0].d(dArrH[i13], this.f7394s);
            this.f7382g.g(dArrH[i13], this.f7393r, this.f7394s, fArr, i12);
            i12 += 2;
        }
        return i12 / 2;
    }

    void d(float[] fArr, int i11) {
        int i12 = i11;
        float f11 = 1.0f;
        float f12 = 1.0f / (i12 - 1);
        HashMap map = this.C;
        androidx.constraintlayout.core.motion.utils.i iVar = map == null ? null : (androidx.constraintlayout.core.motion.utils.i) map.get("translationX");
        HashMap map2 = this.C;
        androidx.constraintlayout.core.motion.utils.i iVar2 = map2 == null ? null : (androidx.constraintlayout.core.motion.utils.i) map2.get("translationY");
        HashMap map3 = this.D;
        v0.c cVar = map3 == null ? null : (v0.c) map3.get("translationX");
        HashMap map4 = this.D;
        v0.c cVar2 = map4 != null ? (v0.c) map4.get("translationY") : null;
        int i13 = 0;
        while (i13 < i12) {
            float fMin = i13 * f12;
            float f13 = this.f7390o;
            float f14 = 0.0f;
            if (f13 != f11) {
                float f15 = this.f7389n;
                if (fMin < f15) {
                    fMin = 0.0f;
                }
                if (fMin > f15 && fMin < 1.0d) {
                    fMin = Math.min((fMin - f15) * f13, f11);
                }
            }
            double dA = fMin;
            androidx.constraintlayout.core.motion.utils.c cVar3 = this.f7382g.f7404a;
            float f16 = Float.NaN;
            for (o oVar : this.f7400y) {
                androidx.constraintlayout.core.motion.utils.c cVar4 = oVar.f7404a;
                if (cVar4 != null) {
                    float f17 = oVar.f7406c;
                    if (f17 < fMin) {
                        f14 = f17;
                        cVar3 = cVar4;
                    } else if (Float.isNaN(f16)) {
                        f16 = oVar.f7406c;
                    }
                }
            }
            if (cVar3 != null) {
                if (Float.isNaN(f16)) {
                    f16 = 1.0f;
                }
                float f18 = f16 - f14;
                dA = (((float) cVar3.a((fMin - f14) / f18)) * f18) + f14;
            }
            this.f7386k[0].d(dA, this.f7394s);
            androidx.constraintlayout.core.motion.utils.b bVar = this.f7387l;
            if (bVar != null) {
                double[] dArr = this.f7394s;
                if (dArr.length > 0) {
                    bVar.d(dA, dArr);
                }
            }
            int i14 = i13 * 2;
            this.f7382g.g(dA, this.f7393r, this.f7394s, fArr, i14);
            if (cVar != null) {
                fArr[i14] = fArr[i14] + cVar.a(fMin);
            } else if (iVar != null) {
                fArr[i14] = fArr[i14] + iVar.a(fMin);
            }
            if (cVar2 != null) {
                int i15 = i14 + 1;
                fArr[i15] = fArr[i15] + cVar2.a(fMin);
            } else if (iVar2 != null) {
                int i16 = i14 + 1;
                fArr[i16] = fArr[i16] + iVar2.a(fMin);
            }
            i13++;
            i12 = i11;
            f11 = 1.0f;
        }
    }

    void e(float f11, float[] fArr, int i11) {
        this.f7386k[0].d(g(f11, null), this.f7394s);
        this.f7382g.k(this.f7393r, this.f7394s, fArr, i11);
    }

    void f(boolean z10) {
        if (!"button".equals(androidx.constraintlayout.motion.widget.a.d(this.f7377b)) || this.E == null) {
            return;
        }
        int i11 = 0;
        while (true) {
            k[] kVarArr = this.E;
            if (i11 >= kVarArr.length) {
                return;
            }
            kVarArr[i11].y(z10 ? -100.0f : 100.0f, this.f7377b);
            i11++;
        }
    }

    public int h() {
        return this.f7382g.f7415l;
    }

    public void i(double d11, float[] fArr, float[] fArr2) {
        double[] dArr = new double[4];
        double[] dArr2 = new double[4];
        this.f7386k[0].d(d11, dArr);
        this.f7386k[0].g(d11, dArr2);
        Arrays.fill(fArr2, 0.0f);
        this.f7382g.h(d11, this.f7393r, dArr, fArr, dArr2, fArr2);
    }

    public float j() {
        return this.f7391p;
    }

    public float k() {
        return this.f7392q;
    }

    void l(float f11, float f12, float f13, float[] fArr) {
        double[] dArr;
        float fG = g(f11, this.f7401z);
        androidx.constraintlayout.core.motion.utils.b[] bVarArr = this.f7386k;
        int i11 = 0;
        if (bVarArr == null) {
            o oVar = this.f7383h;
            float f14 = oVar.f7408e;
            o oVar2 = this.f7382g;
            float f15 = f14 - oVar2.f7408e;
            float f16 = oVar.f7409f - oVar2.f7409f;
            float f17 = (oVar.f7410g - oVar2.f7410g) + f15;
            float f18 = (oVar.f7411h - oVar2.f7411h) + f16;
            fArr[0] = (f15 * (1.0f - f12)) + (f17 * f12);
            fArr[1] = (f16 * (1.0f - f13)) + (f18 * f13);
            return;
        }
        double d11 = fG;
        bVarArr[0].g(d11, this.f7395t);
        this.f7386k[0].d(d11, this.f7394s);
        float f19 = this.f7401z[0];
        while (true) {
            dArr = this.f7395t;
            if (i11 >= dArr.length) {
                break;
            }
            dArr[i11] = dArr[i11] * ((double) f19);
            i11++;
        }
        androidx.constraintlayout.core.motion.utils.b bVar = this.f7387l;
        if (bVar == null) {
            this.f7382g.r(f12, f13, fArr, this.f7393r, dArr, this.f7394s);
            return;
        }
        double[] dArr2 = this.f7394s;
        if (dArr2.length > 0) {
            bVar.d(d11, dArr2);
            this.f7387l.g(d11, this.f7395t);
            this.f7382g.r(f12, f13, fArr, this.f7393r, this.f7395t, this.f7394s);
        }
    }

    public int m() {
        int iMax = this.f7382g.f7405b;
        Iterator it = this.f7400y.iterator();
        while (it.hasNext()) {
            iMax = Math.max(iMax, ((o) it.next()).f7405b);
        }
        return Math.max(iMax, this.f7383h.f7405b);
    }

    public float n() {
        return this.f7383h.f7408e;
    }

    public float o() {
        return this.f7383h.f7409f;
    }

    o q(int i11) {
        return (o) this.f7400y.get(i11);
    }

    void r(float f11, int i11, int i12, float f12, float f13, float[] fArr) {
        float fG = g(f11, this.f7401z);
        HashMap map = this.C;
        androidx.constraintlayout.core.motion.utils.i iVar = map == null ? null : (androidx.constraintlayout.core.motion.utils.i) map.get("translationX");
        HashMap map2 = this.C;
        androidx.constraintlayout.core.motion.utils.i iVar2 = map2 == null ? null : (androidx.constraintlayout.core.motion.utils.i) map2.get("translationY");
        HashMap map3 = this.C;
        androidx.constraintlayout.core.motion.utils.i iVar3 = map3 == null ? null : (androidx.constraintlayout.core.motion.utils.i) map3.get("rotation");
        HashMap map4 = this.C;
        androidx.constraintlayout.core.motion.utils.i iVar4 = map4 == null ? null : (androidx.constraintlayout.core.motion.utils.i) map4.get("scaleX");
        HashMap map5 = this.C;
        androidx.constraintlayout.core.motion.utils.i iVar5 = map5 == null ? null : (androidx.constraintlayout.core.motion.utils.i) map5.get("scaleY");
        HashMap map6 = this.D;
        v0.c cVar = map6 == null ? null : (v0.c) map6.get("translationX");
        HashMap map7 = this.D;
        v0.c cVar2 = map7 == null ? null : (v0.c) map7.get("translationY");
        HashMap map8 = this.D;
        v0.c cVar3 = map8 == null ? null : (v0.c) map8.get("rotation");
        HashMap map9 = this.D;
        v0.c cVar4 = map9 == null ? null : (v0.c) map9.get("scaleX");
        HashMap map10 = this.D;
        v0.c cVar5 = map10 != null ? (v0.c) map10.get("scaleY") : null;
        androidx.constraintlayout.core.motion.utils.o oVar = new androidx.constraintlayout.core.motion.utils.o();
        oVar.b();
        oVar.d(iVar3, fG);
        oVar.h(iVar, iVar2, fG);
        oVar.f(iVar4, iVar5, fG);
        oVar.c(cVar3, fG);
        oVar.g(cVar, cVar2, fG);
        oVar.e(cVar4, cVar5, fG);
        androidx.constraintlayout.core.motion.utils.b bVar = this.f7387l;
        if (bVar != null) {
            double[] dArr = this.f7394s;
            if (dArr.length > 0) {
                double d11 = fG;
                bVar.d(d11, dArr);
                this.f7387l.g(d11, this.f7395t);
                this.f7382g.r(f12, f13, fArr, this.f7393r, this.f7395t, this.f7394s);
            }
            oVar.a(f12, f13, i11, i12, fArr);
            return;
        }
        int i13 = 0;
        if (this.f7386k == null) {
            o oVar2 = this.f7383h;
            float f14 = oVar2.f7408e;
            o oVar3 = this.f7382g;
            float f15 = f14 - oVar3.f7408e;
            v0.c cVar6 = cVar5;
            float f16 = oVar2.f7409f - oVar3.f7409f;
            v0.c cVar7 = cVar4;
            float f17 = (oVar2.f7410g - oVar3.f7410g) + f15;
            float f18 = (oVar2.f7411h - oVar3.f7411h) + f16;
            fArr[0] = (f15 * (1.0f - f12)) + (f17 * f12);
            fArr[1] = (f16 * (1.0f - f13)) + (f18 * f13);
            oVar.b();
            oVar.d(iVar3, fG);
            oVar.h(iVar, iVar2, fG);
            oVar.f(iVar4, iVar5, fG);
            oVar.c(cVar3, fG);
            oVar.g(cVar, cVar2, fG);
            oVar.e(cVar7, cVar6, fG);
            oVar.a(f12, f13, i11, i12, fArr);
            return;
        }
        double dG = g(fG, this.f7401z);
        this.f7386k[0].g(dG, this.f7395t);
        this.f7386k[0].d(dG, this.f7394s);
        float f19 = this.f7401z[0];
        while (true) {
            double[] dArr2 = this.f7395t;
            if (i13 >= dArr2.length) {
                this.f7382g.r(f12, f13, fArr, this.f7393r, dArr2, this.f7394s);
                oVar.a(f12, f13, i11, i12, fArr);
                return;
            } else {
                dArr2[i13] = dArr2[i13] * ((double) f19);
                i13++;
            }
        }
    }

    public float t() {
        return this.f7382g.f7408e;
    }

    public String toString() {
        return " start: x: " + this.f7382g.f7408e + " y: " + this.f7382g.f7409f + " end: x: " + this.f7383h.f7408e + " y: " + this.f7383h.f7409f;
    }

    public float u() {
        return this.f7382g.f7409f;
    }

    public View v() {
        return this.f7377b;
    }

    boolean x(View view, float f11, long j11, androidx.constraintlayout.core.motion.utils.d dVar) {
        v0.f.d dVar2;
        boolean zJ;
        float fG = g(f11, null);
        int i11 = this.I;
        if (i11 != d.f7249f) {
            float f12 = 1.0f / i11;
            float fFloor = ((float) Math.floor(fG / f12)) * f12;
            float f13 = (fG % f12) / f12;
            if (!Float.isNaN(this.J)) {
                f13 = (f13 + this.J) % 1.0f;
            }
            Interpolator interpolator = this.K;
            fG = ((interpolator != null ? interpolator.getInterpolation(f13) : ((double) f13) > 0.5d ? 1.0f : 0.0f) * f12) + fFloor;
        }
        float f14 = fG;
        HashMap map = this.C;
        if (map != null) {
            Iterator it = map.values().iterator();
            while (it.hasNext()) {
                ((v0.d) it.next()).h(view, f14);
            }
        }
        HashMap map2 = this.B;
        if (map2 != null) {
            v0.f.d dVar3 = null;
            boolean zI = false;
            for (v0.f fVar : map2.values()) {
                if (fVar instanceof v0.f.d) {
                    dVar3 = (v0.f.d) fVar;
                } else {
                    zI |= fVar.i(view, f14, j11, dVar);
                }
            }
            zJ = zI;
            dVar2 = dVar3;
        } else {
            dVar2 = null;
            zJ = false;
        }
        androidx.constraintlayout.core.motion.utils.b[] bVarArr = this.f7386k;
        int i12 = 1;
        if (bVarArr != null) {
            double d11 = f14;
            bVarArr[0].d(d11, this.f7394s);
            this.f7386k[0].g(d11, this.f7395t);
            androidx.constraintlayout.core.motion.utils.b bVar = this.f7387l;
            if (bVar != null) {
                double[] dArr = this.f7394s;
                if (dArr.length > 0) {
                    bVar.d(d11, dArr);
                    this.f7387l.g(d11, this.f7395t);
                }
            }
            if (!this.L) {
                this.f7382g.s(f14, view, this.f7393r, this.f7394s, this.f7395t, null, this.f7379d);
                this.f7379d = false;
            }
            if (this.G != d.f7249f) {
                if (this.H == null) {
                    this.H = ((View) view.getParent()).findViewById(this.G);
                }
                View view2 = this.H;
                if (view2 != null) {
                    float top = (view2.getTop() + this.H.getBottom()) / 2.0f;
                    float left = (this.H.getLeft() + this.H.getRight()) / 2.0f;
                    if (view.getRight() - view.getLeft() > 0 && view.getBottom() - view.getTop() > 0) {
                        float left2 = left - view.getLeft();
                        float top2 = top - view.getTop();
                        view.setPivotX(left2);
                        view.setPivotY(top2);
                    }
                }
            }
            HashMap map3 = this.C;
            if (map3 != null) {
                for (androidx.constraintlayout.core.motion.utils.i iVar : map3.values()) {
                    if (iVar instanceof v0.d.C0941d) {
                        double[] dArr2 = this.f7395t;
                        if (dArr2.length > 1) {
                            ((v0.d.C0941d) iVar).i(view, f14, dArr2[0], dArr2[1]);
                        }
                    }
                }
            }
            if (dVar2 != null) {
                double[] dArr3 = this.f7395t;
                zJ |= dVar2.j(view, dVar, f14, j11, dArr3[0], dArr3[1]);
            }
            int i13 = i12;
            while (true) {
                androidx.constraintlayout.core.motion.utils.b[] bVarArr2 = this.f7386k;
                if (i13 >= bVarArr2.length) {
                    break;
                }
                bVarArr2[i13].e(d11, this.f7399x);
                v0.a.b((ConstraintAttribute) this.f7382g.f7418o.get(this.f7396u[i13 - 1]), view, this.f7399x);
                i13++;
            }
            l lVar = this.f7384i;
            if (lVar.f7351b == 0) {
                if (f14 <= 0.0f) {
                    view.setVisibility(lVar.f7352c);
                } else if (f14 >= 1.0f) {
                    view.setVisibility(this.f7385j.f7352c);
                } else if (this.f7385j.f7352c != lVar.f7352c) {
                    view.setVisibility(0);
                }
            }
            if (this.E != null) {
                int i14 = 0;
                while (true) {
                    k[] kVarArr = this.E;
                    if (i14 >= kVarArr.length) {
                        break;
                    }
                    kVarArr[i14].y(f14, view);
                    i14++;
                }
            }
        } else {
            i12 = 1;
            o oVar = this.f7382g;
            float f15 = oVar.f7408e;
            o oVar2 = this.f7383h;
            float f16 = f15 + ((oVar2.f7408e - f15) * f14);
            float f17 = oVar.f7409f;
            float f18 = f17 + ((oVar2.f7409f - f17) * f14);
            float f19 = oVar.f7410g;
            float f20 = oVar2.f7410g;
            float f21 = oVar.f7411h;
            float f22 = oVar2.f7411h;
            float f23 = f16 + 0.5f;
            int i15 = (int) f23;
            float f24 = f18 + 0.5f;
            int i16 = (int) f24;
            int i17 = (int) (f23 + ((f20 - f19) * f14) + f19);
            int i18 = (int) (f24 + ((f22 - f21) * f14) + f21);
            int i19 = i17 - i15;
            int i20 = i18 - i16;
            if (f20 != f19 || f22 != f21 || this.f7379d) {
                view.measure(View.MeasureSpec.makeMeasureSpec(i19, 1073741824), View.MeasureSpec.makeMeasureSpec(i20, 1073741824));
                this.f7379d = false;
            }
            view.layout(i15, i16, i17, i18);
        }
        HashMap map4 = this.D;
        if (map4 != null) {
            for (v0.c cVar : map4.values()) {
                if (cVar instanceof v0.c.d) {
                    double[] dArr4 = this.f7395t;
                    ((v0.c.d) cVar).k(view, f14, dArr4[0], dArr4[i12]);
                } else {
                    cVar.j(view, f14);
                }
            }
        }
        return zJ;
    }

    public void z() {
        this.f7379d = true;
    }
}
